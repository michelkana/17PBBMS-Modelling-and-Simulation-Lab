#ifndef RTW_HEADER_cardio_v4_h_
#define RTW_HEADER_cardio_v4_h_
#ifndef cardio_v4_COMMON_INCLUDES_
# define cardio_v4_COMMON_INCLUDES_
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include "rtwtypes.h"
#include "simstruc.h"
#include "fixedpoint.h"
#include "raccel.h"
#include "rt_logging.h"
#include "dt_info.h"
#include "ext_work.h"
#include "mwmathutil.h"
#include "rtGetInf.h"
#include "rtGetNaN.h"
#include "rt_nonfinite.h"
#endif

#include "cardio_v4_types.h"
#define MODEL_NAME                     cardio_v4
#define NSAMPLE_TIMES                  (2)
#define NINPUTS                        (0)
#define NOUTPUTS                       (0)
#define NBLOCKIO                       (102)
#define NUM_ZC_EVENTS                  (0)
#ifndef NCSTATES
# define NCSTATES                      (28)
#elif NCSTATES != 28
# error Invalid specification of NCSTATES defined in compiler command
#endif

#ifndef rtmGetDataMapInfo
# define rtmGetDataMapInfo(rtm)        (NULL)
#endif

#ifndef rtmSetDataMapInfo
# define rtmSetDataMapInfo(rtm, val)
#endif

typedef struct {
  real_T Integrator;
  real_T Fcn3;
  real_T Add;
  real_T Divide;
  real_T Add1;
  real_T t;
  real_T Divide_i;
  real_T Add3;
  real_T Add_d;
  real_T Gain;
  real_T Switch;
  real_T Subtract;
  real_T Divide1;
  real_T fac1;
  real_T Integrator_o;
  real_T Add_d4;
  real_T MinMax2;
  real_T Fcn2;
  real_T Add3_f;
  real_T Add5;
  real_T Add8;
  real_T Add_j;
  real_T Add_p;
  real_T Add2;
  real_T Add4;
  real_T Divide_m;
  real_T Add_n;
  real_T Product;
  real_T Add3_n;
  real_T Subtract1;
  real_T Add2_j;
  real_T MinMax1;
  real_T Subtract_p;
  real_T fiap;
  real_T taup;
  real_T Subtract2;
  real_T tauTs;
  real_T tauTv;
  real_T Subtract5;
  real_T tauVuev;
  real_T Subtract3;
  real_T tauVumv;
  real_T Subtract4;
  real_T tauVusv;
  real_T Divide_d;
  real_T Product_p;
  real_T Divide_ix;
  real_T Product_k;
  real_T Divide_g;
  real_T Product_o;
  real_T Gain_l;
  real_T Divide_n;
  real_T Product_a;
  real_T Subtract_a;
  real_T Divide_f;
  real_T Product_n;
  real_T Divide_mg;
  real_T Product_h;
  real_T Divide_iy;
  real_T Product_k0;
  real_T Divide_mf;
  real_T Product_e;
  real_T Divide_b;
  real_T Product_f;
  real_T Divide_l;
  real_T Product_kz;
  real_T Divide_fl;
  real_T Product_e1;
  real_T Divide_im;
  real_T Product_ff;
  real_T Subtract_h;
  real_T Divide_nt;
  real_T Product_nh;
  real_T Subtract_hg;
  real_T Divide2;
  real_T Divide_nd;
  real_T tauc;
  real_T Add11;
  real_T tauRep;
  real_T Add10;
  real_T tauRmp;
  real_T Add9;
  real_T tauRsp;
  real_T Add6;
  real_T Add7;
  real_T tauEmaxlv;
  real_T tauEmaxrv;
  real_T Add2_i;
  real_T Add5_g;
  real_T Add2_jj;
  real_T Add4_l;
  real_T Add7_f;
  real_T Divide_h;
  real_T Divide_j;
  real_T y;
  real_T Divide_b5;
  real_T Divide_e;
  real_T Add1_b;
  real_T Add3_b;
  real_T Add5_l;
  real_T Add1_a;
  boolean_T LogicalOperator;
} BlockIO;

