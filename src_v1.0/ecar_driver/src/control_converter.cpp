#include "ros/ros.h"

#include "ecar_driver_msgs/ADCU_BodyCmd.h"
#include "ecar_driver_msgs/ADCU_BrakeCmd.h"
#include "ecar_driver_msgs/ADCU_CrashClrCmd.h"
#include "ecar_driver_msgs/ADCU_DriveCmd.h"
#include "ecar_driver_msgs/ADCU_ParkCmd.h"
#include "ecar_driver_msgs/ADCU_PowerCmd.h"
#include "ecar_driver_msgs/ADCU_SteerCmd.h"
#include "ecar_driver_msgs/ADCU_SweepCmd.h"
#include "ecar_driver_msgs/ADCU_TripClear.h"
#include "ecar_driver_msgs/PCU_PowerCmd.h"
#include "ecar_driver_msgs/ADCU_SweepCmd.h"

#include "autoware_msgs/VehicleCmd.h"


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

    // 声明订阅者
    ros::Subscriber sub_control_command;
   

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
    ecar_driver_msgs::ADCU_DriveCmd drive_msg;
    ecar_driver_msgs::ADCU_BrakeCmd brake_msg;
    ecar_driver_msgs::ADCU_SteerCmd steer_msg;
    ecar_driver_msgs::ADCU_ParkCmd park_msg; 
    ecar_driver_msgs::ADCU_PowerCmd power_msg; //自驾总电源

    ecar_driver_msgs::ADCU_SweepCmd sweep_msg;
    ecar_driver_msgs::ADCU_BodyCmd body_msg;
    ecar_driver_msgs::ADCU_CrashClrCmd crash_msg;


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
 

      // 创建订阅者(订阅者对象=句柄.订阅（话题，消息队列大小，回调函数）) 
      sub_control_command = nh.subscribe("/vehicle_cmd", 1, &ControlConverter::control_command_callback,this);
      
      // 创建发布者（发布者对象=句柄.发布<消息类型>（话题，消息队列大小））
      pub_drive = nh.advertise<ecar_driver_msgs::ADCU_DriveCmd>("/ecar_driver/drive_command", 10);
      pub_brake = nh.advertise<ecar_driver_msgs::ADCU_BrakeCmd>("/ecar_driver/brake_command", 10);
      pub_steer = nh.advertise<ecar_driver_msgs::ADCU_SteerCmd>("/ecar_driver/steer_command", 10);
      pub_sweep = nh.advertise<ecar_driver_msgs::ADCU_SweepCmd>("/ecar_driver/sweep_command", 10);
      pub_park = nh.advertise<ecar_driver_msgs::ADCU_ParkCmd>("/ecar_driver/park_command", 10);//20240304新增
      pub_power = nh.advertise<ecar_driver_msgs::ADCU_PowerCmd>("/ecar_driver/power_command", 10);//20240305新增
      pub_body = nh.advertise<ecar_driver_msgs::ADCU_BodyCmd>("/ecar_driver/body_command", 10);//20240306新增

      

      Set_Init();
      // ros::Duration(10).sleep();
      Set_Enable();
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

    void Set_Init()
    {
      drive_msg.Drv_Active = 0;
      brake_msg.Brk_Active = 0;
      steer_msg.Str_Active = 0;
      park_msg.Prk_Active = 0;
      body_msg.LampCmd_Active = 0;
    }


    void Set_Enable()
    {
      drive_msg.Drv_Active = 1;
      brake_msg.Brk_Active = 1;
      steer_msg.Str_Active = 1;
      park_msg.Prk_Active = 1;
      body_msg.LampCmd_Active = 1;
    }




    
    void setvalue()
    {
      // body_msg.HeadLamp_Cmd=1;
      // body_msg.DblFlashLamp_Cmd=1;
      // body_msg.TurnLLamp_Cmd=1;
      // body_msg.TurnRLamp_Cmd=1;
      // body_msg.BackLamp_Cmd=1;
      // body_msg.Buzzer_Cmd=1;
      // body_msg.Horn_Cmd=1;
      // body_msg.RunLamp_Cmd=1;
      // body_msg.BrkLamp_Cmd=1;
      // body_msg.FogLamp_Cmd=1;
      // body_msg.WidthLamp_Cmd=1;
      drive_msg.Drv_TgtVehSpd0 = speed;
      brake_msg.Brk_TgtPedpos = brake;
      steer_msg.Str_TgtAngle = steer;
      drive_msg.Drv_CtrlMode = 1;
      brake_msg.Brk_CtrlMode = 0;
      steer_msg.Str_CtrlMode = 0;
      park_msg.Prk_Enable = 0; //驻车使能
      drive_msg.Drv_TgtGear=gear;
      
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

    }

    

    void control_command_callback(const autoware_msgs::VehicleCmd::ConstPtr &msg)
    {
      speed = fabs(msg->ctrl_cmd.linear_velocity);
      steer =msg->ctrl_cmd.steering_angle;
      brake=msg->brake_cmd.brake;
      gear=msg->gear_cmd.gear;

      ros::Time stamp = ros::Time::now();

      set_stamp(stamp);

      setvalue();

      if (steer > 0) //左转向
        {
          body_msg.TurnLLamp_Cmd = 1;
        }
      if (steer < 0) //右转向
        {
          body_msg.TurnRLamp_Cmd = 1;
        }
      if (gear == 1) //前进
        {
          body_msg.HeadLamp_Cmd = 1;
        }
      if (gear == 2) //后退
        {
          body_msg.BackLamp_Cmd = 1;
        }
      if (brake > 0) //制动
        {
          body_msg.BrkLamp_Cmd = 1;
        }

      pub_drive.publish(drive_msg);
      
      pub_steer.publish(steer_msg);
      pub_power.publish(power_msg);//20240305
      pub_park.publish(park_msg);//20240306
      pub_body.publish(body_msg);//20240306

      // ros::Duration(10).sleep();
      pub_brake.publish(brake_msg);

    }

};

int main(int argc, char **argv)
{
  ros::init(argc, argv, "e_car_control_converter");
  ControlConverter converter;
  ros::spin();
  return 0;
}
