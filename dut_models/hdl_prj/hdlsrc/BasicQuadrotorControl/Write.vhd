-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\BasicQuadrotorControl\Write.vhd
-- Created: 2015-02-18 16:12:25
-- 
-- Generated by MATLAB 8.4 and HDL Coder 3.5
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: Write
-- Source Path: BasicQuadrotorControl/hdl_dut/ADXL345_read/Write
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.hdl_dut_pkg.ALL;

ENTITY Write IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        cmd                               :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14
        CMD_VLD                           :   IN    std_logic;
        CSn_CONV                          :   OUT   std_logic;
        SCK                               :   OUT   std_logic;
        SDI                               :   OUT   std_logic
        );
END Write;


ARCHITECTURE rtl OF Write IS

  -- Signals
  SIGNAL cmd_unsigned                     : unsigned(13 DOWNTO 0);  -- ufix14
  SIGNAL is_Write                         : T_state_type_is_Write;  -- uint8
  SIGNAL count                            : unsigned(8 DOWNTO 0);  -- ufix9
  SIGNAL clock_cnt                        : unsigned(4 DOWNTO 0);  -- ufix5
  SIGNAL CSn_CONV_reg                     : std_logic;
  SIGNAL SCK_reg                          : std_logic;
  SIGNAL SDI_reg                          : std_logic;
  SIGNAL is_Write_next                    : T_state_type_is_Write;  -- enum type state_type_is_Write (7 enums)
  SIGNAL count_next                       : unsigned(8 DOWNTO 0);  -- ufix9
  SIGNAL clock_cnt_next                   : unsigned(4 DOWNTO 0);  -- ufix5
  SIGNAL CSn_CONV_reg_next                : std_logic;
  SIGNAL SCK_reg_next                     : std_logic;
  SIGNAL SDI_reg_next                     : std_logic;