typedef struct {
  struct {
    real_T TimeStampA;
    real_T LastUAtTimeA;
    real_T TimeStampB;
    real_T LastUAtTimeB;
  } Derivative_RWORK;

  struct {
    real_T TimeStampA;
    real_T LastUAtTimeA;
    real_T TimeStampB;
    real_T LastUAtTimeB;
  } Derivative_RWORK_l;

  struct {
    real_T TimeStampA;
    real_T LastUAtTimeA;
    real_T TimeStampB;
    real_T LastUAtTimeB;
  } Derivative_RWORK_o;

  struct {
    void *LoggedData;
  } Scope_PWORK;

  struct {
    void *LoggedData;
  } Scope1_PWORK;

  struct {
    void *LoggedData;
  } Scope10_PWORK;

  struct {
    void *LoggedData;
  } Scope11_PWORK;

  struct {
    void *LoggedData;
  } Scope12_PWORK;

  struct {
    void *LoggedData;
  } Scope13_PWORK;

  struct {
    void *LoggedData;
  } Scope14_PWORK;

  struct {
    void *LoggedData;
  } Scope15_PWORK;

  struct {
    void *LoggedData;
  } Scope16_PWORK;

  struct {
    void *LoggedData;
  } Scope17_PWORK;

  struct {
    void *LoggedData;
  } Scope18_PWORK;

  struct {
    void *LoggedData;
  } Scope19_PWORK;

  struct {
    void *LoggedData;
  } Scope2_PWORK;

  struct {
    void *LoggedData;
  } Scope3_PWORK;

  struct {
    void *LoggedData;
  } Scope4_PWORK;

  struct {
    void *LoggedData;
  } Scope5_PWORK;

  struct {
    void *LoggedData;
  } Scope6_PWORK;

  struct {
    void *LoggedData;
  } Scope7_PWORK;

  struct {
    void *LoggedData;
  } Scope8_PWORK;

  struct {
    void *LoggedData;
  } Scope9_PWORK;

  int_T MinMax2_MODE;
  int_T MinMax1_MODE;
  int8_T Fcn_DWORK1;
  int8_T Fcn2_DWORK1;
  int8_T Fcn_DWORK1_o;
  int8_T Fcn1_DWORK1;
  int8_T Fcn2_DWORK1_k;
  int8_T Fcn1_DWORK1_b;
  int8_T Fcn_DWORK1_f;
  int8_T Fcn_DWORK1_a;
  int8_T Fcn1_DWORK1_h;
  uint8_T is_active_c2_cardio_v4;
  boolean_T RelationalOperator_Mode;
  boolean_T RelationalOperator1_Mode;
  boolean_T Switch_Mode;
  boolean_T Switch_Mode_e;
  boolean_T Switch_Mode_g;
  boolean_T Switch2_Mode;
  boolean_T Switch_Mode_f;
  boolean_T Switch1_Mode;
  boolean_T Switch_Mode_j;
  boolean_T Switch_Mode_c;
  boolean_T Switch2_Mode_p;
  boolean_T Switch1_Mode_d;
  boolean_T Switch_Mode_h;
  boolean_T Switch_Mode_p;
  boolean_T Switch1_Mode_l;
  boolean_T isStable;
  boolean_T doneDoubleBufferReInit;
} D_Work;

typedef struct {
  real_T Integrator_CSTATE;
  real_T Integrator_CSTATE_g;
  real_T Integrator1_CSTATE;
  real_T Integrator1_CSTATE_m;
  real_T Integrator_CSTATE_c;
  real_T Integrator_CSTATE_k;
  real_T fac1_CSTATE;
  real_T Integrator_CSTATE_o;
  real_T Integrator_CSTATE_gu;
  real_T Integrator1_CSTATE_mr;
  real_T Integrator2_CSTATE;
  real_T Integrator_CSTATE_ks;
  real_T Integrator_CSTATE_m;
  real_T Integrator1_CSTATE_j;
  real_T Integrator2_CSTATE_i;
  real_T Integrator_CSTATE_d;
  real_T Integrator_CSTATE_j;
  real_T Integrator_CSTATE_mo;
  real_T Integrator_CSTATE_l;
  real_T Integrator_CSTATE_a;
  real_T Integrator_CSTATE_f;
  real_T Integrator_CSTATE_l2;
  real_T Integrator_CSTATE_jj;
  real_T Integrator_CSTATE_g2;
  real_T Integrator_CSTATE_cn;
  real_T Integrator_CSTATE_h;
  real_T Integrator_CSTATE_n;
  real_T Integrator_CSTATE_e;
} ContinuousStates;

