Header header
#制动系统工作模式,0-Standby,1-Inetrrupt,2-Remote,3-Automatic，4-Emergency
int32 CDCU_EHB_WorkMode
#制动类型：0-Normal,1-Emergency,else-Reserved
int8 CDCU_EHB_BrkMode
# 当前实际制动压力，bar
int8 CDCU_EHB_BrkPresur
#实际制动踏板开度，%
float32 CDCU_EHB_BrkPedpos

