#include "ecar_driver/ParkStatus_213.hpp"

int32_t ParkStatus213::ID = 0x213;

ParkStatus213::ParkStatus213()
{
  cdcu_Park_WorkMode=0;
  cdcu_Park_St=0;
}


void ParkStatus213::update_bytes(uint8_t bytes_data[8])
{
  for(uint i=0;i<8;i++)
  {
    bytes[i] = bytes_data[i];
  }
}

void ParkStatus213::Parse()
{
  cdcu_Park_WorkMode = decode_cdcu_Park_WorkMode();
  cdcu_Park_St = decode_cdcu_Park_St();
}

int ParkStatus213::decode_cdcu_Park_WorkMode() 
{
  Byte t0(*(bytes));
  int32_t x = t0.get_byte(4, 4);

  int ret =  static_cast<int>(x);
  return ret;
}


int ParkStatus213::decode_cdcu_Park_St() 
{
  Byte t0(*(bytes));
  int32_t x = t0.get_byte(2, 2);


  int ret =  static_cast<int>(x);
  return ret;
}

