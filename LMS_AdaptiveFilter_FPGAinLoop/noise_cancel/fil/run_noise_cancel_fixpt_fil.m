function run_noise_cancel_fixpt_fil
% Program FPGA
disp('### Programming FPGA ');
filProgramFPGA('Xilinx Vivado','C:\Users\admin\Desktop\bhavesh\noise_cancel\fil\noise_cancel_fixpt_fil\noise_cancel_fixpt_fil.bit',1);

disp('### Waiting for FPGA initialization ');
pause(3);
% Clear persistent variables before simulation
l_clearPersistentVariable;

% Clear persistent variables after simulation
onCleanupObj = onCleanup(@() l_clearPersistentVariable);

% Add current working directory to search path
savedPathVar = addpath(pwd);
restorePathObj = onCleanup(@() path(savedPathVar));

% Run generated test bench
disp('### Simulating generated test bench ');
% Exercise the compiled version of noise_cancel_wrapper_fixpt_fil in the generated test bench.
% To debug the test bench with the original function "noise_cancel_wrapper_fixpt_fil",
% replace the next line with "test_fil"
coder.runTest('localRunTest_noise_cancel_fixpt','noise_cancel_wrapper_fixpt_fil');
% To recompile MATLAB function "noise_cancel_wrapper_fixpt_fil",
% run the re-compilation function "localRecompile_noise_cancel_wrapper_fixpt_fil".
disp('### Finished Simulation');

% Plot logged output values
global gEMLSimLogRunIdx;
disp('Warning: output gEMLSimLogVal_out_e is matrix or complex - it will not be plotted')
global gEMLSimLogVal_out_W;
global gEMLSimLogVal_out_ref_W;
figure;
hold on;
subplot(3,1,1);
plot(gEMLSimLogVal_out_W(1:gEMLSimLogRunIdx-1,:),'b');
title('W:fil','Interpreter','none')
subplot(3,1,2);
plot(gEMLSimLogVal_out_ref_W(1:gEMLSimLogRunIdx-1,:),'r');
title('W:Reference','Interpreter','none')
subplot(3,1,3);
plot(double(gEMLSimLogVal_out_W(1:gEMLSimLogRunIdx-1,:)) - double(gEMLSimLogVal_out_ref_W(1:gEMLSimLogRunIdx-1,:)),'m');
title('W:Difference','Interpreter','none')
hold off;
disp('Warning: output gEMLSimLogVal_out_bhat is matrix or complex - it will not be plotted')

end

function l_clearPersistentVariable
% Clear reference DUT function
clear noise_cancel_fixpt;

% Clear FPGA-in-the-Loop System object wrapper function
clear noise_cancel_fixpt_sysobj_fil;

% Clear FPGA-in-the-Loop function
clear noise_cancel_fixpt_fil;

% Clear generated MEX function
clear noise_cancel_wrapper_fixpt_fil_mex

% Clear logged values
clear global gEMLSimLogRunIdx;
clear global gEMLSimLogVal_out_e;
clear global gEMLSimLogVal_out_W;
clear global gEMLSimLogVal_out_bhat;
clear global gEMLSimLogVal_out_ref_e;
clear global gEMLSimLogVal_out_ref_W;
clear global gEMLSimLogVal_out_ref_bhat;

end

