/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_noise_cancel_wrapper_fixpt_fil_mex.c
 *
 * Code generation for function '_coder_noise_cancel_wrapper_fixpt_fil_mex'
 *
 */

/* Include files */
#include "noise_cancel_wrapper_fixpt_fil.h"
#include "_coder_noise_cancel_wrapper_fixpt_fil_mex.h"
#include "noise_cancel_wrapper_fixpt_fil_terminate.h"
#include "_coder_noise_cancel_wrapper_fixpt_fil_api.h"
#include "noise_cancel_wrapper_fixpt_fil_initialize.h"
#include "noise_cancel_wrapper_fixpt_fil_data.h"

/* Function Declarations */
static void d_noise_cancel_wrapper_fixpt_fi(int32_T nlhs, mxArray *plhs[3],
  int32_T nrhs, const mxArray *prhs[5]);

/* Function Definitions */
static void d_noise_cancel_wrapper_fixpt_fi(int32_T nlhs, mxArray *plhs[3],
  int32_T nrhs, const mxArray *prhs[5])
{
  int32_T n;
  const mxArray *inputs[5];
  const mxArray *outputs[3];
  int32_T b_nlhs;
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  st.tls = emlrtRootTLSGlobal;

  /* Check for proper number of arguments. */
  if (nrhs != 5) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:WrongNumberOfInputs", 5, 12, 5, 4,
                        30, "noise_cancel_wrapper_fixpt_fil");
  }

  if (nlhs > 3) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:TooManyOutputArguments", 3, 4, 30,
                        "noise_cancel_wrapper_fixpt_fil");
  }

  /* Temporary copy for mex inputs. */
  for (n = 0; n < nrhs; n++) {
    inputs[n] = prhs[n];
    if (*emlrtBreakCheckR2012bFlagVar != 0) {
      emlrtBreakCheckR2012b(&st);
    }
  }

  /* Call the function. */
  noise_cancel_wrapper_fixpt_fil_api(inputs, outputs);

  /* Copy over outputs to the caller. */
  if (nlhs < 1) {
    b_nlhs = 1;
  } else {
    b_nlhs = nlhs;
  }

  emlrtReturnArrays(b_nlhs, plhs, outputs);

  /* Module termination. */
  noise_cancel_wrapper_fixpt_fil_terminate();
}

void mexFunction(int32_T nlhs, mxArray *plhs[], int32_T nrhs, const mxArray
                 *prhs[])
{
  mexAtExit(noise_cancel_wrapper_fixpt_fil_atexit);

  /* Initialize the memory manager. */
  /* Module initialization. */
  noise_cancel_wrapper_fixpt_fil_initialize();

  /* Dispatch the entry-point. */
  d_noise_cancel_wrapper_fixpt_fi(nlhs, plhs, nrhs, prhs);
}

emlrtCTX mexFunctionCreateRootTLS(void)
{
  emlrtCreateRootTLS(&emlrtRootTLSGlobal, &emlrtContextGlobal, NULL, 1);
  return emlrtRootTLSGlobal;
}

/* End of code generation (_coder_noise_cancel_wrapper_fixpt_fil_mex.c) */
