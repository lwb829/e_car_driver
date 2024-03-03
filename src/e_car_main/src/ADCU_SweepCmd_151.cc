#include "e_car_main/ADCU_SweepCmd_151.hpp"

int32_t ADCUSweepCmd151::ID = 0x151;

// public
ADCUSweepCmd151::ADCUSweepCmd151() { Reset(); } // 在构造函数中调用了Reset()函数，将类内部的数据初始化为0

void ADCUSweepCmd151::UpdateData(int Tgt_SweepMode, int Sweep_Cmd, int ShakeDust_Cmd, int GbgDump_Cmd, int FtFenderCtrl_Cmd, int SweepEStop_Cmd, int BrushWtrValFbd_Cmd, int SweepCmd_RollCnt, int SweepCmd_Checksum)
{
    set_e_Tgt_SweepMode(Tgt_SweepMode); 
    set_e_Sweep_Cmd(Sweep_Cmd); 
    set_e_ShakeDust_Cmd(ShakeDust_Cmd); 
    set_e_GbgDump_Cmd(GbgDump_Cmd); 
    set_e_FtFenderCtrl_Cmd(FtFenderCtrl_Cmd); 
    set_e_SweepEStop_Cmd(SweepEStop_Cmd); 
    set_e_BrushWtrValFbd_Cmd(BrushWtrValFbd_Cmd);
    set_e_SweepCmd_RollCnt(SweepCmd_RollCnt);
    set_e_SweepCmd_Checksum(SweepCmd_Checksum);
}

void ADCUSweepCmd151::Reset()
{
    for (uint i = 0; i < 8; i++)
    {
        data[i] = 0;   
    }
}

uint8_t *ADCUSweepCmd151::get_data()
{
    return data;
}

// 起始字节：0；起始位：7；信号长度：1；
void ADCUSweepCmd151::set_e_Tgt_SweepMode(int Tgt_SweepMode)
{
    int x = Tgt_SweepMode;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 7, 1);
    data[0] += to_set.return_byte_t();
}

// 起始字节：0；起始位：6；信号长度：1；
void ADCUSweepCmd151::set_e_Sweep_Cmd(int Sweep_Cmd)
{
    int x = Sweep_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 6, 1);
    data[0] += to_set.return_byte_t();
}

// 起始字节：0；起始位：5；信号长度：1；
void ADCUSweepCmd151::set_e_ShakeDust_Cmd(int ShakeDust_Cmd)
{
    int x = ShakeDust_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 5, 1);
    data[0] += to_set.return_byte_t();
}

// 起始字节：0；起始位：4；信号长度：1；
void ADCUSweepCmd151::set_e_GbgDump_Cmd(int GbgDump_Cmd)
{
    int x = GbgDump_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 4, 1);
    data[0] += to_set.return_byte_t();
}

// 起始字节：0；起始位：3；信号长度：1；
void ADCUSweepCmd151::set_e_FtFenderCtrl_Cmd(int FtFenderCtrl_Cmd)
{
    int x = FtFenderCtrl_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 3, 1);
    data[0] += to_set.return_byte_t();
}

// 起始字节：0；起始位：0；信号长度：1；
void ADCUSweepCmd151::set_e_SweepEStop_Cmd(int SweepEStop_Cmd)
{
    int x = SweepEStop_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 1);
    data[0] += to_set.return_byte_t();
}

// 起始字节：1；起始位：15；信号长度：1；
void ADCUSweepCmd151::set_e_BrushWtrValFbd_Cmd(int BrushWtrValFbd_Cmd)
{
    int x = BrushWtrValFbd_Cmd;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 7, 1);
    data[1] += to_set.return_byte_t();
}

// 起始字节：6；起始位：48；信号长度：4；
void ADCUSweepCmd151::set_e_SweepCmd_RollCnt(int SweepCmd_RollCnt)
{
    int x = SweepCmd_RollCnt;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 4);
    data[6] += to_set.return_byte_t();
}

// 起始字节：7；起始位：56；信号长度：8；
void ADCUSweepCmd151::set_e_SweepCmd_Checksum(int SweepCmd_Checksum)
{
    int x = SweepCmd_Checksum;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 8);
    data[7] += to_set.return_byte_t();
}
