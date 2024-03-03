#include "e_car_main/ADCU_CldDrvCmd_118.hpp"

int32_t ADCUCldDrvCmd118::ID = 0x118;

// public
ADCUCldDrvCmd118::ADCUCldDrvCmd118() { Reset(); } // 在构造函数中调用了Reset()函数，将类内部的数据初始化为0

void ADCUCldDrvCmd118::UpdateData(int Cld_CtrlActive, int Cld_PrkEnable, int Cld_DriveMode, int Cld_TgtGear, double Cld_TgtThrotVal, double Cld_TgtBrkVal, double Cld_TgtStrAngle, int CldDrvCmd_RollCnt, int CldDrvCmd_Checksum)
{
    set_e_Cld_CtrlActive(Cld_CtrlActive); 
    set_e_Cld_PrkEnable(Cld_PrkEnable);
    set_e_Cld_DriveMode(Cld_DriveMode);
    set_e_Cld_TgtGear(Cld_TgtGear); 
    set_e_Cld_TgtThrotVal(Cld_TgtThrotVal); 
    set_e_Cld_TgtBrkVal(Cld_TgtBrkVal); 
    set_e_Cld_TgtStrAngle(Cld_TgtStrAngle); 
    set_e_CldDrvCmd_RollCnt(CldDrvCmd_RollCnt);
    set_e_CldDrvCmd_Checksum(CldDrvCmd_Checksum); 
}

void ADCUCldDrvCmd118::Reset()
{
    for (uint i = 0; i < 8; i++)
    {
        data[i] = 0;
    }
}

uint8_t *ADCUCldDrvCmd118::get_data()
{
    return data;
}

// 起始字节：0；起始位：7；信号长度：1；
void ADCUCldDrvCmd118::set_e_Cld_CtrlActive(int Cld_CtrlActive)
{
    int x = Cld_CtrlActive;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 7, 1);
    data[0] += to_set.return_byte_t();
}

// 起始字节：0；起始位：6；信号长度：1；
void ADCUCldDrvCmd118::set_e_Cld_PrkEnable(int Cld_PrkEnable)
{
    int x = Cld_PrkEnable;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 6, 1);
    data[0] += to_set.return_byte_t();
}

// 起始字节：0；起始位：4；信号长度：2；
void ADCUCldDrvCmd118::set_e_Cld_DriveMode(int Cld_DriveMode)
{
    int x = Cld_DriveMode;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 4, 2);
    data[0] += to_set.return_byte_t();
}

// 起始字节：0；起始位：0；信号长度：4；
void ADCUCldDrvCmd118::set_e_Cld_TgtGear(int Cld_TgtGear)
{
    int x = Cld_TgtGear;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 4);
    data[0] += to_set.return_byte_t();
}

// 起始字节：1；起始位：8；信号长度：8；精度：0.4；
void ADCUCldDrvCmd118::set_e_Cld_TgtThrotVal(double Cld_TgtThrotVal)
{
    int x = Cld_TgtThrotVal / 0.40000;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 8);
    data[1] += to_set.return_byte_t();
}

// 起始字节：2；起始位：16；信号长度：8；精度：0.4；
void ADCUCldDrvCmd118::set_e_Cld_TgtBrkVal(double Cld_TgtBrkVal)
{
    int x = Cld_TgtBrkVal / 0.40000;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 8);
    data[2] += to_set.return_byte_t();
}

// 起始字节：4；起始位：32；信号长度：16；精度：0.1；偏移量：-1000；
void ADCUCldDrvCmd118::set_e_Cld_TgtStrAngle(double Cld_TgtStrAngle)
{
    int x = (Cld_TgtStrAngle - -1000) / 0.10000;
    uint8_t t = 0;
    uint8_t a = 0;

    t = x & 0xFF; // 低八位
    Byte to_set0(a);
    to_set0.set_value(t, 0, 8);
    data[4] += to_set0.return_byte_t();
    x >>= 8;

    t = x & 0xFF; // 高八位
    Byte to_set1(a);
    to_set1.set_value(t, 0, 8);
    data[3] += to_set1.return_byte_t();
}

// 起始字节：6；起始位：48；信号长度：4；
void ADCUCldDrvCmd118::set_e_CldDrvCmd_RollCnt(int CldDrvCmd_RollCnt)
{
    int x = CldDrvCmd_RollCnt;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 4);
    data[6] += to_set.return_byte_t();
}

// 起始字节：7；起始位：56；信号长度：8；
void ADCUCldDrvCmd118::set_e_CldDrvCmd_Checksum(int CldDrvCmd_Checksum)
{
    int x = CldDrvCmd_Checksum;
    uint8_t a = 0;

    Byte to_set(a);
    to_set.set_value(x, 0, 8);
    data[7] += to_set.return_byte_t();
}
