#pragma once
#include <iostream>
#include "Byte.hpp"

class ParkStatus213
{
 public:
  static int32_t ID;
  ParkStatus213();
  void Parse();
  void update_bytes(uint8_t bytes_data[8]);


  int cdcu_Park_WorkMode;
  int cdcu_Park_St;

 private:
  uint8_t bytes[8];

  
  int decode_cdcu_Park_WorkMode();

  int decode_cdcu_Park_St();

};

