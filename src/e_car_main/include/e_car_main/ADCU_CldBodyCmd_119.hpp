#pragma once

#include "Byte.hpp"

class ADCUCldBodyCmd119
{
public:
    static int32_t ID; // 创建静态成员变量static

    ADCUCldBodyCmd119();

    void UpdateData(int Cld_WidthLamp_Cmd, int Cld_BrkLamp_Cmd, int Cld_FogLamp_Cmd, int Cld_HeadLamp_Cmd, int Cld_DblFlashLamp_Cmd, int Cld_TurnLLamp_Cmd, int Cld_TurnRLamp_Cmd, int Cld_BackLamp_Cmd, int Cld_Buzzer_Cmd, int Cld_Horn_Cmd, int Cld_RunLamp_Cmd, int CldBodyCmd_RollCnt, int CldBodyCmd_Checksum);

    void Reset(); // 重置函数

    uint8_t *get_data();

private:
    // 起始字节：4；起始位：34；信号长度：1；
    void set_e_Cld_WidthLamp_Cmd(int Cld_WidthLamp_Cmd); // 远程驾驶示廓灯开启

    // 起始字节：4；起始位：33；信号长度：1；
    void set_e_Cld_BrkLamp_Cmd(int Cld_BrkLamp_Cmd); // 远程驾驶制动灯开启

    // 起始字节：4；起始位：32；信号长度：1；
    void set_e_Cld_FogLamp_Cmd(int Cld_FogLamp_Cmd); // 远程驾驶雾灯开启

    // 起始字节：5；起始位：47；信号长度：1；
    void set_e_Cld_HeadLamp_Cmd(int Cld_HeadLamp_Cmd); // 远程驾驶前大灯开启

    // 起始字节：5；起始位：46；信号长度：1；
    void set_e_Cld_DblFlashLamp_Cmd(int Cld_DblFlashLamp_Cmd); // 远程驾驶双闪开启

    // 起始字节：5；起始位：45；信号长度：1；
    void set_e_Cld_TurnLLamp_Cmd(int Cld_TurnLLamp_Cmd); // 远程驾驶左转向灯开启

    // 起始字节：5；起始位：44；信号长度：1；
    void set_e_Cld_TurnRLamp_Cmd(int Cld_TurnRLamp_Cmd); // 远程驾驶右转向灯开启

    // 起始字节：5；起始位：43；信号长度：1；
    void set_e_Cld_BackLamp_Cmd(int Cld_BackLamp_Cmd); // 远程驾驶倒车灯开启

    // 起始字节：5；起始位：42；信号长度：1；
    void set_e_Cld_Buzzer_Cmd(int Cld_Buzzer_Cmd); // 远程驾驶警示蜂鸣器开启

    // 起始字节：5；起始位：41；信号长度：1；
    void set_e_Cld_Horn_Cmd(int Cld_Horn_Cmd); // 远程驾驶喇叭开启

    // 起始字节：5；起始位：40；信号长度：1；
    void set_e_Cld_RunLamp_Cmd(int Cld_RunLamp_Cmd); // 远程驾驶日行灯

    // 起始字节：6；起始位：48；信号长度：4；
    void set_e_CldBodyCmd_RollCnt(int CldBodyCmd_RollCnt); // 循环计数

    // 起始字节：7；起始位：56；信号长度：8；
    void set_e_CldBodyCmd_Checksum(int CldBodyCmd_Checksum); // 校验和

private:
    uint8_t data[8];
};