BEGIN
  cmd_unsigned <= unsigned(cmd);

  Write_1_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      count <= to_unsigned(2#000000000#, 9);
      clock_cnt <= to_unsigned(2#00000#, 5);
      CSn_CONV_reg <= '1';
      SCK_reg <= '1';
      SDI_reg <= '1';
      is_Write <= IN_IDLE;
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        is_Write <= is_Write_next;
        count <= count_next;
        clock_cnt <= clock_cnt_next;
        CSn_CONV_reg <= CSn_CONV_reg_next;
        SCK_reg <= SCK_reg_next;
        SDI_reg <= SDI_reg_next;
      END IF;
    END IF;
  END PROCESS Write_1_process;
  Write_1_output : PROCESS (is_Write, count, clock_cnt, cmd_unsigned, CMD_VLD, CSn_CONV_reg, SCK_reg,
       SDI_reg)
    VARIABLE add_temp : unsigned(9 DOWNTO 0);
    VARIABLE add_temp_0 : unsigned(9 DOWNTO 0);
    VARIABLE add_temp_1 : unsigned(9 DOWNTO 0);
    VARIABLE add_temp_2 : unsigned(9 DOWNTO 0);
    VARIABLE add_temp_3 : unsigned(9 DOWNTO 0);
    VARIABLE add_temp_4 : unsigned(5 DOWNTO 0);
  BEGIN
    is_Write_next <= is_Write;
    count_next <= count;
    clock_cnt_next <= clock_cnt;
    CSn_CONV_reg_next <= CSn_CONV_reg;
    SCK_reg_next <= SCK_reg;
    SDI_reg_next <= SDI_reg;

    CASE is_Write IS
      WHEN IN_CLOCKING =>
        --tCoONV time is typical 3 uS and Maximum 3.5 uS according to ADC data sheet.  Assuming clock frequency of 100 MHz, the maximum count value for 3 uS delay should be (3 uS/10 nS=) 300.
        IF count = to_unsigned(2#000001010#, 9) THEN 
          count_next <= to_unsigned(2#000000000#, 9);
          SCK_reg_next <= '0';
          IF clock_cnt = to_unsigned(2#00001#, 5) THEN 
            IF cmd_unsigned(13) /= '0' THEN 
              SDI_reg_next <= '1';
            ELSE 
              SDI_reg_next <= '0';
            END IF;
          ELSIF clock_cnt = to_unsigned(2#00010#, 5) THEN 
            IF cmd_unsigned(12) /= '0' THEN 
              SDI_reg_next <= '1';
            ELSE 
              SDI_reg_next <= '0';
            END IF;
          ELSIF clock_cnt = to_unsigned(2#00011#, 5) THEN 
            IF cmd_unsigned(11) /= '0' THEN 
              SDI_reg_next <= '1';
            ELSE 
              SDI_reg_next <= '0';
            END IF;
          ELSIF clock_cnt = to_unsigned(2#00100#, 5) THEN 
            IF cmd_unsigned(10) /= '0' THEN 
              SDI_reg_next <= '1';
            ELSE 
              SDI_reg_next <= '0';
            END IF;
          ELSIF clock_cnt = to_unsigned(2#00101#, 5) THEN 
            IF cmd_unsigned(9) /= '0' THEN 
              SDI_reg_next <= '1';
            ELSE 
              SDI_reg_next <= '0';
            END IF;
          ELSIF clock_cnt = to_unsigned(2#00110#, 5) THEN 
            IF cmd_unsigned(8) /= '0' THEN 
              SDI_reg_next <= '1';
            ELSE 
              SDI_reg_next <= '0';
            END IF;
          ELSIF clock_cnt = to_unsigned(2#00111#, 5) THEN 
            IF cmd_unsigned(7) /= '0' THEN 
              SDI_reg_next <= '1';
            ELSE 
              SDI_reg_next <= '0';
            END IF;
          ELSIF clock_cnt = to_unsigned(2#01000#, 5) THEN 
            IF cmd_unsigned(6) /= '0' THEN 
              SDI_reg_next <= '1';
            ELSE 
              SDI_reg_next <= '0';
            END IF;
          ELSIF clock_cnt = to_unsigned(2#01001#, 5) THEN 
            IF cmd_unsigned(5) /= '0' THEN 
              SDI_reg_next <= '1';
            ELSE 
              SDI_reg_next <= '0';
            END IF;
          ELSIF clock_cnt = to_unsigned(2#01010#, 5) THEN 
            IF cmd_unsigned(4) /= '0' THEN 
              SDI_reg_next <= '1';
            ELSE 
              SDI_reg_next <= '0';
            END IF;
          ELSIF clock_cnt = to_unsigned(2#01011#, 5) THEN 
            IF cmd_unsigned(3) /= '0' THEN 
              SDI_reg_next <= '1';
            ELSE 
              SDI_reg_next <= '0';
            END IF;
          ELSIF clock_cnt = to_unsigned(2#01100#, 5) THEN 
            IF cmd_unsigned(2) /= '0' THEN 
              SDI_reg_next <= '1';
            ELSE 
              SDI_reg_next <= '0';
            END IF;
          ELSIF clock_cnt = to_unsigned(2#01101#, 5) THEN 
            IF cmd_unsigned(1) /= '0' THEN 
              SDI_reg_next <= '1';
            ELSE 
              SDI_reg_next <= '0';
            END IF;
          ELSIF clock_cnt = to_unsigned(2#01110#, 5) THEN 
            IF cmd_unsigned(0) /= '0' THEN 
              SDI_reg_next <= '1';
            ELSE 
              SDI_reg_next <= '0';
            END IF;
          ELSE 
            SDI_reg_next <= '0';
          END IF;
          is_Write_next <= IN_START_ADC_RDWR;
        ELSE 
          add_temp_1 := resize(count, 10) + to_unsigned(2#0000000001#, 10);
          IF add_temp_1(9) /= '0' THEN 
            count_next <= "111111111";
          ELSE 
            count_next <= add_temp_1(8 DOWNTO 0);
          END IF;
          is_Write_next <= IN_CLOCKING;
        END IF;
      WHEN IN_END =>
        is_Write_next <= IN_IDLE;
      WHEN IN_END1 =>
        IF count = to_unsigned(2#000001010#, 9) THEN 
          count_next <= to_unsigned(2#000000000#, 9);
          CSn_CONV_reg_next <= '1';
          is_Write_next <= IN_END;
        ELSE 
          add_temp := resize(count, 10) + to_unsigned(2#0000000001#, 10);
          IF add_temp(9) /= '0' THEN 
            count_next <= "111111111";
          ELSE 
            count_next <= add_temp(8 DOWNTO 0);
          END IF;
          is_Write_next <= IN_END1;
        END IF;
      WHEN IN_IDLE =>
        IF CMD_VLD = '1' THEN 
          CSn_CONV_reg_next <= '0';
          SCK_reg_next <= '0';
          SDI_reg_next <= '0';
          -- sdi_gen(cmd ,clock_cnt);}
          is_Write_next <= IN_START_CONV;
        END IF;
      WHEN IN_START_ADC_RDWR =>
        --The ADC maximum clock frequency, according to ADC data sheet, is rated at 40 MHz.  Assuming a 100 MHz FPGA clock dividing the FPGA clock by 3 to generate a 33.33 MHz ADC clock (SCK) for the ADC.
        IF (clock_cnt = to_unsigned(2#01110#, 5)) AND (count = to_unsigned(2#000001010#, 9)) THEN 
          clock_cnt_next <= to_unsigned(2#00000#, 5);
          count_next <= to_unsigned(2#000000000#, 9);
          SCK_reg_next <= '1';
          is_Write_next <= IN_END1;
        ELSIF count = to_unsigned(2#000001010#, 9) THEN 
          count_next <= to_unsigned(2#000000000#, 9);
          SCK_reg_next <= '1';
          add_temp_4 := resize(clock_cnt, 6) + to_unsigned(2#000001#, 6);
          IF add_temp_4(5) /= '0' THEN 
            clock_cnt_next <= "11111";
          ELSE 
            clock_cnt_next <= add_temp_4(4 DOWNTO 0);
          END IF;
          is_Write_next <= IN_CLOCKING;
        ELSE 
          add_temp_3 := resize(count, 10) + to_unsigned(2#0000000001#, 10);
          IF add_temp_3(9) /= '0' THEN 
            count_next <= "111111111";
          ELSE 
            count_next <= add_temp_3(8 DOWNTO 0);
          END IF;
          is_Write_next <= IN_START_ADC_RDWR;
        END IF;
      WHEN IN_START_CONV =>
        --During START_CONV the CSn_CONV is held high for 10 clock cycles.  
        --Assuming the FPGA clock frequency is 100 MHz, the 10 clock count delay 
        --provides 100 nS delay which is the typical time specified in the ADC data 
        --sheet for the CSn_CONV input to the ADC.
        --The count comparator can be changed from 10 by the user as long as the ADC requirment for minimum of 40 nS is met.
        IF count = to_unsigned(2#000001010#, 9) THEN 
          count_next <= to_unsigned(2#000000000#, 9);
          CSn_CONV_reg_next <= '0';
          SCK_reg_next <= '1';
          is_Write_next <= IN_tCONV_delay;
        ELSE 
          add_temp_2 := resize(count, 10) + to_unsigned(2#0000000001#, 10);
          IF add_temp_2(9) /= '0' THEN 
            count_next <= "111111111";
          ELSE 
            count_next <= add_temp_2(8 DOWNTO 0);
          END IF;
          is_Write_next <= IN_START_CONV;
        END IF;
      WHEN OTHERS => 
        --tCoONV time is typical 3 uS and Maximum 3.5 uS according to ADC data sheet.  Assuming clock frequency of 100 MHz, the maximum count value for 3 uS delay should be (3 uS/10 nS=) 300.
        IF count = to_unsigned(2#000001010#, 9) THEN 
          count_next <= to_unsigned(2#000000000#, 9);
          SCK_reg_next <= '0';
          is_Write_next <= IN_START_ADC_RDWR;
        ELSE 
          add_temp_0 := resize(count, 10) + to_unsigned(2#0000000001#, 10);
          IF add_temp_0(9) /= '0' THEN 
            count_next <= "111111111";
          ELSE 
            count_next <= add_temp_0(8 DOWNTO 0);
          END IF;
          is_Write_next <= IN_tCONV_delay;
        END IF;
    END CASE;

  END PROCESS Write_1_output;

  CSn_CONV <= CSn_CONV_reg_next;
  SCK <= SCK_reg_next;
  SDI <= SDI_reg_next;

END rtl;
