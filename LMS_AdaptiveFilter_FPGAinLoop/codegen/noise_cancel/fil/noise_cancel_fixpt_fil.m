% Auto generated function to simulate the generated HDL code using FPGA-in-the-Loop
% 
% Generated by MATLAB 9.2 and HDL Coder 3.10

function [ref_e,ref_W,ref_bhat] = noise_cancel_fixpt_fil(s,n,e,W,bhat)

coder.extrinsic('noise_cancel_fixpt_sysobj_fil');
coder.extrinsic('hdlverifier.assert');
coder.extrinsic('hdlverifier.Delay');
coder.extrinsic('step');

% Declare persistent variables
persistent initialized;

% Initialize persistent variables
if isempty(initialized)
   initialized = true;
end

% Call the original MATLAB function to get reference signal
[ref_e,ref_W,ref_bhat] = noise_cancel_fixpt(s,n,e,W,bhat);

% Convert input signals
s_1 = s(1);

s_2 = s(2);

s_3 = s(3);

s_4 = s(4);

s_5 = s(5);

s_6 = s(6);

s_7 = s(7);

s_8 = s(8);

s_9 = s(9);

s_10 = s(10);

s_11 = s(11);

s_12 = s(12);

s_13 = s(13);

s_14 = s(14);

s_15 = s(15);

s_16 = s(16);

s_17 = s(17);

s_18 = s(18);

s_19 = s(19);

s_20 = s(20);

s_21 = s(21);

s_22 = s(22);

s_23 = s(23);

s_24 = s(24);

s_25 = s(25);

s_26 = s(26);

s_27 = s(27);

s_28 = s(28);

s_29 = s(29);

s_30 = s(30);

s_31 = s(31);

s_32 = s(32);

s_33 = s(33);

s_34 = s(34);

s_35 = s(35);

s_36 = s(36);

s_37 = s(37);

s_38 = s(38);

s_39 = s(39);

s_40 = s(40);

s_41 = s(41);

s_42 = s(42);

s_43 = s(43);

s_44 = s(44);

s_45 = s(45);

s_46 = s(46);

s_47 = s(47);

s_48 = s(48);

s_49 = s(49);

s_50 = s(50);

s_51 = s(51);

s_52 = s(52);

s_53 = s(53);

s_54 = s(54);

s_55 = s(55);

s_56 = s(56);

s_57 = s(57);

s_58 = s(58);

s_59 = s(59);

s_60 = s(60);

s_61 = s(61);

s_62 = s(62);

s_63 = s(63);

s_64 = s(64);

s_65 = s(65);

s_66 = s(66);

s_67 = s(67);

s_68 = s(68);

s_69 = s(69);

s_70 = s(70);

s_71 = s(71);

s_72 = s(72);

s_73 = s(73);

s_74 = s(74);

s_75 = s(75);

s_76 = s(76);

s_77 = s(77);

s_78 = s(78);

s_79 = s(79);

s_80 = s(80);

s_81 = s(81);

s_82 = s(82);

s_83 = s(83);

s_84 = s(84);

s_85 = s(85);

s_86 = s(86);

s_87 = s(87);

s_88 = s(88);

s_89 = s(89);

s_90 = s(90);

s_91 = s(91);

s_92 = s(92);

s_93 = s(93);

s_94 = s(94);

s_95 = s(95);

s_96 = s(96);

s_97 = s(97);

s_98 = s(98);

s_99 = s(99);

s_100 = s(100);

n_1 = n(1);

n_2 = n(2);

n_3 = n(3);

n_4 = n(4);

n_5 = n(5);

n_6 = n(6);

n_7 = n(7);

n_8 = n(8);

n_9 = n(9);

n_10 = n(10);

n_11 = n(11);

n_12 = n(12);

n_13 = n(13);

n_14 = n(14);

n_15 = n(15);

n_16 = n(16);

n_17 = n(17);

n_18 = n(18);

n_19 = n(19);

n_20 = n(20);

n_21 = n(21);

n_22 = n(22);

n_23 = n(23);

n_24 = n(24);

n_25 = n(25);

n_26 = n(26);

n_27 = n(27);

n_28 = n(28);

