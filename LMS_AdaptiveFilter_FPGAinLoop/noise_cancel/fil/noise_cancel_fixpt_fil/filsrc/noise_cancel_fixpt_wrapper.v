
/*-- ----------------------------------------------
-- File Name: noise_cancel_fixpt_wrapper.v
-- Created:   25-Apr-2017 20:39:29
-- Copyright  2017 MathWorks, Inc.
-- ----------------------------------------------*/

module noise_cancel_fixpt_wrapper (
      clk,
      enb,
      reset,
      din,
      dout
);


      input     clk;
      input     enb;
      input     reset;
      input    [3199 : 0] din;
      output   [423 : 0] dout;

  wire[13 : 0] s_0; // std14
  wire[13 : 0] s_0_tmp; // std14
  wire[13 : 0] s_1; // std14
  wire[13 : 0] s_1_tmp; // std14
  wire[13 : 0] s_2; // std14
  wire[13 : 0] s_2_tmp; // std14
  wire[13 : 0] s_3; // std14
  wire[13 : 0] s_3_tmp; // std14
  wire[13 : 0] s_4; // std14
  wire[13 : 0] s_4_tmp; // std14
  wire[13 : 0] s_5; // std14
  wire[13 : 0] s_5_tmp; // std14
  wire[13 : 0] s_6; // std14
  wire[13 : 0] s_6_tmp; // std14
  wire[13 : 0] s_7; // std14
  wire[13 : 0] s_7_tmp; // std14
  wire[13 : 0] s_8; // std14
  wire[13 : 0] s_8_tmp; // std14
  wire[13 : 0] s_9; // std14
  wire[13 : 0] s_9_tmp; // std14
  wire[13 : 0] s_10; // std14
  wire[13 : 0] s_10_tmp; // std14
  wire[13 : 0] s_11; // std14
  wire[13 : 0] s_11_tmp; // std14
  wire[13 : 0] s_12; // std14
  wire[13 : 0] s_12_tmp; // std14
  wire[13 : 0] s_13; // std14
  wire[13 : 0] s_13_tmp; // std14
  wire[13 : 0] s_14; // std14
  wire[13 : 0] s_14_tmp; // std14
  wire[13 : 0] s_15; // std14
  wire[13 : 0] s_15_tmp; // std14
  wire[13 : 0] s_16; // std14
  wire[13 : 0] s_16_tmp; // std14
  wire[13 : 0] s_17; // std14
  wire[13 : 0] s_17_tmp; // std14
  wire[13 : 0] s_18; // std14
  wire[13 : 0] s_18_tmp; // std14
  wire[13 : 0] s_19; // std14
  wire[13 : 0] s_19_tmp; // std14
  wire[13 : 0] s_20; // std14
  wire[13 : 0] s_20_tmp; // std14
  wire[13 : 0] s_21; // std14
  wire[13 : 0] s_21_tmp; // std14
  wire[13 : 0] s_22; // std14
  wire[13 : 0] s_22_tmp; // std14
  wire[13 : 0] s_23; // std14
  wire[13 : 0] s_23_tmp; // std14
  wire[13 : 0] s_24; // std14
  wire[13 : 0] s_24_tmp; // std14
  wire[13 : 0] s_25; // std14
  wire[13 : 0] s_25_tmp; // std14
  wire[13 : 0] s_26; // std14
  wire[13 : 0] s_26_tmp; // std14
  wire[13 : 0] s_27; // std14
  wire[13 : 0] s_27_tmp; // std14
  wire[13 : 0] s_28; // std14
  wire[13 : 0] s_28_tmp; // std14
  wire[13 : 0] s_29; // std14
  wire[13 : 0] s_29_tmp; // std14
  wire[13 : 0] s_30; // std14
  wire[13 : 0] s_30_tmp; // std14
  wire[13 : 0] s_31; // std14
  wire[13 : 0] s_31_tmp; // std14
  wire[13 : 0] s_32; // std14
  wire[13 : 0] s_32_tmp; // std14
  wire[13 : 0] s_33; // std14
  wire[13 : 0] s_33_tmp; // std14
  wire[13 : 0] s_34; // std14
  wire[13 : 0] s_34_tmp; // std14
  wire[13 : 0] s_35; // std14
  wire[13 : 0] s_35_tmp; // std14
  wire[13 : 0] s_36; // std14
  wire[13 : 0] s_36_tmp; // std14
  wire[13 : 0] s_37; // std14
  wire[13 : 0] s_37_tmp; // std14
  wire[13 : 0] s_38; // std14
  wire[13 : 0] s_38_tmp; // std14
  wire[13 : 0] s_39; // std14
  wire[13 : 0] s_39_tmp; // std14
  wire[13 : 0] s_40; // std14
  wire[13 : 0] s_40_tmp; // std14
  wire[13 : 0] s_41; // std14
  wire[13 : 0] s_41_tmp; // std14
  wire[13 : 0] s_42; // std14
  wire[13 : 0] s_42_tmp; // std14
  wire[13 : 0] s_43; // std14
  wire[13 : 0] s_43_tmp; // std14
  wire[13 : 0] s_44; // std14
  wire[13 : 0] s_44_tmp; // std14
  wire[13 : 0] s_45; // std14
  wire[13 : 0] s_45_tmp; // std14
  wire[13 : 0] s_46; // std14
  wire[13 : 0] s_46_tmp; // std14
  wire[13 : 0] s_47; // std14
  wire[13 : 0] s_47_tmp; // std14
  wire[13 : 0] s_48; // std14
  wire[13 : 0] s_48_tmp; // std14
  wire[13 : 0] s_49; // std14
  wire[13 : 0] s_49_tmp; // std14
  wire[13 : 0] s_50; // std14
  wire[13 : 0] s_50_tmp; // std14
  wire[13 : 0] s_51; // std14
  wire[13 : 0] s_51_tmp; // std14
  wire[13 : 0] s_52; // std14
  wire[13 : 0] s_52_tmp; // std14
  wire[13 : 0] s_53; // std14
  wire[13 : 0] s_53_tmp; // std14
  wire[13 : 0] s_54; // std14
  wire[13 : 0] s_54_tmp; // std14
  wire[13 : 0] s_55; // std14
  wire[13 : 0] s_55_tmp; // std14
  wire[13 : 0] s_56; // std14
  wire[13 : 0] s_56_tmp; // std14
  wire[13 : 0] s_57; // std14
  wire[13 : 0] s_57_tmp; // std14
  wire[13 : 0] s_58; // std14
  wire[13 : 0] s_58_tmp; // std14
  wire[13 : 0] s_59; // std14
  wire[13 : 0] s_59_tmp; // std14
  wire[13 : 0] s_60; // std14
  wire[13 : 0] s_60_tmp; // std14
  wire[13 : 0] s_61; // std14
  wire[13 : 0] s_61_tmp; // std14
  wire[13 : 0] s_62; // std14
  wire[13 : 0] s_62_tmp; // std14
  wire[13 : 0] s_63; // std14
  wire[13 : 0] s_63_tmp; // std14
  wire[13 : 0] s_64; // std14
  wire[13 : 0] s_64_tmp; // std14
  wire[13 : 0] s_65; // std14
  wire[13 : 0] s_65_tmp; // std14
  wire[13 : 0] s_66; // std14
  wire[13 : 0] s_66_tmp; // std14
  wire[13 : 0] s_67; // std14
  wire[13 : 0] s_67_tmp; // std14
  wire[13 : 0] s_68; // std14
  wire[13 : 0] s_68_tmp; // std14
  wire[13 : 0] s_69; // std14
  wire[13 : 0] s_69_tmp; // std14
  wire[13 : 0] s_70; // std14
  wire[13 : 0] s_70_tmp; // std14
  wire[13 : 0] s_71; // std14
  wire[13 : 0] s_71_tmp; // std14
  wire[13 : 0] s_72; // std14
  wire[13 : 0] s_72_tmp; // std14
  wire[13 : 0] s_73; // std14
  wire[13 : 0] s_73_tmp; // std14
  wire[13 : 0] s_74; // std14
  wire[13 : 0] s_74_tmp; // std14
  wire[13 : 0] s_75; // std14
  wire[13 : 0] s_75_tmp; // std14
  wire[13 : 0] s_76; // std14
  wire[13 : 0] s_76_tmp; // std14
  wire[13 : 0] s_77; // std14
  wire[13 : 0] s_77_tmp; // std14
  wire[13 : 0] s_78; // std14
  wire[13 : 0] s_78_tmp; // std14
  wire[13 : 0] s_79; // std14
  wire[13 : 0] s_79_tmp; // std14
  wire[13 : 0] s_80; // std14
  wire[13 : 0] s_80_tmp; // std14
  wire[13 : 0] s_81; // std14
  wire[13 : 0] s_81_tmp; // std14
  wire[13 : 0] s_82; // std14
  wire[13 : 0] s_82_tmp; // std14
  wire[13 : 0] s_83; // std14
  wire[13 : 0] s_83_tmp; // std14
  wire[13 : 0] s_84; // std14
  wire[13 : 0] s_84_tmp; // std14
  wire[13 : 0] s_85; // std14
  wire[13 : 0] s_85_tmp; // std14
  wire[13 : 0] s_86; // std14
  wire[13 : 0] s_86_tmp; // std14
  wire[13 : 0] s_87; // std14
  wire[13 : 0] s_87_tmp; // std14
  wire[13 : 0] s_88; // std14
  wire[13 : 0] s_88_tmp; // std14
  wire[13 : 0] s_89; // std14
  wire[13 : 0] s_89_tmp; // std14
  wire[13 : 0] s_90; // std14
  wire[13 : 0] s_90_tmp; // std14
  wire[13 : 0] s_91; // std14
  wire[13 : 0] s_91_tmp; // std14
  wire[13 : 0] s_92; // std14
  wire[13 : 0] s_92_tmp; // std14
  wire[13 : 0] s_93; // std14
  wire[13 : 0] s_93_tmp; // std14
  wire[13 : 0] s_94; // std14
  wire[13 : 0] s_94_tmp; // std14
  wire[13 : 0] s_95; // std14
  wire[13 : 0] s_95_tmp; // std14
  wire[13 : 0] s_96; // std14
  wire[13 : 0] s_96_tmp; // std14
  wire[13 : 0] s_97; // std14
  wire[13 : 0] s_97_tmp; // std14
  wire[13 : 0] s_98; // std14
  wire[13 : 0] s_98_tmp; // std14
  wire[13 : 0] s_99; // std14
  wire[13 : 0] s_99_tmp; // std14
  wire[13 : 0] n_0; // std14
  wire[13 : 0] n_0_tmp; // std14
  wire[13 : 0] n_1; // std14
  wire[13 : 0] n_1_tmp; // std14
  wire[13 : 0] n_2; // std14
  wire[13 : 0] n_2_tmp; // std14
  wire[13 : 0] n_3; // std14
  wire[13 : 0] n_3_tmp; // std14
  wire[13 : 0] n_4; // std14
  wire[13 : 0] n_4_tmp; // std14
  wire[13 : 0] n_5; // std14
  wire[13 : 0] n_5_tmp; // std14
  wire[13 : 0] n_6; // std14
  wire[13 : 0] n_6_tmp; // std14
  wire[13 : 0] n_7; // std14
  wire[13 : 0] n_7_tmp; // std14
  wire[13 : 0] n_8; // std14
  wire[13 : 0] n_8_tmp; // std14
  wire[13 : 0] n_9; // std14
  wire[13 : 0] n_9_tmp; // std14
  wire[13 : 0] n_10; // std14
  wire[13 : 0] n_10_tmp; // std14
  wire[13 : 0] n_11; // std14
  wire[13 : 0] n_11_tmp; // std14
  wire[13 : 0] n_12; // std14
  wire[13 : 0] n_12_tmp; // std14
  wire[13 : 0] n_13; // std14
  wire[13 : 0] n_13_tmp; // std14
  wire[13 : 0] n_14; // std14
  wire[13 : 0] n_14_tmp; // std14
  wire[13 : 0] n_15; // std14
  wire[13 : 0] n_15_tmp; // std14
  wire[13 : 0] n_16; // std14
  wire[13 : 0] n_16_tmp; // std14
  wire[13 : 0] n_17; // std14
  wire[13 : 0] n_17_tmp; // std14
  wire[13 : 0] n_18; // std14
  wire[13 : 0] n_18_tmp; // std14
  wire[13 : 0] n_19; // std14
  wire[13 : 0] n_19_tmp; // std14
  wire[13 : 0] n_20; // std14
  wire[13 : 0] n_20_tmp; // std14
  wire[13 : 0] n_21; // std14
  wire[13 : 0] n_21_tmp; // std14
  wire[13 : 0] n_22; // std14
  wire[13 : 0] n_22_tmp; // std14
  wire[13 : 0] n_23; // std14
  wire[13 : 0] n_23_tmp; // std14
  wire[13 : 0] n_24; // std14
  wire[13 : 0] n_24_tmp; // std14
  wire[13 : 0] n_25; // std14
  wire[13 : 0] n_25_tmp; // std14
  wire[13 : 0] n_26; // std14
  wire[13 : 0] n_26_tmp; // std14
  wire[13 : 0] n_27; // std14
  wire[13 : 0] n_27_tmp; // std14
  wire[13 : 0] n_28; // std14
  wire[13 : 0] n_28_tmp; // std14
  wire[13 : 0] n_29; // std14
  wire[13 : 0] n_29_tmp; // std14
  wire[13 : 0] n_30; // std14
  wire[13 : 0] n_30_tmp; // std14
  wire[13 : 0] n_31; // std14
  wire[13 : 0] n_31_tmp; // std14
  wire[13 : 0] n_32; // std14
  wire[13 : 0] n_32_tmp; // std14
  wire[13 : 0] n_33; // std14
  wire[13 : 0] n_33_tmp; // std14
  wire[13 : 0] n_34; // std14
  wire[13 : 0] n_34_tmp; // std14
  wire[13 : 0] n_35; // std14
  wire[13 : 0] n_35_tmp; // std14
  wire[13 : 0] n_36; // std14
  wire[13 : 0] n_36_tmp; // std14
  wire[13 : 0] n_37; // std14
  wire[13 : 0] n_37_tmp; // std14
  wire[13 : 0] n_38; // std14
  wire[13 : 0] n_38_tmp; // std14
  wire[13 : 0] n_39; // std14
  wire[13 : 0] n_39_tmp; // std14
  wire[13 : 0] n_40; // std14
  wire[13 : 0] n_40_tmp; // std14
  wire[13 : 0] n_41; // std14
  wire[13 : 0] n_41_tmp; // std14
  wire[13 : 0] n_42; // std14
  wire[13 : 0] n_42_tmp; // std14
  wire[13 : 0] n_43; // std14
  wire[13 : 0] n_43_tmp; // std14
  wire[13 : 0] n_44; // std14
  wire[13 : 0] n_44_tmp; // std14
  wire[13 : 0] n_45; // std14
  wire[13 : 0] n_45_tmp; // std14
  wire[13 : 0] n_46; // std14
  wire[13 : 0] n_46_tmp; // std14
  wire[13 : 0] n_47; // std14
  wire[13 : 0] n_47_tmp; // std14
  wire[13 : 0] n_48; // std14
  wire[13 : 0] n_48_tmp; // std14
  wire[13 : 0] n_49; // std14
  wire[13 : 0] n_49_tmp; // std14
  wire[13 : 0] n_50; // std14
  wire[13 : 0] n_50_tmp; // std14
  wire[13 : 0] n_51; // std14
  wire[13 : 0] n_51_tmp; // std14
  wire[13 : 0] n_52; // std14
  wire[13 : 0] n_52_tmp; // std14
  wire[13 : 0] n_53; // std14
  wire[13 : 0] n_53_tmp; // std14
  wire[13 : 0] n_54; // std14
  wire[13 : 0] n_54_tmp; // std14
  wire[13 : 0] n_55; // std14
  wire[13 : 0] n_55_tmp; // std14
  wire[13 : 0] n_56; // std14
  wire[13 : 0] n_56_tmp; // std14
  wire[13 : 0] n_57; // std14
  wire[13 : 0] n_57_tmp; // std14
  wire[13 : 0] n_58; // std14
  wire[13 : 0] n_58_tmp; // std14
  wire[13 : 0] n_59; // std14
  wire[13 : 0] n_59_tmp; // std14
  wire[13 : 0] n_60; // std14
  wire[13 : 0] n_60_tmp; // std14
  wire[13 : 0] n_61; // std14
  wire[13 : 0] n_61_tmp; // std14
  wire[13 : 0] n_62; // std14
  wire[13 : 0] n_62_tmp; // std14
  wire[13 : 0] n_63; // std14
  wire[13 : 0] n_63_tmp; // std14
  wire[13 : 0] n_64; // std14
  wire[13 : 0] n_64_tmp; // std14
  wire[13 : 0] n_65; // std14
  wire[13 : 0] n_65_tmp; // std14
  wire[13 : 0] n_66; // std14
  wire[13 : 0] n_66_tmp; // std14
  wire[13 : 0] n_67; // std14
  wire[13 : 0] n_67_tmp; // std14
  wire[13 : 0] n_68; // std14
  wire[13 : 0] n_68_tmp; // std14
  wire[13 : 0] n_69; // std14
  wire[13 : 0] n_69_tmp; // std14
  wire[13 : 0] n_70; // std14
  wire[13 : 0] n_70_tmp; // std14
  wire[13 : 0] n_71; // std14
  wire[13 : 0] n_71_tmp; // std14
  wire[13 : 0] n_72; // std14
  wire[13 : 0] n_72_tmp; // std14
  wire[13 : 0] n_73; // std14
  wire[13 : 0] n_73_tmp; // std14
  wire[13 : 0] n_74; // std14
  wire[13 : 0] n_74_tmp; // std14
  wire[13 : 0] n_75; // std14
  wire[13 : 0] n_75_tmp; // std14
  wire[13 : 0] n_76; // std14
  wire[13 : 0] n_76_tmp; // std14
  wire[13 : 0] n_77; // std14
  wire[13 : 0] n_77_tmp; // std14
  wire[13 : 0] n_78; // std14
  wire[13 : 0] n_78_tmp; // std14
  wire[13 : 0] n_79; // std14
  wire[13 : 0] n_79_tmp; // std14
  wire[13 : 0] n_80; // std14
  wire[13 : 0] n_80_tmp; // std14
  wire[13 : 0] n_81; // std14
  wire[13 : 0] n_81_tmp; // std14
  wire[13 : 0] n_82; // std14
  wire[13 : 0] n_82_tmp; // std14
  wire[13 : 0] n_83; // std14
  wire[13 : 0] n_83_tmp; // std14
  wire[13 : 0] n_84; // std14
  wire[13 : 0] n_84_tmp; // std14
  wire[13 : 0] n_85; // std14
  wire[13 : 0] n_85_tmp; // std14
  wire[13 : 0] n_86; // std14
  wire[13 : 0] n_86_tmp; // std14
  wire[13 : 0] n_87; // std14
  wire[13 : 0] n_87_tmp; // std14
  wire[13 : 0] n_88; // std14
  wire[13 : 0] n_88_tmp; // std14
  wire[13 : 0] n_89; // std14
  wire[13 : 0] n_89_tmp; // std14
  wire[13 : 0] n_90; // std14
  wire[13 : 0] n_90_tmp; // std14
  wire[13 : 0] n_91; // std14
  wire[13 : 0] n_91_tmp; // std14
  wire[13 : 0] n_92; // std14
  wire[13 : 0] n_92_tmp; // std14
  wire[13 : 0] n_93; // std14
  wire[13 : 0] n_93_tmp; // std14
  wire[13 : 0] n_94; // std14
  wire[13 : 0] n_94_tmp; // std14
  wire[13 : 0] n_95; // std14
  wire[13 : 0] n_95_tmp; // std14
  wire[13 : 0] n_96; // std14
  wire[13 : 0] n_96_tmp; // std14
  wire[13 : 0] n_97; // std14
  wire[13 : 0] n_97_tmp; // std14
  wire[13 : 0] n_98; // std14
  wire[13 : 0] n_98_tmp; // std14
  wire[13 : 0] n_99; // std14
  wire[13 : 0] n_99_tmp; // std14
  wire e_0; // boolean
  wire e_0_tmp; // boolean
  wire[6 : 0] zero0; // std7
  wire e_1; // boolean
  wire e_1_tmp; // boolean
  wire[6 : 0] zero1; // std7
  wire e_2; // boolean
  wire e_2_tmp; // boolean
  wire[6 : 0] zero2; // std7
  wire e_3; // boolean
  wire e_3_tmp; // boolean
  wire[6 : 0] zero3; // std7
  wire e_4; // boolean
  wire e_4_tmp; // boolean
  wire[6 : 0] zero4; // std7
  wire e_5; // boolean
  wire e_5_tmp; // boolean
  wire[6 : 0] zero5; // std7
  wire e_6; // boolean
  wire e_6_tmp; // boolean
  wire[6 : 0] zero6; // std7
  wire e_7; // boolean
  wire e_7_tmp; // boolean
  wire[6 : 0] zero7; // std7
  wire e_8; // boolean
  wire e_8_tmp; // boolean
  wire[6 : 0] zero8; // std7
  wire e_9; // boolean
  wire e_9_tmp; // boolean
  wire[6 : 0] zero9; // std7
  wire e_10; // boolean
  wire e_10_tmp; // boolean
  wire[6 : 0] zero10; // std7
  wire e_11; // boolean
  wire e_11_tmp; // boolean
  wire[6 : 0] zero11; // std7
  wire e_12; // boolean
  wire e_12_tmp; // boolean
  wire[6 : 0] zero12; // std7
  wire e_13; // boolean
  wire e_13_tmp; // boolean
  wire[6 : 0] zero13; // std7
  wire e_14; // boolean
  wire e_14_tmp; // boolean
  wire[6 : 0] zero14; // std7
  wire e_15; // boolean
  wire e_15_tmp; // boolean
  wire[6 : 0] zero15; // std7
  wire e_16; // boolean
  wire e_16_tmp; // boolean
  wire[6 : 0] zero16; // std7
  wire e_17; // boolean
  wire e_17_tmp; // boolean
  wire[6 : 0] zero17; // std7
  wire e_18; // boolean
  wire e_18_tmp; // boolean
  wire[6 : 0] zero18; // std7
  wire e_19; // boolean
  wire e_19_tmp; // boolean
  wire[6 : 0] zero19; // std7
  wire e_20; // boolean
  wire e_20_tmp; // boolean
  wire[6 : 0] zero20; // std7
  wire e_21; // boolean
  wire e_21_tmp; // boolean
  wire[6 : 0] zero21; // std7
  wire e_22; // boolean
  wire e_22_tmp; // boolean
  wire[6 : 0] zero22; // std7
  wire e_23; // boolean
  wire e_23_tmp; // boolean
  wire[6 : 0] zero23; // std7
  wire e_24; // boolean
  wire e_24_tmp; // boolean
  wire[6 : 0] zero24; // std7
  wire e_25; // boolean
  wire e_25_tmp; // boolean
  wire[6 : 0] zero25; // std7
  wire W; // boolean
  wire W_tmp; // boolean
  wire[6 : 0] zero26; // std7
  wire bhat_0; // boolean
  wire bhat_0_tmp; // boolean
  wire[6 : 0] zero27; // std7
  wire bhat_1; // boolean
  wire bhat_1_tmp; // boolean
  wire[6 : 0] zero28; // std7
  wire bhat_2; // boolean
  wire bhat_2_tmp; // boolean
  wire[6 : 0] zero29; // std7
  wire bhat_3; // boolean
  wire bhat_3_tmp; // boolean
  wire[6 : 0] zero30; // std7
  wire bhat_4; // boolean
  wire bhat_4_tmp; // boolean
  wire[6 : 0] zero31; // std7
  wire bhat_5; // boolean
  wire bhat_5_tmp; // boolean
  wire[6 : 0] zero32; // std7
  wire bhat_6; // boolean
  wire bhat_6_tmp; // boolean
  wire[6 : 0] zero33; // std7
  wire bhat_7; // boolean
  wire bhat_7_tmp; // boolean
  wire[6 : 0] zero34; // std7
  wire bhat_8; // boolean
  wire bhat_8_tmp; // boolean
  wire[6 : 0] zero35; // std7
  wire bhat_9; // boolean
  wire bhat_9_tmp; // boolean
  wire[6 : 0] zero36; // std7
  wire bhat_10; // boolean
  wire bhat_10_tmp; // boolean
  wire[6 : 0] zero37; // std7
  wire bhat_11; // boolean
  wire bhat_11_tmp; // boolean
  wire[6 : 0] zero38; // std7
  wire bhat_12; // boolean
  wire bhat_12_tmp; // boolean
  wire[6 : 0] zero39; // std7
  wire bhat_13; // boolean
  wire bhat_13_tmp; // boolean
  wire[6 : 0] zero40; // std7
  wire bhat_14; // boolean
  wire bhat_14_tmp; // boolean
  wire[6 : 0] zero41; // std7
  wire bhat_15; // boolean
  wire bhat_15_tmp; // boolean
  wire[6 : 0] zero42; // std7
  wire bhat_16; // boolean
  wire bhat_16_tmp; // boolean
  wire[6 : 0] zero43; // std7
  wire bhat_17; // boolean
  wire bhat_17_tmp; // boolean
  wire[6 : 0] zero44; // std7
  wire bhat_18; // boolean
  wire bhat_18_tmp; // boolean
  wire[6 : 0] zero45; // std7
  wire bhat_19; // boolean
  wire bhat_19_tmp; // boolean
  wire[6 : 0] zero46; // std7
  wire bhat_20; // boolean
  wire bhat_20_tmp; // boolean
  wire[6 : 0] zero47; // std7
  wire bhat_21; // boolean
  wire bhat_21_tmp; // boolean
  wire[6 : 0] zero48; // std7
  wire bhat_22; // boolean
  wire bhat_22_tmp; // boolean
  wire[6 : 0] zero49; // std7
  wire bhat_23; // boolean
  wire bhat_23_tmp; // boolean
  wire[6 : 0] zero50; // std7
  wire bhat_24; // boolean
  wire bhat_24_tmp; // boolean
  wire[6 : 0] zero51; // std7
  wire bhat_25; // boolean
  wire bhat_25_tmp; // boolean
  wire[6 : 0] zero52; // std7
  wire[423 : 0] tmpconcat; // std424
