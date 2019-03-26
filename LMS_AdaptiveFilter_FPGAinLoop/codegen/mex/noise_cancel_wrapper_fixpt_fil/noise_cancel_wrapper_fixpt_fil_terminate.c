/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * noise_cancel_wrapper_fixpt_fil_terminate.c
 *
 * Code generation for function 'noise_cancel_wrapper_fixpt_fil_terminate'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "noise_cancel_wrapper_fixpt_fil.h"
#include "noise_cancel_wrapper_fixpt_fil_terminate.h"
#include "_coder_noise_cancel_wrapper_fixpt_fil_mex.h"
#include "noise_cancel_wrapper_fixpt_fil_data.h"

/* Function Definitions */
void noise_cancel_wrapper_fixpt_fil_atexit(void)
{
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  mexFunctionCreateRootTLS();
  st.tls = emlrtRootTLSGlobal;
  emlrtEnterRtStackR2012b(&st);
  emlrtLeaveRtStackR2012b(&st);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
  emlrtDestroyArray(&eml_mx);
  emlrtDestroyArray(&b_eml_mx);
  emlrtDestroyArray(&c_eml_mx);
}

void noise_cancel_wrapper_fixpt_fil_terminate(void)
{
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  st.tls = emlrtRootTLSGlobal;
  emlrtLeaveRtStackR2012b(&st);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

/* End of code generation (noise_cancel_wrapper_fixpt_fil_terminate.c) */