n_29 = n(29);

n_30 = n(30);

n_31 = n(31);

n_32 = n(32);

n_33 = n(33);

n_34 = n(34);

n_35 = n(35);

n_36 = n(36);

n_37 = n(37);

n_38 = n(38);

n_39 = n(39);

n_40 = n(40);

n_41 = n(41);

n_42 = n(42);

n_43 = n(43);

n_44 = n(44);

n_45 = n(45);

n_46 = n(46);

n_47 = n(47);

n_48 = n(48);

n_49 = n(49);

n_50 = n(50);

n_51 = n(51);

n_52 = n(52);

n_53 = n(53);

n_54 = n(54);

n_55 = n(55);

n_56 = n(56);

n_57 = n(57);

n_58 = n(58);

n_59 = n(59);

n_60 = n(60);

n_61 = n(61);

n_62 = n(62);

n_63 = n(63);

n_64 = n(64);

n_65 = n(65);

n_66 = n(66);

n_67 = n(67);

n_68 = n(68);

n_69 = n(69);

n_70 = n(70);

n_71 = n(71);

n_72 = n(72);

n_73 = n(73);

n_74 = n(74);

n_75 = n(75);

n_76 = n(76);

n_77 = n(77);

n_78 = n(78);

n_79 = n(79);

n_80 = n(80);

n_81 = n(81);

n_82 = n(82);

n_83 = n(83);

n_84 = n(84);

n_85 = n(85);

n_86 = n(86);

n_87 = n(87);

n_88 = n(88);

n_89 = n(89);

n_90 = n(90);

n_91 = n(91);

n_92 = n(92);

n_93 = n(93);

n_94 = n(94);

n_95 = n(95);

n_96 = n(96);

n_97 = n(97);

n_98 = n(98);

n_99 = n(99);

n_100 = n(100);

e_1 = e(1);

e_2 = e(2);

e_3 = e(3);

e_4 = e(4);

e_5 = e(5);

e_6 = e(6);

e_7 = e(7);

e_8 = e(8);

e_9 = e(9);

e_10 = e(10);

e_11 = e(11);

e_12 = e(12);

e_13 = e(13);

e_14 = e(14);

e_15 = e(15);

e_16 = e(16);

e_17 = e(17);

e_18 = e(18);

e_19 = e(19);

e_20 = e(20);

e_21 = e(21);

e_22 = e(22);

e_23 = e(23);

e_24 = e(24);

e_25 = e(25);

e_26 = e(26);

e_27 = e(27);

e_28 = e(28);

e_29 = e(29);

e_30 = e(30);

e_31 = e(31);

e_32 = e(32);

e_33 = e(33);

e_34 = e(34);

e_35 = e(35);

e_36 = e(36);

e_37 = e(37);

e_38 = e(38);

e_39 = e(39);

e_40 = e(40);

e_41 = e(41);

e_42 = e(42);

e_43 = e(43);

e_44 = e(44);

e_45 = e(45);

e_46 = e(46);

e_47 = e(47);

e_48 = e(48);

e_49 = e(49);

e_50 = e(50);

e_51 = e(51);

e_52 = e(52);

e_53 = e(53);

e_54 = e(54);

e_55 = e(55);

e_56 = e(56);

e_57 = e(57);

e_58 = e(58);

e_59 = e(59);

e_60 = e(60);

e_61 = e(61);

e_62 = e(62);

e_63 = e(63);

e_64 = e(64);

e_65 = e(65);

e_66 = e(66);

e_67 = e(67);

e_68 = e(68);

e_69 = e(69);

e_70 = e(70);

e_71 = e(71);

e_72 = e(72);

e_73 = e(73);

e_74 = e(74);

e_75 = e(75);

e_76 = e(76);

e_77 = e(77);

e_78 = e(78);

e_79 = e(79);

e_80 = e(80);

e_81 = e(81);

e_82 = e(82);

e_83 = e(83);

e_84 = e(84);

e_85 = e(85);

e_86 = e(86);

e_87 = e(87);

e_88 = e(88);

e_89 = e(89);

e_90 = e(90);

bhat_1 = bhat(1);

