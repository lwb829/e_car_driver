#include "ecar_driver/BrakeStatus_211.hpp"

int32_t BrakeStatus211::ID = 0x211;

BrakeStatus211::BrakeStatus211()
{
cdcu_EHB_WorkMode=0;
cdcu_EHB_BrkMode=0;
cdcu_EHB_BrkPresur=0;
cdcu_EHB_BrkPedpos=0.0;
}

void BrakeStatus211::update_bytes(uint8_t bytes_data[8])
{
  for(uint i=0;i<8;i++)
  {
    bytes[i] = bytes_data[i];
  }
}

void BrakeStatus211::Parse()
{
  cdcu_EHB_WorkMode = decode_cdcu_EHB_WorkMode();
  cdcu_EHB_BrkMode = decode_cdcu_EHB_BrkMode();
  cdcu_EHB_BrkPresur = decode_cdcu_EHB_BrkPresur();
  cdcu_EHB_BrkPedpos = decode_cdcu_EHB_BrkPedpos();
}

int BrakeStatus211::decode_cdcu_EHB_WorkMode() 
{
  Byte t0(*(bytes));
  int32_t x = t0.get_byte(4, 4);

  int ret =  static_cast<int>(x);
  return ret;
}


int BrakeStatus211::decode_cdcu_EHB_BrkMode() 
{
  Byte t0(*(bytes));
  int32_t x = t0.get_byte(2, 2);


  int ret =  static_cast<int>(x);
  return ret;
}


int BrakeStatus211::decode_cdcu_EHB_BrkPresur() 
{
  Byte t0(*(bytes + 1));
  int32_t x = t0.get_byte(0, 8);

  int ret =  static_cast<int>(x);
  return ret;
}


double BrakeStatus211::decode_cdcu_EHB_BrkPedpos()
 {
  Byte t0(*(bytes + 2));
  int32_t x = t0.get_byte(0, 8);

  double ret =  static_cast<double>(x);
  ret*=0.4;
  return ret;
}
