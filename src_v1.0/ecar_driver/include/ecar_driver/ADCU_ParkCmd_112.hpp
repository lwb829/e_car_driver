#pragma once

#include "Byte.hpp"

class ADCUParkCmd112
{
public:
    static int32_t ID; // 创建静态成员变量static

    ADCUParkCmd112();

    void UpdateData(int Prk_Active, int Prk_Enable, int PrkCmd_RollCnt, int PrkCmd_Checksum);

    void Reset(); // 重置函数

    uint8_t *get_data();

private:
    // 起始字节：0；起始位：7；信号长度：1；
    void set_e_Prk_Active(int Prk_Active); // 驻车制动控制激活

    // 起始字节：0；起始位：6；信号长度：1；
    void set_e_Prk_Enable(int Prk_Enable); // 驻车使能

    // 起始字节：6；起始位：48；信号长度：4；
    void set_e_PrkCmd_RollCnt(int PrkCmd_RollCnt); // 循环计数

    // 起始字节：7；起始位：56；信号长度：8；
    void set_e_PrkCmd_Checksum(int PrkCmd_Checksum); // 校验和

private:
    uint8_t data[8];
};