bhat_2 = bhat(2);

bhat_3 = bhat(3);

bhat_4 = bhat(4);

bhat_5 = bhat(5);

bhat_6 = bhat(6);

bhat_7 = bhat(7);

bhat_8 = bhat(8);

bhat_9 = bhat(9);

bhat_10 = bhat(10);

bhat_11 = bhat(11);

bhat_12 = bhat(12);

bhat_13 = bhat(13);

bhat_14 = bhat(14);

bhat_15 = bhat(15);

bhat_16 = bhat(16);

bhat_17 = bhat(17);

bhat_18 = bhat(18);

bhat_19 = bhat(19);

bhat_20 = bhat(20);

bhat_21 = bhat(21);

bhat_22 = bhat(22);

bhat_23 = bhat(23);

bhat_24 = bhat(24);

bhat_25 = bhat(25);

bhat_26 = bhat(26);

bhat_27 = bhat(27);

bhat_28 = bhat(28);

bhat_29 = bhat(29);

bhat_30 = bhat(30);

bhat_31 = bhat(31);

bhat_32 = bhat(32);

bhat_33 = bhat(33);

bhat_34 = bhat(34);

bhat_35 = bhat(35);

bhat_36 = bhat(36);

bhat_37 = bhat(37);

bhat_38 = bhat(38);

bhat_39 = bhat(39);

bhat_40 = bhat(40);

bhat_41 = bhat(41);

bhat_42 = bhat(42);

bhat_43 = bhat(43);

bhat_44 = bhat(44);

bhat_45 = bhat(45);

bhat_46 = bhat(46);

bhat_47 = bhat(47);

bhat_48 = bhat(48);

bhat_49 = bhat(49);

bhat_50 = bhat(50);

bhat_51 = bhat(51);

bhat_52 = bhat(52);

bhat_53 = bhat(53);

bhat_54 = bhat(54);

bhat_55 = bhat(55);

bhat_56 = bhat(56);

bhat_57 = bhat(57);

bhat_58 = bhat(58);

bhat_59 = bhat(59);

bhat_60 = bhat(60);

bhat_61 = bhat(61);

bhat_62 = bhat(62);

bhat_63 = bhat(63);

bhat_64 = bhat(64);

bhat_65 = bhat(65);

bhat_66 = bhat(66);

bhat_67 = bhat(67);

bhat_68 = bhat(68);

bhat_69 = bhat(69);

bhat_70 = bhat(70);

bhat_71 = bhat(71);

bhat_72 = bhat(72);

bhat_73 = bhat(73);

bhat_74 = bhat(74);

bhat_75 = bhat(75);

bhat_76 = bhat(76);

bhat_77 = bhat(77);

bhat_78 = bhat(78);

bhat_79 = bhat(79);

bhat_80 = bhat(80);

bhat_81 = bhat(81);

bhat_82 = bhat(82);

bhat_83 = bhat(83);

bhat_84 = bhat(84);

bhat_85 = bhat(85);

bhat_86 = bhat(86);

bhat_87 = bhat(87);

bhat_88 = bhat(88);

bhat_89 = bhat(89);

bhat_90 = bhat(90);