typedef struct {
  real_T Integrator_CSTATE;
  real_T Integrator_CSTATE_g;
  real_T Integrator1_CSTATE;
  real_T Integrator1_CSTATE_m;
  real_T Integrator_CSTATE_c;
  real_T Integrator_CSTATE_k;
  real_T fac1_CSTATE;
  real_T Integrator_CSTATE_o;
  real_T Integrator_CSTATE_gu;
  real_T Integrator1_CSTATE_mr;
  real_T Integrator2_CSTATE;
  real_T Integrator_CSTATE_ks;
  real_T Integrator_CSTATE_m;
  real_T Integrator1_CSTATE_j;
  real_T Integrator2_CSTATE_i;
  real_T Integrator_CSTATE_d;
  real_T Integrator_CSTATE_j;
  real_T Integrator_CSTATE_mo;
  real_T Integrator_CSTATE_l;
  real_T Integrator_CSTATE_a;
  real_T Integrator_CSTATE_f;
  real_T Integrator_CSTATE_l2;
  real_T Integrator_CSTATE_jj;
  real_T Integrator_CSTATE_g2;
  real_T Integrator_CSTATE_cn;
  real_T Integrator_CSTATE_h;
  real_T Integrator_CSTATE_n;
  real_T Integrator_CSTATE_e;
} StateDerivatives;

typedef struct {
  boolean_T Integrator_CSTATE;
  boolean_T Integrator_CSTATE_g;
  boolean_T Integrator1_CSTATE;
  boolean_T Integrator1_CSTATE_m;
  boolean_T Integrator_CSTATE_c;
  boolean_T Integrator_CSTATE_k;
  boolean_T fac1_CSTATE;
  boolean_T Integrator_CSTATE_o;
  boolean_T Integrator_CSTATE_gu;
  boolean_T Integrator1_CSTATE_mr;
  boolean_T Integrator2_CSTATE;
  boolean_T Integrator_CSTATE_ks;
  boolean_T Integrator_CSTATE_m;
  boolean_T Integrator1_CSTATE_j;
  boolean_T Integrator2_CSTATE_i;
  boolean_T Integrator_CSTATE_d;
  boolean_T Integrator_CSTATE_j;
  boolean_T Integrator_CSTATE_mo;
  boolean_T Integrator_CSTATE_l;
  boolean_T Integrator_CSTATE_a;
  boolean_T Integrator_CSTATE_f;
  boolean_T Integrator_CSTATE_l2;
  boolean_T Integrator_CSTATE_jj;
  boolean_T Integrator_CSTATE_g2;
  boolean_T Integrator_CSTATE_cn;
  boolean_T Integrator_CSTATE_h;
  boolean_T Integrator_CSTATE_n;
  boolean_T Integrator_CSTATE_e;
} StateDisabled;

typedef struct {
  real_T RelationalOperator_RelopInput_ZC;
  real_T RelationalOperator1_RelopInput_ZC;
  real_T Switch_SwitchCond_ZC;
  real_T MinMax2_MinmaxInput_ZC;
  real_T MinMax1_MinmaxInput_ZC;
  real_T Switch_SwitchCond_ZC_l;
  real_T Switch_SwitchCond_ZC_g;
  real_T Switch2_SwitchCond_ZC;
  real_T Switch_SwitchCond_ZC_f;
  real_T Switch1_SwitchCond_ZC;
  real_T Switch_SwitchCond_ZC_o;
  real_T Switch_SwitchCond_ZC_of;
  real_T Switch2_SwitchCond_ZC_g;
  real_T Switch1_SwitchCond_ZC_k;
  real_T Switch_SwitchCond_ZC_h;
  real_T Switch_SwitchCond_ZC_m;
  real_T Switch1_SwitchCond_ZC_e;
} ZCSignalValues;

typedef struct {
  ZCSigState RelationalOperator_RelopInput_ZCE;
  ZCSigState RelationalOperator1_RelopInput_ZCE;
  ZCSigState Switch_SwitchCond_ZCE;
  ZCSigState MinMax2_MinmaxInput_ZCE;
  ZCSigState MinMax1_MinmaxInput_ZCE;
  ZCSigState Switch_SwitchCond_ZCE_b;
  ZCSigState Switch_SwitchCond_ZCE_c;
  ZCSigState Switch2_SwitchCond_ZCE;
  ZCSigState Switch_SwitchCond_ZCE_ba;
  ZCSigState Switch1_SwitchCond_ZCE;
  ZCSigState Switch_SwitchCond_ZCE_j;
  ZCSigState Switch_SwitchCond_ZCE_n;
  ZCSigState Switch2_SwitchCond_ZCE_l;
  ZCSigState Switch1_SwitchCond_ZCE_i;
  ZCSigState Switch_SwitchCond_ZCE_e;
  ZCSigState Switch_SwitchCond_ZCE_m;
  ZCSigState Switch1_SwitchCond_ZCE_n;
} PrevZCSigStates;