noise_cancel_fixpt u_noise_cancel_fixpt (
        .n_94                 (n_94),
        .e_6                  (e_6),
        .e_0                  (e_0),
        .n_49                 (n_49),
        .n_31                 (n_31),
        .n_18                 (n_18),
        .s_87                 (s_87),
        .s_68                 (s_68),
        .s_43                 (s_43),
        .s_28                 (s_28),
        .n_87                 (n_87),
        .bhat_3               (bhat_3),
        .e_20                 (e_20),
        .e_18                 (e_18),
        .e_13                 (e_13),
        .n_63                 (n_63),
        .n_57                 (n_57),
        .n_40                 (n_40),
        .n_33                 (n_33),
        .n_2                  (n_2),
        .s_49                 (s_49),
        .s_46                 (s_46),
        .s_35                 (s_35),
        .s_25                 (s_25),
        .s_12                 (s_12),
        .s_9                  (s_9),
        .s_1                  (s_1),
        .bhat_25              (bhat_25),
        .bhat_1               (bhat_1),
        .e_24                 (e_24),
        .e_11                 (e_11),
        .n_99                 (n_99),
        .n_66                 (n_66),
        .n_61                 (n_61),
        .n_56                 (n_56),
        .n_38                 (n_38),
        .n_35                 (n_35),
        .n_29                 (n_29),
        .n_23                 (n_23),
        .n_20                 (n_20),
        .n_15                 (n_15),
        .s_96                 (s_96),
        .s_73                 (s_73),
        .s_6                  (s_6),
        .e_2                  (e_2),
        .n_98                 (n_98),
        .n_50                 (n_50),
        .n_37                 (n_37),
        .n_25                 (n_25),
        .n_16                 (n_16),
        .n_7                  (n_7),
        .n_1                  (n_1),
        .s_84                 (s_84),
        .s_65                 (s_65),
        .s_58                 (s_58),
        .s_33                 (s_33),
        .s_31                 (s_31),
        .n_90                 (n_90),
        .n_93                 (n_93),
        .bhat_24              (bhat_24),
        .bhat_23              (bhat_23),
        .e_22                 (e_22),
        .n_53                 (n_53),
        .n_46                 (n_46),
        .n_0                  (n_0),
        .s_83                 (s_83),
        .s_77                 (s_77),
        .s_14                 (s_14),
        .n_84                 (n_84),
        .n_77                 (n_77),
        .n_73                 (n_73),
        .n_92                 (n_92),
        .bhat_19              (bhat_19),
        .bhat_9               (bhat_9),
        .bhat_4               (bhat_4),
        .e_12                 (e_12),
        .e_5                  (e_5),
        .n_68                 (n_68),
        .n_67                 (n_67),
        .n_48                 (n_48),
        .n_45                 (n_45),
        .n_34                 (n_34),
        .n_19                 (n_19),
        .n_5                  (n_5),
        .s_80                 (s_80),
        .s_56                 (s_56),
        .s_55                 (s_55),
        .s_22                 (s_22),
        .s_10                 (s_10),
        .s_5                  (s_5),
        .bhat_15              (bhat_15),
        .n_52                 (n_52),
        .n_47                 (n_47),
        .n_26                 (n_26),
        .n_17                 (n_17),
        .n_12                 (n_12),
        .n_11                 (n_11),
        .s_91                 (s_91),
        .s_72                 (s_72),
        .s_63                 (s_63),
        .s_54                 (s_54),
        .s_42                 (s_42),
        .s_39                 (s_39),
        .s_36                 (s_36),
        .bhat_18              (bhat_18),
        .bhat_13              (bhat_13),
        .bhat_7               (bhat_7),
        .e_15                 (e_15),
        .e_9                  (e_9),
        .e_8                  (e_8),
        .n_59                 (n_59),
        .n_28                 (n_28),
        .n_21                 (n_21),
        .s_45                 (s_45),
        .s_34                 (s_34),
        .s_24                 (s_24),
        .e_25                 (e_25),
        .n_80                 (n_80),
        .n_65                 (n_65),
        .n_13                 (n_13),
        .n_6                  (n_6),
        .s_94                 (s_94),
        .s_88                 (s_88),
        .s_53                 (s_53),
        .s_50                 (s_50),
        .s_18                 (s_18),
        .n_91                 (n_91),
        .bhat_5               (bhat_5),
        .bhat_0               (bhat_0),
        .n_60                 (n_60),
        .n_8                  (n_8),
        .s_90                 (s_90),
        .s_79                 (s_79),
        .s_78                 (s_78),
        .s_67                 (s_67),
        .s_64                 (s_64),
        .s_40                 (s_40),
        .n_85                 (n_85),
        .n_78                 (n_78),
        .bhat_16              (bhat_16),
        .bhat_6               (bhat_6),
        .e_10                 (e_10),
        .n_96                 (n_96),
        .n_82                 (n_82),
        .n_81                 (n_81),
        .n_24                 (n_24),
        .n_9                  (n_9),
        .s_69                 (s_69),
        .s_60                 (s_60),
        .s_44                 (s_44),
        .s_29                 (s_29),
        .s_15                 (s_15),
        .s_2                  (s_2),
        .n_89                 (n_89),
        .n_88                 (n_88),
        .n_76                 (n_76),
        .n_95                 (n_95),
        .bhat_12              (bhat_12),
        .e_19                 (e_19),
        .n_44                 (n_44),
        .n_41                 (n_41),
        .n_36                 (n_36),
        .n_27                 (n_27),
        .s_95                 (s_95),
        .s_93                 (s_93),
        .s_75                 (s_75),
        .s_74                 (s_74),
        .s_57                 (s_57),
        .s_51                 (s_51),
        .s_27                 (s_27),
        .s_20                 (s_20),
        .s_4                  (s_4),
        .s_0                  (s_0),
        .n_86                 (n_86),
        .bhat_21              (bhat_21),
        .bhat_17              (bhat_17),
        .bhat_11              (bhat_11),
        .bhat_10              (bhat_10),
        .e_14                 (e_14),
        .e_4                  (e_4),
        .n_97                 (n_97),
        .n_70                 (n_70),
        .n_55                 (n_55),
        .n_39                 (n_39),
        .n_32                 (n_32),
        .n_4                  (n_4),
        .s_97                 (s_97),
        .s_92                 (s_92),
        .s_85                 (s_85),
        .s_70                 (s_70),
        .s_52                 (s_52),
        .s_47                 (s_47),
        .s_38                 (s_38),
        .s_32                 (s_32),
        .s_19                 (s_19),
        .s_13                 (s_13),
        .s_3                  (s_3),
        .n_72                 (n_72),
        .n_74                 (n_74),
        .bhat_14              (bhat_14),
        .n_69                 (n_69),
        .n_22                 (n_22),
        .s_99                 (s_99),
        .s_71                 (s_71),
        .s_62                 (s_62),
        .s_61                 (s_61),
        .s_59                 (s_59),
        .s_48                 (s_48),
        .s_41                 (s_41),
        .bhat_22              (bhat_22),
        .bhat_8               (bhat_8),
        .W                    (W),
        .e_21                 (e_21),
        .e_3                  (e_3),
        .n_58                 (n_58),
        .n_54                 (n_54),
        .n_30                 (n_30),
        .n_3                  (n_3),
        .s_89                 (s_89),
        .s_37                 (s_37),
        .s_26                 (s_26),
        .s_23                 (s_23),
        .s_21                 (s_21),
        .s_17                 (s_17),
        .s_7                  (s_7),
        .n_75                 (n_75),
        .bhat_20              (bhat_20),
        .bhat_2               (bhat_2),
        .e_23                 (e_23),
        .e_17                 (e_17),
        .e_1                  (e_1),
        .n_10                 (n_10),
        .s_98                 (s_98),
        .s_82                 (s_82),
        .s_81                 (s_81),
        .s_66                 (s_66),
        .s_30                 (s_30),
        .s_16                 (s_16),
        .s_8                  (s_8),
        .n_79                 (n_79),
        .n_71                 (n_71),
        .e_16                 (e_16),
        .e_7                  (e_7),
        .n_64                 (n_64),
        .n_62                 (n_62),
        .n_51                 (n_51),
        .n_43                 (n_43),
        .n_42                 (n_42),
        .n_14                 (n_14),
        .s_86                 (s_86),
        .s_76                 (s_76),
        .s_11                 (s_11),
        .n_83                 (n_83)
);

