/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * noise_cancel_fixpt_fil.c
 *
 * Code generation for function 'noise_cancel_fixpt_fil'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "noise_cancel_wrapper_fixpt_fil.h"
#include "noise_cancel_fixpt_fil.h"
#include "noise_cancel_fixpt.h"
#include "noise_cancel_wrapper_fixpt_fil_data.h"

/* Variable Definitions */
static emlrtRSInfo b_emlrtRSI = { 21,  /* lineNo */
  "noise_cancel_fixpt_fil",            /* fcnName */
  "C:\\Users\\admin\\Desktop\\bhavesh\\codegen\\noise_cancel\\fil\\noise_cancel_fixpt_fil.m"/* pathName */
};

static emlrtMCInfo b_emlrtMCI = { 787, /* lineNo */
  1,                                   /* colNo */
  "noise_cancel_fixpt_fil",            /* fName */
  "C:\\Users\\admin\\Desktop\\bhavesh\\codegen\\noise_cancel\\fil\\noise_cancel_fixpt_fil.m"/* pName */
};

static emlrtMCInfo c_emlrtMCI = { 790, /* lineNo */
  8,                                   /* colNo */
  "noise_cancel_fixpt_fil",            /* fName */
  "C:\\Users\\admin\\Desktop\\bhavesh\\codegen\\noise_cancel\\fil\\noise_cancel_fixpt_fil.m"/* pName */
};

static emlrtMCInfo d_emlrtMCI = { 792, /* lineNo */
  5,                                   /* colNo */
  "noise_cancel_fixpt_fil",            /* fName */
  "C:\\Users\\admin\\Desktop\\bhavesh\\codegen\\noise_cancel\\fil\\noise_cancel_fixpt_fil.m"/* pName */
};

static emlrtMCInfo e_emlrtMCI = { 797, /* lineNo */
  1,                                   /* colNo */
  "noise_cancel_fixpt_fil",            /* fName */
  "C:\\Users\\admin\\Desktop\\bhavesh\\codegen\\noise_cancel\\fil\\noise_cancel_fixpt_fil.m"/* pName */
};

static emlrtMCInfo f_emlrtMCI = { 798, /* lineNo */
  1,                                   /* colNo */
  "noise_cancel_fixpt_fil",            /* fName */
  "C:\\Users\\admin\\Desktop\\bhavesh\\codegen\\noise_cancel\\fil\\noise_cancel_fixpt_fil.m"/* pName */
};

static emlrtMCInfo g_emlrtMCI = { 799, /* lineNo */
  1,                                   /* colNo */
  "noise_cancel_fixpt_fil",            /* fName */
  "C:\\Users\\admin\\Desktop\\bhavesh\\codegen\\noise_cancel\\fil\\noise_cancel_fixpt_fil.m"/* pName */
};

static emlrtMCInfo h_emlrtMCI = { 802, /* lineNo */
  1,                                   /* colNo */
  "noise_cancel_fixpt_fil",            /* fName */
  "C:\\Users\\admin\\Desktop\\bhavesh\\codegen\\noise_cancel\\fil\\noise_cancel_fixpt_fil.m"/* pName */
};

static emlrtRSInfo c_emlrtRSI = { 787, /* lineNo */
  "noise_cancel_fixpt_fil",            /* fcnName */
  "C:\\Users\\admin\\Desktop\\bhavesh\\codegen\\noise_cancel\\fil\\noise_cancel_fixpt_fil.m"/* pathName */
};

static emlrtRSInfo d_emlrtRSI = { 802, /* lineNo */
  "noise_cancel_fixpt_fil",            /* fcnName */
  "C:\\Users\\admin\\Desktop\\bhavesh\\codegen\\noise_cancel\\fil\\noise_cancel_fixpt_fil.m"/* pathName */
};

static emlrtRSInfo e_emlrtRSI = { 798, /* lineNo */
  "noise_cancel_fixpt_fil",            /* fcnName */
  "C:\\Users\\admin\\Desktop\\bhavesh\\codegen\\noise_cancel\\fil\\noise_cancel_fixpt_fil.m"/* pathName */
};

static emlrtRSInfo f_emlrtRSI = { 799, /* lineNo */
  "noise_cancel_fixpt_fil",            /* fcnName */
  "C:\\Users\\admin\\Desktop\\bhavesh\\codegen\\noise_cancel\\fil\\noise_cancel_fixpt_fil.m"/* pathName */
};

static emlrtRSInfo g_emlrtRSI = { 797, /* lineNo */
  "noise_cancel_fixpt_fil",            /* fcnName */
  "C:\\Users\\admin\\Desktop\\bhavesh\\codegen\\noise_cancel\\fil\\noise_cancel_fixpt_fil.m"/* pathName */
};

static emlrtRSInfo h_emlrtRSI = { 792, /* lineNo */
  "noise_cancel_fixpt_fil",            /* fcnName */
  "C:\\Users\\admin\\Desktop\\bhavesh\\codegen\\noise_cancel\\fil\\noise_cancel_fixpt_fil.m"/* pathName */
};

static emlrtRSInfo i_emlrtRSI = { 790, /* lineNo */
  "noise_cancel_fixpt_fil",            /* fcnName */
  "C:\\Users\\admin\\Desktop\\bhavesh\\codegen\\noise_cancel\\fil\\noise_cancel_fixpt_fil.m"/* pathName */
};

/* Function Declarations */
static const mxArray *b_emlrt_marshallOut(const emlrtStack *sp, const int16_T u);
static const mxArray *c_emlrt_marshallOut(const emlrtStack *sp, const int16_T u
  [90]);
static const mxArray *emlrt_marshallOut(const emlrtStack *sp, const int16_T u);
static void hdlverifier_assert(const emlrtStack *sp, const mxArray *b, const
  mxArray *c, const mxArray *d, emlrtMCInfo *location);
static const mxArray *horzcat(const emlrtStack *sp, const mxArray *b, const
  mxArray *c, const mxArray *d, const mxArray *e, const mxArray *f, const
  mxArray *g, const mxArray *h, const mxArray *i, const mxArray *j, const
  mxArray *k, const mxArray *l, const mxArray *m, const mxArray *n, const
  mxArray *o, const mxArray *p, const mxArray *q, const mxArray *r, const
  mxArray *s, const mxArray *t, const mxArray *u, const mxArray *v, const
  mxArray *w, const mxArray *x, const mxArray *y, const mxArray *ab, const
  mxArray *bb, const mxArray *cb, const mxArray *db, const mxArray *eb, const
  mxArray *fb, const mxArray *gb, const mxArray *hb, const mxArray *ib, const
  mxArray *jb, const mxArray *kb, const mxArray *lb, const mxArray *mb, const
  mxArray *nb, const mxArray *ob, const mxArray *pb, const mxArray *qb, const
  mxArray *rb, const mxArray *sb, const mxArray *tb, const mxArray *ub, const
  mxArray *vb, const mxArray *wb, const mxArray *xb, const mxArray *yb, const
  mxArray *ac, const mxArray *bc, const mxArray *cc, const mxArray *dc, const
  mxArray *ec, const mxArray *fc, const mxArray *gc, const mxArray *hc, const
  mxArray *ic, const mxArray *jc, const mxArray *kc, const mxArray *lc, const
  mxArray *mc, const mxArray *nc, const mxArray *oc, const mxArray *pc, const
  mxArray *qc, const mxArray *rc, const mxArray *sc, const mxArray *tc, const
  mxArray *uc, const mxArray *vc, const mxArray *wc, const mxArray *xc, const
  mxArray *yc, const mxArray *ad, const mxArray *bd, const mxArray *cd, const
  mxArray *dd, const mxArray *ed, const mxArray *fd, const mxArray *gd, const
  mxArray *hd, const mxArray *id, const mxArray *jd, const mxArray *kd, const
  mxArray *ld, const mxArray *md, const mxArray *nd, const mxArray *od, const
  mxArray *pd, emlrtMCInfo *location);
static void localLogData(const emlrtStack *sp, const mxArray *b, const mxArray
  *c, const mxArray *d, const mxArray *e, const mxArray *f, const mxArray *g,
  emlrtMCInfo *location);