struct Parameters_ {
  real_T Integrator_IC;
  real_T Constant_Value;
  real_T T0_Value;
  real_T Integrator_IC_j;
  real_T Integrator1_IC;
  real_T n_Value;
  real_T m_Value;
  real_T alpha_Value;
  real_T Emaxlv0_Value;
  real_T Integrator1_IC_h;
  real_T Integrator_IC_h;
  real_T Vulv_Value;
  real_T Constant_Value_e;
  real_T Polv_Value;
  real_T kElv_Value;
  real_T Constant1_Value;
  real_T Gain_Gain;
  real_T kRlv_Value;
  real_T Switch_Threshold;
  real_T fesmax_Value;
  real_T fesinf_Value;
  real_T fes0_Value;
  real_T kes_Value;
  real_T fabmin_Value;
  real_T Pn_Value;
  real_T Integrator_IC_n;
  real_T kab_Value;
  real_T fabmax_Gain;
  real_T Constant_Value_g;
  real_T Wbsp_Gain;
  real_T fac1_IC;
  real_T Wcsp_Gain;
  real_T Integrator_IC_ne;
  real_T Wpsp_Gain;
  real_T thetasp_Value;
  real_T Rsp0_Value;
  real_T Integrator_IC_k;
  real_T Rmp0_Value;
  real_T Integrator1_IC_c;
  real_T Rep0_Value;
  real_T Integrator2_IC;
  real_T Emaxrv0_Value;
  real_T Integrator_IC_hq;
  real_T Vumv0_Value;
  real_T Integrator_IC_kb;
  real_T Vusv0_Value;
  real_T Integrator1_IC_cm;
  real_T Vuev0_Value;
  real_T Integrator2_IC_o;
  real_T Constant_Value_n;
  real_T Cev_Value;
  real_T Vtot_Value;
  real_T Csa_Value;
  real_T Integrator_IC_hl;
  real_T Chp_Value;
  real_T Cbp_Value;
  real_T Cmp_Value;
  real_T Csp_Value;
  real_T Cep_Value;
  real_T Integrator_IC_d;
  real_T Cbv_Value;
  real_T Integrator_IC_jk;
  real_T Chv_Value;
  real_T Integrator_IC_h4;
  real_T Cmv_Value;
  real_T Integrator_IC_ho;
  real_T Csv_Value;
  real_T Integrator_IC_o;
  real_T Cra_Value;
  real_T Integrator_IC_h1;
  real_T Cpa_Value;
  real_T Integrator_IC_a;
  real_T Cpp_Value;
  real_T Integrator_IC_m;
  real_T Cpv_Value;
  real_T Integrator_IC_av;
  real_T Cla_Value;
  real_T Integrator_IC_jj;
  real_T Vusa_Value;
  real_T Vuhp_Value;
  real_T Vump_Value;
  real_T Vusp_Value;
  real_T Vuep_Value;
  real_T Vuhv_Value;
  real_T Vubv_Value;
  real_T Vura_Value;
  real_T Vupa_Value;
  real_T Vupp_Value;
  real_T Vupv_Value;
  real_T Vula_Value;
  real_T Vubp_Value;
  real_T fev0_Value;
  real_T fab0_Value;
  real_T kev_Value;
  real_T fevinf_Gain;
  real_T _Value;
  real_T Wcv_Gain;
  real_T Gain_Gain_a;
  real_T thetav_Value;
  real_T fesmax1_Value;
  real_T fesinf1_Value;
  real_T fes1_Value;
  real_T kes1_Value;
  real_T Wbsh_Gain;
  real_T Wcsh_Gain;
  real_T thetash_Value;
  real_T Vurv_Value;
  real_T Constant_Value_o;
  real_T Porv_Value;
  real_T kErv_Value;
  real_T Constant1_Value_c;
  real_T kRrv_Value;
  real_T Constant_Value_nb;
  real_T Switch_Threshold_j;
  real_T Gap_Value;
  real_T VT_Value;
  real_T taup_Gain;
  real_T _Value_c;
  real_T fesmin_Value;
  real_T Constant_Value_l;
  real_T Switch_Threshold_p;
  real_T GTs_Gain;
  real_T tauTs_Gain;
  real_T GTv_Gain;
  real_T tauTv_Gain;
  real_T _Value_n;
  real_T fesmin_Value_a;
  real_T Switch2_Threshold;
  real_T GVuev_Gain;
  real_T tauVuev_Gain;
  real_T Switch_Threshold_k;
  real_T GVumv_Gain;
  real_T tauVumv_Gain;
  real_T Switch1_Threshold;
  real_T GVusv_Gain;
  real_T tauVusv_Gain;
  real_T Integrator_IC_nk;
  real_T Constant_Value_go;
  real_T Cpa_Value_m;
  real_T Rmv_Value;
  real_T Cmv_Value_k;
  real_T Constant_Value_nn;
  real_T Rsv_Value;
  real_T Constant_Value_p;
  real_T Csv_Value_b;
  real_T Rpv_Value;
  real_T Constant_Value_m;
  real_T Gain_Gain_i;
  real_T Rla_Value;
  real_T Switch_Threshold_m;
  real_T Cla_Value_c;
  real_T Constant_Value_ey;
  real_T Rpa_Value;
  real_T Constant_Value_f;
  real_T Lpa_Value;
  real_T Rpp_Value;
  real_T Constant_Value_c;
  real_T Cpp_Value_o;
  real_T Rpp_Value_i;
  real_T Rpv_Value_b;
  real_T Constant_Value_pe;
  real_T Cpv_Value_i;
  real_T Constant_Value_b;
  real_T Csa_Value_n;
  real_T Integrator_IC_mh;
  real_T Rsa_Value;
  real_T Constant_Value_on;
  real_T Lsa_Value;
  real_T Chp_Value_e;
  real_T Cbp_Value_g;
  real_T Cmp_Value_k;
  real_T Csp_Value_o;
  real_T Cep_Value_o;
  real_T Rhp_Value;
  real_T Rbp_Value;
  real_T Constant_Value_bo;
  real_T Rhp_Value_i;
  real_T Rhv_Value;
  real_T Chv_Value_i;
  real_T Constant_Value_ev;
  real_T Rhp_Value_a;
  real_T Rbv_Value;
  real_T Cbv_Value_g;
  real_T Constant_Value_lt;
  real_T Rhv_Value_c;
  real_T Rbv_Value_m;
  real_T Rmv_Value_p;
  real_T Rsv_Value_h;
  real_T Rev_Value;
  real_T Rra_Value;
  real_T Constant_Value_ms;
  real_T Switch_Threshold_l;
  real_T Constant_Value_k;
  real_T Cra_Value_f;
  real_T tauzb_Gain;
  real_T taupb_Value;
  real_T _Value_l;
  real_T facmax_Value;
  real_T PasO2_Value;
  real_T PasO2n_Value;
  real_T kac_Value;
  real_T facmin_Gain;
  real_T tauc_Gain;
  real_T c_Value;
  real_T fesmin2_Value;
  real_T Constant2_Value;
  real_T Switch2_Threshold_p;
  real_T GRep_Gain;
  real_T tauRep_Gain;
  real_T b_Value;
  real_T fesmin1_Value;
  real_T Constant1_Value_p;
  real_T Switch1_Threshold_e;
  real_T GRmp_Gain;
  real_T tauRmp_Gain;
  real_T a_Value;
  real_T fesmin_Value_d;
  real_T Constant_Value_ch;
  real_T Switch_Threshold_a;
  real_T GRsp_Gain;
  real_T tauRsp_Gain;
  real_T a_Value_e;
  real_T fesmin_Value_n;
  real_T Constant_Value_ei;
  real_T Switch_Threshold_n;
  real_T GEmaxrv_Gain;
  real_T a1_Value;
  real_T fesmin1_Value_d;
  real_T Constant1_Value_l;
  real_T Switch1_Threshold_f;
  real_T GEmaxlv_Gain;
  real_T tauEmaxlv_Gain;
  real_T tauEmaxrv_Gain;
};

extern Parameters rtP;
extern const char *RT_MEMORY_ALLOCATION_ERROR;
extern BlockIO rtB;
extern ContinuousStates rtX;
extern D_Work rtDWork;
extern PrevZCSigStates rtPrevZCSigState;
extern SimStruct *const rtS;
extern const int_T gblNumToFiles;
extern const int_T gblNumFrFiles;
extern const int_T gblNumFrWksBlocks;
extern rtInportTUtable *gblInportTUtables;
extern const char *gblInportFileName;
extern const int_T gblNumRootInportBlks;
extern const int_T gblNumModelInputs;
extern const int_T gblInportDataTypeIdx[];
extern const int_T gblInportDims[];
extern const int_T gblInportComplex[];
extern const int_T gblInportInterpoFlag[];
extern const int_T gblInportContinuous[];

#endif
