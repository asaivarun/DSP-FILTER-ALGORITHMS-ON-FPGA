
-- ----------------------------------------------
-- File Name: mwfil_chiftop.vhd
-- Created:   25-Apr-2017 20:39:32
-- Copyright  2017 MathWorks, Inc.
-- ----------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.ALL;


ENTITY mwfil_chiftop IS 
PORT (
      clk                             : IN  std_logic;
      reset                           : IN  std_logic;
      din                             : IN  std_logic_vector(7 DOWNTO 0);
      din_valid                       : IN  std_logic;
      dout_ready                      : IN  std_logic;
      simcycle                        : IN  std_logic_vector(15 DOWNTO 0);
      din_ready                       : OUT std_logic;
      dout                            : OUT std_logic_vector(7 DOWNTO 0);
      dout_valid                      : OUT std_logic
);
END mwfil_chiftop;

ARCHITECTURE rtl of mwfil_chiftop IS

COMPONENT mwfil_chifcore IS 
GENERIC (INWORD: integer := 1;
OUTWORD: integer := 1;
WORDSIZE: integer := 64;
HASENABLE: integer := 1
);
PORT (
      clk                             : IN  std_logic;
      reset                           : IN  std_logic;
      din                             : IN  std_logic_vector(7 DOWNTO 0);
      din_valid                       : IN  std_logic;
      dout_ready                      : IN  std_logic;
      simcycle                        : IN  std_logic_vector(15 DOWNTO 0);
      dut_dout                        : IN  std_logic_vector(423 DOWNTO 0);
      din_ready                       : OUT std_logic;
      dout                            : OUT std_logic_vector(7 DOWNTO 0);
      dout_valid                      : OUT std_logic;
      dut_din                         : OUT std_logic_vector(3199 DOWNTO 0);
      dut_enable                      : OUT std_logic
);
END COMPONENT;

