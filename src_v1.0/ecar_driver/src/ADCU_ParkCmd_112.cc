#include "ecar_driver/ADCU_ParkCmd_112.hpp"

int32_t ADCUParkCmd112::ID = 0x112;

// public
ADCUParkCmd112::ADCUParkCmd112() { Reset(); } // 在构造函数中调用了Reset()函数，将类内部的数据初始化为0

void ADCUParkCmd112::UpdateData(int Prk_Active, int Prk_Enable, int PrkCmd_RollCnt, int PrkCmd_Checksum)
{
    set_e_Prk_Active(Prk_Active);
    set_e_Prk_Enable(Prk_Enable);
    set_e_PrkCmd_RollCnt(PrkCmd_RollCnt); 
    set_e_PrkCmd_Checksum(PrkCmd_Checksum);
}

void ADCUParkCmd112::Reset()
{
    for (uint i = 0; i < 8; i++)
    {
        data[i] = 0;
    }
}

uint8_t *ADCUParkCmd112::get_data()
{
    return data;
}

// 起始字节：0；起始位：7；信号长度：1；
void ADCUParkCmd112::set_e_Prk_Active(int Prk_Active)
{
    int x = Prk_Active;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 7, 1);
    data[0] += to_set.return_byte_t();
}

// 起始字节：0；起始位：6；信号长度：1；
void ADCUParkCmd112::set_e_Prk_Enable(int Prk_Enable)
{
    int x = Prk_Enable;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 6, 1);
    data[0] += to_set.return_byte_t();
}

// 起始字节：6；起始位：48；信号长度：4；
void ADCUParkCmd112::set_e_PrkCmd_RollCnt(int PrkCmd_RollCnt)
{
    int x = PrkCmd_RollCnt;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 4);
    data[6] += to_set.return_byte_t();
}

// 起始字节：7；起始位：56；信号长度：8；
void ADCUParkCmd112::set_e_PrkCmd_Checksum(int PrkCmd_Checksum)
{
    int x = PrkCmd_Checksum;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 8);
    data[7] += to_set.return_byte_t();
}
