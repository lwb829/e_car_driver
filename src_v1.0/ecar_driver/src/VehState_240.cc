#include "ecar_driver/VehState_240.hpp"

int32_t VehState240::ID = 0x240;

VehState240::VehState240()
{
  CDCU_Veh_RunMode=0;
  //整车故障等级：0-Normal,1-Level1,2-Level2,3-Level3
  CDCU_Veh_ErrLevel=0;
  CDCU_FtCrash_St=0;
  CDCU_RrCrash_St=0;
  CDCU_VehEmgcySwh_St=0;
  CDCU_LvBat_LowVolt=0;
  CDCU_Bat_LowSOC=0;
  CDCU_BMS_ErrLevel=0;
  CDCU_MCU_ErrLevel=0;
  CDCU_EHB_ErrLevel=0;
  CDCU_EPS_ErrLevel=0;
  CDCU_EPB_ErrLevel=0;
  CDCU_SIU_ErrLevel=0;
  CDCU_PDU_ErrLevel=0;
  CDCU_CBCU_ErrLevel=0;
  CDCU_TirePresrAlarm_St=0;
  CDCU_CANBusOff_St=0;
  CDCU_Veh_ErrCode=0;
}


void VehState240::update_bytes(uint8_t bytes_data[8])
{
  for(uint i=0;i<8;i++)
  {
    bytes[i] = bytes_data[i];
  }
}

void VehState240::Parse()
{
  CDCU_Veh_RunMode=decode_CDCU_Veh_RunMode();
  CDCU_Veh_ErrLevel=decode_CDCU_Veh_ErrLevel();
  CDCU_FtCrash_St=decode_decode_CDCU_FtCrash_St();
  CDCU_RrCrash_St=decode_CDCU_RrCrash_St();
  CDCU_VehEmgcySwh_St=decode_CDCU_VehEmgcySwh_St();
  CDCU_LvBat_LowVolt=decode_CDCU_LvBat_LowVolt();
  CDCU_Bat_LowSOC=decode_CDCU_Bat_LowSOC();
  CDCU_BMS_ErrLevel=decode_CDCU_BMS_ErrLevel();
  CDCU_MCU_ErrLevel=decode_CDCU_MCU_ErrLevel();
  CDCU_EHB_ErrLevel=decode_CDCU_EHB_ErrLevel();
  CDCU_EPS_ErrLevel=decode_CDCU_EPS_ErrLevel();
  CDCU_EPB_ErrLevel=decode_CDCU_EPB_ErrLevel();
  CDCU_SIU_ErrLevel=decode_CDCU_SIU_ErrLevel();;
  CDCU_PDU_ErrLevel=decode_CDCU_PDU_ErrLevel();
  CDCU_CBCU_ErrLevel=decode_CDCU_CBCU_ErrLevel();
  CDCU_TirePresrAlarm_St=decode_CDCU_TirePresrAlarm_St();
  CDCU_CANBusOff_St=decode_CDCU_CANBusOff_St();
  CDCU_Veh_ErrCode=decode_CDCU_Veh_ErrCode();
}

int VehState240::decode_CDCU_Veh_RunMode()
{
  Byte t0(*(bytes));
  int32_t x = t0.get_byte(4, 4);
  int ret =  static_cast<int>(x);
  return ret;
}
int VehState240::decode_CDCU_Veh_ErrLevel()
{
  Byte t0(*(bytes));
  int32_t x = t0.get_byte(0, 2);
  int ret =  static_cast<int>(x);
  return ret;
}
bool VehState240::decode_decode_CDCU_FtCrash_St()
{
  Byte t0(*(bytes+1));
  int32_t x = t0.get_byte(7, 1);
  bool ret =  static_cast<bool>(x);
  return ret;
}
bool VehState240::decode_CDCU_RrCrash_St()
{
  Byte t0(*(bytes+1));
  int32_t x = t0.get_byte(6, 1);
  bool ret =  static_cast<bool>(x);
  return ret;
}
bool VehState240::decode_CDCU_VehEmgcySwh_St()
{
  Byte t0(*(bytes+1));
  int32_t x = t0.get_byte(5, 1);
  bool ret =  static_cast<bool>(x);
  return ret;
}
bool VehState240::decode_CDCU_LvBat_LowVolt()
{
  Byte t0(*(bytes+1));
  int32_t x = t0.get_byte(4, 1);
  bool ret =  static_cast<bool>(x);
  return ret;
}
bool VehState240::decode_CDCU_Bat_LowSOC()
{
  Byte t0(*(bytes+1));
  int32_t x = t0.get_byte(3, 1);
  bool ret =  static_cast<bool>(x);
  return ret;
}
int VehState240::decode_CDCU_BMS_ErrLevel()
{
  Byte t0(*(bytes+1));
  int32_t x = t0.get_byte(2, 2);
  int ret =  static_cast<int>(x);
  return ret;
}
int VehState240::decode_CDCU_MCU_ErrLevel()
{
  Byte t0(*(bytes+2));
  int32_t x = t0.get_byte(6, 2);
  int ret =  static_cast<int>(x);
  return ret;
}
int VehState240::decode_CDCU_EHB_ErrLevel()
{
  Byte t0(*(bytes+2));
  int32_t x = t0.get_byte(4, 2);
  int ret =  static_cast<int>(x);
  return ret;
}
int VehState240::decode_CDCU_EPS_ErrLevel()
{
  Byte t0(*(bytes+2));
  int32_t x = t0.get_byte(2, 2);
  int ret =  static_cast<int>(x);
  return ret;
}
int VehState240::decode_CDCU_EPB_ErrLevel()
{
  Byte t0(*(bytes+2));
  int32_t x = t0.get_byte(0, 2);
  int ret =  static_cast<int>(x);
  return ret;
}
int VehState240::decode_CDCU_SIU_ErrLevel()
{
  Byte t0(*(bytes+3));
  int32_t x = t0.get_byte(6, 2);
  int ret =  static_cast<int>(x);
  return ret;
}
int VehState240::decode_CDCU_PDU_ErrLevel()
{
  Byte t0(*(bytes+3));
  int32_t x = t0.get_byte(4, 2);
  int ret =  static_cast<int>(x);
  return ret;
}
int VehState240::decode_CDCU_CBCU_ErrLevel()
{
  Byte t0(*(bytes+4));
  int32_t x = t0.get_byte(0, 2);
  int ret =  static_cast<int>(x);
  return ret;
}
int VehState240::decode_CDCU_TirePresrAlarm_St()
{
  Byte t0(*(bytes+3));
  int32_t x = t0.get_byte(2, 2);
  int ret =  static_cast<int>(x);
  return ret;
}
int VehState240::decode_CDCU_CANBusOff_St()
{
  Byte t0(*(bytes+3));
  int32_t x = t0.get_byte(0, 2);
  int ret =  static_cast<int>(x);
  return ret;
}
int VehState240::decode_CDCU_Veh_ErrCode()
{
  Byte t0(*(bytes+5));
  int32_t x = t0.get_byte(0, 8);
  int ret =  static_cast<int>(x);
  return ret;
}
