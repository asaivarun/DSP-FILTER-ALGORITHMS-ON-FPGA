@echo off
set MATLAB=F:\Softwares\MATLAB2017\MATLAB2017
set MATLAB_ARCH=win64
set MATLAB_BIN="F:\Softwares\MATLAB2017\MATLAB2017\bin"
set ENTRYPOINT=mexFunction
set OUTDIR=.\
set LIB_NAME=noise_cancel_wrapper_fixpt_fil_mex
set MEX_NAME=noise_cancel_wrapper_fixpt_fil_mex
set MEX_EXT=.mexw64
call "F:\Softwares\MATLAB2017\MATLAB2017\sys\lcc64\lcc64\mex\lcc64opts.bat"
echo # Make settings for noise_cancel_wrapper_fixpt_fil > noise_cancel_wrapper_fixpt_fil_mex.mki
echo COMPILER=%COMPILER%>> noise_cancel_wrapper_fixpt_fil_mex.mki
echo COMPFLAGS=%COMPFLAGS%>> noise_cancel_wrapper_fixpt_fil_mex.mki
echo OPTIMFLAGS=%OPTIMFLAGS%>> noise_cancel_wrapper_fixpt_fil_mex.mki
echo DEBUGFLAGS=%DEBUGFLAGS%>> noise_cancel_wrapper_fixpt_fil_mex.mki
echo LINKER=%LINKER%>> noise_cancel_wrapper_fixpt_fil_mex.mki
echo LINKFLAGS=%LINKFLAGS%>> noise_cancel_wrapper_fixpt_fil_mex.mki
echo LINKOPTIMFLAGS=%LINKOPTIMFLAGS%>> noise_cancel_wrapper_fixpt_fil_mex.mki
echo LINKDEBUGFLAGS=%LINKDEBUGFLAGS%>> noise_cancel_wrapper_fixpt_fil_mex.mki
echo MATLAB_ARCH=%MATLAB_ARCH%>> noise_cancel_wrapper_fixpt_fil_mex.mki
echo BORLAND=%BORLAND%>> noise_cancel_wrapper_fixpt_fil_mex.mki
echo OMPFLAGS= >> noise_cancel_wrapper_fixpt_fil_mex.mki
echo OMPLINKFLAGS= >> noise_cancel_wrapper_fixpt_fil_mex.mki
echo EMC_COMPILER=lcc64>> noise_cancel_wrapper_fixpt_fil_mex.mki
echo EMC_CONFIG=optim>> noise_cancel_wrapper_fixpt_fil_mex.mki
"F:\Softwares\MATLAB2017\MATLAB2017\bin\win64\gmake" -B -f noise_cancel_wrapper_fixpt_fil_mex.mk