static void noise_cancel_fixpt_sysobj_fil(const emlrtStack *sp, const mxArray *b,
  const mxArray *c, const mxArray *d, const mxArray *e, const mxArray *f, const
  mxArray *g, const mxArray *h, const mxArray *i, const mxArray *j, const
  mxArray *k, const mxArray *l, const mxArray *m, const mxArray *n, const
  mxArray *o, const mxArray *p, const mxArray *q, const mxArray *r, const
  mxArray *s, const mxArray *t, const mxArray *u, const mxArray *v, const
  mxArray *w, const mxArray *x, const mxArray *y, const mxArray *ab, const
  mxArray *bb, const mxArray *cb, const mxArray *db, const mxArray *eb, const
  mxArray *fb, const mxArray *gb, const mxArray *hb, const mxArray *ib, const
  mxArray *jb, const mxArray *kb, const mxArray *lb, const mxArray *mb, const
  mxArray *nb, const mxArray *ob, const mxArray *pb, const mxArray *qb, const
  mxArray *rb, const mxArray *sb, const mxArray *tb, const mxArray *ub, const
  mxArray *vb, const mxArray *wb, const mxArray *xb, const mxArray *yb, const
  mxArray *ac, const mxArray *bc, const mxArray *cc, const mxArray *dc, const
  mxArray *ec, const mxArray *fc, const mxArray *gc, const mxArray *hc, const
  mxArray *ic, const mxArray *jc, const mxArray *kc, const mxArray *lc, const
  mxArray *mc, const mxArray *nc, const mxArray *oc, const mxArray *pc, const
  mxArray *qc, const mxArray *rc, const mxArray *sc, const mxArray *tc, const
  mxArray *uc, const mxArray *vc, const mxArray *wc, const mxArray *xc, const
  mxArray *yc, const mxArray *ad, const mxArray *bd, const mxArray *cd, const
  mxArray *dd, const mxArray *ed, const mxArray *fd, const mxArray *gd, const
  mxArray *hd, const mxArray *id, const mxArray *jd, const mxArray *kd, const
  mxArray *ld, const mxArray *md, const mxArray *nd, const mxArray *od, const
  mxArray *pd, const mxArray *qd, const mxArray *rd, const mxArray *sd, const
  mxArray *td, const mxArray *ud, const mxArray *vd, const mxArray *wd, const
  mxArray *xd, const mxArray *yd, const mxArray *ae, const mxArray *be, const
  mxArray *ce, const mxArray *de, const mxArray *ee, const mxArray *fe, const
  mxArray *ge, const mxArray *he, const mxArray *ie, const mxArray *je, const
  mxArray *ke, const mxArray *le, const mxArray *me, const mxArray *ne, const
  mxArray *oe, const mxArray *pe, const mxArray *qe, const mxArray *re, const
  mxArray *se, const mxArray *te, const mxArray *ue, const mxArray *ve, const
  mxArray *we, const mxArray *xe, const mxArray *ye, const mxArray *af, const
  mxArray *bf, const mxArray *cf, const mxArray *df, const mxArray *ef, const
  mxArray *ff, const mxArray *gf, const mxArray *hf, const mxArray *jf, const
  mxArray *kf, const mxArray *lf, const mxArray *mf, const mxArray *nf, const
  mxArray *of, const mxArray *pf, const mxArray *qf, const mxArray *rf, const
  mxArray *sf, const mxArray *tf, const mxArray *uf, const mxArray *vf, const
  mxArray *wf, const mxArray *xf, const mxArray *yf, const mxArray *ag, const
  mxArray *bg, const mxArray *cg, const mxArray *dg, const mxArray *eg, const
  mxArray *fg, const mxArray *gg, const mxArray *hg, const mxArray *ig, const
  mxArray *jg, const mxArray *kg, const mxArray *lg, const mxArray *mg, const
  mxArray *ng, const mxArray *og, const mxArray *pg, const mxArray *qg, const
  mxArray *rg, const mxArray *sg, const mxArray *tg, const mxArray *ug, const
  mxArray *vg, const mxArray *wg, const mxArray *xg, const mxArray *yg, const
  mxArray *ah, const mxArray *bh, const mxArray *ch, const mxArray *dh, const
  mxArray *eh, const mxArray *fh, const mxArray *gh, const mxArray *hh, const
  mxArray *ih, const mxArray *jh, const mxArray *kh, const mxArray *lh, const
  mxArray *mh, const mxArray *nh, const mxArray *oh, const mxArray *ph, const
  mxArray *qh, const mxArray *rh, const mxArray *sh, const mxArray *th, const
  mxArray *uh, const mxArray *vh, const mxArray *wh, const mxArray *xh, const
  mxArray *yh, const mxArray *ai, const mxArray *bi, const mxArray *ci, const
  mxArray *di, const mxArray *ei, const mxArray *fi, const mxArray *gi, const
  mxArray *hi, const mxArray *ii, const mxArray *ji, const mxArray *ki, const
  mxArray *li, const mxArray *mi, const mxArray *ni, const mxArray *oi, const
  mxArray *pi, const mxArray *qi, const mxArray *ri, const mxArray *si, const
  mxArray *ti, const mxArray *ui, const mxArray *vi, const mxArray *wi, const
  mxArray *xi, const mxArray *yi, const mxArray *aj, const mxArray *bj, const
  mxArray *cj, const mxArray *dj, const mxArray *ej, const mxArray *fj, const
  mxArray *gj, const mxArray *hj, const mxArray *ij, const mxArray *jj, const
  mxArray *kj, const mxArray *lj, const mxArray *mj, const mxArray *nj, const
  mxArray *oj, const mxArray *pj, const mxArray *qj, const mxArray *rj, const
  mxArray *sj, const mxArray *tj, const mxArray *uj, const mxArray *vj, const
  mxArray *wj, const mxArray *xj, const mxArray *yj, const mxArray *ak, const
  mxArray *bk, const mxArray *ck, const mxArray *dk, const mxArray *ek, const
  mxArray *fk, const mxArray *gk, const mxArray *hk, const mxArray *ik, const
  mxArray *jk, const mxArray *kk, const mxArray *lk, const mxArray *mk, const
  mxArray *nk, const mxArray *ok, const mxArray *pk, const mxArray *qk, const
  mxArray *rk, const mxArray *sk, const mxArray *tk, const mxArray *uk, const
  mxArray *vk, const mxArray *wk, const mxArray *xk, const mxArray *yk, const
  mxArray *al, const mxArray *bl, const mxArray *cl, const mxArray *dl, const
  mxArray *el, const mxArray *fl, const mxArray *gl, const mxArray *hl, const
  mxArray *il, const mxArray *jl, const mxArray *kl, const mxArray *ll, const
  mxArray *ml, const mxArray *nl, const mxArray *ol, const mxArray *pl, const
  mxArray *ql, const mxArray *rl, const mxArray *sl, const mxArray *tl, const
  mxArray *ul, const mxArray *vl, const mxArray *wl, const mxArray *xl, const
  mxArray *yl, const mxArray *am, const mxArray *bm, const mxArray *cm, const
  mxArray *dm, const mxArray *em, const mxArray *fm, const mxArray *gm, const
  mxArray *hm, const mxArray *im, const mxArray *jm, const mxArray *km, const
  mxArray *lm, const mxArray *mm, const mxArray *nm, const mxArray *om, const
  mxArray *pm, const mxArray *qm, const mxArray *rm, const mxArray *sm, const
  mxArray *tm, const mxArray *um, const mxArray *vm, const mxArray *wm, const
  mxArray *xm, const mxArray *ym, const mxArray *an, const mxArray *bn, const
  mxArray *cn, const mxArray *dn, const mxArray *en, const mxArray *fn, const
  mxArray *gn, const mxArray *hn, const mxArray *in, const mxArray *kn, const
  mxArray *ln, const mxArray *mn, const mxArray *nn, const mxArray *on, const
  mxArray *pn, const mxArray *qn, const mxArray *rn, const mxArray *sn, const
  mxArray *tn, const mxArray *un, const mxArray *vn, const mxArray *wn, const
  mxArray *xn, const mxArray *ao, const mxArray *bo, const mxArray *co, const
  mxArray *eo, const mxArray *fo, const mxArray *go, const mxArray *ho, const
  mxArray *io, const mxArray *jo, const mxArray *ko, const mxArray *lo, const
  mxArray *mo, const mxArray *no, const mxArray *oo, const mxArray *po, const
  mxArray *qo, const mxArray *ro, const mxArray *so, const mxArray *to, const
  mxArray *uo, const mxArray *vo, const mxArray *wo, const mxArray *xo, const
  mxArray *yo, const mxArray *ap, const mxArray *bp, const mxArray *cp, const
  mxArray *dp, const mxArray *ep, const mxArray *fp, const mxArray *gp, const
  mxArray *hp, const mxArray *ip, const mxArray *jp, const mxArray *kp,
  emlrtMCInfo *location, const mxArray **lp, const mxArray **mp, const mxArray **
  np, const mxArray **op, const mxArray **pp, const mxArray **qp, const mxArray **
  rp, const mxArray **tp, const mxArray **up, const mxArray **vp, const mxArray **
  wp, const mxArray **xp, const mxArray **yp, const mxArray **aq, const mxArray **
  bq, const mxArray **cq, const mxArray **dq, const mxArray **eq, const mxArray **
  fq, const mxArray **gq, const mxArray **hq, const mxArray **iq, const mxArray **
  jq, const mxArray **kq, const mxArray **lq, const mxArray **mq, const mxArray **
  nq, const mxArray **oq, const mxArray **pq, const mxArray **qq, const mxArray **
  rq, const mxArray **sq, const mxArray **tq, const mxArray **uq, const mxArray **
  vq, const mxArray **wq, const mxArray **xq, const mxArray **yq, const mxArray **
  ar, const mxArray **br, const mxArray **cr, const mxArray **dr, const mxArray **
  er, const mxArray **fr, const mxArray **gr, const mxArray **hr, const mxArray **
  ir, const mxArray **jr, const mxArray **kr, const mxArray **lr, const mxArray **
  mr, const mxArray **nr, const mxArray **or, const mxArray **pr, const mxArray **
  qr, const mxArray **rr, const mxArray **sr, const mxArray **tr, const mxArray **
  ur, const mxArray **vr, const mxArray **wr, const mxArray **xr, const mxArray **
  yr, const mxArray **as, const mxArray **bs, const mxArray **cs, const mxArray **
  ds, const mxArray **es, const mxArray **fs, const mxArray **gs, const mxArray **
  hs, const mxArray **is, const mxArray **js, const mxArray **ks, const mxArray **
  ls, const mxArray **ms, const mxArray **ns, const mxArray **os, const mxArray **
  ps, const mxArray **qs, const mxArray **rs, const mxArray **ss, const mxArray **
  ts, const mxArray **us, const mxArray **vs, const mxArray **ws, const mxArray **
  xs, const mxArray **ys, const mxArray **at, const mxArray **bt, const mxArray **
  ct, const mxArray **dt, const mxArray **et, const mxArray **ft, const mxArray **
  gt, const mxArray **ht, const mxArray **it, const mxArray **jt, const mxArray **
  kt, const mxArray **lt, const mxArray **mt, const mxArray **nt, const mxArray **
  ot, const mxArray **pt, const mxArray **qt, const mxArray **rt, const mxArray **
  st, const mxArray **tt, const mxArray **ut, const mxArray **vt, const mxArray **
  wt, const mxArray **xt, const mxArray **yt, const mxArray **au, const mxArray **
  bu, const mxArray **cu, const mxArray **du, const mxArray **eu, const mxArray **
  fu, const mxArray **gu, const mxArray **hu, const mxArray **iu, const mxArray **
  ju, const mxArray **ku, const mxArray **lu, const mxArray **mu, const mxArray **
  nu, const mxArray **ou, const mxArray **pu, const mxArray **qu, const mxArray **
  ru, const mxArray **su, const mxArray **tu, const mxArray **uu, const mxArray **
  vu, const mxArray **wu, const mxArray **xu, const mxArray **yu, const mxArray **
  av, const mxArray **bv, const mxArray **cv, const mxArray **dv, const mxArray **
  ev, const mxArray **fv, const mxArray **gv, const mxArray **hv, const mxArray **
  iv, const mxArray **jv, const mxArray **kv, const mxArray **lv, const mxArray **
  mv, const mxArray **nv, const mxArray **ov, const mxArray **pv, const mxArray **
  qv, const mxArray **rv, const mxArray **sv, const mxArray **tv, const mxArray **
  uv, const mxArray **vv, const mxArray **wv, const mxArray **xv, const mxArray **
  yv, const mxArray **aw, const mxArray **bw, const mxArray **cw, const mxArray **
  dw, const mxArray **ew, const mxArray **fw, const mxArray **gw, const mxArray **
  hw, const mxArray **iw, const mxArray **jw, const mxArray **kw, const mxArray **
  lw, const mxArray **mw, const mxArray **nw, const mxArray **ow, const mxArray **
  pw, const mxArray **qw, const mxArray **rw);

/* Function Definitions */
static const mxArray *b_emlrt_marshallOut(const emlrtStack *sp, const int16_T u)
{
  const mxArray *y;
  const mxArray *b_y;
  const mxArray *m2;
  y = NULL;
  b_y = NULL;
  m2 = emlrtCreateNumericMatrix(1, 1, mxINT16_CLASS, mxREAL);
  *(int16_T *)mxGetData(m2) = u;
  emlrtAssign(&b_y, m2);
  emlrtAssign(&y, emlrtCreateFIR2013b(sp, eml_mx, c_eml_mx, "simulinkarray", b_y,
    true, false));
  return y;
}

static const mxArray *c_emlrt_marshallOut(const emlrtStack *sp, const int16_T u
  [90])
{
  const mxArray *y;
  const mxArray *b_y;
  const mxArray *m3;
  static const int32_T iv1[2] = { 1, 90 };

  int16_T *pData;
  int32_T i;
  y = NULL;
  b_y = NULL;
  m3 = emlrtCreateNumericArray(2, iv1, mxINT16_CLASS, mxREAL);
  pData = (int16_T *)mxGetData(m3);
  for (i = 0; i < 90; i++) {
    pData[i] = u[i];
  }

  emlrtAssign(&b_y, m3);
  emlrtAssign(&y, emlrtCreateFIR2013b(sp, eml_mx, b_eml_mx, "simulinkarray", b_y,
    true, false));
  return y;
}

static const mxArray *emlrt_marshallOut(const emlrtStack *sp, const int16_T u)
{
  const mxArray *y;
  const mxArray *b_y;
  const mxArray *m1;
  y = NULL;
  b_y = NULL;
  m1 = emlrtCreateNumericMatrix(1, 1, mxINT16_CLASS, mxREAL);
  *(int16_T *)mxGetData(m1) = u;
  emlrtAssign(&b_y, m1);
  emlrtAssign(&y, emlrtCreateFIR2013b(sp, eml_mx, b_eml_mx, "simulinkarray", b_y,
    true, false));
  return y;
}

static void hdlverifier_assert(const emlrtStack *sp, const mxArray *b, const
  mxArray *c, const mxArray *d, emlrtMCInfo *location)
{
  const mxArray *pArrays[3];
  pArrays[0] = b;
  pArrays[1] = c;
  pArrays[2] = d;
  emlrtCallMATLABR2012b(sp, 0, NULL, 3, pArrays, "hdlverifier.assert", true,
                        location);
}

static const mxArray *horzcat(const emlrtStack *sp, const mxArray *b, const
  mxArray *c, const mxArray *d, const mxArray *e, const mxArray *f, const
  mxArray *g, const mxArray *h, const mxArray *i, const mxArray *j, const
  mxArray *k, const mxArray *l, const mxArray *m, const mxArray *n, const
  mxArray *o, const mxArray *p, const mxArray *q, const mxArray *r, const
  mxArray *s, const mxArray *t, const mxArray *u, const mxArray *v, const
  mxArray *w, const mxArray *x, const mxArray *y, const mxArray *ab, const
  mxArray *bb, const mxArray *cb, const mxArray *db, const mxArray *eb, const
  mxArray *fb, const mxArray *gb, const mxArray *hb, const mxArray *ib, const
  mxArray *jb, const mxArray *kb, const mxArray *lb, const mxArray *mb, const
  mxArray *nb, const mxArray *ob, const mxArray *pb, const mxArray *qb, const
  mxArray *rb, const mxArray *sb, const mxArray *tb, const mxArray *ub, const
  mxArray *vb, const mxArray *wb, const mxArray *xb, const mxArray *yb, const
  mxArray *ac, const mxArray *bc, const mxArray *cc, const mxArray *dc, const
  mxArray *ec, const mxArray *fc, const mxArray *gc, const mxArray *hc, const
  mxArray *ic, const mxArray *jc, const mxArray *kc, const mxArray *lc, const
  mxArray *mc, const mxArray *nc, const mxArray *oc, const mxArray *pc, const
  mxArray *qc, const mxArray *rc, const mxArray *sc, const mxArray *tc, const
  mxArray *uc, const mxArray *vc, const mxArray *wc, const mxArray *xc, const
  mxArray *yc, const mxArray *ad, const mxArray *bd, const mxArray *cd, const
  mxArray *dd, const mxArray *ed, const mxArray *fd, const mxArray *gd, const
  mxArray *hd, const mxArray *id, const mxArray *jd, const mxArray *kd, const
  mxArray *ld, const mxArray *md, const mxArray *nd, const mxArray *od, const
  mxArray *pd, emlrtMCInfo *location)
{
  const mxArray *pArrays[90];
  const mxArray *m8;
  pArrays[0] = b;
  pArrays[1] = c;
  pArrays[2] = d;
  pArrays[3] = e;
  pArrays[4] = f;
  pArrays[5] = g;
  pArrays[6] = h;
  pArrays[7] = i;
  pArrays[8] = j;
  pArrays[9] = k;
  pArrays[10] = l;
  pArrays[11] = m;
  pArrays[12] = n;
  pArrays[13] = o;
  pArrays[14] = p;
  pArrays[15] = q;
  pArrays[16] = r;
  pArrays[17] = s;
  pArrays[18] = t;
  pArrays[19] = u;
  pArrays[20] = v;
  pArrays[21] = w;
  pArrays[22] = x;
  pArrays[23] = y;
  pArrays[24] = ab;
  pArrays[25] = bb;
  pArrays[26] = cb;
  pArrays[27] = db;
  pArrays[28] = eb;
  pArrays[29] = fb;
  pArrays[30] = gb;
  pArrays[31] = hb;
  pArrays[32] = ib;
  pArrays[33] = jb;
  pArrays[34] = kb;
  pArrays[35] = lb;
  pArrays[36] = mb;
  pArrays[37] = nb;
  pArrays[38] = ob;
  pArrays[39] = pb;
  pArrays[40] = qb;
  pArrays[41] = rb;
  pArrays[42] = sb;
  pArrays[43] = tb;
  pArrays[44] = ub;
  pArrays[45] = vb;
  pArrays[46] = wb;
  pArrays[47] = xb;
  pArrays[48] = yb;
  pArrays[49] = ac;
  pArrays[50] = bc;
  pArrays[51] = cc;
  pArrays[52] = dc;
  pArrays[53] = ec;
  pArrays[54] = fc;
  pArrays[55] = gc;
  pArrays[56] = hc;
  pArrays[57] = ic;
  pArrays[58] = jc;
  pArrays[59] = kc;
  pArrays[60] = lc;
  pArrays[61] = mc;
  pArrays[62] = nc;
  pArrays[63] = oc;
  pArrays[64] = pc;
  pArrays[65] = qc;
  pArrays[66] = rc;
  pArrays[67] = sc;
  pArrays[68] = tc;
  pArrays[69] = uc;
  pArrays[70] = vc;
  pArrays[71] = wc;
  pArrays[72] = xc;
  pArrays[73] = yc;
  pArrays[74] = ad;
  pArrays[75] = bd;
  pArrays[76] = cd;
  pArrays[77] = dd;
  pArrays[78] = ed;
  pArrays[79] = fd;
  pArrays[80] = gd;
  pArrays[81] = hd;
  pArrays[82] = id;
  pArrays[83] = jd;
  pArrays[84] = kd;
  pArrays[85] = ld;
  pArrays[86] = md;
  pArrays[87] = nd;
  pArrays[88] = od;
  pArrays[89] = pd;
  return emlrtCallMATLABR2012b(sp, 1, &m8, 90, pArrays, "horzcat", true,
    location);
}

