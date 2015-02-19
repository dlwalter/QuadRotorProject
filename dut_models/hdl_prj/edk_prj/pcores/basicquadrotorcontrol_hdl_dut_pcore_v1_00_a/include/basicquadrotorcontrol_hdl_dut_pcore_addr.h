/*
 * File Name:         hdl_prj\ipcore\basicquadrotorcontrol_hdl_dut_pcore_v1_00_a\include\basicquadrotorcontrol_hdl_dut_pcore_addr.h
 * Description:       C Header File
 * Created:           2015-02-18 16:31:57
*/

#ifndef BASICQUADROTORCONTROL_HDL_DUT_PCORE_H_
#define BASICQUADROTORCONTROL_HDL_DUT_PCORE_H_

#define  IPCore_Reset_basicquadrotorcontrol_hdl_dut_pcore       0x0  //write 0x1 to bit 0 to reset IP core
#define  IPCore_Enable_basicquadrotorcontrol_hdl_dut_pcore      0x4  //enabled (by default) when bit 0 is 0x1
#define  CMD_Data_basicquadrotorcontrol_hdl_dut_pcore           0x100  //data register for port CMD
#define  CMD_VLD_Data_basicquadrotorcontrol_hdl_dut_pcore       0x104  //data register for port CMD_VLD
#define  en_motor1_Data_basicquadrotorcontrol_hdl_dut_pcore     0x108  //data register for port en_motor1
#define  duty_motor1_Data_basicquadrotorcontrol_hdl_dut_pcore   0x10C  //data register for port duty_motor1
#define  en_motor2_Data_basicquadrotorcontrol_hdl_dut_pcore     0x110  //data register for port en_motor2
#define  duty_motor2_Data_basicquadrotorcontrol_hdl_dut_pcore   0x114  //data register for port duty_motor2
#define  en_motor3_Data_basicquadrotorcontrol_hdl_dut_pcore     0x118  //data register for port en_motor3
#define  duty_motor3_Data_basicquadrotorcontrol_hdl_dut_pcore   0x11C  //data register for port duty_motor3
#define  en_motor4_Data_basicquadrotorcontrol_hdl_dut_pcore     0x120  //data register for port en_motor4
#define  duty_motor4_Data_basicquadrotorcontrol_hdl_dut_pcore   0x124  //data register for port duty_motor4
#define  X_Data_basicquadrotorcontrol_hdl_dut_pcore             0x128  //data register for port X
#define  Y_Data_basicquadrotorcontrol_hdl_dut_pcore             0x12C  //data register for port Y
#define  Z_Data_basicquadrotorcontrol_hdl_dut_pcore             0x130  //data register for port Z
#define  XYZ_Valid_Data_basicquadrotorcontrol_hdl_dut_pcore     0x134  //data register for port XYZ_Valid

#endif /* BASICQUADROTORCONTROL_HDL_DUT_PCORE_H_ */
