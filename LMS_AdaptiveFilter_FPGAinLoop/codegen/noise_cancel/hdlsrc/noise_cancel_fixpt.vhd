-- -------------------------------------------------------------
-- 
-- File Name: C:\Users\admin\Desktop\bhavesh\codegen\noise_cancel\hdlsrc\noise_cancel_fixpt.vhd
-- Created: 2017-04-29 19:08:06
-- 
-- Generated by MATLAB 9.2, MATLAB Coder 3.3 and HDL Coder 3.10
-- 
-- 
-- 
-- -------------------------------------------------------------
-- Rate and Clocking Details
-- -------------------------------------------------------------
-- Design base rate: 1
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: noise_cancel_fixpt
-- Source Path: noise_cancel_fixpt
-- Hierarchy Level: 0
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.noise_cancel_fixpt_pkg.ALL;

ENTITY noise_cancel_fixpt IS
  PORT( s                                 :   IN    vector_of_std_logic_vector14(0 TO 99);  -- sfix14_En17 [100]
        n                                 :   IN    vector_of_std_logic_vector14(0 TO 99);  -- sfix14_En15 [100]
        e_1                               :   IN    vector_of_std_logic_vector14(0 TO 89);  -- sfix14_En17 [90]
        W_1                               :   IN    std_logic_vector(13 DOWNTO 0);  -- sfix14_En15
        bhat_1                            :   IN    vector_of_std_logic_vector14(0 TO 89);  -- sfix14_En17 [90]
        e                                 :   OUT   vector_of_std_logic_vector14(0 TO 89);  -- sfix14_En17 [90]
        W                                 :   OUT   std_logic_vector(13 DOWNTO 0);  -- sfix14_En15
        bhat                              :   OUT   vector_of_std_logic_vector14(0 TO 89)  -- sfix14_En17 [90]
        );
END noise_cancel_fixpt;


ARCHITECTURE rtl OF noise_cancel_fixpt IS

  -- Signals
  SIGNAL s_signed                         : vector_of_signed14(0 TO 99);  -- sfix14_En17 [100]
  SIGNAL n_signed                         : vector_of_signed14(0 TO 99);  -- sfix14_En15 [100]
  SIGNAL e_1_signed                       : vector_of_signed14(0 TO 89);  -- sfix14_En17 [90]
  SIGNAL W_1_signed                       : signed(13 DOWNTO 0);  -- sfix14_En15
  SIGNAL bhat_1_signed                    : vector_of_signed14(0 TO 89);  -- sfix14_En17 [90]
  SIGNAL e_tmp                            : vector_of_signed14(0 TO 89);  -- sfix14_En17 [90]
  SIGNAL W_tmp                            : signed(13 DOWNTO 0);  -- sfix14_En15
  SIGNAL bhat_tmp                         : vector_of_signed14(0 TO 89);  -- sfix14_En17 [90]

