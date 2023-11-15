#include "ros/ros.h"

#include "pix_driver_msgs/GearCommand.h"
#include "pix_driver_msgs/ThrottleCommand.h"
#include "pix_driver_msgs/BrakeCommand.h"
#include "pix_driver_msgs/SteeringCommand.h"
#include "pix_driver_msgs/VehicleModeCommand.h"
#include "pix_driver_msgs/GearReport.h"
#include "pix_driver_msgs/acu_sweepctrlcmd_107.h"

#include "autoware_msgs/VehicleCmd.h"
#include "autoware_msgs/CleaningStatus.h"
#include "autoware_msgs/VehicleCleaningFeedback.h"
#include "autoware_msgs/DrivingStatus.h"
#include "autoware_msgs/NDTStat.h"

#include "std_msgs/Bool.h"
#include "std_msgs/Int32.h"

#include<cmath>
#include<ctime>
#include<iostream>
#include<algorithm>

class ControlConverter
{
  private: //在C++类中，默认情况下，成员变量和成员函数如果不特别指定访问权限，默认是private
    double speed;
    double brake;
    double steer;
    int gear;
    int gear_act;
    int driver_mode;
    int pre_gear;
    bool stop_for_shift;
    bool pub_garbage_command;
    // bool stop_status;
    int vehicle_status;
    int prev_vehicle_status;
    double timer;
    int garbaging_timer;
    bool receive_cleaning_msg_;
    bool receive_stop_cleaning_msg_;
    bool receive_garbaging_msg_;
    bool print_cleaning_;
    bool print_stop_cleaning_;
    bool test_mode;

    // 声明订阅者
    ros::Subscriber sub_control_command;
    ros::Subscriber sub_gear_report;
    ros::Subscriber sub_end_point_status;
    ros::Subscriber sub_driving_status;
    ros::Subscriber sub_cleanning_status;
    ros::Subscriber sub_ndt_stat;

    //声明发布者
    ros::Publisher pub_throttle;
    ros::Publisher pub_brake;
    ros::Publisher pub_steer;
    ros::Publisher pub_gear;
    ros::Publisher pub_vehicle;
    ros::Publisher pub_acu;
    ros::Publisher pub_vehicle_cleaning_feedback;

    // ROS消息类型的实例化
    pix_driver_msgs::ThrottleCommand throttle_msg;
    pix_driver_msgs::BrakeCommand brake_msg;
    pix_driver_msgs::SteeringCommand steer_msg;
    pix_driver_msgs::GearCommand gear_msg;
    pix_driver_msgs::VehicleModeCommand vehicle_msg;
    pix_driver_msgs::acu_sweepctrlcmd_107 acu_msg;
    autoware_msgs::DrivingStatus driving_status_msg;
    autoware_msgs::CleaningStatus cleaning_status_msg;
    autoware_msgs::VehicleCleaningFeedback vehicle_cleaning_feedback_msg;
    autoware_msgs::NDTStat ndt_stat_msg;

  public:
    ControlConverter()//构造函数
    {
      // 创建ROS节点句柄
      ros::NodeHandle nh;
      
      // 各种变量初始化
      speed = 0.0;
      brake = 0.0;
      steer = 0.0;
      gear = 0;
      gear_act = 3;
      driver_mode = 0;
      pre_gear = 3;
      stop_for_shift = false;
      pub_garbage_command = false;
      vehicle_status = 0;
      prev_vehicle_status = 0;
      timer = ros::Time::now().toSec();
      garbaging_timer = 0;
      receive_cleaning_msg_ = false;
      receive_stop_cleaning_msg_ = false;
      receive_garbaging_msg_ = false;
      print_cleaning_ = false;
      print_stop_cleaning_ = false;
      test_mode = true;
      
      // 创建订阅者(订阅者对象=句柄.订阅（话题，消息队列大小，回调函数）) 
      sub_control_command = nh.subscribe("/vehicle_cmd", 1, &ControlConverter::control_command_callback，this);
      sub_gear_report = nh.subscribe("/pix/gear_report", 1, &ControlConverter::gear_report_callback,this);
      sub_end_point_status = nh.subscribe("/end_point_status", 1, &ControlConverter::end_point_status_callback,this);
      sub_driving_status =nh.subscribe("/driving_status", 1, &ControlConverter::driving_status_callback,this);
      sub_cleanning_status = nh.subscribe("/cleaning_status", 1, &ControlConverter::cleaning_status_callback,this);
      sub_ndt_stat = nh.subscribe("/ndt_stat", 1, &ControlConverter::ndt_stat_callback,this); 
      
      // 创建发布者（发布者对象=句柄.发布<消息类型>（话题，消息队列大小））
      pub_throttle = nh.advertise<pix_driver_msgs::ThrottleCommand>("/pix/throttle_command", 10);
      pub_brake = nh.advertise<pix_driver_msgs::BrakeCommand>("/pix/brake_command", 10);
      pub_steer = nh.advertise<pix_driver_msgs::SteeringCommand>("/pix/steer_command", 10);
      pub_gear = nh.advertise<pix_driver_msgs::GearCommand>("/pix/gear_command", 10);
      pub_vehicle = nh.advertise<autoware_msgs::VehicleModeCommand>("/pix/vehicle_command", 10);
      pub_acu = nh.advertise<pix_driver_msgs::acu_sweepctrlcmd_107>("/pix/acu_sweeperctrlcmd", 10);
      pub_vehicle_cleaning_feedback = nh.advertise<autoware_msgs::VehicleCleaningFeedback>("control_feedback", 10);

    }

