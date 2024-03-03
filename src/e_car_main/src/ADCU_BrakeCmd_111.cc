#include "e_car_main/ADCU_BrakeCmd_111.hpp"

int32_t ADCUBrakeCmd111::ID = 0x111;

// public
ADCUBrakeCmd111::ADCUBrakeCmd111() { Reset(); } // 在构造函数中调用了Reset()函数，将类内部的数据初始化为0

void ADCUBrakeCmd111::UpdateData(int Brk_Active, int Brk_CtrlMode, double Brk_TgtPedpos, double Brk_TgtPress, double Brk_TgtAccSpd, int BrkCmd_RollCnt, int BrkCmd_Checksum)
{
    set_e_Brk_Active(Brk_Active); 
    set_e_Brk_CtrlMode(Brk_CtrlMode); 
    set_e_Brk_TgtPedpos(Brk_TgtPedpos);
    set_e_Brk_TgtPress(Brk_TgtPress); 
    set_e_Brk_TgtAccSpd(Brk_TgtAccSpd); 
    set_e_BrkCmd_RollCnt(BrkCmd_RollCnt); 
    set_e_BrkCmd_Checksum(BrkCmd_Checksum); 
}

void ADCUBrakeCmd111::Reset()
{
    for (uint i = 0; i < 8; i++)
    {
        data[i] = 0;
    }
}

uint8_t *ADCUBrakeCmd111::get_data()
{
    return data;
}

// 起始字节：0；起始位：7；信号长度：1；
void ADCUBrakeCmd111::set_e_Brk_Active(int Brk_Active)
{
    int x = Brk_Active;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 7, 1);
    data[0] += to_set.return_byte_t();
}

// 起始字节：0；起始位：5；信号长度：2；
void ADCUBrakeCmd111::set_e_Brk_CtrlMode(int Brk_CtrlMode)
{
    int x = Brk_CtrlMode;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 5, 2);
    data[0] += to_set.return_byte_t();
}

// 起始字节：1；起始位：8；信号长度：8; 精度：0.4；
void ADCUBrakeCmd111::set_e_Brk_TgtPedpos(double Brk_TgtPedpos)
{
    int x = Brk_TgtPedpos / 0.40000;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 8);
    data[1] += to_set.return_byte_t();
}

// 起始字节：3；起始位：24；信号长度：16；精度：0.01
void ADCUBrakeCmd111::set_e_Brk_TgtPress(double Brk_TgtPress)
{
    int x = Brk_TgtPress / 0.010000;
    uint8_t t = 0;
    uint8_t a = 0;

    t = x & 0xFF; // 低八位
    Byte to_set0(a);
    to_set0.set_value(t, 0, 8);
    data[3] += to_set0.return_byte_t();
    x >>= 8;

    t = x & 0xFF; // 高八位
    Byte to_set1(a);
    to_set1.set_value(t, 0, 8);
    data[2] += to_set1.return_byte_t();
}

// 起始字节：5；起始位：40；信号长度：16；精度：0.01；偏移量：-20；
void ADCUBrakeCmd111::set_e_Brk_TgtAccSpd(double Brk_TgtAccSpd)
{
    int x = (Brk_TgtAccSpd - -20.0000) / 0.01000;
    uint8_t t = 0;
    uint8_t a = 0;

    t = x & 0xFF; // 低八位
    Byte to_set0(a);
    to_set0.set_value(t, 0, 8);
    data[5] += to_set0.return_byte_t();
    x >>= 8;

    t = x & 0xFF; // 高八位
    Byte to_set1(a);
    to_set1.set_value(t, 0, 8);
    data[4] += to_set1.return_byte_t();
}

// 起始字节：6；起始位：48；信号长度：4；
void ADCUBrakeCmd111::set_e_BrkCmd_RollCnt(int BrkCmd_RollCnt)
{
    int x = BrkCmd_RollCnt;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 4);
    data[6] += to_set.return_byte_t();
}

// 起始字节：7；起始位：56；信号长度：8；
void ADCUBrakeCmd111::set_e_BrkCmd_Checksum(int BrkCmd_Checksum)
{
    int x = BrkCmd_Checksum;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 8);
    data[7] += to_set.return_byte_t();
}
