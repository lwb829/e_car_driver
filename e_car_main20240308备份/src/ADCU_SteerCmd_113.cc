#include "e_car_main/ADCU_SteerCmd_113.hpp"

int32_t ADCUSteerCmd113::ID = 0x113;

// public
ADCUSteerCmd113::ADCUSteerCmd113() { Reset(); } // 在构造函数中调用了Reset()函数，将类内部的数据初始化为0

void ADCUSteerCmd113::UpdateData(int Str_Active, int Str_CtrlMode, double Str_TgtAngle, double Str_TgtAngleSpd, int StrCmd_RollCnt, int StrCmd_Checksum)
{
    set_e_Str_Active(Str_Active);
    set_e_Str_CtrlMode(Str_CtrlMode);
    set_e_Str_TgtAngle(Str_TgtAngle);
    set_e_Str_TgtAngleSpd(Str_TgtAngleSpd);
    set_e_StrCmd_RollCnt(StrCmd_RollCnt);
    set_e_StrCmd_Checksum(StrCmd_Checksum);
}

void ADCUSteerCmd113::Reset()
{
    for (uint i = 0; i < 8; i++)
    {
        data[i] = 0;
    }
}

uint8_t *ADCUSteerCmd113::get_data()
{
    return data;
}

// 起始字节：0；起始位：7；信号长度：1；
void ADCUSteerCmd113::set_e_Str_Active(int Str_Active)
{
    int x = Str_Active;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x,7,1);
    data[0] += to_set.return_byte_t();
}

// 起始字节：0；起始位：5；信号长度：2；
void ADCUSteerCmd113::set_e_Str_CtrlMode(int Str_CtrlMode)
{
    int x = Str_CtrlMode;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 5, 2);
    data[0] += to_set.return_byte_t();
}

// 起始字节：2；起始位：16；信号长度：16；精度：0.005；偏移量：-90；
void ADCUSteerCmd113::set_e_Str_TgtAngle(double Str_TgtAngle)
{
    int x = (Str_TgtAngle +90.00000) / 0.005000;
    uint8_t t = 0;
    uint8_t a = 0;

    t = x & 0xFF;//低八位
    Byte to_set0(a);
    to_set0.set_value(t, 0, 8);
    data[2] += to_set0.return_byte_t();
    x >>= 8;

    t = x & 0xFF;//高八位
    Byte to_set1(a);
    to_set1.set_value(t, 0, 8);
    data[1] += to_set1.return_byte_t();
}

// 起始字节：5；起始位：40；信号长度：8；精度：0.2；
void ADCUSteerCmd113::set_e_Str_TgtAngleSpd(double Str_TgtAngleSpd)
{
    int x = Str_TgtAngleSpd / 0.20000;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 8);
    data[5] += to_set.return_byte_t();
}

// 起始字节：6；起始位：48；信号长度：4；
void ADCUSteerCmd113::set_e_StrCmd_RollCnt(int StrCmd_RollCnt)
{
    int x = StrCmd_RollCnt;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 4);
    data[6] += to_set.return_byte_t();
}

// 起始字节：7；起始位：56；信号长度：8；
void ADCUSteerCmd113::set_e_StrCmd_Checksum(int StrCmd_Checksum)
{
    int x = StrCmd_Checksum;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 8);
    data[7] += to_set.return_byte_t();
}
