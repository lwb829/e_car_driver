#pragma once
#include <iostream>
#include "Byte.hpp"

class BrakeStatus211
{
 public:
  static int32_t ID;
  BrakeStatus211();
  void Parse();
  void update_bytes(uint8_t bytes_data[8]);


int cdcu_EHB_WorkMode;
int cdcu_EHB_BrkMode;
int cdcu_EHB_BrkPresur;
double cdcu_EHB_BrkPedpos;

 private:
  uint8_t bytes[8];

  
  int decode_cdcu_EHB_WorkMode();

  int decode_cdcu_EHB_BrkMode();

  int decode_cdcu_EHB_BrkPresur();

  double decode_cdcu_EHB_BrkPedpos();
};