assign s_0 = s_0_tmp;
assign s_0_tmp = din[13 : 0];
assign s_1 = s_1_tmp;
assign s_1_tmp = din[29 : 16];
assign s_2 = s_2_tmp;
assign s_2_tmp = din[45 : 32];
assign s_3 = s_3_tmp;
assign s_3_tmp = din[61 : 48];
assign s_4 = s_4_tmp;
assign s_4_tmp = din[77 : 64];
assign s_5 = s_5_tmp;
assign s_5_tmp = din[93 : 80];
assign s_6 = s_6_tmp;
assign s_6_tmp = din[109 : 96];
assign s_7 = s_7_tmp;
assign s_7_tmp = din[125 : 112];
assign s_8 = s_8_tmp;
assign s_8_tmp = din[141 : 128];
assign s_9 = s_9_tmp;
assign s_9_tmp = din[157 : 144];
assign s_10 = s_10_tmp;
assign s_10_tmp = din[173 : 160];
assign s_11 = s_11_tmp;
assign s_11_tmp = din[189 : 176];
assign s_12 = s_12_tmp;
assign s_12_tmp = din[205 : 192];
assign s_13 = s_13_tmp;
assign s_13_tmp = din[221 : 208];
assign s_14 = s_14_tmp;
assign s_14_tmp = din[237 : 224];
assign s_15 = s_15_tmp;
assign s_15_tmp = din[253 : 240];
assign s_16 = s_16_tmp;
assign s_16_tmp = din[269 : 256];
assign s_17 = s_17_tmp;
assign s_17_tmp = din[285 : 272];
assign s_18 = s_18_tmp;
assign s_18_tmp = din[301 : 288];
assign s_19 = s_19_tmp;
assign s_19_tmp = din[317 : 304];
assign s_20 = s_20_tmp;
assign s_20_tmp = din[333 : 320];
assign s_21 = s_21_tmp;
assign s_21_tmp = din[349 : 336];
assign s_22 = s_22_tmp;
assign s_22_tmp = din[365 : 352];
assign s_23 = s_23_tmp;
assign s_23_tmp = din[381 : 368];
assign s_24 = s_24_tmp;
assign s_24_tmp = din[397 : 384];
assign s_25 = s_25_tmp;
assign s_25_tmp = din[413 : 400];
assign s_26 = s_26_tmp;
assign s_26_tmp = din[429 : 416];
assign s_27 = s_27_tmp;
assign s_27_tmp = din[445 : 432];
assign s_28 = s_28_tmp;
assign s_28_tmp = din[461 : 448];
assign s_29 = s_29_tmp;
assign s_29_tmp = din[477 : 464];
assign s_30 = s_30_tmp;
assign s_30_tmp = din[493 : 480];
assign s_31 = s_31_tmp;
assign s_31_tmp = din[509 : 496];
assign s_32 = s_32_tmp;
assign s_32_tmp = din[525 : 512];
assign s_33 = s_33_tmp;
assign s_33_tmp = din[541 : 528];
assign s_34 = s_34_tmp;
assign s_34_tmp = din[557 : 544];
assign s_35 = s_35_tmp;
assign s_35_tmp = din[573 : 560];
assign s_36 = s_36_tmp;
assign s_36_tmp = din[589 : 576];
assign s_37 = s_37_tmp;
assign s_37_tmp = din[605 : 592];
assign s_38 = s_38_tmp;
assign s_38_tmp = din[621 : 608];
assign s_39 = s_39_tmp;
assign s_39_tmp = din[637 : 624];
assign s_40 = s_40_tmp;
assign s_40_tmp = din[653 : 640];
assign s_41 = s_41_tmp;
assign s_41_tmp = din[669 : 656];
assign s_42 = s_42_tmp;
assign s_42_tmp = din[685 : 672];
assign s_43 = s_43_tmp;
assign s_43_tmp = din[701 : 688];
assign s_44 = s_44_tmp;
assign s_44_tmp = din[717 : 704];
assign s_45 = s_45_tmp;
assign s_45_tmp = din[733 : 720];
assign s_46 = s_46_tmp;
assign s_46_tmp = din[749 : 736];
assign s_47 = s_47_tmp;
assign s_47_tmp = din[765 : 752];
assign s_48 = s_48_tmp;
assign s_48_tmp = din[781 : 768];
assign s_49 = s_49_tmp;
assign s_49_tmp = din[797 : 784];
assign s_50 = s_50_tmp;
assign s_50_tmp = din[813 : 800];
assign s_51 = s_51_tmp;
assign s_51_tmp = din[829 : 816];
assign s_52 = s_52_tmp;
assign s_52_tmp = din[845 : 832];
assign s_53 = s_53_tmp;
assign s_53_tmp = din[861 : 848];
assign s_54 = s_54_tmp;
assign s_54_tmp = din[877 : 864];
assign s_55 = s_55_tmp;
assign s_55_tmp = din[893 : 880];
assign s_56 = s_56_tmp;
assign s_56_tmp = din[909 : 896];
assign s_57 = s_57_tmp;
assign s_57_tmp = din[925 : 912];
assign s_58 = s_58_tmp;
assign s_58_tmp = din[941 : 928];
assign s_59 = s_59_tmp;
assign s_59_tmp = din[957 : 944];
assign s_60 = s_60_tmp;
assign s_60_tmp = din[973 : 960];
assign s_61 = s_61_tmp;
assign s_61_tmp = din[989 : 976];
assign s_62 = s_62_tmp;
assign s_62_tmp = din[1005 : 992];
assign s_63 = s_63_tmp;
assign s_63_tmp = din[1021 : 1008];
assign s_64 = s_64_tmp;
assign s_64_tmp = din[1037 : 1024];
assign s_65 = s_65_tmp;
assign s_65_tmp = din[1053 : 1040];
assign s_66 = s_66_tmp;
assign s_66_tmp = din[1069 : 1056];
assign s_67 = s_67_tmp;
assign s_67_tmp = din[1085 : 1072];
assign s_68 = s_68_tmp;
assign s_68_tmp = din[1101 : 1088];
assign s_69 = s_69_tmp;
assign s_69_tmp = din[1117 : 1104];
assign s_70 = s_70_tmp;
assign s_70_tmp = din[1133 : 1120];
assign s_71 = s_71_tmp;
assign s_71_tmp = din[1149 : 1136];
assign s_72 = s_72_tmp;
assign s_72_tmp = din[1165 : 1152];
assign s_73 = s_73_tmp;
assign s_73_tmp = din[1181 : 1168];
assign s_74 = s_74_tmp;
assign s_74_tmp = din[1197 : 1184];
assign s_75 = s_75_tmp;
assign s_75_tmp = din[1213 : 1200];
assign s_76 = s_76_tmp;
assign s_76_tmp = din[1229 : 1216];
assign s_77 = s_77_tmp;
assign s_77_tmp = din[1245 : 1232];
assign s_78 = s_78_tmp;
assign s_78_tmp = din[1261 : 1248];
assign s_79 = s_79_tmp;
assign s_79_tmp = din[1277 : 1264];
assign s_80 = s_80_tmp;
assign s_80_tmp = din[1293 : 1280];
assign s_81 = s_81_tmp;
assign s_81_tmp = din[1309 : 1296];
assign s_82 = s_82_tmp;
assign s_82_tmp = din[1325 : 1312];
assign s_83 = s_83_tmp;
assign s_83_tmp = din[1341 : 1328];
assign s_84 = s_84_tmp;
assign s_84_tmp = din[1357 : 1344];
assign s_85 = s_85_tmp;
assign s_85_tmp = din[1373 : 1360];
assign s_86 = s_86_tmp;
assign s_86_tmp = din[1389 : 1376];
assign s_87 = s_87_tmp;
assign s_87_tmp = din[1405 : 1392];
assign s_88 = s_88_tmp;
assign s_88_tmp = din[1421 : 1408];
assign s_89 = s_89_tmp;
assign s_89_tmp = din[1437 : 1424];
assign s_90 = s_90_tmp;
assign s_90_tmp = din[1453 : 1440];
assign s_91 = s_91_tmp;
assign s_91_tmp = din[1469 : 1456];
assign s_92 = s_92_tmp;
assign s_92_tmp = din[1485 : 1472];
assign s_93 = s_93_tmp;
assign s_93_tmp = din[1501 : 1488];
assign s_94 = s_94_tmp;
assign s_94_tmp = din[1517 : 1504];
assign s_95 = s_95_tmp;
assign s_95_tmp = din[1533 : 1520];
assign s_96 = s_96_tmp;
assign s_96_tmp = din[1549 : 1536];
assign s_97 = s_97_tmp;
assign s_97_tmp = din[1565 : 1552];
assign s_98 = s_98_tmp;
assign s_98_tmp = din[1581 : 1568];
assign s_99 = s_99_tmp;
assign s_99_tmp = din[1597 : 1584];
assign n_0 = n_0_tmp;
assign n_0_tmp = din[1613 : 1600];
assign n_1 = n_1_tmp;
assign n_1_tmp = din[1629 : 1616];
assign n_2 = n_2_tmp;
assign n_2_tmp = din[1645 : 1632];
assign n_3 = n_3_tmp;
assign n_3_tmp = din[1661 : 1648];
assign n_4 = n_4_tmp;
assign n_4_tmp = din[1677 : 1664];
assign n_5 = n_5_tmp;
assign n_5_tmp = din[1693 : 1680];
assign n_6 = n_6_tmp;
assign n_6_tmp = din[1709 : 1696];
assign n_7 = n_7_tmp;
assign n_7_tmp = din[1725 : 1712];
assign n_8 = n_8_tmp;
assign n_8_tmp = din[1741 : 1728];
assign n_9 = n_9_tmp;
assign n_9_tmp = din[1757 : 1744];
assign n_10 = n_10_tmp;
assign n_10_tmp = din[1773 : 1760];
assign n_11 = n_11_tmp;
assign n_11_tmp = din[1789 : 1776];
assign n_12 = n_12_tmp;
assign n_12_tmp = din[1805 : 1792];
assign n_13 = n_13_tmp;
assign n_13_tmp = din[1821 : 1808];
assign n_14 = n_14_tmp;
assign n_14_tmp = din[1837 : 1824];
assign n_15 = n_15_tmp;
assign n_15_tmp = din[1853 : 1840];
assign n_16 = n_16_tmp;
assign n_16_tmp = din[1869 : 1856];
assign n_17 = n_17_tmp;
assign n_17_tmp = din[1885 : 1872];
assign n_18 = n_18_tmp;
assign n_18_tmp = din[1901 : 1888];
assign n_19 = n_19_tmp;
assign n_19_tmp = din[1917 : 1904];
assign n_20 = n_20_tmp;
assign n_20_tmp = din[1933 : 1920];
assign n_21 = n_21_tmp;
assign n_21_tmp = din[1949 : 1936];
assign n_22 = n_22_tmp;
assign n_22_tmp = din[1965 : 1952];
assign n_23 = n_23_tmp;
assign n_23_tmp = din[1981 : 1968];
assign n_24 = n_24_tmp;
assign n_24_tmp = din[1997 : 1984];
assign n_25 = n_25_tmp;
assign n_25_tmp = din[2013 : 2000];
assign n_26 = n_26_tmp;
assign n_26_tmp = din[2029 : 2016];
assign n_27 = n_27_tmp;
assign n_27_tmp = din[2045 : 2032];
assign n_28 = n_28_tmp;
assign n_28_tmp = din[2061 : 2048];
assign n_29 = n_29_tmp;
assign n_29_tmp = din[2077 : 2064];
assign n_30 = n_30_tmp;
assign n_30_tmp = din[2093 : 2080];
assign n_31 = n_31_tmp;
assign n_31_tmp = din[2109 : 2096];
assign n_32 = n_32_tmp;
assign n_32_tmp = din[2125 : 2112];
assign n_33 = n_33_tmp;
assign n_33_tmp = din[2141 : 2128];
assign n_34 = n_34_tmp;
assign n_34_tmp = din[2157 : 2144];
assign n_35 = n_35_tmp;
assign n_35_tmp = din[2173 : 2160];
assign n_36 = n_36_tmp;
assign n_36_tmp = din[2189 : 2176];
assign n_37 = n_37_tmp;
assign n_37_tmp = din[2205 : 2192];
assign n_38 = n_38_tmp;
assign n_38_tmp = din[2221 : 2208];
assign n_39 = n_39_tmp;
assign n_39_tmp = din[2237 : 2224];
assign n_40 = n_40_tmp;
assign n_40_tmp = din[2253 : 2240];
assign n_41 = n_41_tmp;
assign n_41_tmp = din[2269 : 2256];
assign n_42 = n_42_tmp;
assign n_42_tmp = din[2285 : 2272];
assign n_43 = n_43_tmp;
assign n_43_tmp = din[2301 : 2288];
assign n_44 = n_44_tmp;
assign n_44_tmp = din[2317 : 2304];
assign n_45 = n_45_tmp;
assign n_45_tmp = din[2333 : 2320];
assign n_46 = n_46_tmp;
assign n_46_tmp = din[2349 : 2336];
assign n_47 = n_47_tmp;
assign n_47_tmp = din[2365 : 2352];
assign n_48 = n_48_tmp;
assign n_48_tmp = din[2381 : 2368];
assign n_49 = n_49_tmp;
assign n_49_tmp = din[2397 : 2384];
assign n_50 = n_50_tmp;
assign n_50_tmp = din[2413 : 2400];
assign n_51 = n_51_tmp;
assign n_51_tmp = din[2429 : 2416];
assign n_52 = n_52_tmp;
assign n_52_tmp = din[2445 : 2432];
assign n_53 = n_53_tmp;
assign n_53_tmp = din[2461 : 2448];
assign n_54 = n_54_tmp;
assign n_54_tmp = din[2477 : 2464];
assign n_55 = n_55_tmp;
assign n_55_tmp = din[2493 : 2480];
assign n_56 = n_56_tmp;
assign n_56_tmp = din[2509 : 2496];
assign n_57 = n_57_tmp;
assign n_57_tmp = din[2525 : 2512];
assign n_58 = n_58_tmp;
assign n_58_tmp = din[2541 : 2528];
assign n_59 = n_59_tmp;
assign n_59_tmp = din[2557 : 2544];
assign n_60 = n_60_tmp;
assign n_60_tmp = din[2573 : 2560];
assign n_61 = n_61_tmp;
assign n_61_tmp = din[2589 : 2576];
assign n_62 = n_62_tmp;
assign n_62_tmp = din[2605 : 2592];
assign n_63 = n_63_tmp;
assign n_63_tmp = din[2621 : 2608];
assign n_64 = n_64_tmp;
assign n_64_tmp = din[2637 : 2624];
assign n_65 = n_65_tmp;
assign n_65_tmp = din[2653 : 2640];
assign n_66 = n_66_tmp;
assign n_66_tmp = din[2669 : 2656];
assign n_67 = n_67_tmp;
assign n_67_tmp = din[2685 : 2672];
assign n_68 = n_68_tmp;
assign n_68_tmp = din[2701 : 2688];
assign n_69 = n_69_tmp;
assign n_69_tmp = din[2717 : 2704];
assign n_70 = n_70_tmp;
assign n_70_tmp = din[2733 : 2720];
assign n_71 = n_71_tmp;
assign n_71_tmp = din[2749 : 2736];
assign n_72 = n_72_tmp;
assign n_72_tmp = din[2765 : 2752];
assign n_73 = n_73_tmp;
assign n_73_tmp = din[2781 : 2768];
assign n_74 = n_74_tmp;
assign n_74_tmp = din[2797 : 2784];
assign n_75 = n_75_tmp;
assign n_75_tmp = din[2813 : 2800];
assign n_76 = n_76_tmp;
assign n_76_tmp = din[2829 : 2816];
assign n_77 = n_77_tmp;
assign n_77_tmp = din[2845 : 2832];
assign n_78 = n_78_tmp;
assign n_78_tmp = din[2861 : 2848];
assign n_79 = n_79_tmp;
assign n_79_tmp = din[2877 : 2864];
assign n_80 = n_80_tmp;
assign n_80_tmp = din[2893 : 2880];
assign n_81 = n_81_tmp;
assign n_81_tmp = din[2909 : 2896];
assign n_82 = n_82_tmp;
assign n_82_tmp = din[2925 : 2912];
assign n_83 = n_83_tmp;
assign n_83_tmp = din[2941 : 2928];
assign n_84 = n_84_tmp;
assign n_84_tmp = din[2957 : 2944];
assign n_85 = n_85_tmp;
assign n_85_tmp = din[2973 : 2960];
assign n_86 = n_86_tmp;
assign n_86_tmp = din[2989 : 2976];
assign n_87 = n_87_tmp;
assign n_87_tmp = din[3005 : 2992];
assign n_88 = n_88_tmp;
assign n_88_tmp = din[3021 : 3008];
assign n_89 = n_89_tmp;
assign n_89_tmp = din[3037 : 3024];
assign n_90 = n_90_tmp;
assign n_90_tmp = din[3053 : 3040];
assign n_91 = n_91_tmp;
assign n_91_tmp = din[3069 : 3056];
assign n_92 = n_92_tmp;
assign n_92_tmp = din[3085 : 3072];
assign n_93 = n_93_tmp;
assign n_93_tmp = din[3101 : 3088];
assign n_94 = n_94_tmp;
assign n_94_tmp = din[3117 : 3104];
assign n_95 = n_95_tmp;
assign n_95_tmp = din[3133 : 3120];
assign n_96 = n_96_tmp;
assign n_96_tmp = din[3149 : 3136];
assign n_97 = n_97_tmp;
assign n_97_tmp = din[3165 : 3152];
assign n_98 = n_98_tmp;
assign n_98_tmp = din[3181 : 3168];
assign n_99 = n_99_tmp;
assign n_99_tmp = din[3197 : 3184];
assign e_0_tmp = e_0;

