#include <ros/ros.h>
#include <can_msgs/Frame.h>
#include <nav_msgs/Odometry.h>

#include "std_msgs/Header.h"


#include "ecar_driver_msgs/SteerReport.h"
#include "ecar_driver_msgs/CDCU_VehRrWhlSpd.h"
#include "ecar_driver_msgs/CDCU_VehFtWhlSpd.h"
#include "ecar_driver_msgs/CDCU_VehDyncState.h"
#include "ecar_driver_msgs/CDCU_SweepStatus.h"

#include "ecar_driver_msgs/CDCU_BrakeStatus.h"
#include "ecar_driver_msgs/CDCU_DriveStatus.h"
#include "ecar_driver_msgs/CDCU_ParkStatus.h"
#include "ecar_driver_msgs/CDCU_VehState.h"


#include "ecar_driver/steering_report_215.h"
#include "ecar_driver/VehDyncState_250.hpp"
#include "ecar_driver/VehFtWhlSpd_251.hpp"
#include "ecar_driver/VehRrWhlSpd_252.hpp"
#include "ecar_driver/SweepStatus_291.hpp"
#include "ecar_driver/BrakeStatus_211.hpp"
#include "ecar_driver/DriveStatus_217.hpp"
#include "ecar_driver/ParkStatus_213.hpp"
#include "ecar_driver/VehState_240.hpp"

#include <math.h>
#include <iostream>


static can_msgs::Frame can_frame_msg;

static ros::Publisher pub_steer;
static ros::Publisher pub_velspd;
static ros::Publisher pub_ftspd;
static ros::Publisher pub_rrspd;
static ros::Publisher pub_sweep;
static ros::Publisher pub_BrakeStatus;
static ros::Publisher pub_DriveStatus;
static ros::Publisher pub_ParkStatus;
static ros::Publisher pub_twist;
static ros::Publisher pub_VehState;

static ecar_driver_msgs::SteerReport steer_report_msg;
static ecar_driver_msgs::CDCU_VehDyncState VehDyncState_report_msg;
static ecar_driver_msgs::CDCU_VehFtWhlSpd VehFtWhSpd_report_msg;
static ecar_driver_msgs::CDCU_VehRrWhlSpd VehRrWhlSpd_report_msg;
static ecar_driver_msgs::CDCU_SweepStatus SweepStatus_report_msg;


static ecar_driver_msgs::CDCU_BrakeStatus BrakeStatus_report_msg;
static ecar_driver_msgs::CDCU_DriveStatus DriveStatus_report_msg;
static ecar_driver_msgs::CDCU_ParkStatus ParkStatus_report_msg;
static ecar_driver_msgs::CDCU_VehState VehState_report_msg;

static nav_msgs::Odometry  twist_msg;

static Steeringreport215 steer_report;
static VehDyncState250 VehDyncState_report;
static VehFtWhlSpd251 VehFtWhSpd_report;
static VehRrWhlSpd252 VehRrWhlSpd_report;
static SweepStatus291 SweepStatus_report;
static BrakeStatus211  BrakeStatus_report;
static DriveStatus217 DriveStatus_report;
static ParkStatus213 ParkStatus_report;
static VehState240 VehState_report;