    //设置时间戳
    void set_stamp(ros::Time stamp)
    {
      throttle_msg.header.stamp = stamp;
      brake_msg.header.stamp = stamp;
      steer_msg.header.stamp = stamp;
      gear_msg.header.stamp = stamp;
      vehicle_msg.header.stamp = stamp;
      acu_msg.header.stamp = stamp;
    }
    
    void set_value()
    {
      throttle_msg.vel_target = speed;
      throttle_msg.throttle_en_ctrl = 1;
      brake_msg.brake_pedal_target = brake * 0;
      brake_msg.brake_en_ctrl = 1;
      steer_msg.steer_en_ctrl = 1;
      steer_msg.steer_angle_target = -steer;
      gear_msg.gear_en_ctrl = 1;
      if (vehicle_status == 0)
      {
        gear_msg.gear_target = 4;
      }
      else if (vehicle_status == 1)
      {
        gear_msg.gear_target = 2;
      }
      vehicle_msg.drive_mode_ctrl = 1;
    }

    void set_acu_msg(bool cleaning_flag)
    {
      if (cleaning_flag)
      {
        acu_msg.FanSpeedCtrl = 0;
        acu_msg.ShakerDusterCtrl = 0;
        acu_msg.DedustingCtrl = 0;
        acu_msg.AutoCleaningStartCtrl = 1;
        acu_msg.AutoGarbageDumpStartCtrl = 0;
        acu_msg.MouthpieceUpDownCtrl = 0;
        acu_msg.SweepPlateUpDown = 0;
        acu_msg.FanModeCtrl = 1;
        acu_msg.FanSpeedMode = 0;
        acu_msg.SweepModeCtrl = 1;
        acu_msg.MowingSpeedCtrl = 0;
      }
      else
      {
        acu_msg.FanSpeedCtrl = 0;
        acu_msg.ShakerDusterCtrl = 0;
        acu_msg.DedustingCtrl = 0;
        acu_msg.AutoCleaningStartCtrl = 2;
        acu_msg.AutoGarbageDumpStartCtrl = 0;
        acu_msg.MouthpieceUpDownCtrl = 0;
        acu_msg.SweepPlateUpDown = 0;
        acu_msg.FanModeCtrl = 1;
        acu_msg.FanSpeedMode = 0;
        acu_msg.SweepModeCtrl = 1;
        acu_msg.MowingSpeedCtrl = 0;
      }
    }

