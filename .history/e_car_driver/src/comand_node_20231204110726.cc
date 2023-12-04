#include "ros/ros.h"

#include "can_msgs/Frame.h" //CAN报文的框架，由对方提供

#include"e_car_driver_msgs/ADCU_BodyCmd.h"
#include"e_car_driver_msgs/ADCU_BrakeCmd.h"
#include"e_car_driver_msgs/ADCU_CldBodyCmd.h"
#include"e_car_driver_msgs/ADCU_CldDrvCmd.h"
#include"e_car_driver_msgs/ADCU_CldPowerCmd.h"
#include"e_car_driver_msgs/ADCU_CrashClrCmd.h"
#include"e_car_driver_msgs/ADCU_DriveCmd.h"
#include"e_car_driver_msgs/ADCU_ParkCmd.h"
#include"e_car_driver_msgs/ADCU_PowerCmd.h"
#include"e_car_driver_msgs/ADCU_SteerCmd.h"
#include"e_car_driver_msgs/ADCU_SweepCmd.h"
#include"e_car_driver_msgs/PCU_PowerCmd.h"

#include"ADCU_BodyCmd_115.hpp"
#include"ADCU_BrakeCmd_111.hpp"
#include"ADCU_CldBodyCmd_119.hpp"
#include"ADCU_CldDrvCmd_118.hpp"
#include"ADCU_CldPowerCmd_11A.hpp"
#include"ADCU_CrashClrCmd_12A.hpp"
#include"ADCU_DriveCmd_114.hpp"
#include"ADCU_ParkCmd_112.hpp"
#include"ADCU_PowerCmd_117.hpp"
#include"ADCU_SteerCmd_113.hpp"
#include"ADCU_SweepCmd_151.hpp"
#include"PCU_PowerCmd_127.hpp"

int time_diff = 200000;//时间差

static ros::Publisher pub_can;

static can_msgs::Frame can_brake;
static can_msgs::Frame can_drive;
static can_msgs::Frame can_park;
static can_msgs::Frame can_power;
static can_msgs::Frame can_steer;
static can_msgs::Frame can_body;
static can_msgs::Frame can_sweep;
static can_msgs::Frame can_crash_clr;
static can_msgs::Frame can_cld_body;
static can_msgs::Frame can_cld_power;
static can_msgs::Frame can_cld_drive;
static can_msgs::Frame can_pcu_power;

static e_car_driver_msgs::ADCU_BrakeCmd brake_command_msg;
static e_car_driver_msgs::ADCU_DriveCmd drive_command_msg;
static e_car_driver_msgs::ADCU_ParkCmd park_command_msg;
static e_car_driver_msgs::ADCU_PowerCmd power_command_msg;
static e_car_driver_msgs::ADCU_SteerCmd steer_command_msg;
static e_car_driver_msgs::ADCU_BodyCmd body_command_msg;
static e_car_driver_msgs::ADCU_SweepCmd sweep_command_msg;
static e_car_driver_msgs::ADCU_CrashClrCmd crash_clr_command_msg;
static e_car_driver_msgs::ADCU_CldBodyCmd cld_body_command_msg;
static e_car_driver_msgs::ADCU_CldPowerCmd cld_power_command_msg;
static e_car_driver_msgs::ADCU_CldDriveCmd cld_drive_command_msg;
static e_car_driver_msgs::PCU_PowerCmd pcu_power_command_msg;

static ADCUBrakeCmd111 brake_command;
static ADCUDriveCmd114 drive_command;
static ADCUParkCmd112 park_command;
static ADCUPowerCmd117 power_command;
static ADCUSteerCmd113 steer_command;
static ADCUBodyCmd115 body_command;
static ADCUSweepCmd151 sweep_command;
static ADCUCrashClrCmd12A crash_command;
static ADCUCldBodyCmd119 cld_body_command;
static ADCUCldDrvCmd118 cld_drive_command;
static ADCUCldPowerCmd11A cld_power_command;
static PCUPowerCmd127 pcu_power_command;

