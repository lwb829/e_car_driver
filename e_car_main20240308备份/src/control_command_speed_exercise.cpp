#include "ros/ros.h"

#include "e_car_msgs/ADCU_BodyCmd.h"
#include "e_car_msgs/ADCU_BrakeCmd.h"
#include "e_car_msgs/ADCU_CldBodyCmd.h"
#include "e_car_msgs/ADCU_CldDrvCmd.h"
#include "e_car_msgs/ADCU_CldPowerCmd.h"
#include "e_car_msgs/ADCU_CrashClrCmd.h"
#include "e_car_msgs/ADCU_DriveCmd.h"
#include "e_car_msgs/ADCU_ParkCmd.h"
#include "e_car_msgs/ADCU_PowerCmd.h"
#include "e_car_msgs/ADCU_SteerCmd.h"
#include "e_car_msgs/ADCU_SweepCmd.h"
#include "e_car_msgs/ADCU_TripClear.h"
#include "e_car_msgs/PCU_PowerCmd.h"

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
    // bool pub_garbage_command;
    // bool stop_status;
    int vehicle_status;
    int prev_vehicle_status;
    double timer;
    // int garbaging_timer;
    // bool receive_cleaning_msg_;
    // bool receive_stop_cleaning_msg_;
    // bool receive_garbaging_msg_;
    // bool print_cleaning_;
    // bool print_stop_cleaning_;
    bool test_mode;
    bool set_acu_msg;
    // int drive_msg.Drv_Active;
    // int brake_msg.Brk_Active;
    // int steer_msg.Str_Active;
    // int park_msg.Prk_Active;
    // int body_msg.LampCmd_Active;

    // 声明订阅者
    ros::Subscriber sub_control_command;
    ros::Subscriber sub_gear_report;
    ros::Subscriber sub_end_point_status;
    ros::Subscriber sub_driving_status;
    ros::Subscriber sub_cleanning_status;
    ros::Subscriber sub_ndt_stat;

    //声明发布者
    ros::Publisher pub_drive;
    ros::Publisher pub_brake;
    ros::Publisher pub_steer;
    ros::Publisher pub_park;
    ros::Publisher pub_power;
    // ros::Publisher pub_chassis_power;
    ros::Publisher pub_body;
    ros::Publisher pub_crash;
    ros::Publisher pub_sweep;
    ros::Publisher pub_vehicle_cleaning_feedback;

    // ROS消息类型的实例化
    e_car_msgs::ADCU_DriveCmd drive_msg;
    e_car_msgs::ADCU_BrakeCmd brake_msg;
    e_car_msgs::ADCU_SteerCmd steer_msg;
    e_car_msgs::ADCU_ParkCmd park_msg; 
    e_car_msgs::ADCU_PowerCmd power_msg; //自驾总电源
    // e_car_msgs::PCU_PowerCmd chassis_power_msg; //自驾底盘电源
    e_car_msgs::ADCU_SweepCmd sweep_msg;
    e_car_msgs::ADCU_BodyCmd body_msg;
    e_car_msgs::ADCU_CrashClrCmd crash_msg;

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
      // pub_garbage_command = false;
      vehicle_status = 0;
      prev_vehicle_status = 0;
      timer = ros::Time::now().toSec();
      // garbaging_timer = 0;
      // receive_cleaning_msg_ = false;
      // receive_stop_cleaning_msg_ = false;
      // receive_garbaging_msg_ = false;
      // print_cleaning_ = false;
      // print_stop_cleaning_ = false;
      test_mode = true;
      set_acu_msg = false;
      drive_msg.Drv_Active = 0;
      brake_msg.Brk_Active = 0;
      steer_msg.Str_Active = 0;
      park_msg.Prk_Active = 0;
      body_msg.LampCmd_Active = 0;

  

      // 创建订阅者(订阅者对象=句柄.订阅（话题，消息队列大小，回调函数）) 
      sub_control_command = nh.subscribe("/vehicle_cmd", 1, &ControlConverter::control_command_callback,this);
      // sub_gear_report = nh.subscribe("/e_car/gear_report", 1, &ControlConverter::gear_report_callback,this);
      // sub_end_point_status = nh.subscribe("/end_point_status", 1, &ControlConverter::end_point_status_callback,this);
      // sub_driving_status =nh.subscribe("/driving_status", 1, &ControlConverter::driving_status_callback,this);
      // sub_cleanning_status = nh.subscribe("/cleaning_status", 1, &ControlConverter::cleaning_status_callback,this);
      // sub_ndt_stat = nh.subscribe("/ndt_stat", 1, &ControlConverter::ndt_stat_callback,this); 
      
      // 创建发布者（发布者对象=句柄.发布<消息类型>（话题，消息队列大小））
      pub_drive = nh.advertise<e_car_msgs::ADCU_DriveCmd>("/e_car_main/drive_command", 10);
      pub_brake = nh.advertise<e_car_msgs::ADCU_BrakeCmd>("/e_car_main/brake_command", 10);
      pub_steer = nh.advertise<e_car_msgs::ADCU_SteerCmd>("/e_car_main/steer_command", 10);
      pub_sweep = nh.advertise<e_car_msgs::ADCU_SweepCmd>("/e_car_main/sweep_command", 10);
      pub_park = nh.advertise<e_car_msgs::ADCU_ParkCmd>("/e_car_main/park_command", 10);//20240304新增
      pub_power = nh.advertise<e_car_msgs::ADCU_PowerCmd>("/e_car_main/power_command", 10);//20240305新增
      pub_body = nh.advertise<e_car_msgs::ADCU_BodyCmd>("/e_car_main/body_command", 10);//20240306新增
      // pub_vehicle_cleaning_feedback = nh.advertise<autoware_msgs::VehicleCleaningFeedback>("control_feedback", 10);
    
    Enable();
    
    }

    //设置时间戳
    void set_stamp(ros::Time stamp)
    {
      drive_msg.header.stamp = stamp;
      brake_msg.header.stamp = stamp;
      steer_msg.header.stamp = stamp;
      park_msg.header.stamp = stamp;
      sweep_msg.header.stamp = stamp;
      power_msg.header.stamp = stamp;
      body_msg.header.stamp = stamp;
    }

    void Enable()
    {
      drive_msg.Drv_Active = 1;
      brake_msg.Brk_Active = 1;
      steer_msg.Str_Active = 1;
      park_msg.Prk_Active = 1;
      body_msg.LampCmd_Active = 1;

    }




    
    void set_value()
    {
      // drive_msg.Drv_Active = 1;
      // brake_msg.Brk_Active = 1;
      // steer_msg.Str_Active = 1;
      // park_msg.Prk_Active = 1;
      // body_msg.LampCmd_Active = 1;
      body_msg.HeadLamp_Cmd=1;
      body_msg.DblFlashLamp_Cmd=1;
      body_msg.TurnLLamp_Cmd=1;
      body_msg.TurnRLamp_Cmd=1;
      body_msg.BackLamp_Cmd=1;
      body_msg.Buzzer_Cmd=1;
      body_msg.Horn_Cmd=1;
      body_msg.RunLamp_Cmd=1;
      body_msg.BrkLamp_Cmd=1;
      body_msg.FogLamp_Cmd=1;
      body_msg.WidthLamp_Cmd=1;
      drive_msg.Drv_TgtVehSpd0 = speed;
      brake_msg.Brk_TgtPedpos = brake * 0;
      steer_msg.Str_TgtAngle = steer;
      drive_msg.Drv_CtrlMode = 1;
      brake_msg.Brk_CtrlMode = 0;
      steer_msg.Str_CtrlMode = 0;
      park_msg.Prk_Enable = 1;
      drive_msg.Drv_TgtGear=1; //可修改
      
      //20240305新增 
      power_msg.ADVehPwrup_Cmd = 1;
      power_msg.ADChasPwrup_Cmd = 1;
      power_msg.AD12VMCPwrup_Cmd = 1;
      power_msg.AD24VMCPwrup_Cmd = 1;
      power_msg.AD12VSC1Pwrup_Cmd = 1;
      power_msg.AD12VSC2Pwrup_Cmd = 1;
      power_msg.AD12VSC3Pwrup_Cmd = 1;
      power_msg.AD12VSC4Pwrup_Cmd = 1;
      power_msg.AD12VSC5Pwrup_Cmd = 1;
      power_msg.AD12VSC6Pwrup_Cmd = 1;

      // if (vehicle_status == 0)//前进
      // {
      //   drive_msg.Drv_TgtGear = 1;
      // }
      // else if (vehicle_status == 1)//倒车
      // {
      //   drive_msg.Drv_TgtGear = 2;
      // }
    }

    // void set_sweep_msg(bool cleaning_flag)
    // {
    //   if (cleaning_flag)
    //   {
    //     sweep_msg.Sweep_Cmd = 1;
    //     sweep_msg.ShakeDust_Cmd = 1;
    //     sweep_msg.GbgDump_Cmd = 1;
    //     sweep_msg.FtFenderCtrl_Cmd = 1;
    //     sweep_msg.SweepEStop_Cmd = 1;
    //     sweep_msg.BrushWtrValFbd_Cmd = 1;
    //   }
    //   else
    //   {
    //     sweep_msg.Tgt_SweepMode = 0;
    //     sweep_msg.Sweep_Cmd = 0;
    //     sweep_msg.ShakeDust_Cmd = 1;
    //     sweep_msg.GbgDump_Cmd = 1;
    //     sweep_msg.FtFenderCtrl_Cmd = 1;
    //     sweep_msg.SweepEStop_Cmd = 1;
    //     sweep_msg.BrushWtrValFbd_Cmd = 1;
    //   }
    // }

    void control_command_callback(const autoware_msgs::VehicleCmd::ConstPtr &msg)
    {
      pub_power.publish(power_msg);//20240305
      pub_park.publish(park_msg);//20240306
      pub_body.publish(body_msg);//20240306

      speed = fabs(msg->ctrl_cmd.linear_velocity);
      steer =msg->ctrl_cmd.steering_angle;

      ros::Time stamp = ros::Time::now();

      set_stamp(stamp);
      set_value();
      vehicle_status=msg->gear_cmd.gear;

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
        drive_msg.Drv_TgtVehSpd0 = 0.0;
        brake_msg.Brk_TgtPedpos = 10;
        steer_msg.Str_TgtAngle = 0;

        if (ros::Time::now().toSec() - timer > 1.0)
        {
          stop_for_shift = false;
        }
      }

      // if (vehicle_status == 2 || vehicle_status == 3)
      // {
      //   brake_msg.Brk_TgtPedpos = 20;
      //   steer_msg.Str_TgtAngle = 0;
      //   drive_msg.Drv_TgtVehSpd0 = 0.0;
      // }

      // if (ndt_stat_msg.score > 25.0)
      // {
      //   brake_msg.Brk_TgtPedpos = 30;
      // }

      pub_drive.publish(drive_msg);
      pub_brake.publish(brake_msg);
      pub_steer.publish(steer_msg);



      // if (!(cleaning_status_msg.is_cleaning.data && cleaning_status_msg.is_garbaging.data))
      // {
      //   if (vehicle_status == 2 && cleaning_status_msg.is_garbaging.data)
      //   {
      //     sweep_msg.GbgDump_Cmd = 1;
      //     sweep_msg.Sweep_Cmd = 1;

      //     if (!pub_garbage_command)
      //     {
      //       std::cout << "pub garbage cmd!" << std::endl;
      //       garbaging_timer = ros::Time::now().toSec();
      //       pub_garbage_command = true;
      //       pub_sweep.publish(sweep_msg);
      //     }

      //     if (ros::Time::now().toSec() - garbaging_timer >= 10.0)
      //     {
      //       cleaning_status_msg.is_garbaging.data = false;
      //       pub_garbage_command = false;
      //       vehicle_cleaning_feedback_msg.garbaging.data = true;
      //       vehicle_cleaning_feedback_msg.cleaning.data = false;
      //       pub_vehicle_cleaning_feedback.publish(vehicle_cleaning_feedback_msg);
      //       std::cout << "feedback!" << std::endl;
      //     }

      //     return;

      //   }

        // if (cleaning_status_msg.is_cleaning.data && vehicle_status != 2)
        // {
        //   set_sweep_msg(true);
        //   if (!test_mode)
        //   {
        //     pub_sweep.publish(sweep_msg);
        //   }
        //   vehicle_cleaning_feedback_msg.cleaning.data = true;
        //   vehicle_cleaning_feedback_msg.garbaging.data = false;
        //   pub_vehicle_cleaning_feedback.publish(vehicle_cleaning_feedback_msg);
        //   if (!print_cleaning_)
        //   {
        //     std::cout << "start cleaning!" << std::endl;
        //     print_cleaning_ = true;
        //     print_stop_cleaning_ = false;
        //   }
        // }

        // if (!cleaning_status_msg.is_cleaning.data && vehicle_status != 2)
        // {
        //   set_acu_msg = false;
        //   if (!test_mode)
        //   {
        //     pub_sweep.publish(sweep_msg);
        //   }
        //   vehicle_cleaning_feedback_msg.cleaning.data = true;
        //   vehicle_cleaning_feedback_msg.garbaging.data = false;
        //   pub_vehicle_cleaning_feedback.publish(vehicle_cleaning_feedback_msg);
        //   if (!print_stop_cleaning_)
        //   {
        //     print_stop_cleaning_ = true;
        //     print_cleaning_ = false;
        //     std::cout << "end cleaning !" << std::endl;
        //   }
        // }
      // }
    }

    // void gear_report_callback(const e_car_msgs::GearReport::ConstPtr &msg)
    // {
    //   // 处理挡位报告回调逻辑
    //   gear_act = msg->gear_actual;
    // }

    // void end_point_status_callback(const std_msgs::Int32::ConstPtr &msg)
    // {
    //   // 处理终点状态回调逻辑
    //   vehicle_status = msg->data;
    // }

    // void driving_status_callback(const autoware_msgs::DrivingStatus::ConstPtr &msg)
    // {
    //   // 处理驾驶状态回调逻辑
    //   driving_status_msg = *msg;
    //   vehicle_status = driving_status_msg.vehicle_status.data;
    //   ROS_INFO_STREAM("Received vehicle_cleaning_status!");
    //   ROS_INFO_STREAM("Current vehicle_status = " << driving_status_msg.vehicle_status.data);
    // }

    // void ndt_stat_callback(const autoware_msgs::NDTStat::ConstPtr &msg)
    // {
    //   // 处理NDT统计回调逻辑
    //   ndt_stat_msg = *msg;
    // }

    // void cleaning_status_callback(const autoware_msgs::CleaningStatus::ConstPtr &msg)
    // {
    //   // 处理清洁状态回调逻辑
    //   cleaning_status_msg = *msg;
    //   if (cleaning_status_msg.is_cleaning.data)
    //   {
    //     receive_cleaning_msg_ = true;
    //     receive_stop_cleaning_msg_ = false;
    //   }
    //   if (!cleaning_status_msg.is_cleaning.data)
    //   {
    //     receive_cleaning_msg_ = false;
    //     receive_stop_cleaning_msg_ = true;
    //   }

    //   if (cleaning_status_msg.is_garbaging.data)
    //   {
    //     receive_garbaging_msg_ = true;
    //   }
    // }
};

int main(int argc, char **argv)
{
  ros::init(argc, argv, "e_car_control_converter");
  ControlConverter converter;
  ros::spin();
  return 0;
}
