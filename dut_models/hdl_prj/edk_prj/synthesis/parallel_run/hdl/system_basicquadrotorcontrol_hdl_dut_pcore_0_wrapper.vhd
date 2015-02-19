-------------------------------------------------------------------------------
-- system_basicquadrotorcontrol_hdl_dut_pcore_0_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library basicquadrotorcontrol_hdl_dut_pcore_v1_00_a;
use basicquadrotorcontrol_hdl_dut_pcore_v1_00_a.all;

entity system_basicquadrotorcontrol_hdl_dut_pcore_0_wrapper is
  port (
    IPCORE_CLK : in std_logic;
    IPCORE_RESETN : in std_logic;
    AXI4_Lite_ACLK : in std_logic;
    AXI4_Lite_ARESETN : in std_logic;
    AXI4_Lite_AWADDR : in std_logic_vector(15 downto 0);
    AXI4_Lite_AWVALID : in std_logic;
    AXI4_Lite_AWREADY : out std_logic;
    AXI4_Lite_WDATA : in std_logic_vector(31 downto 0);
    AXI4_Lite_WSTRB : in std_logic_vector(3 downto 0);
    AXI4_Lite_WVALID : in std_logic;
    AXI4_Lite_WREADY : out std_logic;
    AXI4_Lite_BRESP : out std_logic_vector(1 downto 0);
    AXI4_Lite_BVALID : out std_logic;
    AXI4_Lite_BREADY : in std_logic;
    AXI4_Lite_ARADDR : in std_logic_vector(15 downto 0);
    AXI4_Lite_ARVALID : in std_logic;
    AXI4_Lite_ARREADY : out std_logic;
    AXI4_Lite_RDATA : out std_logic_vector(31 downto 0);
    AXI4_Lite_RRESP : out std_logic_vector(1 downto 0);
    AXI4_Lite_RVALID : out std_logic;
    AXI4_Lite_RREADY : in std_logic;
    PmodJA1_in : in std_logic;
    PmodJA1_out : out std_logic_vector(2 downto 0);
    PmodJB1 : out std_logic_vector(7 downto 0)
  );
end system_basicquadrotorcontrol_hdl_dut_pcore_0_wrapper;

architecture STRUCTURE of system_basicquadrotorcontrol_hdl_dut_pcore_0_wrapper is

  component basicquadrotorcontrol_hdl_dut_pcore is
    port (
      IPCORE_CLK : in std_logic;
      IPCORE_RESETN : in std_logic;
      AXI4_Lite_ACLK : in std_logic;
      AXI4_Lite_ARESETN : in std_logic;
      AXI4_Lite_AWADDR : in std_logic_vector(15 downto 0);
      AXI4_Lite_AWVALID : in std_logic;
      AXI4_Lite_AWREADY : out std_logic;
      AXI4_Lite_WDATA : in std_logic_vector(31 downto 0);
      AXI4_Lite_WSTRB : in std_logic_vector(3 downto 0);
      AXI4_Lite_WVALID : in std_logic;
      AXI4_Lite_WREADY : out std_logic;
      AXI4_Lite_BRESP : out std_logic_vector(1 downto 0);
      AXI4_Lite_BVALID : out std_logic;
      AXI4_Lite_BREADY : in std_logic;
      AXI4_Lite_ARADDR : in std_logic_vector(15 downto 0);
      AXI4_Lite_ARVALID : in std_logic;
      AXI4_Lite_ARREADY : out std_logic;
      AXI4_Lite_RDATA : out std_logic_vector(31 downto 0);
      AXI4_Lite_RRESP : out std_logic_vector(1 downto 0);
      AXI4_Lite_RVALID : out std_logic;
      AXI4_Lite_RREADY : in std_logic;
      PmodJA1_in : in std_logic;
      PmodJA1_out : out std_logic_vector(2 downto 0);
      PmodJB1 : out std_logic_vector(7 downto 0)
    );
  end component;

begin

  basicquadrotorcontrol_hdl_dut_pcore_0 : basicquadrotorcontrol_hdl_dut_pcore
    port map (
      IPCORE_CLK => IPCORE_CLK,
      IPCORE_RESETN => IPCORE_RESETN,
      AXI4_Lite_ACLK => AXI4_Lite_ACLK,
      AXI4_Lite_ARESETN => AXI4_Lite_ARESETN,
      AXI4_Lite_AWADDR => AXI4_Lite_AWADDR,
      AXI4_Lite_AWVALID => AXI4_Lite_AWVALID,
      AXI4_Lite_AWREADY => AXI4_Lite_AWREADY,
      AXI4_Lite_WDATA => AXI4_Lite_WDATA,
      AXI4_Lite_WSTRB => AXI4_Lite_WSTRB,
      AXI4_Lite_WVALID => AXI4_Lite_WVALID,
      AXI4_Lite_WREADY => AXI4_Lite_WREADY,
      AXI4_Lite_BRESP => AXI4_Lite_BRESP,
      AXI4_Lite_BVALID => AXI4_Lite_BVALID,
      AXI4_Lite_BREADY => AXI4_Lite_BREADY,
      AXI4_Lite_ARADDR => AXI4_Lite_ARADDR,
      AXI4_Lite_ARVALID => AXI4_Lite_ARVALID,
      AXI4_Lite_ARREADY => AXI4_Lite_ARREADY,
      AXI4_Lite_RDATA => AXI4_Lite_RDATA,
      AXI4_Lite_RRESP => AXI4_Lite_RRESP,
      AXI4_Lite_RVALID => AXI4_Lite_RVALID,
      AXI4_Lite_RREADY => AXI4_Lite_RREADY,
      PmodJA1_in => PmodJA1_in,
      PmodJA1_out => PmodJA1_out,
      PmodJB1 => PmodJB1
    );

end architecture STRUCTURE;

