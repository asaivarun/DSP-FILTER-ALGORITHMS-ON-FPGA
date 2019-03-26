/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * noise_cancel_wrapper_fixpt_fil.c
 *
 * Code generation for function 'noise_cancel_wrapper_fixpt_fil'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "noise_cancel_wrapper_fixpt_fil.h"
#include "noise_cancel_fixpt_fil.h"

/* Variable Definitions */
static emlrtRSInfo emlrtRSI = { 13,    /* lineNo */
  "noise_cancel_wrapper_fixpt_fil",    /* fcnName */
  "C:\\Users\\admin\\Desktop\\bhavesh\\codegen\\noise_cancel\\fil\\noise_cancel_wrapper_fixpt_fil.m"/* pathName */
};

/* Function Definitions */
void noise_cancel_wrapper_fixpt_fil(const emlrtStack *sp, const real_T s[100],
  const real_T n[100], real_T e[90], real_T *W, real_T bhat[90])
{
  int32_T i;
  real_T d0;
  int16_T i13;
  int16_T b_s[100];
  int32_T i14;
  int16_T b_e[90];
  int16_T b_n[100];
  int16_T b_bhat[90];
  int16_T e_out[90];
  int16_T W_out;
  int16_T bhat_out[90];
  emlrtStack st;
  st.prev = sp;
  st.tls = sp->tls;

  /* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% */
  /*                                                                           % */
  /*            Generated by MATLAB 9.2 and Fixed-Point Designer 5.4           % */
  /*                                                                           % */
  /* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% */
  for (i = 0; i < 100; i++) {
    d0 = muDoubleScalarFloor(s[i] * 131072.0);
    if (muDoubleScalarIsNaN(d0) || muDoubleScalarIsInf(d0)) {
      d0 = 0.0;
    } else {
      d0 = muDoubleScalarRem(d0, 16384.0);
    }

    i13 = (int16_T)d0;
    if ((i13 & 8192) != 0) {
      b_s[i] = (int16_T)(i13 | -8192);
    } else {
      b_s[i] = (int16_T)(i13 & 8191);
    }

    d0 = muDoubleScalarFloor(n[i] * 32768.0);
    if (muDoubleScalarIsNaN(d0) || muDoubleScalarIsInf(d0)) {
      d0 = 0.0;
    } else {
      d0 = muDoubleScalarRem(d0, 16384.0);
    }

    i13 = (int16_T)d0;
    if ((i13 & 8192) != 0) {
      b_n[i] = (int16_T)(i13 | -8192);
    } else {
      b_n[i] = (int16_T)(i13 & 8191);
    }
  }

  for (i = 0; i < 90; i++) {
    d0 = muDoubleScalarFloor(e[i] * 131072.0);
    if (muDoubleScalarIsNaN(d0) || muDoubleScalarIsInf(d0)) {
      d0 = 0.0;
    } else {
      d0 = muDoubleScalarRem(d0, 16384.0);
    }

    i13 = (int16_T)d0;
    if ((i13 & 8192) != 0) {
      b_e[i] = (int16_T)(i13 | -8192);
    } else {
      b_e[i] = (int16_T)(i13 & 8191);
    }

    d0 = muDoubleScalarFloor(bhat[i] * 131072.0);
    if (muDoubleScalarIsNaN(d0) || muDoubleScalarIsInf(d0)) {
      d0 = 0.0;
    } else {
      d0 = muDoubleScalarRem(d0, 16384.0);
    }

    i13 = (int16_T)d0;
    if ((i13 & 8192) != 0) {
      b_bhat[i] = (int16_T)(i13 | -8192);
    } else {
      b_bhat[i] = (int16_T)(i13 & 8191);
    }
  }

  d0 = muDoubleScalarFloor(*W * 32768.0);
  if (muDoubleScalarIsNaN(d0) || muDoubleScalarIsInf(d0)) {
    d0 = 0.0;
  } else {
    d0 = muDoubleScalarRem(d0, 16384.0);
  }

  i13 = (int16_T)d0;
  if ((i13 & 8192) != 0) {
    i14 = (int16_T)(i13 | -8192);
  } else {
    i14 = (int16_T)(i13 & 8191);
  }

  st.site = &emlrtRSI;
  noise_cancel_fixpt_fil(&st, b_s, b_n, b_e, (int16_T)i14, b_bhat, e_out, &W_out,
    bhat_out);
  *W = (real_T)W_out * 3.0517578125E-5;
  for (i = 0; i < 90; i++) {
    e[i] = (real_T)e_out[i] * 7.62939453125E-6;
    bhat[i] = (real_T)bhat_out[i] * 7.62939453125E-6;
  }
}

/* End of code generation (noise_cancel_wrapper_fixpt_fil.c) */