assign e_0_tmp = e_0;

assign zero0 = 7'b0000000;
assign e_1_tmp = e_1;

assign e_1_tmp = e_1;

assign zero1 = 7'b0000000;
assign e_2_tmp = e_2;

assign e_2_tmp = e_2;

assign zero2 = 7'b0000000;
assign e_3_tmp = e_3;

assign e_3_tmp = e_3;

assign zero3 = 7'b0000000;
assign e_4_tmp = e_4;

assign e_4_tmp = e_4;

assign zero4 = 7'b0000000;
assign e_5_tmp = e_5;

assign e_5_tmp = e_5;

assign zero5 = 7'b0000000;
assign e_6_tmp = e_6;

assign e_6_tmp = e_6;

assign zero6 = 7'b0000000;
assign e_7_tmp = e_7;

assign e_7_tmp = e_7;

assign zero7 = 7'b0000000;
assign e_8_tmp = e_8;

assign e_8_tmp = e_8;

assign zero8 = 7'b0000000;
assign e_9_tmp = e_9;

assign e_9_tmp = e_9;

assign zero9 = 7'b0000000;
assign e_10_tmp = e_10;

assign e_10_tmp = e_10;

assign zero10 = 7'b0000000;
assign e_11_tmp = e_11;

assign e_11_tmp = e_11;