static void can_callback(const can_msgs::Frame &msg)
{
    can_frame_msg = msg;
    std_msgs::Header header;
    header.frame_id = "ecar";
    header.stamp = can_frame_msg.header.stamp;
    // std::cout<<"can_msg_ID:"<<can_frame_msg.id<<std::endl;

    //车辆转向状态,0x215=533
    if(can_frame_msg.id==steer_report.ID)
    {
        // std::cout<<"can_msg_ID:"<<can_frame_msg.id<<",steer_report_ID:"<<steer_report.ID<<std::endl;
        uint8_t byte_temp[8];
        for(uint i=0;i<8;i++)
        {
            byte_temp[i] = can_frame_msg.data[i];
        }
        steer_report.update_bytes(byte_temp);
        steer_report.Parse();
        steer_report_msg.header = header;
        steer_report_msg.cdcu_eps_workMode=steer_report.cdcu_eps_workMode;
        steer_report_msg.cdcu_eps_strWhlAngle= steer_report.cdcu_eps_strWhlAngle;//转角，单位:deg
        steer_report_msg.cdcu_eps_WhlSpd= steer_report.cdcu_eps_whlSpd;//角速度，单位:deg/s
        pub_steer.publish(steer_report_msg);
        // std::cout <<"前轮转角:"<<steer_report.cdcu_eps_strWhlAngle<<
        // ",前轮转向角速度:"<<steer_report.cdcu_eps_whlSpd<<std::endl;
    }

    //车辆纵向状态信息,0x250=592
    if(can_frame_msg.id==VehDyncState_report.ID)
    {
        // std::cout<<"can_msg_ID:"<<can_frame_msg.id<<",VehDyncState_report_ID:"<<VehDyncState_report.ID<<std::endl;
        uint8_t byte_temp[8];
        for(uint i=0;i<8;i++)
        {
            byte_temp[i] = can_frame_msg.data[i];
            // std::cout << int(can_frame_msg.data[i]) << " ";
        }
        // std::cout << "\n";
        VehDyncState_report.update_bytes(byte_temp);
        VehDyncState_report.Parse();
        VehDyncState_report_msg.header = header;
        VehDyncState_report_msg.cdcu_veh_run_directon=VehDyncState_report.cdcu_veh_run_directon;  //车辆前进方向
        VehDyncState_report_msg.cdcu_veh_longtdnal_speed= VehDyncState_report.cdcu_veh_longtdnal_speed;//纵向速度,km/h
        VehDyncState_report_msg.cdcu_veh_longtdnal_acc_speed=VehDyncState_report.cdcu_veh_longtdnal_acc_speed;//纵向加速度,m/s^2
        VehDyncState_report_msg.cdcu_veh_curvture=VehDyncState_report.cdcu_veh_curvture;//曲率,m^-1
        pub_velspd.publish(VehDyncState_report_msg);
        // std::cout<<"车身:speed:"<<VehDyncState_report_msg.cdcu_veh_longtdnal_speed<<
        // "km/h,acc_speed:"<<VehDyncState_report_msg.cdcu_veh_longtdnal_acc_speed<<"m/s^2"<<std::endl;
    }

    //前轮速度信息,0x251
    if(can_frame_msg.id==VehFtWhSpd_report.ID)
    {
       uint8_t byte_temp[8];
        for(uint i=0;i<8;i++)
        {
            byte_temp[i] = can_frame_msg.data[i];
            // std::cout << int(can_frame_msg.data[i]) << " ";
        }
        VehFtWhSpd_report.update_bytes(byte_temp);
        VehFtWhSpd_report.Parse();
        VehFtWhSpd_report_msg.header = header;
        VehFtWhSpd_report_msg.cdcu_veh_rtft_whlspeed= VehFtWhSpd_report.cdcu_veh_rtft_whlspeed;//右前轮速度
        VehFtWhSpd_report_msg.cdcu_veh_ltft_whlspeed = VehFtWhSpd_report.cdcu_veh_ltft_whlspeed;//左前轮速度
        VehFtWhSpd_report_msg.cdcu_veh_ltft_whlspeed_valid = VehFtWhSpd_report.cdcu_veh_ltft_whlspeed_valid;//是否有效
        VehFtWhSpd_report_msg.cdcu_veh_rtft_whlspeed_valid=VehFtWhSpd_report.cdcu_veh_rtft_whlspeed_valid;
        pub_ftspd.publish(VehFtWhSpd_report_msg);
        // std::cout<<"左前轮速度:"<<VehFtWhSpd_report_msg.cdcu_veh_ltft_whlspeed<<
        // "右前轮速度:"<<VehFtWhSpd_report_msg.cdcu_veh_rtft_whlspeed<<std::endl;
    }

    //后轮状态信息，0x252
    if(can_frame_msg.id==VehRrWhlSpd_report.ID)
    {
        uint8_t byte_temp[8];
        for(uint i=0;i<8;i++)
        {
            byte_temp[i] = can_frame_msg.data[i];
            // std::cout << int(can_frame_msg.data[i]) << " ";
        }
        VehRrWhlSpd_report_msg.header = header;
        VehRrWhlSpd_report.update_bytes(byte_temp);
        VehRrWhlSpd_report.Parse();
        VehRrWhlSpd_report_msg.cdcu_veh_lfrr_whlspeed = VehRrWhlSpd_report.cdcu_veh_lfrr_whlspeed; //左后轮速
        VehRrWhlSpd_report_msg.cdcu_veh_lfrr_whlspeed_valid = VehRrWhlSpd_report.cdcu_veh_lfrr_whlspeed_valid;
        VehRrWhlSpd_report_msg.cdcu_veh_rtrr_whlspeed = VehRrWhlSpd_report.cdcu_veh_lfrr_whlspeed;  //右后轮速
        VehRrWhlSpd_report_msg.cdcu_veh_rtrr_whlspeed_valid= VehRrWhlSpd_report.cdcu_veh_rtrr_whlspeed_valid;
        pub_rrspd.publish(VehRrWhlSpd_report_msg);
        // std::cout<<"左后轮速度:"<<VehRrWhlSpd_report_msg.cdcu_veh_rtrr_whlspeed<<
        // "右后轮速度:"<<VehRrWhlSpd_report_msg.cdcu_veh_rtrr_whlspeed<<std::endl;
    }

    //清扫状态
    if(can_frame_msg.id==SweepStatus_report.ID)
    {
        uint8_t byte_temp[8];
        for(uint i=0;i<8;i++)
        {
            byte_temp[i] = can_frame_msg.data[i];
        }
        SweepStatus_report_msg.header = header;
        SweepStatus_report.update_bytes(byte_temp);
        SweepStatus_report.Parse();
        SweepStatus_report_msg.CDCU_BrushWtrVal_St = SweepStatus_report.CDCU_BrushWtrVal_St;
        SweepStatus_report_msg.CDCU_CtfgFan_St= SweepStatus_report.CDCU_CtfgFan_St;
        SweepStatus_report_msg.cdcu_dstb_pos_st=SweepStatus_report.cdcu_dstb_pos_st;
        SweepStatus_report_msg.CDCU_FtBrushDrop_St=SweepStatus_report.CDCU_FtBrushDrop_St;
        SweepStatus_report_msg.CDCU_FtBrushMtr_St=SweepStatus_report.CDCU_FtBrushDrop_St;
        SweepStatus_report_msg.cdcu_FtBrushStretch_St=SweepStatus_report.cdcu_FtBrushStretch_St;
        SweepStatus_report_msg.CDCU_FtFender_St=SweepStatus_report.CDCU_FtFender_St;
        SweepStatus_report_msg.CDCU_MainBrush_St=SweepStatus_report.CDCU_MainBrush_St;
        SweepStatus_report_msg.CDCU_MainBrushMtr_St=SweepStatus_report.CDCU_MainBrushMtr_St;
        SweepStatus_report_msg.CDCU_Remain_Water=SweepStatus_report.CDCU_Remain_Water;
        SweepStatus_report_msg.CDCU_RrBrushDrop_St=SweepStatus_report.CDCU_RrBrushDrop_St;
        SweepStatus_report_msg.CDCU_RrBrushMtr_St=SweepStatus_report.CDCU_RrBrushMtr_St;
        SweepStatus_report_msg.cdcu_shake_dust_st=SweepStatus_report.cdcu_shake_dust_st;
        SweepStatus_report_msg.cdcu_sweep_Estop_st=SweepStatus_report.cdcu_sweep_Estop_st;
        SweepStatus_report_msg.cdcu_sweep_mode=SweepStatus_report.cdcu_sweep_mode;
        SweepStatus_report_msg.cdcu_sweep_sys_st=SweepStatus_report.cdcu_sweep_sys_st;
        pub_sweep.publish(SweepStatus_report_msg);
    }

    //刹车状态信息，0x211
    if(can_frame_msg.id==BrakeStatus_report.ID)
    {
        uint8_t byte_temp[8];
        for(uint i=0;i<8;i++)
        {
            byte_temp[i] = can_frame_msg.data[i];
        } 
        BrakeStatus_report.update_bytes(byte_temp);
        BrakeStatus_report.Parse();
        BrakeStatus_report_msg.header = header;
        BrakeStatus_report_msg.CDCU_EHB_BrkMode = BrakeStatus_report.cdcu_EHB_BrkMode;
        //制动压力，N
        BrakeStatus_report_msg.CDCU_EHB_BrkPedpos= BrakeStatus_report.cdcu_EHB_BrkPedpos;
        BrakeStatus_report_msg.CDCU_EHB_BrkPresur= BrakeStatus_report.cdcu_EHB_BrkPresur;
        BrakeStatus_report_msg.CDCU_EHB_WorkMode= BrakeStatus_report.cdcu_EHB_WorkMode;
        pub_BrakeStatus.publish(BrakeStatus_report_msg);

        // std::cout<<"系统工作模式:"<<int(BrakeStatus_report_msg.CDCU_EHB_WorkMode)<<",刹车模式："
        // <<int(BrakeStatus_report_msg.CDCU_EHB_BrkMode)<<",踏板开度："<<BrakeStatus_report_msg.CDCU_EHB_BrkPedpos<<std::endl;
    }

    //停车信息,0x213
    if(can_frame_msg.id==ParkStatus_report.ID)
    {
        uint8_t byte_temp[8];
        for(uint i=0;i<8;i++)
        {
            byte_temp[i] = can_frame_msg.data[i];
        }
        ParkStatus_report.update_bytes(byte_temp);
        ParkStatus_report.Parse();
        ParkStatus_report_msg.header = header;

        //驻车状态，0-Released,1-Normal park,2-Emergency,3-Reserved
        ParkStatus_report_msg.CDCU_Park_St = ParkStatus_report.cdcu_Park_St;

        //驻车制动模式，0-Standby,1-Inetrrupt,2-Remote,3-Automatic，4-Emergency
        ParkStatus_report_msg.CDCU_Park_WorkMode = ParkStatus_report.cdcu_Park_WorkMode;

        pub_ParkStatus.publish(ParkStatus_report_msg);

        // std::cout<<"驻车模式:"<<int(ParkStatus_report_msg.CDCU_Park_WorkMode)<<",驻车状态："
        // <<int(ParkStatus_report_msg.CDCU_Park_St)<<std::endl;
    }

        //驾驶信息,0x217
    if(can_frame_msg.id==DriveStatus_report.ID)
    {
        uint8_t byte_temp[8];
        for(uint i=0;i<8;i++)
        {
            byte_temp[i] = can_frame_msg.data[i];
        }
        DriveStatus_report.update_bytes(byte_temp);
        DriveStatus_report.Parse();

        DriveStatus_report_msg.header = header;
        DriveStatus_report_msg.CDCU_MCU_GearAct= DriveStatus_report.cdcu_MCU_GearAct;
        DriveStatus_report_msg.CDCU_MCU_RunDir = DriveStatus_report.cdcu_MCU_RunDir;
        DriveStatus_report_msg.CDCU_MCU_ThrotAct=DriveStatus_report.cdcu_MCU_ThrotAct;
        DriveStatus_report_msg.CDCU_MCU_WorkMode=DriveStatus_report.cdcu_MCU_WorkMode;
        pub_DriveStatus.publish(DriveStatus_report_msg);
        // std::cout<<"档位:"<<int(DriveStatus_report_msg.CDCU_MCU_GearAct)<<std::endl;
    }

    //车辆工作状态，0x240,周期100ms
    if(can_frame_msg.id=VehState_report.ID)
    {
        uint8_t byte_temp[8];
        for(uint i=0;i<8;i++)
        {
            byte_temp[i] = can_frame_msg.data[i];
        }
        VehState_report.update_bytes(byte_temp);
        VehState_report.Parse();

        VehState_report_msg.header = header;
        VehState_report_msg.CDCU_Veh_RunMode=VehState_report.CDCU_Veh_RunMode;
        VehState_report_msg.CDCU_Veh_ErrLevel=VehState_report.CDCU_Veh_ErrLevel;
        VehState_report_msg.CDCU_FtCrash_St=VehState_report.CDCU_FtCrash_St;
        VehState_report_msg.CDCU_RrCrash_St=VehState_report.CDCU_RrCrash_St;
        VehState_report_msg.CDCU_VehEmgcySwh_St=VehState_report.CDCU_VehEmgcySwh_St;
        VehState_report_msg.CDCU_LvBat_LowVolt=VehState_report.CDCU_LvBat_LowVolt;
        VehState_report_msg.CDCU_Bat_LowSOC=VehState_report.CDCU_Bat_LowSOC;
        VehState_report_msg.CDCU_BMS_ErrLevel=VehState_report.CDCU_BMS_ErrLevel;
        VehState_report_msg.CDCU_MCU_ErrLevel=VehState_report.CDCU_MCU_ErrLevel;
        VehState_report_msg.CDCU_EHB_ErrLevel=VehState_report.CDCU_EHB_ErrLevel;
        VehState_report_msg.CDCU_EPS_ErrLevel=VehState_report.CDCU_EPS_ErrLevel;
        VehState_report_msg.CDCU_EPB_ErrLevel=VehState_report.CDCU_EPB_ErrLevel;
        VehState_report_msg.CDCU_SIU_ErrLevel=VehState_report.CDCU_SIU_ErrLevel;
        VehState_report_msg.CDCU_PDU_ErrLevel=VehState_report.CDCU_PDU_ErrLevel;
        VehState_report_msg.CDCU_CBCU_ErrLevel=VehState_report.CDCU_CBCU_ErrLevel;
        VehState_report_msg.CDCU_TirePresrAlarm_St=VehState_report.CDCU_TirePresrAlarm_St;
        VehState_report_msg.CDCU_CANBusOff_St=VehState_report.CDCU_CANBusOff_St;
        VehState_report_msg.CDCU_Veh_ErrCode=VehState_report.CDCU_Veh_ErrCode;
        pub_VehState.publish(VehState_report_msg);
    }

    // //输出底盘反馈的速度和角速度信息
    twist_msg.header=header;
    twist_msg.twist.twist.linear.x=VehDyncState_report_msg.cdcu_veh_longtdnal_speed;   //底盘线速度，单位:km/h
    twist_msg.twist.twist.angular.z=steer_report_msg.cdcu_eps_WhlSpd;//底盘角速度，单位:deg/s
    pub_twist.publish(twist_msg);


    std::cout<<"底盘状态:档位:"<<int(DriveStatus_report_msg.CDCU_MCU_GearAct)<<std::endl;
    std::cout<<"速度："<<twist_msg.twist.twist.linear.x<<" km/h,加速度："<<VehDyncState_report_msg.cdcu_veh_longtdnal_acc_speed
    <<" m/s^2,前轮转角："<<steer_report.cdcu_eps_strWhlAngle<<" deg,前轮角速度："<<steer_report.cdcu_eps_whlSpd<<
    " deg/s"<<std::endl;
} 