static void localLogData(const emlrtStack *sp, const mxArray *b, const mxArray
  *c, const mxArray *d, const mxArray *e, const mxArray *f, const mxArray *g,
  emlrtMCInfo *location)
{
  const mxArray *pArrays[6];
  pArrays[0] = b;
  pArrays[1] = c;
  pArrays[2] = d;
  pArrays[3] = e;
  pArrays[4] = f;
  pArrays[5] = g;
  emlrtCallMATLABR2012b(sp, 0, NULL, 6, pArrays, "localLogData", true, location);
}

static void noise_cancel_fixpt_sysobj_fil(const emlrtStack *sp, const mxArray *b,
  const mxArray *c, const mxArray *d, const mxArray *e, const mxArray *f, const
  mxArray *g, const mxArray *h, const mxArray *i, const mxArray *j, const
  mxArray *k, const mxArray *l, const mxArray *m, const mxArray *n, const
  mxArray *o, const mxArray *p, const mxArray *q, const mxArray *r, const
  mxArray *s, const mxArray *t, const mxArray *u, const mxArray *v, const
  mxArray *w, const mxArray *x, const mxArray *y, const mxArray *ab, const
  mxArray *bb, const mxArray *cb, const mxArray *db, const mxArray *eb, const
  mxArray *fb, const mxArray *gb, const mxArray *hb, const mxArray *ib, const
  mxArray *jb, const mxArray *kb, const mxArray *lb, const mxArray *mb, const
  mxArray *nb, const mxArray *ob, const mxArray *pb, const mxArray *qb, const
  mxArray *rb, const mxArray *sb, const mxArray *tb, const mxArray *ub, const
  mxArray *vb, const mxArray *wb, const mxArray *xb, const mxArray *yb, const
  mxArray *ac, const mxArray *bc, const mxArray *cc, const mxArray *dc, const
  mxArray *ec, const mxArray *fc, const mxArray *gc, const mxArray *hc, const
  mxArray *ic, const mxArray *jc, const mxArray *kc, const mxArray *lc, const
  mxArray *mc, const mxArray *nc, const mxArray *oc, const mxArray *pc, const
  mxArray *qc, const mxArray *rc, const mxArray *sc, const mxArray *tc, const
  mxArray *uc, const mxArray *vc, const mxArray *wc, const mxArray *xc, const
  mxArray *yc, const mxArray *ad, const mxArray *bd, const mxArray *cd, const
  mxArray *dd, const mxArray *ed, const mxArray *fd, const mxArray *gd, const
  mxArray *hd, const mxArray *id, const mxArray *jd, const mxArray *kd, const
  mxArray *ld, const mxArray *md, const mxArray *nd, const mxArray *od, const
  mxArray *pd, const mxArray *qd, const mxArray *rd, const mxArray *sd, const
  mxArray *td, const mxArray *ud, const mxArray *vd, const mxArray *wd, const
  mxArray *xd, const mxArray *yd, const mxArray *ae, const mxArray *be, const
  mxArray *ce, const mxArray *de, const mxArray *ee, const mxArray *fe, const
  mxArray *ge, const mxArray *he, const mxArray *ie, const mxArray *je, const
  mxArray *ke, const mxArray *le, const mxArray *me, const mxArray *ne, const
  mxArray *oe, const mxArray *pe, const mxArray *qe, const mxArray *re, const
  mxArray *se, const mxArray *te, const mxArray *ue, const mxArray *ve, const
  mxArray *we, const mxArray *xe, const mxArray *ye, const mxArray *af, const
  mxArray *bf, const mxArray *cf, const mxArray *df, const mxArray *ef, const
  mxArray *ff, const mxArray *gf, const mxArray *hf, const mxArray *jf, const
  mxArray *kf, const mxArray *lf, const mxArray *mf, const mxArray *nf, const
  mxArray *of, const mxArray *pf, const mxArray *qf, const mxArray *rf, const
  mxArray *sf, const mxArray *tf, const mxArray *uf, const mxArray *vf, const
  mxArray *wf, const mxArray *xf, const mxArray *yf, const mxArray *ag, const
  mxArray *bg, const mxArray *cg, const mxArray *dg, const mxArray *eg, const
  mxArray *fg, const mxArray *gg, const mxArray *hg, const mxArray *ig, const
  mxArray *jg, const mxArray *kg, const mxArray *lg, const mxArray *mg, const
  mxArray *ng, const mxArray *og, const mxArray *pg, const mxArray *qg, const
  mxArray *rg, const mxArray *sg, const mxArray *tg, const mxArray *ug, const
  mxArray *vg, const mxArray *wg, const mxArray *xg, const mxArray *yg, const
  mxArray *ah, const mxArray *bh, const mxArray *ch, const mxArray *dh, const
  mxArray *eh, const mxArray *fh, const mxArray *gh, const mxArray *hh, const
  mxArray *ih, const mxArray *jh, const mxArray *kh, const mxArray *lh, const
  mxArray *mh, const mxArray *nh, const mxArray *oh, const mxArray *ph, const
  mxArray *qh, const mxArray *rh, const mxArray *sh, const mxArray *th, const
  mxArray *uh, const mxArray *vh, const mxArray *wh, const mxArray *xh, const
  mxArray *yh, const mxArray *ai, const mxArray *bi, const mxArray *ci, const
  mxArray *di, const mxArray *ei, const mxArray *fi, const mxArray *gi, const
  mxArray *hi, const mxArray *ii, const mxArray *ji, const mxArray *ki, const
  mxArray *li, const mxArray *mi, const mxArray *ni, const mxArray *oi, const
  mxArray *pi, const mxArray *qi, const mxArray *ri, const mxArray *si, const
  mxArray *ti, const mxArray *ui, const mxArray *vi, const mxArray *wi, const
  mxArray *xi, const mxArray *yi, const mxArray *aj, const mxArray *bj, const
  mxArray *cj, const mxArray *dj, const mxArray *ej, const mxArray *fj, const
  mxArray *gj, const mxArray *hj, const mxArray *ij, const mxArray *jj, const
  mxArray *kj, const mxArray *lj, const mxArray *mj, const mxArray *nj, const
  mxArray *oj, const mxArray *pj, const mxArray *qj, const mxArray *rj, const
  mxArray *sj, const mxArray *tj, const mxArray *uj, const mxArray *vj, const
  mxArray *wj, const mxArray *xj, const mxArray *yj, const mxArray *ak, const
  mxArray *bk, const mxArray *ck, const mxArray *dk, const mxArray *ek, const
  mxArray *fk, const mxArray *gk, const mxArray *hk, const mxArray *ik, const
  mxArray *jk, const mxArray *kk, const mxArray *lk, const mxArray *mk, const
  mxArray *nk, const mxArray *ok, const mxArray *pk, const mxArray *qk, const
  mxArray *rk, const mxArray *sk, const mxArray *tk, const mxArray *uk, const
  mxArray *vk, const mxArray *wk, const mxArray *xk, const mxArray *yk, const
  mxArray *al, const mxArray *bl, const mxArray *cl, const mxArray *dl, const
  mxArray *el, const mxArray *fl, const mxArray *gl, const mxArray *hl, const
  mxArray *il, const mxArray *jl, const mxArray *kl, const mxArray *ll, const
  mxArray *ml, const mxArray *nl, const mxArray *ol, const mxArray *pl, const
  mxArray *ql, const mxArray *rl, const mxArray *sl, const mxArray *tl, const
  mxArray *ul, const mxArray *vl, const mxArray *wl, const mxArray *xl, const
  mxArray *yl, const mxArray *am, const mxArray *bm, const mxArray *cm, const
  mxArray *dm, const mxArray *em, const mxArray *fm, const mxArray *gm, const
  mxArray *hm, const mxArray *im, const mxArray *jm, const mxArray *km, const
  mxArray *lm, const mxArray *mm, const mxArray *nm, const mxArray *om, const
  mxArray *pm, const mxArray *qm, const mxArray *rm, const mxArray *sm, const
  mxArray *tm, const mxArray *um, const mxArray *vm, const mxArray *wm, const
  mxArray *xm, const mxArray *ym, const mxArray *an, const mxArray *bn, const
  mxArray *cn, const mxArray *dn, const mxArray *en, const mxArray *fn, const
  mxArray *gn, const mxArray *hn, const mxArray *in, const mxArray *kn, const
  mxArray *ln, const mxArray *mn, const mxArray *nn, const mxArray *on, const
  mxArray *pn, const mxArray *qn, const mxArray *rn, const mxArray *sn, const
  mxArray *tn, const mxArray *un, const mxArray *vn, const mxArray *wn, const
  mxArray *xn, const mxArray *ao, const mxArray *bo, const mxArray *co, const
  mxArray *eo, const mxArray *fo, const mxArray *go, const mxArray *ho, const
  mxArray *io, const mxArray *jo, const mxArray *ko, const mxArray *lo, const
  mxArray *mo, const mxArray *no, const mxArray *oo, const mxArray *po, const
  mxArray *qo, const mxArray *ro, const mxArray *so, const mxArray *to, const
  mxArray *uo, const mxArray *vo, const mxArray *wo, const mxArray *xo, const
  mxArray *yo, const mxArray *ap, const mxArray *bp, const mxArray *cp, const
  mxArray *dp, const mxArray *ep, const mxArray *fp, const mxArray *gp, const
  mxArray *hp, const mxArray *ip, const mxArray *jp, const mxArray *kp,
  emlrtMCInfo *location, const mxArray **lp, const mxArray **mp, const mxArray **
  np, const mxArray **op, const mxArray **pp, const mxArray **qp, const mxArray **
  rp, const mxArray **tp, const mxArray **up, const mxArray **vp, const mxArray **
  wp, const mxArray **xp, const mxArray **yp, const mxArray **aq, const mxArray **
  bq, const mxArray **cq, const mxArray **dq, const mxArray **eq, const mxArray **
  fq, const mxArray **gq, const mxArray **hq, const mxArray **iq, const mxArray **
  jq, const mxArray **kq, const mxArray **lq, const mxArray **mq, const mxArray **
  nq, const mxArray **oq, const mxArray **pq, const mxArray **qq, const mxArray **
  rq, const mxArray **sq, const mxArray **tq, const mxArray **uq, const mxArray **
  vq, const mxArray **wq, const mxArray **xq, const mxArray **yq, const mxArray **
  ar, const mxArray **br, const mxArray **cr, const mxArray **dr, const mxArray **
  er, const mxArray **fr, const mxArray **gr, const mxArray **hr, const mxArray **
  ir, const mxArray **jr, const mxArray **kr, const mxArray **lr, const mxArray **
  mr, const mxArray **nr, const mxArray **or, const mxArray **pr, const mxArray **
  qr, const mxArray **rr, const mxArray **sr, const mxArray **tr, const mxArray **
  ur, const mxArray **vr, const mxArray **wr, const mxArray **xr, const mxArray **
  yr, const mxArray **as, const mxArray **bs, const mxArray **cs, const mxArray **
  ds, const mxArray **es, const mxArray **fs, const mxArray **gs, const mxArray **
  hs, const mxArray **is, const mxArray **js, const mxArray **ks, const mxArray **
  ls, const mxArray **ms, const mxArray **ns, const mxArray **os, const mxArray **
  ps, const mxArray **qs, const mxArray **rs, const mxArray **ss, const mxArray **
  ts, const mxArray **us, const mxArray **vs, const mxArray **ws, const mxArray **
  xs, const mxArray **ys, const mxArray **at, const mxArray **bt, const mxArray **
  ct, const mxArray **dt, const mxArray **et, const mxArray **ft, const mxArray **
  gt, const mxArray **ht, const mxArray **it, const mxArray **jt, const mxArray **
  kt, const mxArray **lt, const mxArray **mt, const mxArray **nt, const mxArray **
  ot, const mxArray **pt, const mxArray **qt, const mxArray **rt, const mxArray **
  st, const mxArray **tt, const mxArray **ut, const mxArray **vt, const mxArray **
  wt, const mxArray **xt, const mxArray **yt, const mxArray **au, const mxArray **
  bu, const mxArray **cu, const mxArray **du, const mxArray **eu, const mxArray **
  fu, const mxArray **gu, const mxArray **hu, const mxArray **iu, const mxArray **
  ju, const mxArray **ku, const mxArray **lu, const mxArray **mu, const mxArray **
  nu, const mxArray **ou, const mxArray **pu, const mxArray **qu, const mxArray **
  ru, const mxArray **su, const mxArray **tu, const mxArray **uu, const mxArray **
  vu, const mxArray **wu, const mxArray **xu, const mxArray **yu, const mxArray **
  av, const mxArray **bv, const mxArray **cv, const mxArray **dv, const mxArray **
  ev, const mxArray **fv, const mxArray **gv, const mxArray **hv, const mxArray **
  iv, const mxArray **jv, const mxArray **kv, const mxArray **lv, const mxArray **
  mv, const mxArray **nv, const mxArray **ov, const mxArray **pv, const mxArray **
  qv, const mxArray **rv, const mxArray **sv, const mxArray **tv, const mxArray **
  uv, const mxArray **vv, const mxArray **wv, const mxArray **xv, const mxArray **
  yv, const mxArray **aw, const mxArray **bw, const mxArray **cw, const mxArray **
  dw, const mxArray **ew, const mxArray **fw, const mxArray **gw, const mxArray **
  hw, const mxArray **iw, const mxArray **jw, const mxArray **kw, const mxArray **
  lw, const mxArray **mw, const mxArray **nw, const mxArray **ow, const mxArray **
  pw, const mxArray **qw, const mxArray **rw)
{
  const mxArray *pArrays[381];
  const mxArray *mv0[181];
  pArrays[0] = b;
  pArrays[1] = c;
  pArrays[2] = d;
  pArrays[3] = e;
  pArrays[4] = f;
  pArrays[5] = g;
  pArrays[6] = h;
  pArrays[7] = i;
  pArrays[8] = j;
  pArrays[9] = k;
  pArrays[10] = l;
  pArrays[11] = m;
  pArrays[12] = n;
  pArrays[13] = o;
  pArrays[14] = p;
  pArrays[15] = q;
  pArrays[16] = r;
  pArrays[17] = s;
  pArrays[18] = t;
  pArrays[19] = u;
  pArrays[20] = v;
  pArrays[21] = w;
  pArrays[22] = x;
  pArrays[23] = y;
  pArrays[24] = ab;
  pArrays[25] = bb;
  pArrays[26] = cb;
  pArrays[27] = db;
  pArrays[28] = eb;
  pArrays[29] = fb;
  pArrays[30] = gb;
  pArrays[31] = hb;
  pArrays[32] = ib;
  pArrays[33] = jb;
  pArrays[34] = kb;
  pArrays[35] = lb;
  pArrays[36] = mb;
  pArrays[37] = nb;
  pArrays[38] = ob;
  pArrays[39] = pb;
  pArrays[40] = qb;
  pArrays[41] = rb;
  pArrays[42] = sb;
  pArrays[43] = tb;
  pArrays[44] = ub;
  pArrays[45] = vb;
  pArrays[46] = wb;
  pArrays[47] = xb;
  pArrays[48] = yb;
  pArrays[49] = ac;
  pArrays[50] = bc;
  pArrays[51] = cc;
  pArrays[52] = dc;
  pArrays[53] = ec;
  pArrays[54] = fc;
  pArrays[55] = gc;
  pArrays[56] = hc;
  pArrays[57] = ic;
  pArrays[58] = jc;
  pArrays[59] = kc;
  pArrays[60] = lc;
  pArrays[61] = mc;
  pArrays[62] = nc;
  pArrays[63] = oc;
  pArrays[64] = pc;
  pArrays[65] = qc;
  pArrays[66] = rc;
  pArrays[67] = sc;
  pArrays[68] = tc;
  pArrays[69] = uc;
  pArrays[70] = vc;
  pArrays[71] = wc;
  pArrays[72] = xc;
  pArrays[73] = yc;
  pArrays[74] = ad;
  pArrays[75] = bd;
  pArrays[76] = cd;
  pArrays[77] = dd;
  pArrays[78] = ed;
  pArrays[79] = fd;
  pArrays[80] = gd;
  pArrays[81] = hd;
  pArrays[82] = id;
  pArrays[83] = jd;
  pArrays[84] = kd;
  pArrays[85] = ld;
  pArrays[86] = md;
  pArrays[87] = nd;
  pArrays[88] = od;
  pArrays[89] = pd;
  pArrays[90] = qd;
  pArrays[91] = rd;
  pArrays[92] = sd;
  pArrays[93] = td;
  pArrays[94] = ud;
  pArrays[95] = vd;
  pArrays[96] = wd;
  pArrays[97] = xd;
  pArrays[98] = yd;
  pArrays[99] = ae;
  pArrays[100] = be;
  pArrays[101] = ce;
  pArrays[102] = de;
  pArrays[103] = ee;
  pArrays[104] = fe;
  pArrays[105] = ge;
  pArrays[106] = he;
  pArrays[107] = ie;
  pArrays[108] = je;
  pArrays[109] = ke;
  pArrays[110] = le;
  pArrays[111] = me;
  pArrays[112] = ne;
  pArrays[113] = oe;
  pArrays[114] = pe;
  pArrays[115] = qe;
  pArrays[116] = re;
  pArrays[117] = se;
  pArrays[118] = te;
  pArrays[119] = ue;
  pArrays[120] = ve;
  pArrays[121] = we;
  pArrays[122] = xe;
  pArrays[123] = ye;
  pArrays[124] = af;
  pArrays[125] = bf;
  pArrays[126] = cf;
  pArrays[127] = df;
  pArrays[128] = ef;
  pArrays[129] = ff;
  pArrays[130] = gf;
  pArrays[131] = hf;
  pArrays[132] = jf;
  pArrays[133] = kf;
  pArrays[134] = lf;
  pArrays[135] = mf;
  pArrays[136] = nf;
  pArrays[137] = of;
  pArrays[138] = pf;
  pArrays[139] = qf;
  pArrays[140] = rf;
  pArrays[141] = sf;
  pArrays[142] = tf;
  pArrays[143] = uf;
  pArrays[144] = vf;
  pArrays[145] = wf;
  pArrays[146] = xf;
  pArrays[147] = yf;
  pArrays[148] = ag;
  pArrays[149] = bg;
  pArrays[150] = cg;
  pArrays[151] = dg;
  pArrays[152] = eg;
  pArrays[153] = fg;
  pArrays[154] = gg;
  pArrays[155] = hg;
  pArrays[156] = ig;
  pArrays[157] = jg;
  pArrays[158] = kg;
  pArrays[159] = lg;
  pArrays[160] = mg;
  pArrays[161] = ng;
  pArrays[162] = og;
  pArrays[163] = pg;
  pArrays[164] = qg;
  pArrays[165] = rg;
  pArrays[166] = sg;
  pArrays[167] = tg;
  pArrays[168] = ug;
  pArrays[169] = vg;
  pArrays[170] = wg;
  pArrays[171] = xg;
  pArrays[172] = yg;
  pArrays[173] = ah;
  pArrays[174] = bh;
  pArrays[175] = ch;
  pArrays[176] = dh;
  pArrays[177] = eh;
  pArrays[178] = fh;
  pArrays[179] = gh;
  pArrays[180] = hh;
  pArrays[181] = ih;
  pArrays[182] = jh;
  pArrays[183] = kh;
  pArrays[184] = lh;
  pArrays[185] = mh;
  pArrays[186] = nh;
  pArrays[187] = oh;
  pArrays[188] = ph;
  pArrays[189] = qh;
  pArrays[190] = rh;
  pArrays[191] = sh;
  pArrays[192] = th;
  pArrays[193] = uh;
  pArrays[194] = vh;
  pArrays[195] = wh;
  pArrays[196] = xh;
  pArrays[197] = yh;
  pArrays[198] = ai;
  pArrays[199] = bi;
  pArrays[200] = ci;
  pArrays[201] = di;
  pArrays[202] = ei;
  pArrays[203] = fi;
  pArrays[204] = gi;
  pArrays[205] = hi;
  pArrays[206] = ii;
  pArrays[207] = ji;
  pArrays[208] = ki;
  pArrays[209] = li;
  pArrays[210] = mi;
  pArrays[211] = ni;
  pArrays[212] = oi;
  pArrays[213] = pi;
  pArrays[214] = qi;
  pArrays[215] = ri;
  pArrays[216] = si;
  pArrays[217] = ti;
  pArrays[218] = ui;
  pArrays[219] = vi;
  pArrays[220] = wi;
  pArrays[221] = xi;
  pArrays[222] = yi;
  pArrays[223] = aj;
  pArrays[224] = bj;
  pArrays[225] = cj;
  pArrays[226] = dj;
  pArrays[227] = ej;
  pArrays[228] = fj;
  pArrays[229] = gj;
  pArrays[230] = hj;
  pArrays[231] = ij;
  pArrays[232] = jj;
  pArrays[233] = kj;
  pArrays[234] = lj;
  pArrays[235] = mj;
  pArrays[236] = nj;
  pArrays[237] = oj;
  pArrays[238] = pj;
  pArrays[239] = qj;
  pArrays[240] = rj;
  pArrays[241] = sj;
  pArrays[242] = tj;
  pArrays[243] = uj;
  pArrays[244] = vj;
  pArrays[245] = wj;
  pArrays[246] = xj;
  pArrays[247] = yj;
  pArrays[248] = ak;
  pArrays[249] = bk;
  pArrays[250] = ck;
  pArrays[251] = dk;
  pArrays[252] = ek;
  pArrays[253] = fk;
  pArrays[254] = gk;
  pArrays[255] = hk;
  pArrays[256] = ik;
  pArrays[257] = jk;
  pArrays[258] = kk;
  pArrays[259] = lk;
  pArrays[260] = mk;
  pArrays[261] = nk;
  pArrays[262] = ok;
  pArrays[263] = pk;
  pArrays[264] = qk;
  pArrays[265] = rk;
  pArrays[266] = sk;
  pArrays[267] = tk;
  pArrays[268] = uk;
  pArrays[269] = vk;
  pArrays[270] = wk;
  pArrays[271] = xk;
  pArrays[272] = yk;
  pArrays[273] = al;
  pArrays[274] = bl;
  pArrays[275] = cl;
  pArrays[276] = dl;
  pArrays[277] = el;
  pArrays[278] = fl;
  pArrays[279] = gl;
  pArrays[280] = hl;
  pArrays[281] = il;
  pArrays[282] = jl;
  pArrays[283] = kl;
  pArrays[284] = ll;
  pArrays[285] = ml;
  pArrays[286] = nl;
  pArrays[287] = ol;
  pArrays[288] = pl;
  pArrays[289] = ql;
  pArrays[290] = rl;
  pArrays[291] = sl;
  pArrays[292] = tl;
  pArrays[293] = ul;
  pArrays[294] = vl;
  pArrays[295] = wl;
  pArrays[296] = xl;
  pArrays[297] = yl;
  pArrays[298] = am;
  pArrays[299] = bm;
  pArrays[300] = cm;
  pArrays[301] = dm;
  pArrays[302] = em;
  pArrays[303] = fm;
  pArrays[304] = gm;
  pArrays[305] = hm;
  pArrays[306] = im;
  pArrays[307] = jm;
  pArrays[308] = km;
  pArrays[309] = lm;
  pArrays[310] = mm;
  pArrays[311] = nm;
  pArrays[312] = om;
  pArrays[313] = pm;
  pArrays[314] = qm;
  pArrays[315] = rm;
  pArrays[316] = sm;
  pArrays[317] = tm;
  pArrays[318] = um;
  pArrays[319] = vm;
  pArrays[320] = wm;
  pArrays[321] = xm;
  pArrays[322] = ym;
  pArrays[323] = an;
  pArrays[324] = bn;
  pArrays[325] = cn;
  pArrays[326] = dn;
  pArrays[327] = en;
  pArrays[328] = fn;
  pArrays[329] = gn;
  pArrays[330] = hn;
  pArrays[331] = in;
  pArrays[332] = kn;
  pArrays[333] = ln;
  pArrays[334] = mn;
  pArrays[335] = nn;
  pArrays[336] = on;
  pArrays[337] = pn;
  pArrays[338] = qn;
  pArrays[339] = rn;
  pArrays[340] = sn;
  pArrays[341] = tn;
  pArrays[342] = un;
  pArrays[343] = vn;
  pArrays[344] = wn;
  pArrays[345] = xn;
  pArrays[346] = ao;
  pArrays[347] = bo;
  pArrays[348] = co;
  pArrays[349] = eo;
  pArrays[350] = fo;
  pArrays[351] = go;
  pArrays[352] = ho;
  pArrays[353] = io;
  pArrays[354] = jo;
  pArrays[355] = ko;
  pArrays[356] = lo;
  pArrays[357] = mo;
  pArrays[358] = no;
  pArrays[359] = oo;
  pArrays[360] = po;
  pArrays[361] = qo;
  pArrays[362] = ro;
  pArrays[363] = so;
  pArrays[364] = to;
  pArrays[365] = uo;
  pArrays[366] = vo;
  pArrays[367] = wo;
  pArrays[368] = xo;
  pArrays[369] = yo;
  pArrays[370] = ap;
  pArrays[371] = bp;
  pArrays[372] = cp;
  pArrays[373] = dp;
  pArrays[374] = ep;
  pArrays[375] = fp;
  pArrays[376] = gp;
  pArrays[377] = hp;
  pArrays[378] = ip;
  pArrays[379] = jp;
  pArrays[380] = kp;
  emlrtAssign(lp, emlrtCallMATLABR2012b(sp, 181, &mv0[0], 381, pArrays,
    "noise_cancel_fixpt_sysobj_fil", true, location));
  emlrtAssign(mp, mv0[1]);
  emlrtAssign(np, mv0[2]);
  emlrtAssign(op, mv0[3]);
  emlrtAssign(pp, mv0[4]);
  emlrtAssign(qp, mv0[5]);
  emlrtAssign(rp, mv0[6]);
  emlrtAssign(tp, mv0[7]);
  emlrtAssign(up, mv0[8]);
  emlrtAssign(vp, mv0[9]);
  emlrtAssign(wp, mv0[10]);
  emlrtAssign(xp, mv0[11]);
  emlrtAssign(yp, mv0[12]);
  emlrtAssign(aq, mv0[13]);
  emlrtAssign(bq, mv0[14]);
  emlrtAssign(cq, mv0[15]);
  emlrtAssign(dq, mv0[16]);
  emlrtAssign(eq, mv0[17]);
  emlrtAssign(fq, mv0[18]);
  emlrtAssign(gq, mv0[19]);
  emlrtAssign(hq, mv0[20]);
  emlrtAssign(iq, mv0[21]);
  emlrtAssign(jq, mv0[22]);
  emlrtAssign(kq, mv0[23]);
  emlrtAssign(lq, mv0[24]);
  emlrtAssign(mq, mv0[25]);
  emlrtAssign(nq, mv0[26]);
  emlrtAssign(oq, mv0[27]);
  emlrtAssign(pq, mv0[28]);
  emlrtAssign(qq, mv0[29]);
  emlrtAssign(rq, mv0[30]);
  emlrtAssign(sq, mv0[31]);
  emlrtAssign(tq, mv0[32]);
  emlrtAssign(uq, mv0[33]);
  emlrtAssign(vq, mv0[34]);
  emlrtAssign(wq, mv0[35]);
  emlrtAssign(xq, mv0[36]);
  emlrtAssign(yq, mv0[37]);
  emlrtAssign(ar, mv0[38]);
  emlrtAssign(br, mv0[39]);
  emlrtAssign(cr, mv0[40]);
  emlrtAssign(dr, mv0[41]);
  emlrtAssign(er, mv0[42]);
  emlrtAssign(fr, mv0[43]);
  emlrtAssign(gr, mv0[44]);
  emlrtAssign(hr, mv0[45]);
  emlrtAssign(ir, mv0[46]);
  emlrtAssign(jr, mv0[47]);
  emlrtAssign(kr, mv0[48]);
  emlrtAssign(lr, mv0[49]);
  emlrtAssign(mr, mv0[50]);
  emlrtAssign(nr, mv0[51]);
  emlrtAssign(or, mv0[52]);
  emlrtAssign(pr, mv0[53]);
  emlrtAssign(qr, mv0[54]);
  emlrtAssign(rr, mv0[55]);
  emlrtAssign(sr, mv0[56]);
  emlrtAssign(tr, mv0[57]);
  emlrtAssign(ur, mv0[58]);
  emlrtAssign(vr, mv0[59]);
  emlrtAssign(wr, mv0[60]);
  emlrtAssign(xr, mv0[61]);
  emlrtAssign(yr, mv0[62]);
  emlrtAssign(as, mv0[63]);
  emlrtAssign(bs, mv0[64]);
  emlrtAssign(cs, mv0[65]);
  emlrtAssign(ds, mv0[66]);
  emlrtAssign(es, mv0[67]);
  emlrtAssign(fs, mv0[68]);
  emlrtAssign(gs, mv0[69]);
  emlrtAssign(hs, mv0[70]);
  emlrtAssign(is, mv0[71]);
  emlrtAssign(js, mv0[72]);
  emlrtAssign(ks, mv0[73]);
  emlrtAssign(ls, mv0[74]);
  emlrtAssign(ms, mv0[75]);
  emlrtAssign(ns, mv0[76]);
  emlrtAssign(os, mv0[77]);
  emlrtAssign(ps, mv0[78]);
  emlrtAssign(qs, mv0[79]);
  emlrtAssign(rs, mv0[80]);
  emlrtAssign(ss, mv0[81]);
  emlrtAssign(ts, mv0[82]);
  emlrtAssign(us, mv0[83]);
  emlrtAssign(vs, mv0[84]);
  emlrtAssign(ws, mv0[85]);
  emlrtAssign(xs, mv0[86]);
  emlrtAssign(ys, mv0[87]);
  emlrtAssign(at, mv0[88]);
  emlrtAssign(bt, mv0[89]);
  emlrtAssign(ct, mv0[90]);
  emlrtAssign(dt, mv0[91]);
  emlrtAssign(et, mv0[92]);
  emlrtAssign(ft, mv0[93]);
  emlrtAssign(gt, mv0[94]);
  emlrtAssign(ht, mv0[95]);
  emlrtAssign(it, mv0[96]);
  emlrtAssign(jt, mv0[97]);
  emlrtAssign(kt, mv0[98]);
  emlrtAssign(lt, mv0[99]);
  emlrtAssign(mt, mv0[100]);
  emlrtAssign(nt, mv0[101]);
  emlrtAssign(ot, mv0[102]);
  emlrtAssign(pt, mv0[103]);
  emlrtAssign(qt, mv0[104]);
  emlrtAssign(rt, mv0[105]);
  emlrtAssign(st, mv0[106]);
  emlrtAssign(tt, mv0[107]);
  emlrtAssign(ut, mv0[108]);
  emlrtAssign(vt, mv0[109]);
  emlrtAssign(wt, mv0[110]);
  emlrtAssign(xt, mv0[111]);
  emlrtAssign(yt, mv0[112]);
  emlrtAssign(au, mv0[113]);
  emlrtAssign(bu, mv0[114]);
  emlrtAssign(cu, mv0[115]);
  emlrtAssign(du, mv0[116]);
  emlrtAssign(eu, mv0[117]);
  emlrtAssign(fu, mv0[118]);
  emlrtAssign(gu, mv0[119]);
  emlrtAssign(hu, mv0[120]);
  emlrtAssign(iu, mv0[121]);
  emlrtAssign(ju, mv0[122]);
  emlrtAssign(ku, mv0[123]);
  emlrtAssign(lu, mv0[124]);
  emlrtAssign(mu, mv0[125]);
  emlrtAssign(nu, mv0[126]);
  emlrtAssign(ou, mv0[127]);
  emlrtAssign(pu, mv0[128]);
  emlrtAssign(qu, mv0[129]);
  emlrtAssign(ru, mv0[130]);
  emlrtAssign(su, mv0[131]);
  emlrtAssign(tu, mv0[132]);
  emlrtAssign(uu, mv0[133]);
  emlrtAssign(vu, mv0[134]);
  emlrtAssign(wu, mv0[135]);
  emlrtAssign(xu, mv0[136]);
  emlrtAssign(yu, mv0[137]);
  emlrtAssign(av, mv0[138]);
  emlrtAssign(bv, mv0[139]);
  emlrtAssign(cv, mv0[140]);
  emlrtAssign(dv, mv0[141]);
  emlrtAssign(ev, mv0[142]);
  emlrtAssign(fv, mv0[143]);
  emlrtAssign(gv, mv0[144]);
  emlrtAssign(hv, mv0[145]);
  emlrtAssign(iv, mv0[146]);
  emlrtAssign(jv, mv0[147]);
  emlrtAssign(kv, mv0[148]);
  emlrtAssign(lv, mv0[149]);
  emlrtAssign(mv, mv0[150]);
  emlrtAssign(nv, mv0[151]);
  emlrtAssign(ov, mv0[152]);
  emlrtAssign(pv, mv0[153]);
  emlrtAssign(qv, mv0[154]);
  emlrtAssign(rv, mv0[155]);
  emlrtAssign(sv, mv0[156]);
  emlrtAssign(tv, mv0[157]);
  emlrtAssign(uv, mv0[158]);
  emlrtAssign(vv, mv0[159]);
  emlrtAssign(wv, mv0[160]);
  emlrtAssign(xv, mv0[161]);
  emlrtAssign(yv, mv0[162]);
  emlrtAssign(aw, mv0[163]);
  emlrtAssign(bw, mv0[164]);
  emlrtAssign(cw, mv0[165]);
  emlrtAssign(dw, mv0[166]);
  emlrtAssign(ew, mv0[167]);
  emlrtAssign(fw, mv0[168]);
  emlrtAssign(gw, mv0[169]);
  emlrtAssign(hw, mv0[170]);
  emlrtAssign(iw, mv0[171]);
  emlrtAssign(jw, mv0[172]);
  emlrtAssign(kw, mv0[173]);
  emlrtAssign(lw, mv0[174]);
  emlrtAssign(mw, mv0[175]);
  emlrtAssign(nw, mv0[176]);
  emlrtAssign(ow, mv0[177]);
  emlrtAssign(pw, mv0[178]);
  emlrtAssign(qw, mv0[179]);
  emlrtAssign(rw, mv0[180]);
}

