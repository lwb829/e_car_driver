#include "e_car_main/ADCU_DriveCmd_114.hpp"

int32_t ADCUDriveCmd114::ID = 0x114;

// public
ADCUDriveCmd114::ADCUDriveCmd114() { Reset(); } // 在构造函数中调用了Reset()函数，将类内部的数据初始化为0

void ADCUDriveCmd114::UpdateData(int Drv_Active, int Drv_CtrlMode, int Drv_TgtGear, int Drv_TgtPedpos, double Drv_TgtVehSpd0, int DrvCmd0_RollCnt, int DrvCmd0_Checksum)
{
     set_e_Drv_Active(Drv_Active); 
    set_e_Drv_CtrlMode(Drv_CtrlMode); 
    set_e_Drv_TgtGear(Drv_TgtGear); 
     set_e_Drv_TgtPedpos(Drv_TgtPedpos);
     set_e_Drv_TgtVehSpd0(Drv_TgtVehSpd0); 
     set_e_DrvCmd0_RollCnt(DrvCmd0_RollCnt);
     set_e_DrvCmd0_Checksum(DrvCmd0_Checksum); 
}

void ADCUDriveCmd114::Reset()
{
    for (uint i = 0; i < 8; i++)
    {
        data[i] = 0;
    }
}

uint8_t *ADCUDriveCmd114::get_data()
{
    return data;
}

// 起始字节：0；起始位：7；信号长度：1；
void ADCUDriveCmd114::set_e_Drv_Active(int Drv_Active)
{
    int x = Drv_Active;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 7, 1);
    data[0] += to_set.return_byte_t();
}

// 起始字节：0；起始位：5；信号长度：2；
void ADCUDriveCmd114::set_e_Drv_CtrlMode(int Drv_CtrlMode)
{
    int x = Drv_CtrlMode;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 5, 2);
    data[0] += to_set.return_byte_t();
}

// 起始字节：0；起始位：0；信号长度：2；
void ADCUDriveCmd114::set_e_Drv_TgtGear(int Drv_TgtGear)
{
    int x = Drv_TgtGear;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 2);
    data[0] += to_set.return_byte_t();
}

// 起始字节：1；起始位：8；信号长度：8；偏移量：-100；
void ADCUDriveCmd114::set_e_Drv_TgtPedpos(int Drv_TgtPedpos)
{
    int x = Drv_TgtPedpos +100.00000;
    uint8_t a = 0;
    Byte to_set(a);
    to_set.set_value(x, 0, 8);
    data[1] += to_set.return_byte_t();
}

// 起始字节：3；起始位：24；信号长度：16；精度：0.01；偏移量：-100；
void ADCUDriveCmd114::set_e_Drv_TgtVehSpd0(double Drv_TgtVehSpd0)
{
    int x = (Drv_TgtVehSpd0 +100.0000) / 0.01000;
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

// 起始字节：6；起始位：48；信号长度：4；
void ADCUDriveCmd114::set_e_DrvCmd0_RollCnt(int DrvCmd0_RollCnt)
{
    int x = DrvCmd0_RollCnt;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 4);
    data[6] += to_set.return_byte_t();
}

// 起始字节：7；起始位：56；信号长度：8；
void ADCUDriveCmd114::set_e_DrvCmd0_Checksum(int DrvCmd0_Checksum)
{
    int x = DrvCmd0_Checksum;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 8);
    data[7] += to_set.return_byte_t();
}