% Run FPGA-in-the-Loop
[e_110,e_210,e_310,e_410,e_510,e_610,e_710,e_810,e_91,e_101,e_111,e_121,e_131,e_141,e_151,e_161,e_171,e_181,e_191,e_201,e_211,e_221,e_231,e_241,e_251,e_261,e_271,e_281,e_291,e_301,e_311,e_321,e_331,e_341,e_351,e_361,e_371,e_381,e_391,e_401,e_411,e_421,e_431,e_441,e_451,e_461,e_471,e_481,e_491,e_501,e_511,e_521,e_531,e_541,e_551,e_561,e_571,e_581,e_591,e_601,e_611,e_621,e_631,e_641,e_651,e_661,e_671,e_681,e_691,e_701,e_711,e_721,e_731,e_741,e_751,e_761,e_771,e_781,e_791,e_801,e_811,e_821,e_831,e_841,e_851,e_861,e_871,e_881,e_891,e_901,W,bhat_110,bhat_210,bhat_310,bhat_410,bhat_510,bhat_610,bhat_710,bhat_810,bhat_91,bhat_101,bhat_111,bhat_121,bhat_131,bhat_141,bhat_151,bhat_161,bhat_171,bhat_181,bhat_191,bhat_201,bhat_211,bhat_221,bhat_231,bhat_241,bhat_251,bhat_261,bhat_271,bhat_281,bhat_291,bhat_301,bhat_311,bhat_321,bhat_331,bhat_341,bhat_351,bhat_361,bhat_371,bhat_381,bhat_391,bhat_401,bhat_411,bhat_421,bhat_431,bhat_441,bhat_451,bhat_461,bhat_471,bhat_481,bhat_491,bhat_501,bhat_511,bhat_521,bhat_531,bhat_541,bhat_551,bhat_561,bhat_571,bhat_581,bhat_591,bhat_601,bhat_611,bhat_621,bhat_631,bhat_641,bhat_651,bhat_661,bhat_671,bhat_681,bhat_691,bhat_701,bhat_711,bhat_721,bhat_731,bhat_741,bhat_751,bhat_761,bhat_771,bhat_781,bhat_791,bhat_801,bhat_811,bhat_821,bhat_831,bhat_841,bhat_851,bhat_861,bhat_871,bhat_881,bhat_891,bhat_901] = noise_cancel_fixpt_sysobj_fil(s_1,s_2,s_3,s_4,s_5,s_6,s_7,s_8,s_9,s_10,s_11,s_12,s_13,s_14,s_15,s_16,s_17,s_18,s_19,s_20,s_21,s_22,s_23,s_24,s_25,s_26,s_27,s_28,s_29,s_30,s_31,s_32,s_33,s_34,s_35,s_36,s_37,s_38,s_39,s_40,s_41,s_42,s_43,s_44,s_45,s_46,s_47,s_48,s_49,s_50,s_51,s_52,s_53,s_54,s_55,s_56,s_57,s_58,s_59,s_60,s_61,s_62,s_63,s_64,s_65,s_66,s_67,s_68,s_69,s_70,s_71,s_72,s_73,s_74,s_75,s_76,s_77,s_78,s_79,s_80,s_81,s_82,s_83,s_84,s_85,s_86,s_87,s_88,s_89,s_90,s_91,s_92,s_93,s_94,s_95,s_96,s_97,s_98,s_99,s_100,n_1,n_2,n_3,n_4,n_5,n_6,n_7,n_8,n_9,n_10,n_11,n_12,n_13,n_14,n_15,n_16,n_17,n_18,n_19,n_20,n_21,n_22,n_23,n_24,n_25,n_26,n_27,n_28,n_29,n_30,n_31,n_32,n_33,n_34,n_35,n_36,n_37,n_38,n_39,n_40,n_41,n_42,n_43,n_44,n_45,n_46,n_47,n_48,n_49,n_50,n_51,n_52,n_53,n_54,n_55,n_56,n_57,n_58,n_59,n_60,n_61,n_62,n_63,n_64,n_65,n_66,n_67,n_68,n_69,n_70,n_71,n_72,n_73,n_74,n_75,n_76,n_77,n_78,n_79,n_80,n_81,n_82,n_83,n_84,n_85,n_86,n_87,n_88,n_89,n_90,n_91,n_92,n_93,n_94,n_95,n_96,n_97,n_98,n_99,n_100,e_1,e_2,e_3,e_4,e_5,e_6,e_7,e_8,e_9,e_10,e_11,e_12,e_13,e_14,e_15,e_16,e_17,e_18,e_19,e_20,e_21,e_22,e_23,e_24,e_25,e_26,e_27,e_28,e_29,e_30,e_31,e_32,e_33,e_34,e_35,e_36,e_37,e_38,e_39,e_40,e_41,e_42,e_43,e_44,e_45,e_46,e_47,e_48,e_49,e_50,e_51,e_52,e_53,e_54,e_55,e_56,e_57,e_58,e_59,e_60,e_61,e_62,e_63,e_64,e_65,e_66,e_67,e_68,e_69,e_70,e_71,e_72,e_73,e_74,e_75,e_76,e_77,e_78,e_79,e_80,e_81,e_82,e_83,e_84,e_85,e_86,e_87,e_88,e_89,e_90,W,bhat_1,bhat_2,bhat_3,bhat_4,bhat_5,bhat_6,bhat_7,bhat_8,bhat_9,bhat_10,bhat_11,bhat_12,bhat_13,bhat_14,bhat_15,bhat_16,bhat_17,bhat_18,bhat_19,bhat_20,bhat_21,bhat_22,bhat_23,bhat_24,bhat_25,bhat_26,bhat_27,bhat_28,bhat_29,bhat_30,bhat_31,bhat_32,bhat_33,bhat_34,bhat_35,bhat_36,bhat_37,bhat_38,bhat_39,bhat_40,bhat_41,bhat_42,bhat_43,bhat_44,bhat_45,bhat_46,bhat_47,bhat_48,bhat_49,bhat_50,bhat_51,bhat_52,bhat_53,bhat_54,bhat_55,bhat_56,bhat_57,bhat_58,bhat_59,bhat_60,bhat_61,bhat_62,bhat_63,bhat_64,bhat_65,bhat_66,bhat_67,bhat_68,bhat_69,bhat_70,bhat_71,bhat_72,bhat_73,bhat_74,bhat_75,bhat_76,bhat_77,bhat_78,bhat_79,bhat_80,bhat_81,bhat_82,bhat_83,bhat_84,bhat_85,bhat_86,bhat_87,bhat_88,bhat_89,bhat_90);

