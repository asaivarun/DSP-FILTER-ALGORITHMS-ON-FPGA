/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * noise_cancel_fixpt_fil.h
 *
 * Code generation for function 'noise_cancel_fixpt_fil'
 *
 */

#ifndef NOISE_CANCEL_FIXPT_FIL_H
#define NOISE_CANCEL_FIXPT_FIL_H

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
extern void initialized_not_empty_init(void);
extern void noise_cancel_fixpt_fil(const emlrtStack *sp, const int16_T s[100],
  const int16_T n[100], const int16_T e[90], int16_T W, const int16_T bhat[90],
  int16_T ref_e[90], int16_T *ref_W, int16_T ref_bhat[90]);
extern void noise_cancel_fixpt_fil_init(void);

#endif

/* End of code generation (noise_cancel_fixpt_fil.h) */
