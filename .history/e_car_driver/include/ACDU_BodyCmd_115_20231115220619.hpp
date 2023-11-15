#pragma once

#include "Byte.hpp"

class ADCUBodyCmd115
{
public:
    static int32_t ID; // 创建静态成员变量static

    ADCUBodyCmd115();

    void UpdateData(int LampCmd_Active, int HeadLamp_Cmd, int DblFlashLamp_Cmd, int TurnLLamp_Cmd, int TurnRLamp_Cmd, int BackLamp_Cmd, int Buzzer_Cmd, int Horn_Cmd, int RunLamp_Cmd, int BrkLamp_Cmd, int FogLamp_Cmd, int WidthLamp_Cmd, int LampCmd_RollCnt, int LampCmd_Checksum);

    void Reset(); // 重置函数

    uint8_t *get_data();

private:
    // 起始字节：0；起始位：7；信号长度：1；
    void set_e_LampCmd_Active(int LampCmd_Active); // 声光系统控制激活

    // 起始字节：1；起始位：15；信号长度：1；
    void set_e_HeadLamp_Cmd(int HeadLamp_Cmd); // 前大灯开启

    // 起始字节：1；起始位：14；信号长度：1；
    void set_e_DblFlashLamp_Cmd(int DblFlashLamp_Cmd); // 双闪开启

    // 起始字节：1；起始位：13；信号长度：1；
    void set_e_TurnLLamp_Cmd(int TurnLLamp_Cmd); // 左转灯开启

    // 起始字节：1；起始位：12；信号长度：1；
    void set_e_TurnRLamp_Cmd(int TurnRLamp_Cmd); // 右转灯开启

    // 起始字节：1；起始位：11；信号长度：1；
    void set_e_BackLamp_Cmd(int BackLamp_Cmd); // 倒车灯开启

    // 起始字节：1；起始位：10；信号长度：1；
    void set_e_Buzzer_Cmd(int Buzzer_Cmd); // 警示蜂鸣器开启

    // 起始字节：1；起始位：9；信号长度：1；
    void set_e_Horn_Cmd(int Horn_Cmd); // 喇叭开启

    // 起始字节：1；起始位：8；信号长度：1；
    void set_e_RunLamp_Cmd(int RunLamp_Cmd); // 日行灯开启

    // 起始字节：2；起始位：23；信号长度：1；
    void set_e_BrkLamp_Cmd(int BrkLamp_Cmd); // 制动灯开启

    // 起始字节：2；起始位：22；信号长度：1；
    void set_e_FogLamp_Cmd(int FogLamp_Cmd); // 雾灯开启

    // 起始字节：2；起始位：21；信号长度：1；
    void set_e_WidthLamp_Cmd(int WidthLamp_Cmd); // 示廓灯开启

    // 起始字节：6；起始位：48；信号长度：4；
    void set_e_LampCmd_RollCnt(int LampCmd_RollCnt); // 循环计数

    // 起始字节：7；起始位：56；信号长度：8；
    void set_e_LampCmd_Checksum(int LampCmd_Checksum); // 校验和

private:
    uint8_t data[8];
};
