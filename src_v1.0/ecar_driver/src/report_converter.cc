#include<ros/ros.h>

#include <nav_msgs/Odometry.h>
#include<geometry_msgs/TwistStamped.h>
#include "std_msgs/Header.h"
#include "std_msgs/Float32.h"
#include<iostream>

#include "ecar_driver_msgs/SteerReport.h"
#include "ecar_driver_msgs/CDCU_VehRrWhlSpd.h"
#include "ecar_driver_msgs/CDCU_VehFtWhlSpd.h"
#include "ecar_driver_msgs/CDCU_VehDyncState.h"
#include "ecar_driver_msgs/CDCU_SweepStatus.h"

#include "ecar_driver_msgs/CDCU_BrakeStatus.h"
#include "ecar_driver_msgs/CDCU_DriveStatus.h"
#include "ecar_driver_msgs/CDCU_ParkStatus.h"


#include "autoware_vehicle_msgs/Steering.h"
#include "autoware_vehicle_msgs/ShiftStamped.h"
#include "autoware_vehicle_msgs/TurnSignal.h"
#include "autoware_vehicle_msgs/ControlMode.h"

#include "ecar_driver/steering_report_215.h"
#include "ecar_driver/VehDyncState_250.hpp"
#include "ecar_driver/VehFtWhlSpd_251.hpp"
#include "ecar_driver/VehRrWhlSpd_252.hpp"
#include "ecar_driver/SweepStatus_291.hpp"
#include "ecar_driver/BrakeStatus_211.hpp"
#include "ecar_driver/DriveStatus_217.hpp"
#include "ecar_driver/ParkStatus_213.hpp"

#include <math.h>
#include <iostream>


float steer_factor=1.0;

class Report_Converter
{
    public:

    Report_Converter();
    void steer_callback(const ecar_driver_msgs::SteerReport &msg);
    void spd_callback(const ecar_driver_msgs::CDCU_VehDyncState &msg);
    void gear_callback(const ecar_driver_msgs::CDCU_DriveStatus &msg);
    void vcu_callback();


    private:

    ros::NodeHandle nh;

    autoware_vehicle_msgs::Steering steer_msg;
    autoware_vehicle_msgs::ShiftStamped shift_msg;
    autoware_vehicle_msgs::TurnSignal turn_singal_msg;
    autoware_vehicle_msgs::ControlMode control_mode;
    geometry_msgs::TwistStamped twist_msg;
    std_msgs::Float32 velocity_msg;



    double linear_velocity;  //线速度
    double angular_velocity; //角速度
    int shift;               //档位
    int turn_signal;         //转向信号
    double steer;            //转角
    int mode;
    double vel_longtdSpd;    //纵向车速

    ros::Subscriber sub_steer;
    ros::Subscriber sub_spd;
    ros::Subscriber sub_gear;
    ros::Subscriber sub_vcu;
    ros::Subscriber sub_imu;


    ros::Publisher pub_steer;
    ros::Publisher pub_shift;
    ros::Publisher pub_turn_signal;
    ros::Publisher pub_control_mode;
    ros::Publisher pub_twist;
    ros::Publisher pub_velocity;
    
};

Report_Converter::Report_Converter()
{
    linear_velocity = 0.0;
    angular_velocity = 0.0;
    shift = 0;
    turn_signal = 0;
    steer = 0.0;
    mode = 0;



    sub_steer=nh.subscribe("/steer_report", 1, &Report_Converter::steer_callback,this);
    sub_spd = nh.subscribe("/vel_spd", 1, &Report_Converter::spd_callback,this);
    sub_gear=nh.subscribe("/drive_report", 1, &Report_Converter::gear_callback,this);
    // sub_imu=nh.subscrible("/steer_report", 1, &steer_callback);

    pub_steer=nh.advertise<autoware_vehicle_msgs::Steering>("/vehicle/status/steering",1);
    pub_shift=nh.advertise<autoware_vehicle_msgs::ShiftStamped>("/vehicle/status/shift",1);
    pub_turn_signal=nh.advertise<autoware_vehicle_msgs::TurnSignal>("/vehicle/status/turn_signal",1);
    pub_control_mode=nh.advertise<autoware_vehicle_msgs::ControlMode>("/vehicle/status/control_mode",1);
    pub_twist=nh.advertise<geometry_msgs::TwistStamped>("/vehicle/status/twist",1);
    pub_velocity=nh.advertise<std_msgs::Float32>("/vehicle/status/velocity",1);


}


void Report_Converter::steer_callback(const ecar_driver_msgs::SteerReport &msg)
{
    this->steer=msg.cdcu_eps_strWhlAngle;//实际前轮转角
    this->angular_velocity=msg.cdcu_eps_WhlSpd;//实际转向角速度
    // this->turn_signal=msg.cdcu_eps_strWhlAngle;
    steer_msg.header.frame_id="base_link";
    steer_msg.header.stamp=msg.header.stamp;
    steer_msg.data= this->steer;
    pub_steer.publish(steer_msg);


    twist_msg.header.frame_id = "base_link";
    twist_msg.header.stamp = msg.header.stamp;
    twist_msg.twist.linear.x = this->vel_longtdSpd;
    twist_msg.twist.angular.z =this->angular_velocity; 
    pub_twist.publish(twist_msg);
}

void Report_Converter::spd_callback(const ecar_driver_msgs::CDCU_VehDyncState &msg)
{
    this->vel_longtdSpd=msg.cdcu_veh_longtdnal_speed;//车辆纵向速度
    velocity_msg.data=this->vel_longtdSpd;
    pub_velocity.publish(velocity_msg);
}

void Report_Converter::gear_callback(const ecar_driver_msgs::CDCU_DriveStatus &msg)
{
    this->shift=msg.CDCU_MCU_GearAct;//实际档位0:N,1:P,2:R
    this->mode=msg.CDCU_MCU_WorkMode;//0:遥控驾驶，2：远程驾驶，3：自动驾驶
    shift_msg.header.frame_id = "base_link";
    shift_msg.header.stamp = msg.header.stamp;
    shift_msg.shift.data=this->shift;
    pub_shift.publish(shift_msg);
}




















int main(int argc, char* argv[])
{
    ros::init(argc, argv, "ecar_driver_report_converter");
    Report_Converter report_converter;
    ros::spin();
    return 0;

}