BEGIN
  outputgen5: FOR k IN 0 TO 99 GENERATE
    s_signed(k) <= signed(s(k));
  END GENERATE;

  outputgen4: FOR k IN 0 TO 99 GENERATE
    n_signed(k) <= signed(n(k));
  END GENERATE;

  outputgen3: FOR k IN 0 TO 89 GENERATE
    e_1_signed(k) <= signed(e_1(k));
  END GENERATE;

  W_1_signed <= signed(W_1);

  outputgen2: FOR k IN 0 TO 89 GENERATE
    bhat_1_signed(k) <= signed(bhat_1(k));
  END GENERATE;

  noise_cancel_fixpt_1_output : PROCESS (s_signed, n_signed)
    VARIABLE bhat1 : vector_of_signed14(0 TO 89);
    VARIABLE e1 : vector_of_signed14(0 TO 89);
    VARIABLE e_0 : vector_of_signed14(0 TO 89);
    VARIABLE i_0 : signed(9 DOWNTO 0);
    VARIABLE bhat_0 : vector_of_signed14(0 TO 89);
    VARIABLE i_2 : signed(9 DOWNTO 0);
    VARIABLE add_temp : vector_of_signed32(0 TO 88);
    VARIABLE sub_cast : vector_of_signed19(0 TO 88);
    VARIABLE mul_temp : vector_of_signed28(0 TO 88);
    VARIABLE sub_cast_0 : vector_of_signed14(0 TO 88);
    VARIABLE sub_cast_1 : vector_of_signed19(0 TO 88);
    VARIABLE sub_temp : vector_of_signed19(0 TO 88);
    VARIABLE add_cast : vector_of_signed30(0 TO 88);
    VARIABLE mul_temp_0 : vector_of_signed28(0 TO 88);
    VARIABLE add_cast_0 : vector_of_signed29(0 TO 88);
    VARIABLE add_cast_1 : vector_of_signed30(0 TO 88);
    VARIABLE add_temp_0 : vector_of_signed30(0 TO 88);
    VARIABLE add_temp_1 : vector_of_signed32(0 TO 88);
    VARIABLE sub_cast_2 : vector_of_signed19(0 TO 88);
    VARIABLE mul_temp_1 : vector_of_signed28(0 TO 88);
    VARIABLE sub_cast_3 : vector_of_signed14(0 TO 88);
    VARIABLE sub_cast_4 : vector_of_signed19(0 TO 88);
    VARIABLE sub_temp_0 : vector_of_signed19(0 TO 88);
    VARIABLE add_cast_2 : vector_of_signed30(0 TO 88);
    VARIABLE mul_temp_2 : vector_of_signed28(0 TO 88);
    VARIABLE add_cast_3 : vector_of_signed29(0 TO 88);
    VARIABLE add_cast_4 : vector_of_signed30(0 TO 88);
    VARIABLE add_temp_2 : vector_of_signed30(0 TO 88);
  BEGIN
    --HDL code generation from MATLAB function: noise_cancel_fixpt
    --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    --                                                                          %
    --           Generated by MATLAB 9.2 and Fixed-Point Designer 5.4           %
    --                                                                          %
    --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    --UNTITLED Summary of this function goes here
    --   Detailed explanation goes here
    -- p=inputParser;
    -- argName='bhat W e';
    -- default=[zeros(1,itno) zeros(1,size(bhat,1)) zeros(1,itno)] ;
    -- % argName1='W';
    -- % default=zeros(1,size(bhat,1));
    -- % argName2='e';
    -- % default=zeros(1,itno);
    -- addOptional(p,argName,default);
    bhat1 := (OTHERS => to_signed(16#0000#, 14));
    e1 := (OTHERS => to_signed(16#0000#, 14));
    -- if nargin < 2
    --   error('signal and noise are required inputs')
    -- end
    -- 
    -- if nargin < 3
    --   e = zeros(1,itno);
    --   W=zeros(1,size(bhat,1));
    --   bhat=zeros(1,itno);
    -- end
    -- 
    -- if nargin < 4
    --   W=zeros(1,size(bhat,1));
    --   bhat=zeros(1,itno);
    -- end
    -- if nargin < 5
    --     bhat=zeros(1,itno);
    -- end
    -- 
    W_tmp <= to_signed(16#0000#, 14);

    FOR i IN 0 TO 88 LOOP
      W_tmp <= n_signed((((i + 1) + 1) - 1) - 1);
    END LOOP;

    bhat_0 := bhat1;
    e_0 := e1;

    FOR i_1 IN 0 TO 88 LOOP
      add_temp(i_1) := to_signed(i_1 + 1, 32);
      i_0 := add_temp(i_1)(9 DOWNTO 0);
      sub_cast(i_1) := resize(s_signed(to_integer(resize(i_0, 32) - 1)) & '0' & '0' & '0' & '0', 19);
      mul_temp(i_1) := n_signed(to_integer(resize(resize(resize(i_0, 11) + to_signed(16#001#, 11), 13) - to_signed(16#0001#, 13), 32) - 1)) * bhat_0(to_integer(resize(i_0, 32) - 1));
      sub_cast_0(i_1) := mul_temp(i_1)(24 DOWNTO 11);
      sub_cast_1(i_1) := resize(sub_cast_0(i_1), 19);
      sub_temp(i_1) := sub_cast(i_1) - sub_cast_1(i_1);
      e_0(to_integer(resize(i_0, 32) - 1)) := sub_temp(i_1)(17 DOWNTO 4);
      add_cast(i_1) := resize(bhat_0(to_integer(resize(i_0, 32) - 1)) & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0', 30);
      mul_temp_0(i_1) := e_0(to_integer(resize(i_0, 32) - 1)) * n_signed(to_integer(resize(resize(resize(i_0, 11) + to_signed(16#001#, 11), 13) - to_signed(16#0001#, 13), 32) - 1));
      add_cast_0(i_1) := resize(mul_temp_0(i_1), 29);
      add_cast_1(i_1) := resize(add_cast_0(i_1), 30);
      add_temp_0(i_1) := add_cast(i_1) + add_cast_1(i_1);
      bhat_0(to_integer(resize(resize(i_0, 12) + to_signed(16#001#, 12), 32) - 1)) := add_temp_0(i_1)(28 DOWNTO 15);
      add_temp_1(i_1) := to_signed(i_1 + 1, 32);
      i_2 := add_temp_1(i_1)(9 DOWNTO 0);
      sub_cast_2(i_1) := resize(s_signed(to_integer(resize(i_2, 32) - 1)) & '0' & '0' & '0' & '0', 19);
      mul_temp_1(i_1) := n_signed(to_integer(resize(resize(resize(i_2, 11) + to_signed(16#001#, 11), 13) - to_signed(16#0001#, 13), 32) - 1)) * bhat1(to_integer(resize(i_2, 32) - 1));
      sub_cast_3(i_1) := mul_temp_1(i_1)(24 DOWNTO 11);
      sub_cast_4(i_1) := resize(sub_cast_3(i_1), 19);
      sub_temp_0(i_1) := sub_cast_2(i_1) - sub_cast_4(i_1);
      e1(to_integer(resize(i_2, 32) - 1)) := sub_temp_0(i_1)(17 DOWNTO 4);
      add_cast_2(i_1) := resize(bhat1(to_integer(resize(i_2, 32) - 1)) & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0', 30);
      mul_temp_2(i_1) := e1(to_integer(resize(i_2, 32) - 1)) * n_signed(to_integer(resize(resize(resize(i_2, 11) + to_signed(16#001#, 11), 13) - to_signed(16#0001#, 13), 32) - 1));
      add_cast_3(i_1) := resize(mul_temp_2(i_1), 29);
      add_cast_4(i_1) := resize(add_cast_3(i_1), 30);
      add_temp_2(i_1) := add_cast_2(i_1) + add_cast_4(i_1);
      bhat1(to_integer(resize(resize(i_2, 12) + to_signed(16#001#, 12), 32) - 1)) := add_temp_2(i_1)(28 DOWNTO 15);
    END LOOP;

    bhat_tmp <= bhat1;
    e_tmp <= e_0;
  END PROCESS noise_cancel_fixpt_1_output;


  outputgen1: FOR k IN 0 TO 89 GENERATE
    e(k) <= std_logic_vector(e_tmp(k));
  END GENERATE;

  W <= std_logic_vector(W_tmp);

  outputgen: FOR k IN 0 TO 89 GENERATE
    bhat(k) <= std_logic_vector(bhat_tmp(k));
  END GENERATE;

END rtl;

