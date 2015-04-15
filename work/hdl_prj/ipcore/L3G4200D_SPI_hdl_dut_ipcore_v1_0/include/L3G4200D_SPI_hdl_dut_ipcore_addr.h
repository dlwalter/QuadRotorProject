/*
 * File Name:         hdl_prj\ipcore\L3G4200D_SPI_hdl_dut_ipcore_v1_0\include\L3G4200D_SPI_hdl_dut_ipcore_addr.h
 * Description:       C Header File
 * Created:           2015-04-14 21:31:27
*/

#ifndef L3G4200D_SPI_HDL_DUT_IPCORE_H_
#define L3G4200D_SPI_HDL_DUT_IPCORE_H_

#define  IPCore_Reset_L3G4200D_SPI_hdl_dut_ipcore      0x0  //write 0x1 to bit 0 to reset IP core
#define  IPCore_Enable_L3G4200D_SPI_hdl_dut_ipcore     0x4  //enabled (by default) when bit 0 is 0x1
#define  enable_Data_L3G4200D_SPI_hdl_dut_ipcore       0x100  //data register for port enable
#define  x_gyro_low_Data_L3G4200D_SPI_hdl_dut_ipcore   0x104  //data register for port x_gyro_low
#define  x_gyro_out_Data_L3G4200D_SPI_hdl_dut_ipcore   0x108  //data register for port x_gyro_out
#define  y_gyro_low_Data_L3G4200D_SPI_hdl_dut_ipcore   0x10C  //data register for port y_gyro_low
#define  y_gyro_out_Data_L3G4200D_SPI_hdl_dut_ipcore   0x110  //data register for port y_gyro_out
#define  z_gyro_low_Data_L3G4200D_SPI_hdl_dut_ipcore   0x114  //data register for port z_gyro_low
#define  z_gyro_out_Data_L3G4200D_SPI_hdl_dut_ipcore   0x118  //data register for port z_gyro_out
#define  who_am_i_Data_L3G4200D_SPI_hdl_dut_ipcore     0x11C  //data register for port who_am_i

#endif /* L3G4200D_SPI_HDL_DUT_IPCORE_H_ */
