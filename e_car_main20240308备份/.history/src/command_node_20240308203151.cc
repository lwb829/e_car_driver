#include "ros/ros.h"

#include "can_msgs/Frame.h" //CAN报文的框架，由对方提供

#include"e_car_msgs/ADCU_BodyCmd.h"
#include"e_car_msgs/ADCU_BrakeCmd.h"
#include"e_car_msgs/ADCU_CldBodyCmd.h"
#include"e_car_msgs/ADCU_CldDrvCmd.h"
#include"e_car_msgs/ADCU_CldPowerCmd.h"
#include"e_car_msgs/ADCU_CrashClrCmd.h"
#include"e_car_msgs/ADCU_DriveCmd.h"
#include"e_car_msgs/ADCU_ParkCmd.h"
#include"e_car_msgs/ADCU_PowerCmd.h"
#include"e_car_msgs/ADCU_SteerCmd.h"
#include"e_car_msgs/ADCU_SweepCmd.h"
#include"e_car_msgs/PCU_PowerCmd.h"

#include"e_car_main/ADCU_BodyCmd_115.hpp"
#include"e_car_main/ADCU_BrakeCmd_111.hpp"
#include"e_car_main/ADCU_CldBodyCmd_119.hpp"
#include"e_car_main/ADCU_CldDrvCmd_118.hpp"
#include"e_car_main/ADCU_CldPowerCmd_11A.hpp"
#include"e_car_main/ADCU_CrashClrCmd_12A.hpp"
#include"e_car_main/ADCU_DriveCmd_114.hpp"
#include"e_car_main/ADCU_ParkCmd_112.hpp"
#include"e_car_main/ADCU_PowerCmd_117.hpp"
#include"e_car_main/ADCU_SteerCmd_113.hpp"
#include"e_car_main/ADCU_SweepCmd_151.hpp"
#include"e_car_main/PCU_PowerCmd_127.hpp"

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

static e_car_msgs::ADCU_BrakeCmd brake_command_msg;
static e_car_msgs::ADCU_DriveCmd drive_command_msg;
static e_car_msgs::ADCU_ParkCmd park_command_msg;
static e_car_msgs::ADCU_PowerCmd power_command_msg;
static e_car_msgs::ADCU_SteerCmd steer_command_msg;
static e_car_msgs::ADCU_BodyCmd body_command_msg;
static e_car_msgs::ADCU_SweepCmd sweep_command_msg;
static e_car_msgs::ADCU_CrashClrCmd crash_clr_command_msg;
static e_car_msgs::ADCU_CldBodyCmd cld_body_command_msg;
static e_car_msgs::ADCU_CldPowerCmd cld_power_command_msg;
static e_car_msgs::ADCU_CldDrvCmd cld_drive_command_msg;
static e_car_msgs::PCU_PowerCmd pcu_power_command_msg;

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

static int brake_prev_t = 0, park_prev_t = 0, steer_prev_t = 0, drive_prev_t = 0, body_prev_t=0; // 刹车，停车，转向，油门

