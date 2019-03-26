/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_noise_cancel_wrapper_fixpt_fil_api.c
 *
 * Code generation for function '_coder_noise_cancel_wrapper_fixpt_fil_api'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "noise_cancel_wrapper_fixpt_fil.h"
#include "_coder_noise_cancel_wrapper_fixpt_fil_api.h"
#include "noise_cancel_wrapper_fixpt_fil_data.h"

/* Function Declarations */
static real_T (*b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId))[100];
static real_T (*c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *e, const
  char_T *identifier))[90];
static real_T (*d_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId))[90];
static void d_emlrt_marshallOut(const real_T u[90], const mxArray *y);
static real_T e_emlrt_marshallIn(const emlrtStack *sp, const mxArray *W, const
  char_T *identifier);
static const mxArray *e_emlrt_marshallOut(const real_T u);
static real_T (*emlrt_marshallIn(const emlrtStack *sp, const mxArray *s, const
  char_T *identifier))[100];
static real_T f_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId);
static real_T (*g_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[100];
static real_T (*h_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[90];
static real_T i_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId);

/* Function Definitions */
static real_T (*b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId))[100]
{
  real_T (*y)[100];
  y = g_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}
  static real_T (*c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *e,
  const char_T *identifier))[90]
{
  real_T (*y)[90];
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = (const char *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = d_emlrt_marshallIn(sp, emlrtAlias(e), &thisId);
  emlrtDestroyArray(&e);
  return y;
}

static real_T (*d_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId))[90]
{
  real_T (*y)[90];
  y = h_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}
  static void d_emlrt_marshallOut(const real_T u[90], const mxArray *y)
{
  static const int32_T iv2[2] = { 1, 90 };

  mxSetData((mxArray *)y, (void *)&u[0]);
  emlrtSetDimensions((mxArray *)y, iv2, 2);
}

static real_T e_emlrt_marshallIn(const emlrtStack *sp, const mxArray *W, const
  char_T *identifier)
{
  real_T y;
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = (const char *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = f_emlrt_marshallIn(sp, emlrtAlias(W), &thisId);
  emlrtDestroyArray(&W);
  return y;
}

static const mxArray *e_emlrt_marshallOut(const real_T u)
{
  const mxArray *y;
  const mxArray *m4;
  y = NULL;
  m4 = emlrtCreateDoubleScalar(u);
  emlrtAssign(&y, m4);
  return y;
}

static real_T (*emlrt_marshallIn(const emlrtStack *sp, const mxArray *s, const
  char_T *identifier))[100]
{
  real_T (*y)[100];
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = (const char *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = b_emlrt_marshallIn(sp, emlrtAlias(s), &thisId);
  emlrtDestroyArray(&s);
  return y;
}
  static real_T f_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId)
{
  real_T y;
  y = i_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static real_T (*g_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[100]
{
  real_T (*ret)[100];
  static const int32_T dims[1] = { 100 };

  emlrtCheckBuiltInR2012b(sp, msgId, src, "double", false, 1U, dims);
  ret = (real_T (*)[100])mxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}
  static real_T (*h_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[90]
{
  real_T (*ret)[90];
  static const int32_T dims[2] = { 1, 90 };

  emlrtCheckBuiltInR2012b(sp, msgId, src, "double", false, 2U, dims);
  ret = (real_T (*)[90])mxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

static real_T i_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId)
{
  real_T ret;
  static const int32_T dims = 0;
  emlrtCheckBuiltInR2012b(sp, msgId, src, "double", false, 0U, &dims);
  ret = *(real_T *)mxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

void noise_cancel_wrapper_fixpt_fil_api(const mxArray *prhs[5], const mxArray
  *plhs[3])
{
  real_T (*s)[100];
  real_T (*n)[100];
  real_T (*e)[90];
  real_T W;
  real_T (*bhat)[90];
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  st.tls = emlrtRootTLSGlobal;
  prhs[2] = emlrtProtectR2012b(prhs[2], 2, true, -1);
  prhs[4] = emlrtProtectR2012b(prhs[4], 4, true, -1);

  /* Marshall function inputs */
  s = emlrt_marshallIn(&st, emlrtAlias(prhs[0]), "s");
  n = emlrt_marshallIn(&st, emlrtAlias(prhs[1]), "n");
  e = c_emlrt_marshallIn(&st, emlrtAlias(prhs[2]), "e");
  W = e_emlrt_marshallIn(&st, emlrtAliasP(prhs[3]), "W");
  bhat = c_emlrt_marshallIn(&st, emlrtAlias(prhs[4]), "bhat");

  /* Invoke the target function */
  noise_cancel_wrapper_fixpt_fil(&st, *s, *n, *e, &W, *bhat);

  /* Marshall function outputs */
  d_emlrt_marshallOut(*e, prhs[2]);
  plhs[0] = prhs[2];
  plhs[1] = e_emlrt_marshallOut(W);
  d_emlrt_marshallOut(*bhat, prhs[4]);
  plhs[2] = prhs[4];
}

/* End of code generation (_coder_noise_cancel_wrapper_fixpt_fil_api.c) */
