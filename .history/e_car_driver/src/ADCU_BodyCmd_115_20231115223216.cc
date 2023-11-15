#include "ADCU_BodyCmd_115.hpp"

int32_t ADCUBodyCmd115::ID = 0x115;

// public
ADCUBodyCmd115::ADCUBodyCmd115() { Reset(); } // 在构造函数中调用了Reset()函数，将类内部的数据初始化为0

void ADCUBodyCmd115::UpdateData(int LampCmd_Active, int HeadLamp_Cmd, int DblFlashLamp_Cmd, int TurnLLamp_Cmd, int TurnRLamp_Cmd, int BackLamp_Cmd, int Buzzer_Cmd, int Horn_Cmd, int RunLamp_Cmd, int BrkLamp_Cmd, int FogLamp_Cmd, int WidthLamp_Cmd, int LampCmd_RollCnt, int LampCmd_Checksum)
{
    set_e_LampCmd_Active(int LampCmd_Active); 
    set_e_HeadLamp_Cmd(int HeadLamp_Cmd); 
    set_e_DblFlashLamp_Cmd(int DblFlashLamp_Cmd); 
    set_e_TurnLLamp_Cmd(int TurnLLamp_Cmd); 
    set_e_TurnRLamp_Cmd(int TurnRLamp_Cmd); 
    set_e_BackLamp_Cmd(int BackLamp_Cmd); 
    set_e_Buzzer_Cmd(int Buzzer_Cmd); 
    set_e_Horn_Cmd(int Horn_Cmd); 
    set_e_RunLamp_Cmd(int RunLamp_Cmd); 
    set_e_BrkLamp_Cmd(int BrkLamp_Cmd); 
    set_e_FogLamp_Cmd(int FogLamp_Cmd); 
    set_e_WidthLamp_Cmd(int WidthLamp_Cmd); 
    set_e_LampCmd_RollCnt(int LampCmd_RollCnt); 
    set_e_LampCmd_Checksum(int LampCmd_Checksum);
}

void ADCUBodyCmd115::Reset()
{
    for (uint i = 0; i < 8; i++)
    {
        data[i] = 0;
    }
}

uint8_t *ADCUBodyCmd115::get_data()
{
    return data;
}

// 起始字节：0；起始位：7；信号长度：1；
void ADCUBodyCmd115::set_e_LampCmd_Active(int LampCmd_Active)
{
    int x = Brk_Active;
    uint8_t a = 0;

    Byte to_set(a);
    to.set.set_value(x, 7, 1);
    data[0] += to_set.return_byte_t();
}

// 起始字节：1；起始位：15；信号长度：1；
void ADCUBodyCmd115::set_e_HeadLamp_Cmd(int HeadLamp_Cmd)
{
    int x = Brk_CtrlMode;
    uint8_t a = 0;

    Byte to_set(a);
    to.set.set_value(x, 5, 2);
    data[0] += to_set.return_byte_t();
}

// 起始字节：1；起始位：14；信号长度：1；
void ADCUBodyCmd115::set_e_DblFlashLamp_Cmd(int DblFlashLamp_Cmd)
{
    int x = Brk_TgtPedpos / 0.40000;
    uint8_t a = 0;

    Byte to_set(a);
    to.set.set_value(x, 0, 8);
    data[1] += to_set.return_byte_t();
}

// 起始字节：1；起始位：13；信号长度：1；
void ADCUBodyCmd115::set_e_TurnLLamp_Cmd(int TurnLLamp_Cmd)
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

// 起始字节：1；起始位：12；信号长度：1；
void ADCUBodyCmd115::set_e_TurnRLamp_Cmd(int TurnRLamp_Cmd)
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

// 起始字节：1；起始位：11；信号长度：1；
void ADCUBodyCmd115::set_e_BackLamp_Cmd(int BackLamp_Cmd)
{
    int x = BrkCmd_RollCnt;
    uint8_t a = 0;

    Byte to_set(a);
    to.set.set_value(x, 0, 4);
    data[6] += to_set.return_byte_t();
}

// 起始字节：1；起始位：10；信号长度：1；
void ADCUBodyCmd115::set_e_Buzzer_Cmd(int Buzzer_Cmd)
{
    int x = BrkCmd_Checksum;
    uint8_t a = 0;

    Byte to_set(a);
    to.set.set_value(x, 0, 8);
    data[7] += to_set.return_byte_t();
}

// 起始字节：1；起始位：9；信号长度：1；
void ADCUBodyCmd115::set_e_Horn_Cmd(int Horn_Cmd)
{
    int x = BrkCmd_Checksum;
    uint8_t a = 0;

    Byte to_set(a);
    to.set.set_value(x, 0, 8);
    data[7] += to_set.return_byte_t();
}

// 起始字节：1；起始位：8；信号长度：1；
void ADCUBodyCmd115::set_e_RunLamp_Cmd(int RunLamp_Cmd)
{
    int x = BrkCmd_Checksum;
    uint8_t a = 0;

    Byte to_set(a);
    to.set.set_value(x, 0, 8);
    data[7] += to_set.return_byte_t();
}

// 起始字节：2；起始位：23；信号长度：1；
void ADCUBodyCmd115::set_e_BrkLamp_Cmd(int BrkLamp_Cmd)
{
    int x = BrkCmd_Checksum;
    uint8_t a = 0;

    Byte to_set(a);
    to.set.set_value(x, 0, 8);
    data[7] += to_set.return_byte_t();
}

// 起始字节：2；起始位：22；信号长度：1；
void ADCUBodyCmd115::set_e_FogLamp_Cmd(int FogLamp_Cmd)
{
    int x = BrkCmd_Checksum;
    uint8_t a = 0;

    Byte to_set(a);
    to.set.set_value(x, 0, 8);
    data[7] += to_set.return_byte_t();
}

// 起始字节：2；起始位：21；信号长度：1；
void ADCUBodyCmd115::set_e_WidthLamp_Cmd(int WidthLamp_Cmd)
{
    int x = BrkCmd_Checksum;
    uint8_t a = 0;

    Byte to_set(a);
    to.set.set_value(x, 0, 8);
    data[7] += to_set.return_byte_t();
}

// 起始字节：6；起始位：48；信号长度：4；
void ADCUBodyCmd115::set_e_LampCmd_RollCnt(int LampCmd_RollCnt)
{
    int x = BrkCmd_Checksum;
    uint8_t a = 0;

    Byte to_set(a);
    to.set.set_value(x, 0, 8);
    data[7] += to_set.return_byte_t();
}

// 起始字节：7；起始位：56；信号长度：8；
void ADCUBodyCmd115::set_e_LampCmd_Checksum(int LampCmd_Checksum)
{
    int x = BrkCmd_Checksum;
    uint8_t a = 0;

    Byte to_set(a);
    to.set.set_value(x, 0, 8);
    data[7] += to_set.return_byte_t();
}