classdef class_noise_cancel_fixpt_sysobj <  hdlverifier.FILSimulation
%class_noise_cancel_fixpt_sysobj is a filWizard generated class used for FPGA-In-the-Loop
%   simulation with the 'noise_cancel_fixpt' DUT.
%   class_noise_cancel_fixpt_sysobj connects MATLAB with a FPGA and cosimulate with it by 
%   writing inputs in the FPGA and reading outputs from the FPGA.
%
%   MYFIL = class_noise_cancel_fixpt_sysobj
%
%   Step method syntax:
%
%   [out1, out2, ...] = step(MYFIL, in1, in2, ...) connect to the FPGA,
%   write in1, in2, ... to the FPGA and read out1, out2, ... from 
%   the FPGA
%
%   class_noise_cancel_fixpt_sysobj methods:
%
%   step        - See above description for use of this method
%   release     - Allow property value and input characteristics changes, and
%                 release connection to FPGA board
%   clone       - Create class_noise_cancel_fixpt_sysobj object with same property values
%   isLocked    - Locked status (logical)
%   programFPGA - Load the programming file in the FPGA
%
%   class_noise_cancel_fixpt_sysobj properties:
%
%   DUTName                  - DUT top level name
%   InputSignals             - Input paths in the HDL code
%   InputBitWidths           - Width in bit of the inputs
%   OutputSignals            - Output paths in the HDL code
%   OutputBitWidths          - Width in bit of the outputs
%   OutputDataTypes          - Data type of the outputs
%   OutputSigned             - Sign of the outputs
%   OutputFractionLengths    - Fraction lengths of the outputs
%   OutputDownsampling       - Downsampling factor and phase of the outputs
%   OverclockingFactor       - Overclocking factor of the hardware
%   Connection               - Parameters for the connection with the board
%   FPGAVendor               - Name of the FPGA chip vendor
%   FPGABoard                - Name of the FPGA board
%   FPGAProgrammingFile      - Path of the Programming file for the FPGA
%   ScanChainPosition        - Position of the FPGA in the JTAG scan chain
%
%   File Name: class_noise_cancel_fixpt_sysobj.m
%   Created: 25-Apr-2017 20:39:57
% 
%   Generated by FIL Wizard

%#codegen

    properties (Nontunable)
        DUTName = 'noise_cancel_fixpt';
    end
    
    methods
        function obj = class_noise_cancel_fixpt_sysobj
            
            %THE FOLLOWING PROTECTED PROPERTIES ARE SPECIFIC TO THE HW DUT
            %AND MUST NOT BE EDITED (RERUN THE FIL WIZARD TO CHANGE THEM)
            obj.InputSignals = char('s_0','s_1','s_2','s_3','s_4','s_5','s_6','s_7','s_8','s_9','s_10','s_11','s_12','s_13','s_14','s_15','s_16','s_17','s_18','s_19','s_20','s_21','s_22','s_23','s_24','s_25','s_26','s_27','s_28','s_29','s_30','s_31','s_32','s_33','s_34','s_35','s_36','s_37','s_38','s_39','s_40','s_41','s_42','s_43','s_44','s_45','s_46','s_47','s_48','s_49','s_50','s_51','s_52','s_53','s_54','s_55','s_56','s_57','s_58','s_59','s_60','s_61','s_62','s_63','s_64','s_65','s_66','s_67','s_68','s_69','s_70','s_71','s_72','s_73','s_74','s_75','s_76','s_77','s_78','s_79','s_80','s_81','s_82','s_83','s_84','s_85','s_86','s_87','s_88','s_89','s_90','s_91','s_92','s_93','s_94','s_95','s_96','s_97','s_98','s_99','n_0','n_1','n_2','n_3','n_4','n_5','n_6','n_7','n_8','n_9','n_10','n_11','n_12','n_13','n_14','n_15','n_16','n_17','n_18','n_19','n_20','n_21','n_22','n_23','n_24','n_25','n_26','n_27','n_28','n_29','n_30','n_31','n_32','n_33','n_34','n_35','n_36','n_37','n_38','n_39','n_40','n_41','n_42','n_43','n_44','n_45','n_46','n_47','n_48','n_49','n_50','n_51','n_52','n_53','n_54','n_55','n_56','n_57','n_58','n_59','n_60','n_61','n_62','n_63','n_64','n_65','n_66','n_67','n_68','n_69','n_70','n_71','n_72','n_73','n_74','n_75','n_76','n_77','n_78','n_79','n_80','n_81','n_82','n_83','n_84','n_85','n_86','n_87','n_88','n_89','n_90','n_91','n_92','n_93','n_94','n_95','n_96','n_97','n_98','n_99');
            obj.InputBitWidths = [14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14];
            obj.OutputSignals = char('e_0','e_1','e_2','e_3','e_4','e_5','e_6','e_7','e_8','e_9','e_10','e_11','e_12','e_13','e_14','e_15','e_16','e_17','e_18','e_19','e_20','e_21','e_22','e_23','e_24','e_25','W','bhat_0','bhat_1','bhat_2','bhat_3','bhat_4','bhat_5','bhat_6','bhat_7','bhat_8','bhat_9','bhat_10','bhat_11','bhat_12','bhat_13','bhat_14','bhat_15','bhat_16','bhat_17','bhat_18','bhat_19','bhat_20','bhat_21','bhat_22','bhat_23','bhat_24','bhat_25');
            obj.OutputBitWidths = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
            obj.Connection = char('JTAG','libmwrtiostream_xjtag','FPGAInstr=000010;FPGAInstr2=000011;FPGAInstr3=100010;FPGAInstr4=100011;InstrLenBefore=0;InstrLenAfter=0;TckFrequency=66.000000',''); 
            obj.FPGAVendor = 'Xilinx';
            obj.FPGATool   = 'Xilinx Vivado';
            obj.FPGABoard = 'Nexys4 Artix-7 FPGA board';
            obj.ScanChainPosition = 1 ;
            
            %THE FOLLOWING PUBLIC PROPERTIES ARE RELATED TO THE SIMULATION
            %AND CAN BE EDITED WITHOUT RERUNING THE FIL WIZARD
            obj.OutputSigned = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false];
            obj.OutputDataTypes = char('fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint','fixedpoint');
            obj.OutputFractionLengths = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
            obj.OutputDownsampling = [1,0];
            obj.OverclockingFactor = 1;
            obj.FPGAProgrammingFile = 'C:\Users\admin\Desktop\bhavesh\noise_cancel\fil\noise_cancel_fixpt_fil\noise_cancel_fixpt_fil.bit';                       
        end
    end
end




