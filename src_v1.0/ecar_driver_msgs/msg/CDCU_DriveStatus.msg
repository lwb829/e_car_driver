Header header

#驱动系统工作模式
int8 CDCU_MCU_WorkMode

#实际档位，0:N，1:D,2:R,3:Reserve
int8 CDCU_MCU_GearAct

#电机运转方向,0-Stoped,1-Forward,2-backward,3-Reserve
int8 CDCU_MCU_RunDir

#实际油门,%
int8 CDCU_MCU_ThrotAct

#MCU故障等级，0:无故障，1:level1,2:level2,3:level3
int8 CDCU_MCU_ErrLevel
