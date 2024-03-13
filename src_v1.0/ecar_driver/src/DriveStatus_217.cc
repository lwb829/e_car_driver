#include "ecar_driver/DriveStatus_217.hpp"

int32_t DriveStatus217::ID = 0x217;

DriveStatus217::DriveStatus217()
{
  cdcu_MCU_WorkMode=0;
  cdcu_MCU_GearAct=0;
  cdcu_MCU_RunDir=0;
  cdcu_MCU_ThrotAct=0.0;
  cdcu_MCU_ErrLevel=0;
}


void DriveStatus217::update_bytes(uint8_t bytes_data[8])
{
  for(uint i=0;i<8;i++)
  {
    bytes[i] = bytes_data[i];
  }
}

void DriveStatus217::Parse()
{
  cdcu_MCU_WorkMode = decode_cdcu_MCU_WorkMode();
  cdcu_MCU_GearAct = decode_cdcu_MCU_GearAct();
  cdcu_MCU_RunDir = decode_cdcu_MCU_RunDir();
  cdcu_MCU_ThrotAct = decode_cdcu_MCU_ThrotAct();
  cdcu_MCU_ErrLevel = decode_cdcu_MCU_ErrLevel();
}

int DriveStatus217::decode_cdcu_MCU_WorkMode() 
{
  Byte t0(*(bytes));
  int32_t x = t0.get_byte(4, 4);

  int ret =  static_cast<int>(x);
  return ret;
}


int DriveStatus217::decode_cdcu_MCU_GearAct() 
{
  Byte t0(*(bytes));
  int32_t x = t0.get_byte(2, 2);


  int ret =  static_cast<int>(x);
  return ret;
}


int DriveStatus217::decode_cdcu_MCU_RunDir() 
{
  Byte t0(*(bytes));
  int32_t x = t0.get_byte(0, 2);

  int ret =  static_cast<int>(x);
  return ret;
}


double DriveStatus217::decode_cdcu_MCU_ThrotAct()
 {
  Byte t0(*(bytes + 1));
  int32_t x = t0.get_byte(0, 8);

  double ret =  static_cast<double>(x);
  ret*=0.4;
  return ret;
}


int DriveStatus217::decode_cdcu_MCU_ErrLevel()
{
  Byte t0(*(bytes + 6));
  int32_t x = t0.get_byte(3, 4);
  int ret =  static_cast<int>(x);
  return ret;
}