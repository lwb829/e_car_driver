#include <ecar_driver/steering_report_215.h>

int32_t Steeringreport215::ID = 0x215;

Steeringreport215::Steeringreport215()
{
  cdcu_eps_workMode=0;
  cdcu_eps_strTrq=0.0;
  cdcu_eps_strWhlAngle=0.0;
  cdcu_eps_whlSpd=0.0;
  cdcu_eps_ErrLevel=0;
  cdcu_strSt_RollCnt=0;
  cdcu_strSt_Checksum=0;
}


void Steeringreport215::update_bytes(uint8_t bytes_data[8])
{
  for(uint i=0;i<8;i++)
  {
    bytes[i] = bytes_data[i];
  }
}

void Steeringreport215::Parse()
{
  cdcu_eps_workMode=decode_cdcu_eps_workMode();
  cdcu_eps_strTrq= decode_cdcu_eps_strTrq();
  cdcu_eps_strWhlAngle= decode_cdcu_eps_strWhlAngle();
  cdcu_eps_whlSpd= decode_cdcu_eps_whlSpd();
  cdcu_eps_ErrLevel= decode_cdcu_eps_ErrLevel();
  cdcu_strSt_RollCnt=decode_cdcu_strSt_RollCnt();
  cdcu_strSt_Checksum= decode_cdcu_strSt_Checksum();

}


//decode
int Steeringreport215::decode_cdcu_eps_workMode()
 {
  Byte t0(*(bytes ));
  int32_t x = t0.get_byte(4, 4);

  int ret = x;
  return ret;
}

double Steeringreport215::decode_cdcu_eps_strTrq() 
{
  Byte t0(*(bytes + 1));
  int32_t x = t0.get_byte(0, 8);

  double ret =  static_cast<double>(x);
  ret=ret*0.1-12.8;
  return ret;
}


double Steeringreport215::decode_cdcu_eps_strWhlAngle() 
{
  Byte t0(*(bytes + 3));
  int32_t x = t0.get_byte(0, 8);

  Byte t1(*(bytes + 2));
  int32_t t = t1.get_byte(0, 8);
  t <<= 8;
  x |= t;

  double ret =  static_cast<double >(x);
  ret=ret*0.005-90;
  return ret;
}

double Steeringreport215::decode_cdcu_eps_whlSpd()
 {
  Byte t0(*(bytes + 5));
  int32_t x = t0.get_byte(0, 8);

  Byte t1(*(bytes + 4));
  int32_t t = t1.get_byte(0, 8);
  t <<= 8;
  x |= t;

  double  ret =  static_cast<double>(x);
  ret=ret*0.01-180;
  return ret;
}

int Steeringreport215::decode_cdcu_eps_ErrLevel() {
  Byte t0(*(bytes + 6));
  int32_t x = t0.get_byte(4, 4);

  int ret = x;
  return ret;
}

int Steeringreport215::decode_cdcu_strSt_RollCnt() 
{
  Byte t0(*(bytes + 6));
  int32_t x = t0.get_byte(0, 4);

  int ret = x;
  return ret;
}

int Steeringreport215::decode_cdcu_strSt_Checksum() 
{
  Byte t0(*(bytes + 7));
  int32_t x = t0.get_byte(0, 8);

  int ret = x;
  return ret;
}



//get
int Steeringreport215::get_cdcu_eps_workMode()
{
  return cdcu_eps_workMode;
}

double Steeringreport215::get_cdcu_eps_strTrq()
{
  return cdcu_eps_strTrq;
}

double Steeringreport215::get_cdcu_eps_strWhlAngle()
{
  return cdcu_eps_strWhlAngle;
}

double Steeringreport215::get_cdcu_eps_whlSpd()
{
  return cdcu_eps_whlSpd;
}

int Steeringreport215::get_cdcu_eps_ErrLevel()
{
  return cdcu_eps_ErrLevel;
}

int Steeringreport215::get_cdcu_strSt_RollCnt()
{
  return cdcu_strSt_RollCnt;
}

int Steeringreport215::get_cdcu_strSt_Checksum()
{
  return cdcu_strSt_Checksum;
}