int main(int argc, char* argv[])
{
    ros::init(argc, argv, "ecar_driver_report_node");
    ros::NodeHandle nh;

    ros::Subscriber sub = nh.subscribe("/received_messages", 1, can_callback);
    pub_steer = nh.advertise<ecar_driver_msgs::SteerReport>("/steer_report", 10, true);
    pub_velspd = nh.advertise<ecar_driver_msgs::CDCU_VehDyncState>("/vel_spd", 10, true);
    pub_ftspd = nh.advertise<ecar_driver_msgs::CDCU_VehFtWhlSpd>("/ftspd_report", 10, true);
    pub_rrspd = nh.advertise<ecar_driver_msgs::CDCU_VehRrWhlSpd>("/rrspd_report", 10, true);
    pub_sweep = nh.advertise<ecar_driver_msgs::CDCU_SweepStatus>("/sweep_report", 10, true);
    pub_DriveStatus=nh.advertise<ecar_driver_msgs::CDCU_DriveStatus>("/drive_report", 10, true);
    pub_BrakeStatus=nh.advertise<ecar_driver_msgs::CDCU_BrakeStatus>("/brake_report", 10, true);
    pub_ParkStatus=nh.advertise<ecar_driver_msgs::CDCU_ParkStatus>("/park_report", 10, true);
    pub_VehState=nh.advertise<ecar_driver_msgs::CDCU_VehState>("/veh_run_report", 10, true);

    pub_twist = nh.advertise<nav_msgs::Odometry>("/vehicle_status", 10, true);
    
    // add another publisher

    ros::spin();
    return 0;

}