    void ControlConverter::control_command_callback(const autoware_msgs::VehicleCmd::ConstPtr &msg)
    {
      speed = fabs(msg.ctrl_cmd.linear_velocity);
      steer = -500 * (msg.ctrl_cmd.steering_angle / 0.43);
      ros::Time stamp = ros::Time::now();

      set_stamp(stamp);
      set_value();

      if (vehicle_status != prev_vehicle_status)
      {
        if (vehicle_status == 0 || vehicle_status == 1)
        {
          timer = ros::Time::now().toSec();
          stop_for_shift = true;
        }
      }

      prev_vehicle_status = vehicle_status;

      if (stop_for_shift)
      {
        throttle_msg.vel_target = 0.0;
        brake_msg.brake_pedal_target = 10;
        steer_msg.steer_angle_target = 0;

        if (ros::Time::now().toSec() - timer > 1.0)
        {
          stop_for_shift = false;
        }
      }

      if (vehicle_status == 2 || vehicle_status == 3)
      {
        brake_msg.brake_pedal_target = 20;
        steer_msg.steer_angle_target = 0;
        throttle_msg.vel_target = 0.0;
      }

      if (ndt_stat_msg.score > 25.0)
      {
        brake_msg.brake_pedal_target = 30;
      }

      pub_throttle.publish(throttle_msg);
      pub_brake.publish(brake_msg);
      pub_steer.publish(steer_msg);
      pub_gear.publish(gear_msg);
      pub_vehicle.publish(vehicle_msg);

      if (!(cleaning_status_msg.is_cleaning.data && cleaning_status_msg.is_garbaging.data))
      {
        if (vehicle_status == 2 && cleaning_status_msg.is_garbaging.data)
        {
          acu_msg.AutoGarbageDumpStartCtrl = 2;
          acu_msg.AutoCleaningStartCtrl = 2;

          if (!pub_garbage_command)
          {
            std::cout << "pub garbage cmd!" << std::endl;
            garbaging_timer = ros::Time::now().toSec();
            pub_garbage_command = true;
            pub_acu.publish(acu_msg);
          }

          if (ros::Time::now().toSec() - garbaging_timer >= 10.0)
          {
            cleaning_status_msg.is_garbaging.data = false;
            pub_garbage_command = false;
            vehicle_cleaning_feedback_msg.garbaging.data = true;
            vehicle_cleaning_feedback_msg.cleaning.data = false;
            pub_vehicle_cleaning_feedback.publish(vehicle_cleaning_feedback_msg);
            std::cout << "feedback!" << std::endl;
          }

          return;

        }

        if (cleaning_status_msg.is_cleaning.data && vehicle_status != 2)
        {
          set_acu_msg(true);
          if (!test_mode)
          {
            pub_acu.publish(acu_msg);
          }
          vehicle_cleaning_feedback_msg.cleaning.data = true;
          vehicle_cleaning_feedback_msg.garbaging.data = false;
          pub_vehicle_cleaning_feedback.publish(vehicle_cleaning_feedback_msg);
          if (!print_cleaning_)
          {
            std::cout << "start cleaning!" << std::endl;
            print_cleaning_ = true;
            print_stop_cleaning_ = false;
          }
        }

        if (!cleaning_status_msg.is_cleaning.data && vehicle_status != 2)
        {
          set_acu_msg = false;
          if (!test_mode)
          {
            pub_acu.publish(acu_msg);
          }
          vehicle_cleaning_feedback_msg.cleaning.data = true;
          vehicle_cleaning_feedback_msg.garbaging.data = false;
          pub_vehicle_cleaning_feedback.publish(vehicle_cleaning_feedback_msg);
          if (!print_stop_cleaning_)
          {
            print_stop_cleaning_ = true;
            print_cleaning_ = false;
            std::cout << "end cleaning !" << std::endl;
          }
        }
      }
    }

    void ControlConverter::gear_report_callback(const pix_driver_msgs::GearReport::ConstPtr &msg)
    {
      // 处理挡位报告回调逻辑
      gear_act = msg->gear_actual;
    }

    void ControlConverter::end_point_status_callback(const std_msgs::Int32::ConstPtr &msg)
    {
      // 处理终点状态回调逻辑
      vehicle_status = msg->data;
    }

    void ControlConverter::driving_status_callback(const autoware_msgs::DrivingStatus::ConstPtr &msg)
    {
      // 处理驾驶状态回调逻辑
      driving_status_msg = *msg;
      vehicle_status = driving_status_msg.vehicle_status.data;
      ROS_INFO_STREAM("Received vehicle_cleaning_status!");
      ROS_INFO_STREAM("Current vehicle_status = " << driving_status_msg.vehicle_status.data);
    }

    void ControlConverter::ndt_stat_callback(const autoware_msgs::NDTStat::ConstPtr &msg)
    {
      // 处理NDT统计回调逻辑
      ndt_stat_msg = *msg;
    }

    void ControlConverter::cleaning_status_callback(const autoware_msgs::CleaningStatus::ConstPtr &msg)
    {
      // 处理清洁状态回调逻辑
      cleaning_status_msg = *msg;
      if (cleaning_status_msg.is_cleaning.data)
      {
        receive_cleaning_msg_ = true;
        receive_stop_cleaning_msg_ = false;
      }
      if (!cleaning_status_msg.is_cleaning.data)
      {
        receive_cleaning_msg_ = false;
        receive_stop_cleaning_msg_ = true;
      }

      if (cleaning_status_msg.is_garbaging.data)
      {
        receive_garbaging_msg_ = true;
      }
    }
}；

int main(int argc, char **argv)
{
  ros::init(argc, argv, "autoware_pix_control_converter");
  ControlConverter converter;
  ros::spin();
  return 0;
}
