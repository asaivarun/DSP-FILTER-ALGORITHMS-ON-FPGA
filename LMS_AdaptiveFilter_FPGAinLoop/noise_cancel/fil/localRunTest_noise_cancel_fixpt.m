function localRunTest_noise_cancel_fixpt
   fxptPath = 'C:\Users\admin\Desktop\bhavesh\noise_cancel\fixpt';
addpath(fxptPath);
cleanupObj = onCleanup(@() rmpath(fxptPath));

   test_fil;
end