static void brake_callback(const e_car_msgs::ADCU_BrakeCmd &msg)
{
    brake_command.Reset();
    brake_command_msg = msg;
    can_brake.header.stamp = ros::Time::now();
    can_brake.dlc = 8;
    brake_command.UpdateData(
        brake_command_msg.Brk_Active,
        brake_command_msg.Brk_CtrlMode,
        brake_command_msg.Brk_TgtPedpos,
        brake_command_msg.Brk_TgtPress,
        brake_command_msg.Brk_TgtAccSpd,
        brake_command_msg.BrkCmd_RollCnt,
        brake_command_msg.BrkCmd_Checksum
    );
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

static void drive_callback(const e_car_msgs::ADCU_DriveCmd &msg)
{
    drive_command.Reset();
    drive_command_msg = msg;
    can_drive.header.stamp = ros::Time::now();
    can_drive.dlc = 8;
    drive_command.UpdateData(
        drive_command_msg.Drv_Active,
        drive_command_msg.Drv_CtrlMode,
        drive_command_msg.Drv_TgtGear,
        drive_command_msg.Drv_TgtPedpos,
        drive_command_msg.Drv_TgtVehSpd0,
        drive_command_msg.DrvCmd0_RollCnt,
        drive_command_msg.DrvCmd0_Checksum
    );
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

static void park_callback(const e_car_msgs::ADCU_ParkCmd &msg)
{
    park_command.Reset();
    park_command_msg = msg;
    can_park.header.stamp = ros::Time::now();
    can_park.dlc = 8;
    park_command.UpdateData(
        park_command_msg.Prk_Active,
        park_command_msg.Prk_Enable,
        park_command_msg.PrkCmd_RollCnt,
        park_command_msg.PrkCmd_Checksum
    );
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

static void power_callback(const e_car_msgs::ADCU_PowerCmd &msg)
{
    power_command.Reset();
    power_command_msg = msg;
    //can_power.header.stamp = ros::Time::now();
    can_power.dlc = 8;
    power_command.UpdateData(
        power_command_msg.ADVehPwrup_Cmd,
        power_command_msg.ADChasPwrup_Cmd,
        power_command_msg.AD12VMCPwrup_Cmd,
        power_command_msg.AD12VRCPwrup_Cmd,
        power_command_msg.AD24VMCPwrup_Cmd,
        power_command_msg.ADPA12VPwrup_Cmd,
        power_command_msg.ADPA24VPwrup_Cmd,
        power_command_msg.AD12VSC1Pwrup_Cmd,
        power_command_msg.AD12VSC2Pwrup_Cmd,
        power_command_msg.AD12VSC3Pwrup_Cmd,
        power_command_msg.AD12VSC4Pwrup_Cmd,
        power_command_msg.AD12VSC5Pwrup_Cmd,
        power_command_msg.AD12VSC6Pwrup_Cmd,
        power_command_msg.AD12VMCPwrdownCnfm_Cmd,
        power_command_msg.AD12VRCPwrdownCnfm_Cmd,
        power_command_msg.AD24VMCPwrdownCnfm_Cmd,
        power_command_msg.ADPA12VPwrdownCnfm_Cmd,
        power_command_msg.ADPA24VPwrdwnCnfm_Cmd,
        power_command_msg.PwrCmd_RollCnt,
        power_command_msg.PwrCmd_Checksum
    );
    can_power.id = power_command.ID;
    can_power.is_extended = false;
    uint8_t *A;
    A = power_command.get_data();
    for(uint i=0; i<8; i++)
    {
        can_power.data[i] = *A;
        A += 1;
    }
    pub_can.publish(can_power);
}

static void steer_callback(const e_car_msgs::ADCU_SteerCmd &msg)
{
    steer_command.Reset();
    steer_command_msg = msg;
    can_steer.header.stamp = ros::Time::now();
    can_steer.dlc = 8;
    steer_command.UpdateData(
        steer_command_msg.Str_Active,
        steer_command_msg.Str_CtrlMode,
        steer_command_msg.Str_TgtAngle,
        steer_command_msg.Str_TgtAngleSpd,
        steer_command_msg.StrCmd_RollCnt,
        steer_command_msg.StrCmd_Checksum
    );
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

static void body_callback(const e_car_msgs::ADCU_BodyCmd &msg)
{
    body_command.Reset();
    body_command_msg = msg;
    //can_body.header.stamp = ros::Time::now();
    can_body.dlc = 8;
    body_command.UpdateData(
        body_command_msg.LampCmd_Active,
        body_command_msg.HeadLamp_Cmd,
        body_command_msg.DblFlashLamp_Cmd,
        body_command_msg.TurnLLamp_Cmd,
        body_command_msg.TurnRLamp_Cmd,
        body_command_msg.BackLamp_Cmd,
        body_command_msg.Buzzer_Cmd,
        body_command_msg.Horn_Cmd,
        body_command_msg.RunLamp_Cmd,
        body_command_msg.BrkLamp_Cmd,
        body_command_msg.FogLamp_Cmd,
        body_command_msg.WidthLamp_Cmd,
        body_command_msg.LampCmd_RollCnt,
        body_command_msg.LampCmd_Checksum
    );
    can_body.id = body_command.ID;
    can_body.is_extended = false;
    uint8_t *A;
    A = body_command.get_data();
    for(uint i=0; i<8; i++)
    {
        can_body.data[i] = *A;
        A += 1;
    }
    int t_nsec = 0;
    t_nsec = can_steer.header.stamp.toNSec();
    body_prev_t = t_nsec;
}

static void sweep_callback(const e_car_msgs::ADCU_SweepCmd &msg)
{
    sweep_command.Reset();
    sweep_command_msg = msg;
    //can_sweep.header.stamp = ros::Time::now();
    can_sweep.dlc = 8;
    sweep_command.UpdateData(
        sweep_command_msg.Tgt_SweepMode,
        sweep_command_msg.Sweep_Cmd,
        sweep_command_msg.ShakeDust_Cmd,
        sweep_command_msg.GbgDump_Cmd,
        sweep_command_msg.FtFenderCtrl_Cmd,
        sweep_command_msg.SweepEStop_Cmd,
        sweep_command_msg.BrushWtrValFbd_Cmd,
        sweep_command_msg.SweepCmd_RollCnt,
        sweep_command_msg.SweepCmd_Checksum
    );
    can_sweep.id = sweep_command.ID;
    can_sweep.is_extended = false;
    uint8_t *A;
    A = sweep_command.get_data();
    for(uint i=0; i<8; i++)
    {
        can_sweep.data[i] = *A;
        A += 1;
    }
    pub_can.publish(can_sweep);
}

static void crash_callback(const e_car_msgs::ADCU_CrashClrCmd &msg)
{
    crash_command.Reset();
    crash_clr_command_msg = msg;
    //can_crash.header.stamp = ros::Time::now();
    can_crash_clr.dlc = 8;
    crash_command.UpdateData(
        crash_clr_command_msg.CrashClearCmd_Valid,
        crash_clr_command_msg.CrashClear_Cmd,
        crash_clr_command_msg.EmgcSwhClearCmd_Valid,
        crash_clr_command_msg.EmgcSwhClear_Cmd,
        crash_clr_command_msg.CrashClr_RollCnt,
        crash_clr_command_msg.CrashClr_Checksum
    );
    can_crash_clr.id = crash_command.ID;
    can_crash_clr.is_extended = false;
    uint8_t *A;
    A = crash_command.get_data();
    for(uint i=0; i<8; i++)
    {
        can_crash_clr.data[i] = *A;
        A += 1;
    }
    pub_can.publish(can_crash_clr);
}

static void cld_body_callback(const e_car_msgs::ADCU_CldBodyCmd &msg)
{
    cld_body_command.Reset();
    cld_body_command_msg = msg;
    // can_cld_body.header.stamp = ros::Time::now();
    can_cld_body.dlc = 8;
    cld_body_command.UpdateData(
        cld_body_command_msg.Cld_WidthLamp_Cmd,
        cld_body_command_msg.Cld_BrkLamp_Cmd,
        cld_body_command_msg.Cld_FogLamp_Cmd,
        cld_body_command_msg.Cld_HeadLamp_Cmd,
        cld_body_command_msg.Cld_DblFlashLamp_Cmd,
        cld_body_command_msg.Cld_TurnLLamp_Cmd,
        cld_body_command_msg.Cld_TurnRLamp_Cmd,
        cld_body_command_msg.Cld_BackLamp_Cmd,
        cld_body_command_msg.Cld_Buzzer_Cmd,
        cld_body_command_msg.Cld_Horn_Cmd,
        cld_body_command_msg.Cld_RunLamp_Cmd,
        cld_body_command_msg.CldBodyCmd_RollCnt,
        cld_body_command_msg.CldBodyCmd_Checksum
    );
    can_cld_body.id = cld_body_command.ID;
    can_cld_body.is_extended = false;
    uint8_t *A;
    A = cld_body_command.get_data();
    for(uint i=0; i<8; i++)
    {
        can_cld_body.data[i] = *A;
        A += 1;
    };
    pub_can.publish(can_cld_body);
}

static void cld_power_callback(const e_car_msgs::ADCU_CldPowerCmd &msg)
{
    cld_power_command.Reset();
    cld_power_command_msg = msg;
    // can_cld_power.header.stamp = ros::Time::now();
    can_cld_power.dlc = 8;
    cld_power_command.UpdateData(
        cld_power_command_msg.CldVehPwrup_Cmd,
        cld_power_command_msg.CldChasPwrup_Cmd,
        cld_power_command_msg.Cld12VMCPwrup_Cmd,
        cld_power_command_msg.Cld12VRCPwrup_Cmd,
        cld_power_command_msg.Cld24VMCPwrup_Cmd,
        cld_power_command_msg.CldPA12VPwrup_Cmd,
        cld_power_command_msg.CldPA24VPwrup_Cmd,
        cld_power_command_msg.Cld12VSC1Pwrup_Cmd,
        cld_power_command_msg.Cld12VSC2Pwrup_Cmd,
        cld_power_command_msg.Cld12VSC3Pwrup_Cmd,
        cld_power_command_msg.Cld12VSC4Pwrup_Cmd,
        cld_power_command_msg.Cld12VSC5Pwrup_Cmd,
        cld_power_command_msg.Cld12VSC6Pwrup_Cmd,
        cld_power_command_msg.Cld12VMCPwrdownCnfm_Cmd,
        cld_power_command_msg.Cld12VRCPwrdownCnfm_Cmd,
        cld_power_command_msg.Cld24VMCPwrdownCnfm_Cmd,
        cld_power_command_msg.CldPA12VPwrdownCnfm_Cmd,
        cld_power_command_msg.CldPA24VPwrdownCnfm_Cmd,
        cld_power_command_msg.CldPwrCmd_RollCnt,
        cld_power_command_msg.CldPwrCmd_Checksum
    );
    can_cld_power.id = cld_power_command.ID;
    can_cld_power.is_extended = false;
    uint8_t *A;
    A = cld_power_command.get_data();
    for(uint i=0; i<8; i++)
    {
        can_cld_power.data[i] = *A;
        A += 1;
    }
    pub_can.publish(can_cld_power);
}

static void cld_drive_callback(const e_car_msgs::ADCU_CldDrvCmd &msg)
{
    cld_drive_command.Reset();
    cld_drive_command_msg = msg;
    // can_cld_drive.header.stamp = ros::Time::now();
    can_cld_drive.dlc = 8;
    cld_drive_command.UpdateData(
        cld_drive_command_msg.Cld_CtrlActive,
        cld_drive_command_msg.Cld_PrkEnable,
        cld_drive_command_msg.Cld_DriveMode,
        cld_drive_command_msg.Cld_TgtGear,
        cld_drive_command_msg.Cld_TgtThrotVal,
        cld_drive_command_msg.Cld_TgtBrkVal,
        cld_drive_command_msg.Cld_TgtStrAngle,
        cld_drive_command_msg.CldDrvCmd_RollCnt,
        cld_drive_command_msg.CldDrvCmd_Checksum
    );
    can_cld_drive.id = cld_drive_command.ID;
    can_cld_drive.is_extended = false;
    uint8_t *A;
    A = cld_drive_command.get_data();
    for(uint i=0; i<8; i++)
    {
        can_cld_drive.data[i] = *A;
        A += 1;
    }
    pub_can.publish(can_cld_drive);
}

static void pcu_power_callback(const e_car_msgs::PCU_PowerCmd &msg)
{
    pcu_power_command.Reset();
    pcu_power_command_msg = msg;
    // can_pcu_power.header.stamp = ros::Time::now();
    can_pcu_power.dlc = 8;
    pcu_power_command.UpdateData(
        pcu_power_command_msg.ADChasPwrup_Cmd,
        pcu_power_command_msg.AD12VMCPwrup_Cmd,
        pcu_power_command_msg.AD12VSC1Pwrup_Cmd,
        pcu_power_command_msg.AD12VSC2Pwrup_Cmd,
        pcu_power_command_msg.AD12VSC3Pwrup_Cmd,
        pcu_power_command_msg.AD12VSC4Pwrup_Cmd,
        pcu_power_command_msg.AD12VSC5Pwrup_Cmd,
        pcu_power_command_msg.AD12VSC6Pwrup_Cmd,
        pcu_power_command_msg.PwrCmd_RollCnt,
        pcu_power_command_msg.PwrCmd_Checksum
    );
    can_pcu_power.id = pcu_power_command.ID;
    can_pcu_power.is_extended = false;
    uint8_t *A;
    A = pcu_power_command.get_data();
    for(uint i=0; i<8; i++)
    {
        can_pcu_power.data[i] = *A;
        A += 1;
    }
    pub_can.publish(can_pcu_power);
}

void timer_callback(const ros::TimerEvent &te)
{
    int time_diff;
    int now;
    now = ros::Time::now().toNSec();

    // brake
    if(now - brake_prev_t>30000000)
    {
        for (uint i = 0; i < 8; i++)
        {
            can_brake.id = brake_command.ID;
            can_brake.data[i] = 0;
        }
        pub_can.publish(can_brake);
    }
    else
    {
        pub_can.publish(can_brake);
    }

    //park
    if(now - park_prev_t>30000000)
    {
        for (uint i = 0; i < 8; i++)
        {
            can_park.id = park_command.ID;
            can_park.data[i] = 0;
        }
        pub_can.publish(can_park);
    }
    else
    {
        pub_can.publish(can_park);
    }

    //drive
    if(now - drive_prev_t>30000000)
    {
        for (uint i = 0; i < 8; i++)
        {
            can_drive.id = drive_command.ID;
            can_drive.data[i] = 0;
        }
        pub_can.publish(can_drive);
    }
    else
    {
        pub_can.publish(can_drive);
    }

    //steer
    if(now - steer_prev_t>30000000)
    {
        for (uint i = 0; i < 8; i++)
        {
            can_steer.id = steer_command.ID;
            can_steer.data[i] = 0;
        }
        pub_can.publish(can_steer);
    }
    else
    {
        pub_can.publish(can_steer);
    }

}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "e_car_command_node");
    ros::NodeHandle nh;
    
    ros::Subscriber sub_brake = nh.subscribe("/e_car_main/brake_command", 1, brake_callback);
    ros::Subscriber sub_park = nh.subscribe("/e_car_main/park_command", 1, park_callback);
    ros::Subscriber sub_drive = nh.subscribe("/e_car_main/drive_command", 1, drive_callback);
    ros::Subscriber sub_steer = nh.subscribe("/e_car_main/steer_command", 1, steer_callback);
    ros::Subscriber sub_power = nh.subscribe("/e_car_main/power_command", 1, power_callback);
    ros::Subscriber sub_sweep = nh.subscribe("/e_car_main/sweep_command", 1, sweep_callback);
    ros::Subscriber sub_cld_power = nh.subscribe("/e_car_main/cld_power_command", 1, cld_power_callback);
    ros::Subscriber sub_cld_drive = nh.subscribe("/e_car_main/cld_drive_command", 1, cld_drive_callback);
    ros::Subscriber sub_pcu_power = nh.subscribe("/e_car_main/pcu_power_command", 1, pcu_power_callback);
    ros::Subscriber sub_crash = nh.subscribe("/e_car_main/crash_command", 1, crash_callback);
    ros::Subscriber sub_body = nh.subscribe("/e_car_main/body_command", 1, body_callback);
    ros::Subscriber sub_cld_body = nh.subscribe("/e_car_main/cld_body_command", 1, cld_body_callback);

    pub_can = nh.advertise<can_msgs::Frame>("/sent_messages", 10, true);

    ros::Timer set_speed = nh.createTimer(ros::Duration(1/50.0), timer_callback);
    ros::spin();

    return 0;
}