static int brake_prev_t=0, park_prev_t=0, steer_prev_t=0, drive_prev_t=0;//刹车，停车，转向，油门

static void brake_callback(const e_car_driver_msgs::ADCU_BrakeCmd &msg)
{
    brake_command.Reset();
    brake_command_msg = msg;
    can_brake.header.stamp = ros::Time::now();
    can_brake.dlc = 8;
    brake_command.UpdateData(
        brake_command_msg.Brk_Active
        brake_command_msg.Brk_CtrlMode
        brake_command_msg.Brk_TgtPedpos
        brake_command_msg.Brk_TgtPress
        brake_command_msg.Brk_TgtAccSpd
        brake_command_msg.BrkCmd_RollCnt
        brake_command_msg.BrkCmd_Checksum
    )
    can_brake.id = brake_command.ID;
    can_brake.is_extended = false;
    uint8_t *A;
    A = brake_command.get_data();
    for(uint i=0; i<8; i++)
    {
        can_brake.data[i] = *A;
        A += 1;
    }
    int t_nsec = 0;
    t_nsec = can_brake.header.stamp.toNSec();
    brake_prev_t = t_nsec;
}

static void drive_callback(const e_car_driver_msgs::ADCU_DriveCmd &msg)
{
    drive_command.Reset();
    drive_command_msg = msg;
    can_drive.header.stamp = ros::Time::now();
    can_drive.dlc = 8;
    drive_command.UpdateData(
        drive_command_msg.Drv_Active
        drive_command_msg.Drv_CtrlMode
        drive_command_msg.Drv_TgtGear
        drive_command_msg.Drv_TgtPedpos
        drive_command_msg.Drv_TgtVehSpd0
        drive_command_msg.DrvCmd0_RollCnt
        drive_command_msg.DrvCmd0_Checksum
    )
    can_drive.id = drive_command.ID;
    can_drive.is_extended = false;
    uint8_t *A;
    A = drive_command.get_data();
    for(uint i=0; i<8; i++)
    {
        can_drive.data[i] = *A;
        A += 1;
    }
    int t_nsec = 0;
    t_nsec = can_drive.header.stamp.toNSec();
    drive_prev_t = t_nsec;
}

static void park_callback(const e_car_driver_msgs::ADCU_ParkCmd &msg)
{
    park_command.Reset();
    park_command_msg = msg;
    can_park.header.stamp = ros::Time::now();
    can_park.dlc = 8;
    park_command.UpdateData(
        park_command_msg.Park_Active
        park_command_msg.Prk_Enable
        park_command_msg.PrkCmd_RollCnt
        park_command_msg.PrkCmd_Checksum
    )
    can_park.id = park_command.ID;
    can_park.is_extended = false;
    uint8_t *A;
    A = park_command.get_data();
    for(uint i=0; i<8; i++)
    {
        can_park.data[i] = *A;
        A += 1;
    }
    int t_nsec = 0;
    t_nsec = can_park.header.stamp.toNSec();
    park_prev_t = t_nsec;
}

static void steer_callback(const e_car_driver_msgs:ADCU_SteerCmd &msg)
{
    steer_command.Reset();
    steer_command_msg = msg;
    can_steer.header.stamp = ros::Time::now();
    can_steer.dlc = 8;
    steer_command.UpdateData(
        steer_command_msg.Str_Active
        steer_command_msg.Str_CtrlMode
        steer_command_msg.Str_TgtAngle
        steer_command_msg.Str_TgtAngleSpd
        steer_command_msg.StrCmd_RollCnt
        steer_command_msg.StrCmd_Checksum
    )
    can_steer.id = steer_command.ID;
    can_steer.is_extended = false;
    uint8_t *A;
    A = steer_command.get_data();
    for(uint i=0; i<8; i++)
    {
        can_steer.data[i] = *A;
        A += 1;
    }
    int t_nsec = 0;
    t_nsec = can_steer.header.stamp.toNSec();
    steer_prev_t = t_nsec;
}
