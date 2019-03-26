/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * noise_cancel_wrapper_fixpt_fil.h
 *
 * Code generation for function 'noise_cancel_wrapper_fixpt_fil'
 *
 */

#ifndef NOISE_CANCEL_WRAPPER_FIXPT_FIL_H
#define NOISE_CANCEL_WRAPPER_FIXPT_FIL_H

/* Include files */
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "mwmathutil.h"
#include "tmwtypes.h"
#include "mex.h"
#include "emlrt.h"
#include "rtwtypes.h"
#include "noise_cancel_wrapper_fixpt_fil_types.h"

/* Function Declarations */
extern void noise_cancel_wrapper_fixpt_fil(const emlrtStack *sp, const real_T s
  [100], const real_T n[100], real_T e[90], real_T *W, real_T bhat[90]);

#endif

/* End of code generation (noise_cancel_wrapper_fixpt_fil.h) */