assign zero11 = 7'b0000000;
assign e_12_tmp = e_12;

assign e_12_tmp = e_12;

assign zero12 = 7'b0000000;
assign e_13_tmp = e_13;

assign e_13_tmp = e_13;

assign zero13 = 7'b0000000;
assign e_14_tmp = e_14;

assign e_14_tmp = e_14;

assign zero14 = 7'b0000000;
assign e_15_tmp = e_15;

assign e_15_tmp = e_15;

assign zero15 = 7'b0000000;
assign e_16_tmp = e_16;

assign e_16_tmp = e_16;

assign zero16 = 7'b0000000;
assign e_17_tmp = e_17;

assign e_17_tmp = e_17;

assign zero17 = 7'b0000000;
assign e_18_tmp = e_18;

assign e_18_tmp = e_18;

assign zero18 = 7'b0000000;
assign e_19_tmp = e_19;

assign e_19_tmp = e_19;

assign zero19 = 7'b0000000;
assign e_20_tmp = e_20;

assign e_20_tmp = e_20;

assign zero20 = 7'b0000000;
assign e_21_tmp = e_21;

assign e_21_tmp = e_21;

assign zero21 = 7'b0000000;
assign e_22_tmp = e_22;

assign e_22_tmp = e_22;

assign zero22 = 7'b0000000;
assign e_23_tmp = e_23;

