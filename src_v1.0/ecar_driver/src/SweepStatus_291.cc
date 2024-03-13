#include "ecar_driver/SweepStatus_291.hpp"


int32_t SweepStatus291::ID = 0x291;

SweepStatus291::SweepStatus291()
{
  cdcu_sweep_mode=0;
  cdcu_sweep_sys_st=0;
  cdcu_sweep_Estop_st=0;
  cdcu_shake_dust_st=0;
  cdcu_dstb_pos_st=0;
  cdcu_FtBrushStretch_St=0;
  CDCU_FtBrushDrop_St=0;
  CDCU_RrBrushDrop_St=0;
  CDCU_MainBrush_St=0;
  CDCU_FtBrushMtr_St=0;
  CDCU_RrBrushMtr_St=0;
  CDCU_MainBrushMtr_St=0;
  CDCU_CtfgFan_St=0;
  CDCU_FtFender_St=0;
  CDCU_BrushWtrVal_St=0;
  CDCU_Remain_Water=0;
}


void SweepStatus291::update_bytes(uint8_t bytes_data[8])
{
  for(uint i=0;i<8;i++)
  {
    bytes[i] = bytes_data[i];
  }
}

void SweepStatus291::Parse()
{
  cdcu_sweep_mode = decode_cdcu_sweep_mode();
  cdcu_sweep_sys_st = decode_cdcu_sweep_sys_st();
  cdcu_sweep_Estop_st = decode_cdcu_sweep_Estop_st();
  cdcu_shake_dust_st = decode_cdcu_shake_dust_st();
  cdcu_dstb_pos_st= decode_cdcu_dstb_pos_st();
  cdcu_FtBrushStretch_St= decode_cdcu_FtBrushStretch_St();
  CDCU_FtBrushDrop_St=decode_CDCU_FtBrushDrop_St();
  CDCU_RrBrushDrop_St=decode_CDCU_RrBrushDrop_St();
  CDCU_MainBrush_St=decode_CDCU_MainBrush_St();
  CDCU_FtBrushMtr_St=decode_CDCU_FtBrushMtr_St();
  CDCU_RrBrushMtr_St=decode_CDCU_RrBrushMtr_St();
  CDCU_MainBrushMtr_St=decode_CDCU_MainBrushMtr_St();
  CDCU_CtfgFan_St=decode_CDCU_CtfgFan_St();
  CDCU_FtFender_St=decode_CDCU_FtFender_St();
  CDCU_BrushWtrVal_St=decode_CDCU_BrushWtrVal_St();
  CDCU_Remain_Water=decode_CDCU_Remain_Water();
}

int SweepStatus291::decode_cdcu_sweep_mode() 
{
  Byte t0(*(bytes));
  int32_t x = t0.get_byte(7,1);

  int ret =static_cast<int>(x);
  return ret;
}


int SweepStatus291::decode_cdcu_sweep_sys_st() 
{
  Byte t0(*(bytes ));
  int32_t x = t0.get_byte(6, 1);

  int ret =  static_cast<int>(x);
  ret=ret;
  return ret;
}


int SweepStatus291::decode_cdcu_sweep_Estop_st() 
{
  Byte t0(*(bytes));
  int32_t x = t0.get_byte(5, 1);

  int ret =  static_cast<int>(x);
  return ret;
}


int SweepStatus291::decode_cdcu_shake_dust_st()
 {
  Byte t0(*(bytes));
  int32_t x = t0.get_byte(4, 1);

  int ret =  static_cast<int>(x);
  return ret;
}


  int SweepStatus291::decode_cdcu_dstb_pos_st()
  {
      Byte t0(*(bytes));
      int32_t x = t0.get_byte(0, 4);

      int ret =  static_cast<int>(x);
      return ret;
  }

  int SweepStatus291::decode_cdcu_FtBrushStretch_St()
  {
      Byte t0(*(bytes+1));
      int32_t x = t0.get_byte(7, 1);

      int ret =  static_cast<int>(x);
      return ret;
  }

  int SweepStatus291::decode_CDCU_FtBrushDrop_St()
  {
      Byte t0(*(bytes+1));
      int32_t x = t0.get_byte(6, 1);

      int ret =  static_cast<int>(x);
      return ret;
  }

  int SweepStatus291::decode_CDCU_RrBrushDrop_St()
  {
      Byte t0(*(bytes+1));
      int32_t x = t0.get_byte(5, 1);

      int ret =  static_cast<int>(x);
      return ret;
  }

  int SweepStatus291::decode_CDCU_MainBrush_St()
  {
      Byte t0(*(bytes+1));
      int32_t x = t0.get_byte(4, 1);

      int ret =  static_cast<int>(x);
      return ret;
  }

  int SweepStatus291::decode_CDCU_FtBrushMtr_St()
  {
      Byte t0(*(bytes));
      int32_t x = t0.get_byte(3, 1);

      int ret =  static_cast<int>(x);
      return ret;
  }

  int SweepStatus291::decode_CDCU_RrBrushMtr_St()
  {
      Byte t0(*(bytes+1));
      int32_t x = t0.get_byte(2, 1);

      int ret =  static_cast<int>(x);
      return ret;
  }

  int SweepStatus291::decode_CDCU_MainBrushMtr_St()
  {
      Byte t0(*(bytes+1));
      int32_t x = t0.get_byte(1, 1);

      int ret =  static_cast<int>(x);
      return ret;
  }

  int SweepStatus291::decode_CDCU_CtfgFan_St()
  {
      Byte t0(*(bytes+1));
      int32_t x = t0.get_byte(0, 1);

      int ret =  static_cast<int>(x);
      return ret;
  }

  int SweepStatus291::decode_CDCU_FtFender_St()
  {
      Byte t0(*(bytes+2));
      int32_t x = t0.get_byte(6, 1);

      int ret =  static_cast<int>(x);
      return ret;
  }

  int SweepStatus291::decode_CDCU_BrushWtrVal_St()
  {
      Byte t0(*(bytes+2));
      int32_t x = t0.get_byte(7, 1);

      int ret =  static_cast<int>(x);
      return ret;
  }

  double SweepStatus291::decode_CDCU_Remain_Water()
  {
      Byte t0(*(bytes+3));
      int32_t x = t0.get_byte(0, 8);

      double ret =  static_cast<double>(x);
      return ret*0.01;
  }
