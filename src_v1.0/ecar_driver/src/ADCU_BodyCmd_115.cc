#include "ecar_driver/ADCU_BodyCmd_115.hpp"

int32_t ADCUBodyCmd115::ID = 0x115;

// public
ADCUBodyCmd115::ADCUBodyCmd115() { Reset(); } // 在构造函数中调用了Reset()函数，将类内部的数据初始化为0

void ADCUBodyCmd115::UpdateData(int LampCmd_Active, int HeadLamp_Cmd, int DblFlashLamp_Cmd, int TurnLLamp_Cmd, int TurnRLamp_Cmd, int BackLamp_Cmd, int Buzzer_Cmd, int Horn_Cmd, int RunLamp_Cmd, int BrkLamp_Cmd, int FogLamp_Cmd, int WidthLamp_Cmd, int LampCmd_RollCnt, int LampCmd_Checksum)
{
    set_e_LampCmd_Active(LampCmd_Active); 
    set_e_HeadLamp_Cmd(HeadLamp_Cmd); 
    set_e_DblFlashLamp_Cmd(DblFlashLamp_Cmd); 
    set_e_TurnLLamp_Cmd(TurnLLamp_Cmd); 
    set_e_TurnRLamp_Cmd(TurnRLamp_Cmd); 
    set_e_BackLamp_Cmd(BackLamp_Cmd); 
    set_e_Buzzer_Cmd(Buzzer_Cmd); 
    set_e_Horn_Cmd(Horn_Cmd); 
    set_e_RunLamp_Cmd(RunLamp_Cmd); 
    set_e_BrkLamp_Cmd(BrkLamp_Cmd); 
    set_e_FogLamp_Cmd(FogLamp_Cmd); 
    set_e_WidthLamp_Cmd(WidthLamp_Cmd); 
    set_e_LampCmd_RollCnt(LampCmd_RollCnt); 
    set_e_LampCmd_Checksum(LampCmd_Checksum);
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
    int x = LampCmd_Active;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 7, 1);
    data[0] += to_set.return_byte_t();
}

// 起始字节：1；起始位：15；信号长度：1；
void ADCUBodyCmd115::set_e_HeadLamp_Cmd(int HeadLamp_Cmd)
{
    int x = HeadLamp_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 7, 1);
    data[1] += to_set.return_byte_t();
}

// 起始字节：1；起始位：14；信号长度：1；
void ADCUBodyCmd115::set_e_DblFlashLamp_Cmd(int DblFlashLamp_Cmd)
{
    int x = DblFlashLamp_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 6, 1);
    data[1] += to_set.return_byte_t();
}

// 起始字节：1；起始位：13；信号长度：1；
void ADCUBodyCmd115::set_e_TurnLLamp_Cmd(int TurnLLamp_Cmd)
{
    int x = TurnLLamp_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 5, 1);
    data[1] += to_set.return_byte_t();
}

// 起始字节：1；起始位：12；信号长度：1；
void ADCUBodyCmd115::set_e_TurnRLamp_Cmd(int TurnRLamp_Cmd)
{
    int x = TurnRLamp_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 4, 1);
    data[1] += to_set.return_byte_t();
}

// 起始字节：1；起始位：11；信号长度：1；
void ADCUBodyCmd115::set_e_BackLamp_Cmd(int BackLamp_Cmd)
{
    int x = BackLamp_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 3, 1);
    data[1] += to_set.return_byte_t();
}

// 起始字节：1；起始位：10；信号长度：1；
void ADCUBodyCmd115::set_e_Buzzer_Cmd(int Buzzer_Cmd)
{
    int x = Buzzer_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 2, 1);
    data[1] += to_set.return_byte_t();
}

// 起始字节：1；起始位：9；信号长度：1；
void ADCUBodyCmd115::set_e_Horn_Cmd(int Horn_Cmd)
{
    int x = Horn_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 1, 1);
    data[1] += to_set.return_byte_t();
}

// 起始字节：1；起始位：8；信号长度：1；
void ADCUBodyCmd115::set_e_RunLamp_Cmd(int RunLamp_Cmd)
{
    int x = RunLamp_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 1);
    data[1] += to_set.return_byte_t();
}

// 起始字节：2；起始位：23；信号长度：1；
void ADCUBodyCmd115::set_e_BrkLamp_Cmd(int BrkLamp_Cmd)
{
    int x = BrkLamp_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 7, 1);
    data[2] += to_set.return_byte_t();
}

// 起始字节：2；起始位：22；信号长度：1；
void ADCUBodyCmd115::set_e_FogLamp_Cmd(int FogLamp_Cmd)
{
    int x = FogLamp_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 6, 1);
    data[2] += to_set.return_byte_t();
}

// 起始字节：2；起始位：21；信号长度：1；
void ADCUBodyCmd115::set_e_WidthLamp_Cmd(int WidthLamp_Cmd)
{
    int x = WidthLamp_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 5, 1);
    data[2] += to_set.return_byte_t();
}

// 起始字节：6；起始位：48；信号长度：4；
void ADCUBodyCmd115::set_e_LampCmd_RollCnt(int LampCmd_RollCnt)
{
    int x = LampCmd_RollCnt;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 4);
    data[6] += to_set.return_byte_t();
}

// 起始字节：7；起始位：56；信号长度：8；
void ADCUBodyCmd115::set_e_LampCmd_Checksum(int LampCmd_Checksum)
{
    int x = LampCmd_Checksum;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 8);
    data[7] += to_set.return_byte_t();
}