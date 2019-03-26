/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * noise_cancel_fixpt.h
 *
 * Code generation for function 'noise_cancel_fixpt'
 *
 */

#ifndef NOISE_CANCEL_FIXPT_H
#define NOISE_CANCEL_FIXPT_H

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
extern void noise_cancel_fixpt(const emlrtStack *sp, const int16_T s[100], const
  int16_T n[100], int16_T e[90], int16_T *W, int16_T bhat[90]);

#endif

/* End of code generation (noise_cancel_fixpt.h) */