assign e_23_tmp = e_23;

assign zero23 = 7'b0000000;
assign e_24_tmp = e_24;

assign e_24_tmp = e_24;

assign zero24 = 7'b0000000;
assign e_25_tmp = e_25;

assign e_25_tmp = e_25;

assign zero25 = 7'b0000000;
assign W_tmp = W;

assign W_tmp = W;

assign zero26 = 7'b0000000;
assign bhat_0_tmp = bhat_0;

assign bhat_0_tmp = bhat_0;

assign zero27 = 7'b0000000;
assign bhat_1_tmp = bhat_1;

assign bhat_1_tmp = bhat_1;

assign zero28 = 7'b0000000;
assign bhat_2_tmp = bhat_2;

assign bhat_2_tmp = bhat_2;

assign zero29 = 7'b0000000;
assign bhat_3_tmp = bhat_3;

assign bhat_3_tmp = bhat_3;

assign zero30 = 7'b0000000;
assign bhat_4_tmp = bhat_4;

assign bhat_4_tmp = bhat_4;

assign zero31 = 7'b0000000;
assign bhat_5_tmp = bhat_5;

assign bhat_5_tmp = bhat_5;

assign zero32 = 7'b0000000;
assign bhat_6_tmp = bhat_6;

assign bhat_6_tmp = bhat_6;

