#pragma once

#include "Byte.hpp"

class ADCUCrashClrCmd12A
{
public:
    static int32_t ID; // 创建静态成员变量static

    ADCUCrashClrCmd12A();

    void UpdateData(int CrashClearCmd_Valid, int CrashClear_Cmd, int EmgcSwhClearCmd_Valid, int EmgcSwhClear_Cmd, int CrashClr_RollCnt, int CrashClr_Checksum);

    void Reset(); // 重置函数

    uint8_t *get_data();

private:
    // 起始字节：0；起始位：7；信号长度：1；
    void set_e_CrashClearCmd_Valid(int CrashClearCmd_Valid); // 触边碰撞标志清除指令有效位

    // 起始字节：0；起始位：6；信号长度：1；
    void set_e_CrashClear_Cmd(int CrashClear_Cmd); // 触边碰撞标志清除指令（上升沿触发激活）

    // 起始字节：0；起始位：3；信号长度：1；
    void set_e_EmgcSwhClearCmd_Valid(int EmgcSwhClearCmd_Valid); // 急停按钮触发标志清楚指令有效位

    // 起始字节：0；起始位：2；信号长度：1；
    void set_e_EmgcSwhClear_Cmd(int EmgcSwhClear_Cmd); // 急停按钮触发标志清除指令（上升沿触发激活）

    // 起始字节：6；起始位：48；信号长度：4；
    void set_e_CrashClr_RollCnt(int CrashClr_RollCnt); // 循环计数

    // 起始字节：7；起始位：56；信号长度：8；
    void set_e_CrashClr_Checksum(int CrashClr_Checksum); // 校验和

private:
    uint8_t data[8];
};