void initialized_not_empty_init(void)
{
}

void noise_cancel_fixpt_fil(const emlrtStack *sp, const int16_T s[100], const
  int16_T n[100], const int16_T e[90], int16_T W, const int16_T bhat[90],
  int16_T ref_e[90], int16_T *ref_W, int16_T ref_bhat[90])
{
  const mxArray *e_110 = NULL;
  const mxArray *e_210 = NULL;
  const mxArray *e_310 = NULL;
  const mxArray *e_410 = NULL;
  const mxArray *e_510 = NULL;
  const mxArray *e_610 = NULL;
  const mxArray *e_710 = NULL;
  const mxArray *e_810 = NULL;
  const mxArray *e_91 = NULL;
  const mxArray *e_101 = NULL;
  const mxArray *e_111 = NULL;
  const mxArray *e_121 = NULL;
  const mxArray *e_131 = NULL;
  const mxArray *e_141 = NULL;
  const mxArray *e_151 = NULL;
  const mxArray *e_161 = NULL;
  const mxArray *e_171 = NULL;
  const mxArray *e_181 = NULL;
  const mxArray *e_191 = NULL;
  const mxArray *e_201 = NULL;
  const mxArray *e_211 = NULL;
  const mxArray *e_221 = NULL;
  const mxArray *e_231 = NULL;
  const mxArray *e_241 = NULL;
  const mxArray *e_251 = NULL;
  const mxArray *e_261 = NULL;
  const mxArray *e_271 = NULL;
  const mxArray *e_281 = NULL;
  const mxArray *e_291 = NULL;
  const mxArray *e_301 = NULL;
  const mxArray *e_311 = NULL;
  const mxArray *e_321 = NULL;
  const mxArray *e_331 = NULL;
  const mxArray *e_341 = NULL;
  const mxArray *e_351 = NULL;
  const mxArray *e_361 = NULL;
  const mxArray *e_371 = NULL;
  const mxArray *e_381 = NULL;
  const mxArray *e_391 = NULL;
  const mxArray *e_401 = NULL;
  const mxArray *e_411 = NULL;
  const mxArray *e_421 = NULL;
  const mxArray *e_431 = NULL;
  const mxArray *e_441 = NULL;
  const mxArray *e_451 = NULL;
  const mxArray *e_461 = NULL;
  const mxArray *e_471 = NULL;
  const mxArray *e_481 = NULL;
  const mxArray *e_491 = NULL;
  const mxArray *e_501 = NULL;
  const mxArray *e_511 = NULL;
  const mxArray *e_521 = NULL;
  const mxArray *e_531 = NULL;
  const mxArray *e_541 = NULL;
  const mxArray *e_551 = NULL;
  const mxArray *e_561 = NULL;
  const mxArray *e_571 = NULL;
  const mxArray *e_581 = NULL;
  const mxArray *e_591 = NULL;
  const mxArray *e_601 = NULL;
  const mxArray *e_611 = NULL;
  const mxArray *e_621 = NULL;
  const mxArray *e_631 = NULL;
  const mxArray *e_641 = NULL;
  const mxArray *e_651 = NULL;
  const mxArray *e_661 = NULL;
  const mxArray *e_671 = NULL;
  const mxArray *e_681 = NULL;
  const mxArray *e_691 = NULL;
  const mxArray *e_701 = NULL;
  const mxArray *e_711 = NULL;
  const mxArray *e_721 = NULL;
  const mxArray *e_731 = NULL;
  const mxArray *e_741 = NULL;
  const mxArray *e_751 = NULL;
  const mxArray *e_761 = NULL;
  const mxArray *e_771 = NULL;
  const mxArray *e_781 = NULL;
  const mxArray *e_791 = NULL;
  const mxArray *e_801 = NULL;
  const mxArray *e_811 = NULL;
  const mxArray *e_821 = NULL;
  const mxArray *e_831 = NULL;
  const mxArray *e_841 = NULL;
  const mxArray *e_851 = NULL;
  const mxArray *e_861 = NULL;
  const mxArray *e_871 = NULL;
  const mxArray *e_881 = NULL;
  const mxArray *e_891 = NULL;
  const mxArray *e_901 = NULL;
  const mxArray *b_W = NULL;
  const mxArray *bhat_110 = NULL;
  const mxArray *bhat_210 = NULL;
  const mxArray *bhat_310 = NULL;
  const mxArray *bhat_410 = NULL;
  const mxArray *bhat_510 = NULL;
  const mxArray *bhat_610 = NULL;
  const mxArray *bhat_710 = NULL;
  const mxArray *bhat_810 = NULL;
  const mxArray *bhat_91 = NULL;
  const mxArray *bhat_101 = NULL;
  const mxArray *bhat_111 = NULL;
  const mxArray *bhat_121 = NULL;
  const mxArray *bhat_131 = NULL;
  const mxArray *bhat_141 = NULL;
  const mxArray *bhat_151 = NULL;
  const mxArray *bhat_161 = NULL;
  const mxArray *bhat_171 = NULL;
  const mxArray *bhat_181 = NULL;
  const mxArray *bhat_191 = NULL;
  const mxArray *bhat_201 = NULL;
  const mxArray *bhat_211 = NULL;
  const mxArray *bhat_221 = NULL;
  const mxArray *bhat_231 = NULL;
  const mxArray *bhat_241 = NULL;
  const mxArray *bhat_251 = NULL;
  const mxArray *bhat_261 = NULL;
  const mxArray *bhat_271 = NULL;
  const mxArray *bhat_281 = NULL;
  const mxArray *bhat_291 = NULL;
  const mxArray *bhat_301 = NULL;
  const mxArray *bhat_311 = NULL;
  const mxArray *bhat_321 = NULL;
  const mxArray *bhat_331 = NULL;
  const mxArray *bhat_341 = NULL;
  const mxArray *bhat_351 = NULL;
  const mxArray *bhat_361 = NULL;
  const mxArray *bhat_371 = NULL;
  const mxArray *bhat_381 = NULL;
  const mxArray *bhat_391 = NULL;
  const mxArray *bhat_401 = NULL;
  const mxArray *bhat_411 = NULL;
  const mxArray *bhat_421 = NULL;
  const mxArray *bhat_431 = NULL;
  const mxArray *bhat_441 = NULL;
  const mxArray *bhat_451 = NULL;
  const mxArray *bhat_461 = NULL;
  const mxArray *bhat_471 = NULL;
  const mxArray *bhat_481 = NULL;
  const mxArray *bhat_491 = NULL;
  const mxArray *bhat_501 = NULL;
  const mxArray *bhat_511 = NULL;
  const mxArray *bhat_521 = NULL;
  const mxArray *bhat_531 = NULL;
  const mxArray *bhat_541 = NULL;
  const mxArray *bhat_551 = NULL;
  const mxArray *bhat_561 = NULL;
  const mxArray *bhat_571 = NULL;
  const mxArray *bhat_581 = NULL;
  const mxArray *bhat_591 = NULL;
  const mxArray *bhat_601 = NULL;
  const mxArray *bhat_611 = NULL;
  const mxArray *bhat_621 = NULL;
  const mxArray *bhat_631 = NULL;
  const mxArray *bhat_641 = NULL;
  const mxArray *bhat_651 = NULL;
  const mxArray *bhat_661 = NULL;
  const mxArray *bhat_671 = NULL;
  const mxArray *bhat_681 = NULL;
  const mxArray *bhat_691 = NULL;
  const mxArray *bhat_701 = NULL;
  const mxArray *bhat_711 = NULL;
  const mxArray *bhat_721 = NULL;
  const mxArray *bhat_731 = NULL;
  const mxArray *bhat_741 = NULL;
  const mxArray *bhat_751 = NULL;
  const mxArray *bhat_761 = NULL;
  const mxArray *bhat_771 = NULL;
  const mxArray *bhat_781 = NULL;
  const mxArray *bhat_791 = NULL;
  const mxArray *bhat_801 = NULL;
  const mxArray *bhat_811 = NULL;
  const mxArray *bhat_821 = NULL;
  const mxArray *bhat_831 = NULL;
  const mxArray *bhat_841 = NULL;
  const mxArray *bhat_851 = NULL;
  const mxArray *bhat_861 = NULL;
  const mxArray *bhat_871 = NULL;
  const mxArray *bhat_881 = NULL;
  const mxArray *bhat_891 = NULL;
  const mxArray *bhat_901 = NULL;
  const mxArray *b_bhat = NULL;
  const mxArray *b_e = NULL;
  const mxArray *y;
  const mxArray *m0;
  static const int32_T iv0[2] = { 1, 4 };

  static const char_T u[4] = { 'b', 'h', 'a', 't' };

  emlrtStack st;
  st.prev = sp;
  st.tls = sp->tls;

  /*  Auto generated function to simulate the generated HDL code using FPGA-in-the-Loop */
  /*   */
  /*  Generated by MATLAB 9.2 and HDL Coder 3.10 */
  /*  Declare persistent variables */
  /*  Initialize persistent variables */
  /*  Call the original MATLAB function to get reference signal */
  st.site = &b_emlrtRSI;
  noise_cancel_fixpt(&st, s, n, ref_e, ref_W, ref_bhat);

  /*  Convert input signals */
  /*  Run FPGA-in-the-Loop */
  st.site = &c_emlrtRSI;
  noise_cancel_fixpt_sysobj_fil(&st, emlrt_marshallOut(&st, s[0]),
    emlrt_marshallOut(&st, s[1]), emlrt_marshallOut(&st, s[2]),
    emlrt_marshallOut(&st, s[3]), emlrt_marshallOut(&st, s[4]),
    emlrt_marshallOut(&st, s[5]), emlrt_marshallOut(&st, s[6]),
    emlrt_marshallOut(&st, s[7]), emlrt_marshallOut(&st, s[8]),
    emlrt_marshallOut(&st, s[9]), emlrt_marshallOut(&st, s[10]),
    emlrt_marshallOut(&st, s[11]), emlrt_marshallOut(&st, s[12]),
    emlrt_marshallOut(&st, s[13]), emlrt_marshallOut(&st, s[14]),
    emlrt_marshallOut(&st, s[15]), emlrt_marshallOut(&st, s[16]),
    emlrt_marshallOut(&st, s[17]), emlrt_marshallOut(&st, s[18]),
    emlrt_marshallOut(&st, s[19]), emlrt_marshallOut(&st, s[20]),
    emlrt_marshallOut(&st, s[21]), emlrt_marshallOut(&st, s[22]),
    emlrt_marshallOut(&st, s[23]), emlrt_marshallOut(&st, s[24]),
    emlrt_marshallOut(&st, s[25]), emlrt_marshallOut(&st, s[26]),
    emlrt_marshallOut(&st, s[27]), emlrt_marshallOut(&st, s[28]),
    emlrt_marshallOut(&st, s[29]), emlrt_marshallOut(&st, s[30]),
    emlrt_marshallOut(&st, s[31]), emlrt_marshallOut(&st, s[32]),
    emlrt_marshallOut(&st, s[33]), emlrt_marshallOut(&st, s[34]),
    emlrt_marshallOut(&st, s[35]), emlrt_marshallOut(&st, s[36]),
    emlrt_marshallOut(&st, s[37]), emlrt_marshallOut(&st, s[38]),
    emlrt_marshallOut(&st, s[39]), emlrt_marshallOut(&st, s[40]),
    emlrt_marshallOut(&st, s[41]), emlrt_marshallOut(&st, s[42]),
    emlrt_marshallOut(&st, s[43]), emlrt_marshallOut(&st, s[44]),
    emlrt_marshallOut(&st, s[45]), emlrt_marshallOut(&st, s[46]),
    emlrt_marshallOut(&st, s[47]), emlrt_marshallOut(&st, s[48]),
    emlrt_marshallOut(&st, s[49]), emlrt_marshallOut(&st, s[50]),
    emlrt_marshallOut(&st, s[51]), emlrt_marshallOut(&st, s[52]),
    emlrt_marshallOut(&st, s[53]), emlrt_marshallOut(&st, s[54]),
    emlrt_marshallOut(&st, s[55]), emlrt_marshallOut(&st, s[56]),
    emlrt_marshallOut(&st, s[57]), emlrt_marshallOut(&st, s[58]),
    emlrt_marshallOut(&st, s[59]), emlrt_marshallOut(&st, s[60]),
    emlrt_marshallOut(&st, s[61]), emlrt_marshallOut(&st, s[62]),
    emlrt_marshallOut(&st, s[63]), emlrt_marshallOut(&st, s[64]),
    emlrt_marshallOut(&st, s[65]), emlrt_marshallOut(&st, s[66]),
    emlrt_marshallOut(&st, s[67]), emlrt_marshallOut(&st, s[68]),
    emlrt_marshallOut(&st, s[69]), emlrt_marshallOut(&st, s[70]),
    emlrt_marshallOut(&st, s[71]), emlrt_marshallOut(&st, s[72]),
    emlrt_marshallOut(&st, s[73]), emlrt_marshallOut(&st, s[74]),
    emlrt_marshallOut(&st, s[75]), emlrt_marshallOut(&st, s[76]),
    emlrt_marshallOut(&st, s[77]), emlrt_marshallOut(&st, s[78]),
    emlrt_marshallOut(&st, s[79]), emlrt_marshallOut(&st, s[80]),
    emlrt_marshallOut(&st, s[81]), emlrt_marshallOut(&st, s[82]),
    emlrt_marshallOut(&st, s[83]), emlrt_marshallOut(&st, s[84]),
    emlrt_marshallOut(&st, s[85]), emlrt_marshallOut(&st, s[86]),
    emlrt_marshallOut(&st, s[87]), emlrt_marshallOut(&st, s[88]),
    emlrt_marshallOut(&st, s[89]), emlrt_marshallOut(&st, s[90]),
    emlrt_marshallOut(&st, s[91]), emlrt_marshallOut(&st, s[92]),
    emlrt_marshallOut(&st, s[93]), emlrt_marshallOut(&st, s[94]),
    emlrt_marshallOut(&st, s[95]), emlrt_marshallOut(&st, s[96]),
    emlrt_marshallOut(&st, s[97]), emlrt_marshallOut(&st, s[98]),
    emlrt_marshallOut(&st, s[99]), b_emlrt_marshallOut(&st, n[0]),
    b_emlrt_marshallOut(&st, n[1]), b_emlrt_marshallOut(&st, n[2]),
    b_emlrt_marshallOut(&st, n[3]), b_emlrt_marshallOut(&st, n[4]),
    b_emlrt_marshallOut(&st, n[5]), b_emlrt_marshallOut(&st, n[6]),
    b_emlrt_marshallOut(&st, n[7]), b_emlrt_marshallOut(&st, n[8]),
    b_emlrt_marshallOut(&st, n[9]), b_emlrt_marshallOut(&st, n[10]),
    b_emlrt_marshallOut(&st, n[11]), b_emlrt_marshallOut(&st, n[12]),
    b_emlrt_marshallOut(&st, n[13]), b_emlrt_marshallOut(&st, n[14]),
    b_emlrt_marshallOut(&st, n[15]), b_emlrt_marshallOut(&st, n[16]),
    b_emlrt_marshallOut(&st, n[17]), b_emlrt_marshallOut(&st, n[18]),
    b_emlrt_marshallOut(&st, n[19]), b_emlrt_marshallOut(&st, n[20]),
    b_emlrt_marshallOut(&st, n[21]), b_emlrt_marshallOut(&st, n[22]),
    b_emlrt_marshallOut(&st, n[23]), b_emlrt_marshallOut(&st, n[24]),
    b_emlrt_marshallOut(&st, n[25]), b_emlrt_marshallOut(&st, n[26]),
    b_emlrt_marshallOut(&st, n[27]), b_emlrt_marshallOut(&st, n[28]),
    b_emlrt_marshallOut(&st, n[29]), b_emlrt_marshallOut(&st, n[30]),
    b_emlrt_marshallOut(&st, n[31]), b_emlrt_marshallOut(&st, n[32]),
    b_emlrt_marshallOut(&st, n[33]), b_emlrt_marshallOut(&st, n[34]),
    b_emlrt_marshallOut(&st, n[35]), b_emlrt_marshallOut(&st, n[36]),
    b_emlrt_marshallOut(&st, n[37]), b_emlrt_marshallOut(&st, n[38]),
    b_emlrt_marshallOut(&st, n[39]), b_emlrt_marshallOut(&st, n[40]),
    b_emlrt_marshallOut(&st, n[41]), b_emlrt_marshallOut(&st, n[42]),
    b_emlrt_marshallOut(&st, n[43]), b_emlrt_marshallOut(&st, n[44]),
    b_emlrt_marshallOut(&st, n[45]), b_emlrt_marshallOut(&st, n[46]),
    b_emlrt_marshallOut(&st, n[47]), b_emlrt_marshallOut(&st, n[48]),
    b_emlrt_marshallOut(&st, n[49]), b_emlrt_marshallOut(&st, n[50]),
    b_emlrt_marshallOut(&st, n[51]), b_emlrt_marshallOut(&st, n[52]),
    b_emlrt_marshallOut(&st, n[53]), b_emlrt_marshallOut(&st, n[54]),
    b_emlrt_marshallOut(&st, n[55]), b_emlrt_marshallOut(&st, n[56]),
    b_emlrt_marshallOut(&st, n[57]), b_emlrt_marshallOut(&st, n[58]),
    b_emlrt_marshallOut(&st, n[59]), b_emlrt_marshallOut(&st, n[60]),
    b_emlrt_marshallOut(&st, n[61]), b_emlrt_marshallOut(&st, n[62]),
    b_emlrt_marshallOut(&st, n[63]), b_emlrt_marshallOut(&st, n[64]),
    b_emlrt_marshallOut(&st, n[65]), b_emlrt_marshallOut(&st, n[66]),
    b_emlrt_marshallOut(&st, n[67]), b_emlrt_marshallOut(&st, n[68]),
    b_emlrt_marshallOut(&st, n[69]), b_emlrt_marshallOut(&st, n[70]),
    b_emlrt_marshallOut(&st, n[71]), b_emlrt_marshallOut(&st, n[72]),
    b_emlrt_marshallOut(&st, n[73]), b_emlrt_marshallOut(&st, n[74]),
    b_emlrt_marshallOut(&st, n[75]), b_emlrt_marshallOut(&st, n[76]),
    b_emlrt_marshallOut(&st, n[77]), b_emlrt_marshallOut(&st, n[78]),
    b_emlrt_marshallOut(&st, n[79]), b_emlrt_marshallOut(&st, n[80]),
    b_emlrt_marshallOut(&st, n[81]), b_emlrt_marshallOut(&st, n[82]),
    b_emlrt_marshallOut(&st, n[83]), b_emlrt_marshallOut(&st, n[84]),
    b_emlrt_marshallOut(&st, n[85]), b_emlrt_marshallOut(&st, n[86]),
    b_emlrt_marshallOut(&st, n[87]), b_emlrt_marshallOut(&st, n[88]),
    b_emlrt_marshallOut(&st, n[89]), b_emlrt_marshallOut(&st, n[90]),
    b_emlrt_marshallOut(&st, n[91]), b_emlrt_marshallOut(&st, n[92]),
    b_emlrt_marshallOut(&st, n[93]), b_emlrt_marshallOut(&st, n[94]),
    b_emlrt_marshallOut(&st, n[95]), b_emlrt_marshallOut(&st, n[96]),
    b_emlrt_marshallOut(&st, n[97]), b_emlrt_marshallOut(&st, n[98]),
    b_emlrt_marshallOut(&st, n[99]), emlrt_marshallOut(&st, e[0]),
    emlrt_marshallOut(&st, e[1]), emlrt_marshallOut(&st, e[2]),
    emlrt_marshallOut(&st, e[3]), emlrt_marshallOut(&st, e[4]),
    emlrt_marshallOut(&st, e[5]), emlrt_marshallOut(&st, e[6]),
    emlrt_marshallOut(&st, e[7]), emlrt_marshallOut(&st, e[8]),
    emlrt_marshallOut(&st, e[9]), emlrt_marshallOut(&st, e[10]),
    emlrt_marshallOut(&st, e[11]), emlrt_marshallOut(&st, e[12]),
    emlrt_marshallOut(&st, e[13]), emlrt_marshallOut(&st, e[14]),
    emlrt_marshallOut(&st, e[15]), emlrt_marshallOut(&st, e[16]),
    emlrt_marshallOut(&st, e[17]), emlrt_marshallOut(&st, e[18]),
    emlrt_marshallOut(&st, e[19]), emlrt_marshallOut(&st, e[20]),
    emlrt_marshallOut(&st, e[21]), emlrt_marshallOut(&st, e[22]),
    emlrt_marshallOut(&st, e[23]), emlrt_marshallOut(&st, e[24]),
    emlrt_marshallOut(&st, e[25]), emlrt_marshallOut(&st, e[26]),
    emlrt_marshallOut(&st, e[27]), emlrt_marshallOut(&st, e[28]),
    emlrt_marshallOut(&st, e[29]), emlrt_marshallOut(&st, e[30]),
    emlrt_marshallOut(&st, e[31]), emlrt_marshallOut(&st, e[32]),
    emlrt_marshallOut(&st, e[33]), emlrt_marshallOut(&st, e[34]),
    emlrt_marshallOut(&st, e[35]), emlrt_marshallOut(&st, e[36]),
    emlrt_marshallOut(&st, e[37]), emlrt_marshallOut(&st, e[38]),
    emlrt_marshallOut(&st, e[39]), emlrt_marshallOut(&st, e[40]),
    emlrt_marshallOut(&st, e[41]), emlrt_marshallOut(&st, e[42]),
    emlrt_marshallOut(&st, e[43]), emlrt_marshallOut(&st, e[44]),
    emlrt_marshallOut(&st, e[45]), emlrt_marshallOut(&st, e[46]),
    emlrt_marshallOut(&st, e[47]), emlrt_marshallOut(&st, e[48]),
    emlrt_marshallOut(&st, e[49]), emlrt_marshallOut(&st, e[50]),
    emlrt_marshallOut(&st, e[51]), emlrt_marshallOut(&st, e[52]),
    emlrt_marshallOut(&st, e[53]), emlrt_marshallOut(&st, e[54]),
    emlrt_marshallOut(&st, e[55]), emlrt_marshallOut(&st, e[56]),
    emlrt_marshallOut(&st, e[57]), emlrt_marshallOut(&st, e[58]),
    emlrt_marshallOut(&st, e[59]), emlrt_marshallOut(&st, e[60]),
    emlrt_marshallOut(&st, e[61]), emlrt_marshallOut(&st, e[62]),
    emlrt_marshallOut(&st, e[63]), emlrt_marshallOut(&st, e[64]),
    emlrt_marshallOut(&st, e[65]), emlrt_marshallOut(&st, e[66]),
    emlrt_marshallOut(&st, e[67]), emlrt_marshallOut(&st, e[68]),
    emlrt_marshallOut(&st, e[69]), emlrt_marshallOut(&st, e[70]),
    emlrt_marshallOut(&st, e[71]), emlrt_marshallOut(&st, e[72]),
    emlrt_marshallOut(&st, e[73]), emlrt_marshallOut(&st, e[74]),
    emlrt_marshallOut(&st, e[75]), emlrt_marshallOut(&st, e[76]),
    emlrt_marshallOut(&st, e[77]), emlrt_marshallOut(&st, e[78]),
    emlrt_marshallOut(&st, e[79]), emlrt_marshallOut(&st, e[80]),
    emlrt_marshallOut(&st, e[81]), emlrt_marshallOut(&st, e[82]),
    emlrt_marshallOut(&st, e[83]), emlrt_marshallOut(&st, e[84]),
    emlrt_marshallOut(&st, e[85]), emlrt_marshallOut(&st, e[86]),
    emlrt_marshallOut(&st, e[87]), emlrt_marshallOut(&st, e[88]),
    emlrt_marshallOut(&st, e[89]), b_emlrt_marshallOut(&st, W),
    emlrt_marshallOut(&st, bhat[0]), emlrt_marshallOut(&st, bhat[1]),
    emlrt_marshallOut(&st, bhat[2]), emlrt_marshallOut(&st, bhat[3]),
    emlrt_marshallOut(&st, bhat[4]), emlrt_marshallOut(&st, bhat[5]),
    emlrt_marshallOut(&st, bhat[6]), emlrt_marshallOut(&st, bhat[7]),
    emlrt_marshallOut(&st, bhat[8]), emlrt_marshallOut(&st, bhat[9]),
    emlrt_marshallOut(&st, bhat[10]), emlrt_marshallOut(&st, bhat[11]),
    emlrt_marshallOut(&st, bhat[12]), emlrt_marshallOut(&st, bhat[13]),
    emlrt_marshallOut(&st, bhat[14]), emlrt_marshallOut(&st, bhat[15]),
    emlrt_marshallOut(&st, bhat[16]), emlrt_marshallOut(&st, bhat[17]),
    emlrt_marshallOut(&st, bhat[18]), emlrt_marshallOut(&st, bhat[19]),
    emlrt_marshallOut(&st, bhat[20]), emlrt_marshallOut(&st, bhat[21]),
    emlrt_marshallOut(&st, bhat[22]), emlrt_marshallOut(&st, bhat[23]),
    emlrt_marshallOut(&st, bhat[24]), emlrt_marshallOut(&st, bhat[25]),
    emlrt_marshallOut(&st, bhat[26]), emlrt_marshallOut(&st, bhat[27]),
    emlrt_marshallOut(&st, bhat[28]), emlrt_marshallOut(&st, bhat[29]),
    emlrt_marshallOut(&st, bhat[30]), emlrt_marshallOut(&st, bhat[31]),
    emlrt_marshallOut(&st, bhat[32]), emlrt_marshallOut(&st, bhat[33]),
    emlrt_marshallOut(&st, bhat[34]), emlrt_marshallOut(&st, bhat[35]),
    emlrt_marshallOut(&st, bhat[36]), emlrt_marshallOut(&st, bhat[37]),
    emlrt_marshallOut(&st, bhat[38]), emlrt_marshallOut(&st, bhat[39]),
    emlrt_marshallOut(&st, bhat[40]), emlrt_marshallOut(&st, bhat[41]),
    emlrt_marshallOut(&st, bhat[42]), emlrt_marshallOut(&st, bhat[43]),
    emlrt_marshallOut(&st, bhat[44]), emlrt_marshallOut(&st, bhat[45]),
    emlrt_marshallOut(&st, bhat[46]), emlrt_marshallOut(&st, bhat[47]),
    emlrt_marshallOut(&st, bhat[48]), emlrt_marshallOut(&st, bhat[49]),
    emlrt_marshallOut(&st, bhat[50]), emlrt_marshallOut(&st, bhat[51]),
    emlrt_marshallOut(&st, bhat[52]), emlrt_marshallOut(&st, bhat[53]),
    emlrt_marshallOut(&st, bhat[54]), emlrt_marshallOut(&st, bhat[55]),
    emlrt_marshallOut(&st, bhat[56]), emlrt_marshallOut(&st, bhat[57]),
    emlrt_marshallOut(&st, bhat[58]), emlrt_marshallOut(&st, bhat[59]),
    emlrt_marshallOut(&st, bhat[60]), emlrt_marshallOut(&st, bhat[61]),
    emlrt_marshallOut(&st, bhat[62]), emlrt_marshallOut(&st, bhat[63]),
    emlrt_marshallOut(&st, bhat[64]), emlrt_marshallOut(&st, bhat[65]),
    emlrt_marshallOut(&st, bhat[66]), emlrt_marshallOut(&st, bhat[67]),
    emlrt_marshallOut(&st, bhat[68]), emlrt_marshallOut(&st, bhat[69]),
    emlrt_marshallOut(&st, bhat[70]), emlrt_marshallOut(&st, bhat[71]),
    emlrt_marshallOut(&st, bhat[72]), emlrt_marshallOut(&st, bhat[73]),
    emlrt_marshallOut(&st, bhat[74]), emlrt_marshallOut(&st, bhat[75]),
    emlrt_marshallOut(&st, bhat[76]), emlrt_marshallOut(&st, bhat[77]),
    emlrt_marshallOut(&st, bhat[78]), emlrt_marshallOut(&st, bhat[79]),
    emlrt_marshallOut(&st, bhat[80]), emlrt_marshallOut(&st, bhat[81]),
    emlrt_marshallOut(&st, bhat[82]), emlrt_marshallOut(&st, bhat[83]),
    emlrt_marshallOut(&st, bhat[84]), emlrt_marshallOut(&st, bhat[85]),
    emlrt_marshallOut(&st, bhat[86]), emlrt_marshallOut(&st, bhat[87]),
    emlrt_marshallOut(&st, bhat[88]), emlrt_marshallOut(&st, bhat[89]),
    &b_emlrtMCI, &e_110, &e_210, &e_310, &e_410, &e_510, &e_610, &e_710, &e_810,
    &e_91, &e_101, &e_111, &e_121, &e_131, &e_141, &e_151, &e_161, &e_171,
    &e_181, &e_191, &e_201, &e_211, &e_221, &e_231, &e_241, &e_251, &e_261,
    &e_271, &e_281, &e_291, &e_301, &e_311, &e_321, &e_331, &e_341, &e_351,
    &e_361, &e_371, &e_381, &e_391, &e_401, &e_411, &e_421, &e_431, &e_441,
    &e_451, &e_461, &e_471, &e_481, &e_491, &e_501, &e_511, &e_521, &e_531,
    &e_541, &e_551, &e_561, &e_571, &e_581, &e_591, &e_601, &e_611, &e_621,
    &e_631, &e_641, &e_651, &e_661, &e_671, &e_681, &e_691, &e_701, &e_711,
    &e_721, &e_731, &e_741, &e_751, &e_761, &e_771, &e_781, &e_791, &e_801,
    &e_811, &e_821, &e_831, &e_841, &e_851, &e_861, &e_871, &e_881, &e_891,
    &e_901, &b_W, &bhat_110, &bhat_210, &bhat_310, &bhat_410, &bhat_510,
    &bhat_610, &bhat_710, &bhat_810, &bhat_91, &bhat_101, &bhat_111, &bhat_121,
    &bhat_131, &bhat_141, &bhat_151, &bhat_161, &bhat_171, &bhat_181, &bhat_191,
    &bhat_201, &bhat_211, &bhat_221, &bhat_231, &bhat_241, &bhat_251, &bhat_261,
    &bhat_271, &bhat_281, &bhat_291, &bhat_301, &bhat_311, &bhat_321, &bhat_331,
    &bhat_341, &bhat_351, &bhat_361, &bhat_371, &bhat_381, &bhat_391, &bhat_401,
    &bhat_411, &bhat_421, &bhat_431, &bhat_441, &bhat_451, &bhat_461, &bhat_471,
    &bhat_481, &bhat_491, &bhat_501, &bhat_511, &bhat_521, &bhat_531, &bhat_541,
    &bhat_551, &bhat_561, &bhat_571, &bhat_581, &bhat_591, &bhat_601, &bhat_611,
    &bhat_621, &bhat_631, &bhat_641, &bhat_651, &bhat_661, &bhat_671, &bhat_681,
    &bhat_691, &bhat_701, &bhat_711, &bhat_721, &bhat_731, &bhat_741, &bhat_751,
    &bhat_761, &bhat_771, &bhat_781, &bhat_791, &bhat_801, &bhat_811, &bhat_821,
    &bhat_831, &bhat_841, &bhat_851, &bhat_861, &bhat_871, &bhat_881, &bhat_891,
    &bhat_901);

  /*  Convert output signals */
  st.site = &i_emlrtRSI;
  emlrtAssign(&b_bhat, horzcat(&st, emlrtAlias(bhat_110), emlrtAlias(bhat_210),
    emlrtAlias(bhat_310), emlrtAlias(bhat_410), emlrtAlias(bhat_510), emlrtAlias
    (bhat_610), emlrtAlias(bhat_710), emlrtAlias(bhat_810), emlrtAlias(bhat_91),
    emlrtAlias(bhat_101), emlrtAlias(bhat_111), emlrtAlias(bhat_121), emlrtAlias
    (bhat_131), emlrtAlias(bhat_141), emlrtAlias(bhat_151), emlrtAlias(bhat_161),
    emlrtAlias(bhat_171), emlrtAlias(bhat_181), emlrtAlias(bhat_191), emlrtAlias
    (bhat_201), emlrtAlias(bhat_211), emlrtAlias(bhat_221), emlrtAlias(bhat_231),
    emlrtAlias(bhat_241), emlrtAlias(bhat_251), emlrtAlias(bhat_261), emlrtAlias
    (bhat_271), emlrtAlias(bhat_281), emlrtAlias(bhat_291), emlrtAlias(bhat_301),
    emlrtAlias(bhat_311), emlrtAlias(bhat_321), emlrtAlias(bhat_331), emlrtAlias
    (bhat_341), emlrtAlias(bhat_351), emlrtAlias(bhat_361), emlrtAlias(bhat_371),
    emlrtAlias(bhat_381), emlrtAlias(bhat_391), emlrtAlias(bhat_401), emlrtAlias
    (bhat_411), emlrtAlias(bhat_421), emlrtAlias(bhat_431), emlrtAlias(bhat_441),
    emlrtAlias(bhat_451), emlrtAlias(bhat_461), emlrtAlias(bhat_471), emlrtAlias
    (bhat_481), emlrtAlias(bhat_491), emlrtAlias(bhat_501), emlrtAlias(bhat_511),
    emlrtAlias(bhat_521), emlrtAlias(bhat_531), emlrtAlias(bhat_541), emlrtAlias
    (bhat_551), emlrtAlias(bhat_561), emlrtAlias(bhat_571), emlrtAlias(bhat_581),
    emlrtAlias(bhat_591), emlrtAlias(bhat_601), emlrtAlias(bhat_611), emlrtAlias
    (bhat_621), emlrtAlias(bhat_631), emlrtAlias(bhat_641), emlrtAlias(bhat_651),
    emlrtAlias(bhat_661), emlrtAlias(bhat_671), emlrtAlias(bhat_681), emlrtAlias
    (bhat_691), emlrtAlias(bhat_701), emlrtAlias(bhat_711), emlrtAlias(bhat_721),
    emlrtAlias(bhat_731), emlrtAlias(bhat_741), emlrtAlias(bhat_751), emlrtAlias
    (bhat_761), emlrtAlias(bhat_771), emlrtAlias(bhat_781), emlrtAlias(bhat_791),
    emlrtAlias(bhat_801), emlrtAlias(bhat_811), emlrtAlias(bhat_821), emlrtAlias
    (bhat_831), emlrtAlias(bhat_841), emlrtAlias(bhat_851), emlrtAlias(bhat_861),
    emlrtAlias(bhat_871), emlrtAlias(bhat_881), emlrtAlias(bhat_891), emlrtAlias
    (bhat_901), &c_emlrtMCI));
  st.site = &h_emlrtRSI;
  emlrtAssign(&b_e, horzcat(&st, emlrtAlias(e_110), emlrtAlias(e_210),
    emlrtAlias(e_310), emlrtAlias(e_410), emlrtAlias(e_510), emlrtAlias(e_610),
    emlrtAlias(e_710), emlrtAlias(e_810), emlrtAlias(e_91), emlrtAlias(e_101),
    emlrtAlias(e_111), emlrtAlias(e_121), emlrtAlias(e_131), emlrtAlias(e_141),
    emlrtAlias(e_151), emlrtAlias(e_161), emlrtAlias(e_171), emlrtAlias(e_181),
    emlrtAlias(e_191), emlrtAlias(e_201), emlrtAlias(e_211), emlrtAlias(e_221),
    emlrtAlias(e_231), emlrtAlias(e_241), emlrtAlias(e_251), emlrtAlias(e_261),
    emlrtAlias(e_271), emlrtAlias(e_281), emlrtAlias(e_291), emlrtAlias(e_301),
    emlrtAlias(e_311), emlrtAlias(e_321), emlrtAlias(e_331), emlrtAlias(e_341),
    emlrtAlias(e_351), emlrtAlias(e_361), emlrtAlias(e_371), emlrtAlias(e_381),
    emlrtAlias(e_391), emlrtAlias(e_401), emlrtAlias(e_411), emlrtAlias(e_421),
    emlrtAlias(e_431), emlrtAlias(e_441), emlrtAlias(e_451), emlrtAlias(e_461),
    emlrtAlias(e_471), emlrtAlias(e_481), emlrtAlias(e_491), emlrtAlias(e_501),
    emlrtAlias(e_511), emlrtAlias(e_521), emlrtAlias(e_531), emlrtAlias(e_541),
    emlrtAlias(e_551), emlrtAlias(e_561), emlrtAlias(e_571), emlrtAlias(e_581),
    emlrtAlias(e_591), emlrtAlias(e_601), emlrtAlias(e_611), emlrtAlias(e_621),
    emlrtAlias(e_631), emlrtAlias(e_641), emlrtAlias(e_651), emlrtAlias(e_661),
    emlrtAlias(e_671), emlrtAlias(e_681), emlrtAlias(e_691), emlrtAlias(e_701),
    emlrtAlias(e_711), emlrtAlias(e_721), emlrtAlias(e_731), emlrtAlias(e_741),
    emlrtAlias(e_751), emlrtAlias(e_761), emlrtAlias(e_771), emlrtAlias(e_781),
    emlrtAlias(e_791), emlrtAlias(e_801), emlrtAlias(e_811), emlrtAlias(e_821),
    emlrtAlias(e_831), emlrtAlias(e_841), emlrtAlias(e_851), emlrtAlias(e_861),
    emlrtAlias(e_871), emlrtAlias(e_881), emlrtAlias(e_891), emlrtAlias(e_901),
    &d_emlrtMCI));

  /*  Verify the FPGA-in-the-Loop output */
  y = NULL;
  m0 = emlrtCreateString1('e');
  emlrtAssign(&y, m0);
  st.site = &g_emlrtRSI;
  hdlverifier_assert(&st, emlrtAlias(b_e), c_emlrt_marshallOut(&st, ref_e), y,
                     &e_emlrtMCI);
  y = NULL;
  m0 = emlrtCreateString1('W');
  emlrtAssign(&y, m0);
  st.site = &e_emlrtRSI;
  hdlverifier_assert(&st, emlrtAlias(b_W), b_emlrt_marshallOut(&st, *ref_W), y,
                     &f_emlrtMCI);
  y = NULL;
  m0 = emlrtCreateCharArray(2, iv0);
  emlrtInitCharArrayR2013a(sp, 4, m0, &u[0]);
  emlrtAssign(&y, m0);
  st.site = &f_emlrtRSI;
  hdlverifier_assert(&st, emlrtAlias(b_bhat), c_emlrt_marshallOut(&st, ref_bhat),
                     y, &g_emlrtMCI);
  st.site = &d_emlrtRSI;
  localLogData(&st, emlrtAlias(b_e), emlrtAlias(b_W), emlrtAlias(b_bhat),
               c_emlrt_marshallOut(&st, ref_e), b_emlrt_marshallOut(&st, *ref_W),
               c_emlrt_marshallOut(&st, ref_bhat), &h_emlrtMCI);
  emlrtDestroyArray(&e_110);
  emlrtDestroyArray(&e_210);
  emlrtDestroyArray(&e_310);
  emlrtDestroyArray(&e_410);
  emlrtDestroyArray(&e_510);
  emlrtDestroyArray(&e_610);
  emlrtDestroyArray(&e_710);
  emlrtDestroyArray(&e_810);
  emlrtDestroyArray(&e_91);
  emlrtDestroyArray(&e_101);
  emlrtDestroyArray(&e_111);
  emlrtDestroyArray(&e_121);
  emlrtDestroyArray(&e_131);
  emlrtDestroyArray(&e_141);
  emlrtDestroyArray(&e_151);
  emlrtDestroyArray(&e_161);
  emlrtDestroyArray(&e_171);
  emlrtDestroyArray(&e_181);
  emlrtDestroyArray(&e_191);
  emlrtDestroyArray(&e_201);
  emlrtDestroyArray(&e_211);
  emlrtDestroyArray(&e_221);
  emlrtDestroyArray(&e_231);
  emlrtDestroyArray(&e_241);
  emlrtDestroyArray(&e_251);
  emlrtDestroyArray(&e_261);
  emlrtDestroyArray(&e_271);
  emlrtDestroyArray(&e_281);
  emlrtDestroyArray(&e_291);
  emlrtDestroyArray(&e_301);
  emlrtDestroyArray(&e_311);
  emlrtDestroyArray(&e_321);
  emlrtDestroyArray(&e_331);
  emlrtDestroyArray(&e_341);
  emlrtDestroyArray(&e_351);
  emlrtDestroyArray(&e_361);
  emlrtDestroyArray(&e_371);
  emlrtDestroyArray(&e_381);
  emlrtDestroyArray(&e_391);
  emlrtDestroyArray(&e_401);
  emlrtDestroyArray(&e_411);
  emlrtDestroyArray(&e_421);
  emlrtDestroyArray(&e_431);
  emlrtDestroyArray(&e_441);
  emlrtDestroyArray(&e_451);
  emlrtDestroyArray(&e_461);
  emlrtDestroyArray(&e_471);
  emlrtDestroyArray(&e_481);
  emlrtDestroyArray(&e_491);
  emlrtDestroyArray(&e_501);
  emlrtDestroyArray(&e_511);
  emlrtDestroyArray(&e_521);
  emlrtDestroyArray(&e_531);
  emlrtDestroyArray(&e_541);
  emlrtDestroyArray(&e_551);
  emlrtDestroyArray(&e_561);
  emlrtDestroyArray(&e_571);
  emlrtDestroyArray(&e_581);
  emlrtDestroyArray(&e_591);
  emlrtDestroyArray(&e_601);
  emlrtDestroyArray(&e_611);
  emlrtDestroyArray(&e_621);
  emlrtDestroyArray(&e_631);
  emlrtDestroyArray(&e_641);
  emlrtDestroyArray(&e_651);
  emlrtDestroyArray(&e_661);
  emlrtDestroyArray(&e_671);
  emlrtDestroyArray(&e_681);
  emlrtDestroyArray(&e_691);
  emlrtDestroyArray(&e_701);
  emlrtDestroyArray(&e_711);
  emlrtDestroyArray(&e_721);
  emlrtDestroyArray(&e_731);
  emlrtDestroyArray(&e_741);
  emlrtDestroyArray(&e_751);
  emlrtDestroyArray(&e_761);
  emlrtDestroyArray(&e_771);
  emlrtDestroyArray(&e_781);
  emlrtDestroyArray(&e_791);
  emlrtDestroyArray(&e_801);
  emlrtDestroyArray(&e_811);
  emlrtDestroyArray(&e_821);
  emlrtDestroyArray(&e_831);
  emlrtDestroyArray(&e_841);
  emlrtDestroyArray(&e_851);
  emlrtDestroyArray(&e_861);
  emlrtDestroyArray(&e_871);
  emlrtDestroyArray(&e_881);
  emlrtDestroyArray(&e_891);
  emlrtDestroyArray(&e_901);
  emlrtDestroyArray(&b_W);
  emlrtDestroyArray(&bhat_110);
  emlrtDestroyArray(&bhat_210);
  emlrtDestroyArray(&bhat_310);
  emlrtDestroyArray(&bhat_410);
  emlrtDestroyArray(&bhat_510);
  emlrtDestroyArray(&bhat_610);
  emlrtDestroyArray(&bhat_710);
  emlrtDestroyArray(&bhat_810);
  emlrtDestroyArray(&bhat_91);
  emlrtDestroyArray(&bhat_101);
  emlrtDestroyArray(&bhat_111);
  emlrtDestroyArray(&bhat_121);
  emlrtDestroyArray(&bhat_131);
  emlrtDestroyArray(&bhat_141);
  emlrtDestroyArray(&bhat_151);
  emlrtDestroyArray(&bhat_161);
  emlrtDestroyArray(&bhat_171);
  emlrtDestroyArray(&bhat_181);
  emlrtDestroyArray(&bhat_191);
  emlrtDestroyArray(&bhat_201);
  emlrtDestroyArray(&bhat_211);
  emlrtDestroyArray(&bhat_221);
  emlrtDestroyArray(&bhat_231);
  emlrtDestroyArray(&bhat_241);
  emlrtDestroyArray(&bhat_251);
  emlrtDestroyArray(&bhat_261);
  emlrtDestroyArray(&bhat_271);
  emlrtDestroyArray(&bhat_281);
  emlrtDestroyArray(&bhat_291);
  emlrtDestroyArray(&bhat_301);
  emlrtDestroyArray(&bhat_311);
  emlrtDestroyArray(&bhat_321);
  emlrtDestroyArray(&bhat_331);
  emlrtDestroyArray(&bhat_341);
  emlrtDestroyArray(&bhat_351);
  emlrtDestroyArray(&bhat_361);
  emlrtDestroyArray(&bhat_371);
  emlrtDestroyArray(&bhat_381);
  emlrtDestroyArray(&bhat_391);
  emlrtDestroyArray(&bhat_401);
  emlrtDestroyArray(&bhat_411);
  emlrtDestroyArray(&bhat_421);
  emlrtDestroyArray(&bhat_431);
  emlrtDestroyArray(&bhat_441);
  emlrtDestroyArray(&bhat_451);
  emlrtDestroyArray(&bhat_461);
  emlrtDestroyArray(&bhat_471);
  emlrtDestroyArray(&bhat_481);
  emlrtDestroyArray(&bhat_491);
  emlrtDestroyArray(&bhat_501);
  emlrtDestroyArray(&bhat_511);
  emlrtDestroyArray(&bhat_521);
  emlrtDestroyArray(&bhat_531);
  emlrtDestroyArray(&bhat_541);
  emlrtDestroyArray(&bhat_551);
  emlrtDestroyArray(&bhat_561);
  emlrtDestroyArray(&bhat_571);
  emlrtDestroyArray(&bhat_581);
  emlrtDestroyArray(&bhat_591);
  emlrtDestroyArray(&bhat_601);
  emlrtDestroyArray(&bhat_611);
  emlrtDestroyArray(&bhat_621);
  emlrtDestroyArray(&bhat_631);
  emlrtDestroyArray(&bhat_641);
  emlrtDestroyArray(&bhat_651);
  emlrtDestroyArray(&bhat_661);
  emlrtDestroyArray(&bhat_671);
  emlrtDestroyArray(&bhat_681);
  emlrtDestroyArray(&bhat_691);
  emlrtDestroyArray(&bhat_701);
  emlrtDestroyArray(&bhat_711);
  emlrtDestroyArray(&bhat_721);
  emlrtDestroyArray(&bhat_731);
  emlrtDestroyArray(&bhat_741);
  emlrtDestroyArray(&bhat_751);
  emlrtDestroyArray(&bhat_761);
  emlrtDestroyArray(&bhat_771);
  emlrtDestroyArray(&bhat_781);
  emlrtDestroyArray(&bhat_791);
  emlrtDestroyArray(&bhat_801);
  emlrtDestroyArray(&bhat_811);
  emlrtDestroyArray(&bhat_821);
  emlrtDestroyArray(&bhat_831);
  emlrtDestroyArray(&bhat_841);
  emlrtDestroyArray(&bhat_851);
  emlrtDestroyArray(&bhat_861);
  emlrtDestroyArray(&bhat_871);
  emlrtDestroyArray(&bhat_881);
  emlrtDestroyArray(&bhat_891);
  emlrtDestroyArray(&bhat_901);
  emlrtDestroyArray(&b_bhat);
  emlrtDestroyArray(&b_e);
}

void noise_cancel_fixpt_fil_init(void)
{
}

/* End of code generation (noise_cancel_fixpt_fil.c) */