assign zero33 = 7'b0000000;
assign bhat_7_tmp = bhat_7;

assign bhat_7_tmp = bhat_7;

assign zero34 = 7'b0000000;
assign bhat_8_tmp = bhat_8;

assign bhat_8_tmp = bhat_8;

assign zero35 = 7'b0000000;
assign bhat_9_tmp = bhat_9;

assign bhat_9_tmp = bhat_9;

assign zero36 = 7'b0000000;
assign bhat_10_tmp = bhat_10;

assign bhat_10_tmp = bhat_10;

assign zero37 = 7'b0000000;
assign bhat_11_tmp = bhat_11;

assign bhat_11_tmp = bhat_11;

assign zero38 = 7'b0000000;
assign bhat_12_tmp = bhat_12;

assign bhat_12_tmp = bhat_12;

assign zero39 = 7'b0000000;
assign bhat_13_tmp = bhat_13;

assign bhat_13_tmp = bhat_13;

assign zero40 = 7'b0000000;
assign bhat_14_tmp = bhat_14;

assign bhat_14_tmp = bhat_14;

assign zero41 = 7'b0000000;
assign bhat_15_tmp = bhat_15;

assign bhat_15_tmp = bhat_15;

assign zero42 = 7'b0000000;
assign bhat_16_tmp = bhat_16;