COMPONENT noise_cancel_fixpt_wrapper IS 
PORT (
      clk                             : IN  std_logic;
      enb                             : IN  std_logic;
      reset                           : IN  std_logic;
      din                             : IN  std_logic_vector(3199 DOWNTO 0);
      dout                            : OUT std_logic_vector(423 DOWNTO 0)
);
END COMPONENT;

  SIGNAL dut_din                          : std_logic_vector(3199 DOWNTO 0); -- std3200
  SIGNAL dut_dout                         : std_logic_vector(423 DOWNTO 0); -- std424
  SIGNAL dut_clkenb                       : std_logic; -- boolean
  SIGNAL s_0                              : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_0_tmp                          : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_1                              : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_1_tmp                          : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_2                              : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_2_tmp                          : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_3                              : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_3_tmp                          : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_4                              : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_4_tmp                          : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_5                              : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_5_tmp                          : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_6                              : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_6_tmp                          : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_7                              : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_7_tmp                          : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_8                              : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_8_tmp                          : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_9                              : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_9_tmp                          : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_10                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_10_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_11                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_11_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_12                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_12_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_13                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_13_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_14                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_14_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_15                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_15_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_16                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_16_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_17                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_17_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_18                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_18_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_19                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_19_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_20                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_20_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_21                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_21_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_22                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_22_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_23                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_23_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_24                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_24_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_25                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_25_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_26                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_26_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_27                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_27_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_28                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_28_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_29                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_29_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_30                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_30_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_31                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_31_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_32                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_32_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_33                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_33_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_34                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_34_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_35                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_35_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_36                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_36_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_37                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_37_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_38                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_38_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_39                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_39_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_40                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_40_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_41                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_41_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_42                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_42_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_43                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_43_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_44                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_44_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_45                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_45_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_46                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_46_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_47                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_47_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_48                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_48_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_49                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_49_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_50                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_50_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_51                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_51_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_52                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_52_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_53                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_53_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_54                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_54_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_55                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_55_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_56                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_56_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_57                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_57_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_58                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_58_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_59                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_59_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_60                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_60_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_61                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_61_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_62                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_62_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_63                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_63_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_64                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_64_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_65                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_65_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_66                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_66_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_67                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_67_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_68                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_68_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_69                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_69_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_70                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_70_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_71                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_71_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_72                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_72_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_73                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_73_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_74                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_74_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_75                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_75_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_76                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_76_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_77                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_77_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_78                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_78_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_79                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_79_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_80                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_80_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_81                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_81_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_82                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_82_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_83                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_83_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_84                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_84_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_85                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_85_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_86                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_86_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_87                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_87_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_88                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_88_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_89                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_89_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_90                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_90_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_91                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_91_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_92                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_92_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_93                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_93_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_94                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_94_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_95                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_95_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_96                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_96_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_97                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_97_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_98                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_98_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_99                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL s_99_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_0                              : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_0_tmp                          : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_1                              : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_1_tmp                          : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_2                              : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_2_tmp                          : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_3                              : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_3_tmp                          : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_4                              : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_4_tmp                          : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_5                              : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_5_tmp                          : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_6                              : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_6_tmp                          : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_7                              : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_7_tmp                          : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_8                              : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_8_tmp                          : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_9                              : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_9_tmp                          : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_10                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_10_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_11                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_11_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_12                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_12_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_13                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_13_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_14                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_14_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_15                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_15_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_16                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_16_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_17                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_17_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_18                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_18_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_19                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_19_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_20                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_20_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_21                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_21_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_22                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_22_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_23                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_23_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_24                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_24_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_25                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_25_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_26                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_26_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_27                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_27_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_28                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_28_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_29                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_29_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_30                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_30_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_31                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_31_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_32                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_32_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_33                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_33_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_34                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_34_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_35                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_35_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_36                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_36_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_37                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_37_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_38                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_38_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_39                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_39_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_40                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_40_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_41                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_41_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_42                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_42_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_43                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_43_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_44                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_44_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_45                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_45_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_46                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_46_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_47                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_47_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_48                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_48_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_49                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_49_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_50                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_50_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_51                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_51_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_52                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_52_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_53                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_53_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_54                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_54_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_55                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_55_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_56                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_56_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_57                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_57_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_58                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_58_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_59                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_59_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_60                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_60_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_61                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_61_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_62                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_62_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_63                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_63_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_64                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_64_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_65                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_65_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_66                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_66_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_67                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_67_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_68                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_68_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_69                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_69_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_70                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_70_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_71                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_71_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_72                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_72_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_73                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_73_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_74                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_74_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_75                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_75_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_76                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_76_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_77                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_77_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_78                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_78_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_79                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_79_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_80                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_80_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_81                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_81_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_82                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_82_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_83                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_83_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_84                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_84_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_85                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_85_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_86                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_86_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_87                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_87_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_88                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_88_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_89                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_89_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_90                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_90_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_91                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_91_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_92                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_92_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_93                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_93_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_94                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_94_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_95                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_95_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_96                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_96_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_97                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_97_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_98                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_98_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_99                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL n_99_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL e_0                              : std_logic; -- boolean
  SIGNAL e_0_tmp                          : std_logic; -- boolean
  SIGNAL zero0                            : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL e_1                              : std_logic; -- boolean
  SIGNAL e_1_tmp                          : std_logic; -- boolean
  SIGNAL zero1                            : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL e_2                              : std_logic; -- boolean
  SIGNAL e_2_tmp                          : std_logic; -- boolean
  SIGNAL zero2                            : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL e_3                              : std_logic; -- boolean
  SIGNAL e_3_tmp                          : std_logic; -- boolean
  SIGNAL zero3                            : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL e_4                              : std_logic; -- boolean
  SIGNAL e_4_tmp                          : std_logic; -- boolean
  SIGNAL zero4                            : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL e_5                              : std_logic; -- boolean
  SIGNAL e_5_tmp                          : std_logic; -- boolean
  SIGNAL zero5                            : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL e_6                              : std_logic; -- boolean
  SIGNAL e_6_tmp                          : std_logic; -- boolean
  SIGNAL zero6                            : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL e_7                              : std_logic; -- boolean
  SIGNAL e_7_tmp                          : std_logic; -- boolean
  SIGNAL zero7                            : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL e_8                              : std_logic; -- boolean
  SIGNAL e_8_tmp                          : std_logic; -- boolean
  SIGNAL zero8                            : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL e_9                              : std_logic; -- boolean
  SIGNAL e_9_tmp                          : std_logic; -- boolean
  SIGNAL zero9                            : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL e_10                             : std_logic; -- boolean
  SIGNAL e_10_tmp                         : std_logic; -- boolean
  SIGNAL zero10                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL e_11                             : std_logic; -- boolean
  SIGNAL e_11_tmp                         : std_logic; -- boolean
  SIGNAL zero11                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL e_12                             : std_logic; -- boolean
  SIGNAL e_12_tmp                         : std_logic; -- boolean
  SIGNAL zero12                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL e_13                             : std_logic; -- boolean
  SIGNAL e_13_tmp                         : std_logic; -- boolean
  SIGNAL zero13                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL e_14                             : std_logic; -- boolean
  SIGNAL e_14_tmp                         : std_logic; -- boolean
  SIGNAL zero14                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL e_15                             : std_logic; -- boolean
  SIGNAL e_15_tmp                         : std_logic; -- boolean
  SIGNAL zero15                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL e_16                             : std_logic; -- boolean
  SIGNAL e_16_tmp                         : std_logic; -- boolean
  SIGNAL zero16                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL e_17                             : std_logic; -- boolean
  SIGNAL e_17_tmp                         : std_logic; -- boolean
  SIGNAL zero17                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL e_18                             : std_logic; -- boolean
  SIGNAL e_18_tmp                         : std_logic; -- boolean
  SIGNAL zero18                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL e_19                             : std_logic; -- boolean
  SIGNAL e_19_tmp                         : std_logic; -- boolean
  SIGNAL zero19                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL e_20                             : std_logic; -- boolean
  SIGNAL e_20_tmp                         : std_logic; -- boolean
  SIGNAL zero20                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL e_21                             : std_logic; -- boolean
  SIGNAL e_21_tmp                         : std_logic; -- boolean
  SIGNAL zero21                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL e_22                             : std_logic; -- boolean
  SIGNAL e_22_tmp                         : std_logic; -- boolean
  SIGNAL zero22                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL e_23                             : std_logic; -- boolean
  SIGNAL e_23_tmp                         : std_logic; -- boolean
  SIGNAL zero23                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL e_24                             : std_logic; -- boolean
  SIGNAL e_24_tmp                         : std_logic; -- boolean
  SIGNAL zero24                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL e_25                             : std_logic; -- boolean
  SIGNAL e_25_tmp                         : std_logic; -- boolean
  SIGNAL zero25                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL W                                : std_logic; -- boolean
  SIGNAL W_tmp                            : std_logic; -- boolean
  SIGNAL zero26                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL bhat_0                           : std_logic; -- boolean
  SIGNAL bhat_0_tmp                       : std_logic; -- boolean
  SIGNAL zero27                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL bhat_1                           : std_logic; -- boolean
  SIGNAL bhat_1_tmp                       : std_logic; -- boolean
  SIGNAL zero28                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL bhat_2                           : std_logic; -- boolean
  SIGNAL bhat_2_tmp                       : std_logic; -- boolean
  SIGNAL zero29                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL bhat_3                           : std_logic; -- boolean
  SIGNAL bhat_3_tmp                       : std_logic; -- boolean
  SIGNAL zero30                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL bhat_4                           : std_logic; -- boolean
  SIGNAL bhat_4_tmp                       : std_logic; -- boolean
  SIGNAL zero31                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL bhat_5                           : std_logic; -- boolean
  SIGNAL bhat_5_tmp                       : std_logic; -- boolean
  SIGNAL zero32                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL bhat_6                           : std_logic; -- boolean
  SIGNAL bhat_6_tmp                       : std_logic; -- boolean
  SIGNAL zero33                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL bhat_7                           : std_logic; -- boolean
  SIGNAL bhat_7_tmp                       : std_logic; -- boolean
  SIGNAL zero34                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL bhat_8                           : std_logic; -- boolean
  SIGNAL bhat_8_tmp                       : std_logic; -- boolean
  SIGNAL zero35                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL bhat_9                           : std_logic; -- boolean
  SIGNAL bhat_9_tmp                       : std_logic; -- boolean
  SIGNAL zero36                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL bhat_10                          : std_logic; -- boolean
  SIGNAL bhat_10_tmp                      : std_logic; -- boolean
  SIGNAL zero37                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL bhat_11                          : std_logic; -- boolean
  SIGNAL bhat_11_tmp                      : std_logic; -- boolean
  SIGNAL zero38                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL bhat_12                          : std_logic; -- boolean
  SIGNAL bhat_12_tmp                      : std_logic; -- boolean
  SIGNAL zero39                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL bhat_13                          : std_logic; -- boolean
  SIGNAL bhat_13_tmp                      : std_logic; -- boolean
  SIGNAL zero40                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL bhat_14                          : std_logic; -- boolean
  SIGNAL bhat_14_tmp                      : std_logic; -- boolean
  SIGNAL zero41                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL bhat_15                          : std_logic; -- boolean
  SIGNAL bhat_15_tmp                      : std_logic; -- boolean
  SIGNAL zero42                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL bhat_16                          : std_logic; -- boolean
  SIGNAL bhat_16_tmp                      : std_logic; -- boolean
  SIGNAL zero43                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL bhat_17                          : std_logic; -- boolean
  SIGNAL bhat_17_tmp                      : std_logic; -- boolean
  SIGNAL zero44                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL bhat_18                          : std_logic; -- boolean
  SIGNAL bhat_18_tmp                      : std_logic; -- boolean
  SIGNAL zero45                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL bhat_19                          : std_logic; -- boolean
  SIGNAL bhat_19_tmp                      : std_logic; -- boolean
  SIGNAL zero46                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL bhat_20                          : std_logic; -- boolean
  SIGNAL bhat_20_tmp                      : std_logic; -- boolean
  SIGNAL zero47                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL bhat_21                          : std_logic; -- boolean
  SIGNAL bhat_21_tmp                      : std_logic; -- boolean
  SIGNAL zero48                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL bhat_22                          : std_logic; -- boolean
  SIGNAL bhat_22_tmp                      : std_logic; -- boolean
  SIGNAL zero49                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL bhat_23                          : std_logic; -- boolean
  SIGNAL bhat_23_tmp                      : std_logic; -- boolean
  SIGNAL zero50                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL bhat_24                          : std_logic; -- boolean
  SIGNAL bhat_24_tmp                      : std_logic; -- boolean
  SIGNAL zero51                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL bhat_25                          : std_logic; -- boolean
  SIGNAL bhat_25_tmp                      : std_logic; -- boolean
  SIGNAL zero52                           : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL tmpconcat                        : std_logic_vector(423 DOWNTO 0); -- std424

BEGIN

u_mwfil_chifcore: mwfil_chifcore 
GENERIC MAP (INWORD => 400,
OUTWORD => 53,
WORDSIZE => 8,
HASENABLE => 0
)
PORT MAP(
        clk                  => clk,
        reset                => reset,
        din                  => din,
        din_valid            => din_valid,
        din_ready            => din_ready,
        dout                 => dout,
        dout_valid           => dout_valid,
        dout_ready           => dout_ready,
        simcycle             => simcycle,
        dut_din              => dut_din,
        dut_dout             => dut_dout,
        dut_enable           => dut_clkenb
);

u_dut: noise_cancel_fixpt_wrapper 
PORT MAP(
        clk                  => clk,
        enb                  => dut_clkenb,
        reset                => reset,
        din                  => dut_din,
        dout                 => dut_dout
);


END;
