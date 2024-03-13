#pragma once
#include <iostream>
#include "Byte.hpp"

class VehState240
{
 public:
  static int32_t ID;
  VehState240();
  void Parse();
  void update_bytes(uint8_t bytes_data[8]);


  //车辆工作模式,0-Standby,1-Inetrrupt,2-Remote,3-Automatic，4-Emergency，5-Cloud,6-Reserved
  int CDCU_Veh_RunMode;
  //整车故障等级：0-Normal,1-Level1,2-Level2,3-Level3
  int CDCU_Veh_ErrLevel;
  bool CDCU_FtCrash_St;
  bool CDCU_RrCrash_St;
  bool CDCU_VehEmgcySwh_St;
  bool CDCU_LvBat_LowVolt;
  bool CDCU_Bat_LowSOC;
  int CDCU_BMS_ErrLevel;
  int CDCU_MCU_ErrLevel;
  int CDCU_EHB_ErrLevel;
  int CDCU_EPS_ErrLevel;
  int CDCU_EPB_ErrLevel;
  int CDCU_SIU_ErrLevel;
  int CDCU_PDU_ErrLevel;
  int CDCU_CBCU_ErrLevel;
  int CDCU_TirePresrAlarm_St;
  int CDCU_CANBusOff_St;
  int CDCU_Veh_ErrCode;
 private:
  uint8_t bytes[8];

  
  int decode_CDCU_Veh_RunMode();
  int decode_CDCU_Veh_ErrLevel();
  bool decode_decode_CDCU_FtCrash_St();
  bool decode_CDCU_RrCrash_St();
  bool decode_CDCU_VehEmgcySwh_St();
  bool decode_CDCU_LvBat_LowVolt();
  bool decode_CDCU_Bat_LowSOC();
  int decode_CDCU_BMS_ErrLevel();
  int decode_CDCU_MCU_ErrLevel();
  int decode_CDCU_EHB_ErrLevel();
  int decode_CDCU_EPS_ErrLevel();
  int decode_CDCU_EPB_ErrLevel();
  int decode_CDCU_SIU_ErrLevel();
  int decode_CDCU_PDU_ErrLevel();
  int decode_CDCU_CBCU_ErrLevel();
  int decode_CDCU_TirePresrAlarm_St();
  int decode_CDCU_CANBusOff_St();
  int decode_CDCU_Veh_ErrCode();
};