assign bhat_16_tmp = bhat_16;

assign zero43 = 7'b0000000;
assign bhat_17_tmp = bhat_17;

assign bhat_17_tmp = bhat_17;

assign zero44 = 7'b0000000;
assign bhat_18_tmp = bhat_18;

assign bhat_18_tmp = bhat_18;

assign zero45 = 7'b0000000;
assign bhat_19_tmp = bhat_19;

assign bhat_19_tmp = bhat_19;

assign zero46 = 7'b0000000;
assign bhat_20_tmp = bhat_20;

assign bhat_20_tmp = bhat_20;

assign zero47 = 7'b0000000;
assign bhat_21_tmp = bhat_21;

assign bhat_21_tmp = bhat_21;

assign zero48 = 7'b0000000;
assign bhat_22_tmp = bhat_22;

assign bhat_22_tmp = bhat_22;

assign zero49 = 7'b0000000;
assign bhat_23_tmp = bhat_23;

assign bhat_23_tmp = bhat_23;

assign zero50 = 7'b0000000;
assign bhat_24_tmp = bhat_24;

assign bhat_24_tmp = bhat_24;

assign zero51 = 7'b0000000;
assign bhat_25_tmp = bhat_25;

assign bhat_25_tmp = bhat_25;

assign zero52 = 7'b0000000;
assign dout = {zero52,bhat_25_tmp,zero51,bhat_24_tmp,zero50,bhat_23_tmp,zero49,bhat_22_tmp,zero48,bhat_21_tmp,zero47,bhat_20_tmp,zero46,bhat_19_tmp,zero45,bhat_18_tmp,zero44,bhat_17_tmp,zero43,bhat_16_tmp,zero42,bhat_15_tmp,zero41,bhat_14_tmp,zero40,bhat_13_tmp,zero39,bhat_12_tmp,zero38,bhat_11_tmp,zero37,bhat_10_tmp,zero36,bhat_9_tmp,zero35,bhat_8_tmp,zero34,bhat_7_tmp,zero33,bhat_6_tmp,zero32,bhat_5_tmp,zero31,bhat_4_tmp,zero30,bhat_3_tmp,zero29,bhat_2_tmp,zero28,bhat_1_tmp,zero27,bhat_0_tmp,zero26,W_tmp,zero25,e_25_tmp,zero24,e_24_tmp,zero23,e_23_tmp,zero22,e_22_tmp,zero21,e_21_tmp,zero20,e_20_tmp,zero19,e_19_tmp,zero18,e_18_tmp,zero17,e_17_tmp,zero16,e_16_tmp,zero15,e_15_tmp,zero14,e_14_tmp,zero13,e_13_tmp,zero12,e_12_tmp,zero11,e_11_tmp,zero10,e_10_tmp,zero9,e_9_tmp,zero8,e_8_tmp,zero7,e_7_tmp,zero6,e_6_tmp,zero5,e_5_tmp,zero4,e_4_tmp,zero3,e_3_tmp,zero2,e_2_tmp,zero1,e_1_tmp,zero0,e_0_tmp};

endmodule
