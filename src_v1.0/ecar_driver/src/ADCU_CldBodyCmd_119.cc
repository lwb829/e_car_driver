#include "ecar_driver/ADCU_CldBodyCmd_119.hpp"

int32_t ADCUCldBodyCmd119::ID = 0x119;

// public
ADCUCldBodyCmd119::ADCUCldBodyCmd119() { Reset(); } // 在构造函数中调用了Reset()函数，将类内部的数据初始化为0

void ADCUCldBodyCmd119::UpdateData(int Cld_WidthLamp_Cmd, int Cld_BrkLamp_Cmd, int Cld_FogLamp_Cmd, int Cld_HeadLamp_Cmd, int Cld_DblFlashLamp_Cmd, int Cld_TurnLLamp_Cmd, int Cld_TurnRLamp_Cmd, int Cld_BackLamp_Cmd, int Cld_Buzzer_Cmd, int Cld_Horn_Cmd, int Cld_RunLamp_Cmd, int CldBodyCmd_RollCnt, int CldBodyCmd_Checksum)
{
    set_e_Cld_WidthLamp_Cmd(Cld_WidthLamp_Cmd); 
    set_e_Cld_BrkLamp_Cmd(Cld_BrkLamp_Cmd); 
    set_e_Cld_FogLamp_Cmd(Cld_FogLamp_Cmd); 
    set_e_Cld_HeadLamp_Cmd(Cld_HeadLamp_Cmd); 
    set_e_Cld_DblFlashLamp_Cmd(Cld_DblFlashLamp_Cmd); 
    set_e_Cld_TurnLLamp_Cmd(Cld_TurnLLamp_Cmd); 
    set_e_Cld_TurnRLamp_Cmd(Cld_TurnRLamp_Cmd);
    set_e_Cld_BackLamp_Cmd(Cld_BackLamp_Cmd);
    set_e_Cld_Buzzer_Cmd(Cld_Buzzer_Cmd); 
    set_e_Cld_Horn_Cmd(Cld_Horn_Cmd); 
    set_e_Cld_RunLamp_Cmd(Cld_RunLamp_Cmd); 
    set_e_CldBodyCmd_RollCnt(CldBodyCmd_RollCnt);
    set_e_CldBodyCmd_Checksum(CldBodyCmd_Checksum); 
}

void ADCUCldBodyCmd119::Reset()
{
    for (uint i = 0; i < 8; i++)
    {
        data[i] = 0;
    }
}

uint8_t *ADCUCldBodyCmd119::get_data()
{
    return data;
}

// 起始字节：4；起始位：34；信号长度：1；
void ADCUCldBodyCmd119::set_e_Cld_WidthLamp_Cmd(int Cld_WidthLamp_Cmd)
{
    int x = Cld_WidthLamp_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 2, 1);
    data[4] += to_set.return_byte_t();
}

// 起始字节：4；起始位：33；信号长度：1；
void ADCUCldBodyCmd119::set_e_Cld_BrkLamp_Cmd(int Cld_BrkLamp_Cmd)
{
    int x = Cld_BrkLamp_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 1, 1);
    data[4] += to_set.return_byte_t();
}

// 起始字节：4；起始位：32；信号长度：1；
void ADCUCldBodyCmd119::set_e_Cld_FogLamp_Cmd(int Cld_FogLamp_Cmd)
{
    int x = Cld_FogLamp_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 1);
    data[4] += to_set.return_byte_t();
}

// 起始字节：5；起始位：47；信号长度：1；
void ADCUCldBodyCmd119::set_e_Cld_HeadLamp_Cmd(int Cld_HeadLamp_Cmd)
{
    int x = Cld_HeadLamp_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 7, 1);
    data[5] += to_set.return_byte_t();
}

// 起始字节：5；起始位：46；信号长度：1；
void ADCUCldBodyCmd119::set_e_Cld_DblFlashLamp_Cmd(int Cld_DblFlashLamp_Cmd)
{
    int x = Cld_DblFlashLamp_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 6, 1);
    data[5] += to_set.return_byte_t();
}

// 起始字节：5；起始位：45；信号长度：1；
void ADCUCldBodyCmd119::set_e_Cld_TurnLLamp_Cmd(int Cld_TurnLLamp_Cmd)
{
    int x = Cld_TurnLLamp_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 5, 1);
    data[5] += to_set.return_byte_t();
}

// 起始字节：5；起始位：44；信号长度：1；
void ADCUCldBodyCmd119::set_e_Cld_TurnRLamp_Cmd(int Cld_TurnRLamp_Cmd)
{
    int x = Cld_TurnRLamp_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 4, 1);
    data[5] += to_set.return_byte_t();
}

// 起始字节：5；起始位：43；信号长度：1；
void ADCUCldBodyCmd119::set_e_Cld_BackLamp_Cmd(int Cld_BackLamp_Cmd)
{
    int x = Cld_BackLamp_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 3, 1);
    data[5] += to_set.return_byte_t();
}

// 起始字节：5；起始位：42；信号长度：1；
void ADCUCldBodyCmd119::set_e_Cld_Buzzer_Cmd(int Cld_Buzzer_Cmd)
{
    int x = Cld_Buzzer_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 2, 1);
    data[5] += to_set.return_byte_t();
}

// 起始字节：5；起始位：41；信号长度：1；
void ADCUCldBodyCmd119::set_e_Cld_Horn_Cmd(int Cld_Horn_Cmd)
{
    int x = Cld_Horn_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 1, 1);
    data[5] += to_set.return_byte_t();
}

// 起始字节：5；起始位：40；信号长度：1；
void ADCUCldBodyCmd119::set_e_Cld_RunLamp_Cmd(int Cld_RunLamp_Cmd)
{
    int x = Cld_RunLamp_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 1);
    data[5] += to_set.return_byte_t();
}

// 起始字节：6；起始位：48；信号长度：4；
void ADCUCldBodyCmd119::set_e_CldBodyCmd_RollCnt(int CldBodyCmd_RollCnt)
{
    int x = CldBodyCmd_RollCnt;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 4);
    data[6] += to_set.return_byte_t();
}

// 起始字节：7；起始位：56；信号长度：8；
void ADCUCldBodyCmd119::set_e_CldBodyCmd_Checksum(int CldBodyCmd_Checksum)
{
    int x = CldBodyCmd_Checksum;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 8);
    data[7] += to_set.return_byte_t();
}