% Convert output signals
bhat = [bhat_110,bhat_210,bhat_310,bhat_410,bhat_510,bhat_610,bhat_710,bhat_810,bhat_91,bhat_101,bhat_111,bhat_121,bhat_131,bhat_141,bhat_151,bhat_161,bhat_171,bhat_181,bhat_191,bhat_201,bhat_211,bhat_221,bhat_231,bhat_241,bhat_251,bhat_261,bhat_271,bhat_281,bhat_291,bhat_301,bhat_311,bhat_321,bhat_331,bhat_341,bhat_351,bhat_361,bhat_371,bhat_381,bhat_391,bhat_401,bhat_411,bhat_421,bhat_431,bhat_441,bhat_451,bhat_461,bhat_471,bhat_481,bhat_491,bhat_501,bhat_511,bhat_521,bhat_531,bhat_541,bhat_551,bhat_561,bhat_571,bhat_581,bhat_591,bhat_601,bhat_611,bhat_621,bhat_631,bhat_641,bhat_651,bhat_661,bhat_671,bhat_681,bhat_691,bhat_701,bhat_711,bhat_721,bhat_731,bhat_741,bhat_751,bhat_761,bhat_771,bhat_781,bhat_791,bhat_801,bhat_811,bhat_821,bhat_831,bhat_841,bhat_851,bhat_861,bhat_871,bhat_881,bhat_891,bhat_901];

e = [e_110,e_210,e_310,e_410,e_510,e_610,e_710,e_810,e_91,e_101,e_111,e_121,e_131,e_141,e_151,e_161,e_171,e_181,e_191,e_201,e_211,e_221,e_231,e_241,e_251,e_261,e_271,e_281,e_291,e_301,e_311,e_321,e_331,e_341,e_351,e_361,e_371,e_381,e_391,e_401,e_411,e_421,e_431,e_441,e_451,e_461,e_471,e_481,e_491,e_501,e_511,e_521,e_531,e_541,e_551,e_561,e_571,e_581,e_591,e_601,e_611,e_621,e_631,e_641,e_651,e_661,e_671,e_681,e_691,e_701,e_711,e_721,e_731,e_741,e_751,e_761,e_771,e_781,e_791,e_801,e_811,e_821,e_831,e_841,e_851,e_861,e_871,e_881,e_891,e_901];



% Verify the FPGA-in-the-Loop output
hdlverifier.assert(e,ref_e,'e');
hdlverifier.assert(W,ref_W,'W');
hdlverifier.assert(bhat,ref_bhat,'bhat');

coder.extrinsic('localLogData');
localLogData(e,W,bhat,ref_e,ref_W,ref_bhat);
