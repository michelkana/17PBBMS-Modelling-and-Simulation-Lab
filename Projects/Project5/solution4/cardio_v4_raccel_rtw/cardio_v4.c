#include <math.h>
#include "cardio_v4.h"
#include "cardio_v4_private.h"
#include "cardio_v4_dt.h"

const int_T gblNumToFiles = 0;
const int_T gblNumFrFiles = 0;
const int_T gblNumFrWksBlocks = 0;

#ifdef RSIM_WITH_SOLVER_MULTITASKING

const boolean_T gbl_raccel_isMultitasking = 1;

#else

const boolean_T gbl_raccel_isMultitasking = 0;

#endif

const boolean_T gbl_raccel_tid01eq = 0;
const int_T gbl_raccel_NumST = 2;
const char_T *gbl_raccel_Version = "7.4  (R2009b)  29-Jun-2009";
void raccel_setup_MMIStateLog(SimStruct* S)
{

#ifdef UseMMIDataLogging

  rt_FillStateSigInfoFromMMI(ssGetRTWLogInfo(S),&ssGetErrorStatus(S));

#endif

}

const int_T gblNumRootInportBlks = 0;
const int_T gblNumModelInputs = 0;
extern rtInportTUtable *gblInportTUtables;
extern const char *gblInportFileName;
const int_T gblInportDataTypeIdx[] = { -1 };

const int_T gblInportDims[] = { -1 } ;

const int_T gblInportComplex[] = { -1 };

const int_T gblInportInterpoFlag[] = { -1 };

const int_T gblInportContinuous[] = { -1 };

#include "simstruc.h"
#include "fixedpoint.h"

BlockIO rtB;
ContinuousStates rtX;
D_Work rtDWork;
static SimStruct model_S;
SimStruct *const rtS = &model_S;
void MdlInitialize(void)
{
  rtX.Integrator_CSTATE = rtP.Integrator_IC;
  rtX.Integrator_CSTATE_g = rtP.Integrator_IC_j;
  rtX.Integrator1_CSTATE = rtP.Integrator1_IC;
  rtDWork.is_active_c2_cardio_v4 = 0U;
  rtX.Integrator1_CSTATE_m = rtP.Integrator1_IC_h;
  rtX.Integrator_CSTATE_c = rtP.Integrator_IC_h;
  rtX.Integrator_CSTATE_k = rtP.Integrator_IC_n;
  rtX.fac1_CSTATE = rtP.fac1_IC;
  rtX.Integrator_CSTATE_o = rtP.Integrator_IC_ne;
  rtX.Integrator_CSTATE_gu = rtP.Integrator_IC_k;
  rtX.Integrator1_CSTATE_mr = rtP.Integrator1_IC_c;
  rtX.Integrator2_CSTATE = rtP.Integrator2_IC;
  rtX.Integrator_CSTATE_ks = rtP.Integrator_IC_hq;
  rtX.Integrator_CSTATE_m = rtP.Integrator_IC_kb;
  rtX.Integrator1_CSTATE_j = rtP.Integrator1_IC_cm;
  rtX.Integrator2_CSTATE_i = rtP.Integrator2_IC_o;
  rtX.Integrator_CSTATE_d = rtP.Integrator_IC_hl;
  rtX.Integrator_CSTATE_j = rtP.Integrator_IC_d;
  rtX.Integrator_CSTATE_mo = rtP.Integrator_IC_jk;
  rtX.Integrator_CSTATE_l = rtP.Integrator_IC_h4;
  rtX.Integrator_CSTATE_a = rtP.Integrator_IC_ho;
  rtX.Integrator_CSTATE_f = rtP.Integrator_IC_o;
  rtX.Integrator_CSTATE_l2 = rtP.Integrator_IC_h1;
  rtX.Integrator_CSTATE_jj = rtP.Integrator_IC_a;
  rtX.Integrator_CSTATE_g2 = rtP.Integrator_IC_m;
  rtX.Integrator_CSTATE_cn = rtP.Integrator_IC_av;
  rtX.Integrator_CSTATE_h = rtP.Integrator_IC_jj;
  rtX.Integrator_CSTATE_n = rtP.Integrator_IC_nk;
  rtDWork.Derivative_RWORK.TimeStampA = rtInf;
  rtDWork.Derivative_RWORK.TimeStampB = rtInf;
  rtDWork.Derivative_RWORK_l.TimeStampA = rtInf;
  rtDWork.Derivative_RWORK_l.TimeStampB = rtInf;
  rtX.Integrator_CSTATE_e = rtP.Integrator_IC_mh;
  rtDWork.Derivative_RWORK_o.TimeStampA = rtInf;
  rtDWork.Derivative_RWORK_o.TimeStampB = rtInf;
}

void MdlStart(void)
{
  rtDWork.Fcn_DWORK1 = 0;
  rtDWork.Fcn2_DWORK1 = 0;
  rtDWork.Fcn_DWORK1_o = 0;
  rtDWork.Fcn1_DWORK1 = 0;
  rtDWork.Fcn2_DWORK1_k = 0;
  rtDWork.Fcn1_DWORK1_b = 0;
  rtDWork.Fcn_DWORK1_f = 0;
  rtDWork.Fcn_DWORK1_a = 0;
  rtDWork.Fcn1_DWORK1_h = 0;
  MdlInitialize();
}

void MdlOutputs(int_T tid)
{
  real_T rtb_deltaTs;
  real_T rtb_deltaTv;
  real_T rtb_Psvlnkou;
  real_T rtb_Integrator2;
  real_T rtb_Integrator;
  real_T rtb_deltaTs_c;
  real_T rtb_deltaTs_m;
  real_T rtb_Integrator_j;
  real_T rtb_Integrator_f;
  real_T rtb_Integrator_i;
  real_T rtb_Integrator_h;
  real_T rtb_Integrator_g;
  real_T rtb_Integrator_o;
  real_T rtb_Integrator_gj;
  real_T rtb_Integrator_e;
  real_T rtb_Integrator_m;
  real_T rtb_Integrator_n;
  real_T rtb_Integrator1;
  real_T rtb_Integrator1_a;
  real_T rtb_Integrator_fj;
  real_T rtb_Switch;
  real_T rtb_Switch_i;
  real_T rtb_Switch1;

  {
    real_T eml_y;
    real_T eml_x;
    real_T rtb_Product_j;
    real_T rtb_Product10;
    real_T rtb_Product11;
    real_T rtb_Product3;
    real_T rtb_Product4;
    real_T rtb_Product5;
    real_T rtb_Product6;
    real_T rtb_Product7;
    real_T rtb_Product8;
    real_T rtb_Product9;
    real_T rtb_Add_hq;
    rtB.Integrator = rtX.Integrator_CSTATE;
    rtb_deltaTs = rtX.Integrator_CSTATE_g;
    rtb_deltaTv = rtX.Integrator1_CSTATE;
    rtb_Integrator1 = (rtP.T0_Value + rtb_deltaTs) + rtb_deltaTv;
    rtB.Fcn3 = 60.0 / rtb_Integrator1;
    if (rtB.Fcn3 < 0.0) {
      eml_y = -muDoubleScalarPower(-rtB.Fcn3, 9.9000000000000004);
    } else {
      eml_y = muDoubleScalarPower(rtB.Fcn3, 9.9000000000000004);
    }

    if (ssIsSampleHit(rtS, 1, 0)) {
      rtB.Add = rtP.n_Value + rtP.m_Value;
    }

    if (ssIsSampleHit(rtS, 1, 0)) {
      rtB.Divide = rtP.alpha_Value * rtP.m_Value / rtP.n_Value;
    }

    rtB.Add1 = (1.0 / (eml_y + 1.0) * 9.3999999999999972E-002 +
                0.18590000000000001) * rtB.Add - rtB.Divide;
    eml_x = rtB.Add1 / 4.2;
    if (eml_x < 0.0) {
      eml_y = -muDoubleScalarPower(-eml_x, 4.2);
    } else {
      eml_y = muDoubleScalarPower(eml_x, 4.2);
    }

    rtb_Switch = 2.2238800152742602E+001 * eml_y;
    rtB.t = ssGetT(rtS);
    eml_y = 60.0 / rtB.Fcn3;
    if (eml_y == 0.0) {
      rtB.y = rtB.t;
    } else if (eml_y == muDoubleScalarFloor(eml_y)) {
      rtB.y = rtB.t - muDoubleScalarFloor(rtB.t / eml_y) * eml_y;
    } else {
      rtB.y = rtB.t / eml_y;
      if (rtB.y < 0.0) {
        eml_x = muDoubleScalarCeil(rtB.y - 0.5);
      } else {
        eml_x = muDoubleScalarFloor(rtB.y + 0.5);
      }

      if (muDoubleScalarAbs(rtB.y - eml_x) <= 2.2204460492503131E-016 *
          muDoubleScalarAbs(rtB.y)) {
        rtB.y = 0.0;
      } else {
        rtB.y = (rtB.y - muDoubleScalarFloor(rtB.y)) * eml_y;
      }
    }

    eml_y = rtB.Add1 - rtB.y;
    if (eml_y < 0.0) {
      eml_x = -muDoubleScalarPower(-eml_y, 2.2000000000000002);
    } else {
      eml_x = muDoubleScalarPower(eml_y, 2.2000000000000002);
    }

    rtb_Integrator1_a = muDoubleScalarPower(rtB.y - rtP.alpha_Value, 2.0) *
      eml_x;
    if (ssIsSampleHit(rtS, 1, 0)) {
      if (ssIsMajorTimeStep(rtS)) {
        rtDWork.RelationalOperator_Mode = (rtB.y >= rtP.alpha_Value);
      }

      if (ssIsMajorTimeStep(rtS)) {
        rtDWork.RelationalOperator1_Mode = (rtB.y <= rtB.Add1);
      }

      rtB.LogicalOperator = (rtDWork.RelationalOperator_Mode &&
        rtDWork.RelationalOperator1_Mode);
    }

    rtB.Divide_i = rtB.LogicalOperator ? rtb_Integrator1_a / rtb_Switch : 0.0;
    rtb_Integrator1_a = rtX.Integrator1_CSTATE_m;
    rtB.Add3 = rtP.Emaxlv0_Value + rtb_Integrator1_a;
    rtb_Switch = rtX.Integrator_CSTATE_c;
    rtB.Add_d = (rtP.Constant_Value_e - rtB.Divide_i) * rtP.Polv_Value *
      (muDoubleScalarExp(rtb_Switch * rtP.kElv_Value) - rtP.Constant1_Value) +
      rtB.Divide_i * rtB.Add3 * (rtb_Switch - rtP.Vulv_Value);
    eml_y = rtB.Add_d - rtB.Integrator;
    rtB.Gain = rtP.Gain_Gain * eml_y;
    rtb_Product_j = rtB.Add_d * rtP.kRlv_Value;
    if (ssIsMajorTimeStep(rtS)) {
      rtDWork.Switch_Mode = (rtB.Gain >= rtP.Switch_Threshold);
    }

    if (rtDWork.Switch_Mode) {
      rtB.Switch = rtP.Constant_Value;
    } else {
      rtB.Divide_b5 = eml_y / rtb_Product_j;
      rtB.Switch = rtB.Divide_b5;
    }

    if (ssIsSampleHit(rtS, 1, 0)) {
      rtB.Subtract = rtP.fes0_Value - rtP.fesinf_Value;
    }

    rtb_Psvlnkou = rtX.Integrator_CSTATE_k;
    rtb_Integrator_fj = muDoubleScalarExp((rtb_Psvlnkou - rtP.Pn_Value) /
      rtP.kab_Value);
    rtB.Divide1 = (rtP.fabmax_Gain * rtb_Integrator_fj + rtP.fabmin_Value) /
      (rtb_Integrator_fj + rtP.Constant_Value_g);
    eml_y = rtP.Wbsp_Gain * rtB.Divide1;
    rtB.fac1 = rtX.fac1_CSTATE;
    eml_x = rtP.Wcsp_Gain * rtB.fac1;
    rtB.Integrator_o = rtX.Integrator_CSTATE_o;
    rtB.Add_d4 = muDoubleScalarExp((((eml_x - eml_y) - rtP.Wpsp_Gain *
      rtB.Integrator_o) - rtP.thetasp_Value) * rtP.kes_Value) * rtB.Subtract +
      rtP.fesinf_Value;
    if (ssIsMajorTimeStep(rtS)) {
      rtDWork.MinMax2_MODE = (rtP.fesmax_Value < rtB.Add_d4) ? 0: 1;
    }

    if (rtDWork.MinMax2_MODE == 0) {
      rtB.MinMax2 = rtP.fesmax_Value;
    } else {
      rtB.MinMax2 = rtB.Add_d4;
    }

    rtB.Fcn2 = 60.0 / rtb_Integrator1;
    rtb_Integrator_fj = rtX.Integrator_CSTATE_gu;
    rtB.Add3_f = rtP.Rsp0_Value + rtb_Integrator_fj;
    rtb_Integrator1 = rtX.Integrator1_CSTATE_mr;
    rtB.Add5 = rtP.Rmp0_Value + rtb_Integrator1;
    rtb_Integrator2 = rtX.Integrator2_CSTATE;
    rtB.Add8 = rtP.Rep0_Value + rtb_Integrator2;
    rtb_Integrator = rtX.Integrator_CSTATE_ks;
    rtB.Add_j = rtP.Emaxrv0_Value + rtb_Integrator;
    rtb_deltaTs_c = rtX.Integrator_CSTATE_m;
    rtB.Add_p = rtP.Vumv0_Value + rtb_deltaTs_c;
    rtb_deltaTs_m = rtX.Integrator1_CSTATE_j;
    rtB.Add2 = rtP.Vusv0_Value + rtb_deltaTs_m;
    rtb_Switch_i = rtX.Integrator2_CSTATE_i;
    rtB.Add4 = rtP.Vuev0_Value + rtb_Switch_i;
    if (ssIsSampleHit(rtS, 1, 0)) {
      rtB.Divide_m = rtP.Constant_Value_n / rtP.Cev_Value;
    }

    eml_y = rtB.Integrator * rtP.Csa_Value;
    rtb_Integrator_j = rtX.Integrator_CSTATE_d;
    if (ssIsSampleHit(rtS, 1, 0)) {
      rtB.Add_n = (((rtP.Chp_Value + rtP.Cbp_Value) + rtP.Cmp_Value) +
                   rtP.Csp_Value) + rtP.Cep_Value;
    }

    eml_x = rtb_Integrator_j * rtB.Add_n;
    rtb_Integrator_f = rtX.Integrator_CSTATE_j;
    rtb_Product10 = rtb_Integrator_f * rtP.Cbv_Value;
    rtb_Integrator_i = rtX.Integrator_CSTATE_mo;
    rtb_Product11 = rtb_Integrator_i * rtP.Chv_Value;
    rtb_Integrator_h = rtX.Integrator_CSTATE_l;
    rtb_Product3 = rtb_Integrator_h * rtP.Cmv_Value;
    rtb_Integrator_g = rtX.Integrator_CSTATE_a;
    rtb_Product4 = rtb_Integrator_g * rtP.Csv_Value;
    rtb_Integrator_o = rtX.Integrator_CSTATE_f;
    rtb_Product5 = rtb_Integrator_o * rtP.Cra_Value;
    rtb_Integrator_gj = rtX.Integrator_CSTATE_l2;
    rtb_Product6 = rtb_Integrator_gj * rtP.Cpa_Value;
    rtb_Integrator_e = rtX.Integrator_CSTATE_jj;
    rtb_Product7 = rtb_Integrator_e * rtP.Cpp_Value;
    rtb_Integrator_m = rtX.Integrator_CSTATE_g2;
    rtb_Product8 = rtb_Integrator_m * rtP.Cpv_Value;
    rtb_Integrator_n = rtX.Integrator_CSTATE_cn;
    rtb_Product9 = rtb_Integrator_n * rtP.Cla_Value;
    rtb_Switch1 = rtX.Integrator_CSTATE_h;
    rtB.Product = ((((((((((((((rtP.Vtot_Value - eml_y) - eml_x) - rtb_Product10)
      - rtb_Product11) - rtb_Product3) - rtb_Product4) - rtb_Product5) -
                         rtb_Product6) - rtb_Product7) - rtb_Product8) -
                      rtb_Product9) - rtb_Switch) - rtb_Switch1) -
                   (((((((((((((((rtP.Vusa_Value + rtP.Vuhp_Value) +
      rtP.Vump_Value) + rtP.Vusp_Value) + rtP.Vuep_Value) + rtP.Vuhv_Value) +
      rtP.Vubv_Value) + rtB.Add_p) + rtB.Add2) + rtB.Add4) + rtP.Vura_Value) +
                        rtP.Vupa_Value) + rtP.Vupp_Value) + rtP.Vupv_Value) +
                     rtP.Vula_Value) + rtP.Vubp_Value)) * rtB.Divide_m;
    rtb_Switch = muDoubleScalarExp((rtB.Divide1 - rtP.fab0_Value) /
      rtP.kev_Value);
    rtB.Add3_n = (((rtP.fevinf_Gain * rtb_Switch + rtP.fev0_Value) / (rtb_Switch
      + rtP._Value) + rtP.Wcv_Gain * rtB.fac1) - rtP.Gain_Gain_a *
                  rtB.Integrator_o) - rtP.thetav_Value;
    if (ssIsSampleHit(rtS, 1, 0)) {
      rtB.Subtract1 = rtP.fes1_Value - rtP.fesinf1_Value;
    }

    rtB.Add2_j = muDoubleScalarExp(((rtP.Wcsh_Gain * rtB.fac1 - rtP.Wbsh_Gain *
      rtB.Divide1) - rtP.thetash_Value) * rtP.kes1_Value) * rtB.Subtract1 +
      rtP.fesinf1_Value;
    if (ssIsMajorTimeStep(rtS)) {
      rtDWork.MinMax1_MODE = (rtP.fesmax1_Value < rtB.Add2_j) ? 0: 1;
    }

    if (rtDWork.MinMax1_MODE == 0) {
      rtB.MinMax1 = rtP.fesmax1_Value;
    } else {
      rtB.MinMax1 = rtB.Add2_j;
    }

    rtb_Switch1 = (rtP.Constant_Value_o - rtB.Divide_i) * rtP.Porv_Value *
      (muDoubleScalarExp(rtb_Switch1 * rtP.kErv_Value) - rtP.Constant1_Value_c)
      + rtB.Divide_i * rtB.Add_j * (rtb_Switch1 - rtP.Vurv_Value);
    eml_y = rtb_Switch1 * rtP.kRrv_Value;
    rtB.Subtract_p = rtb_Switch1 - rtb_Integrator_gj;
    if (ssIsMajorTimeStep(rtS)) {
      rtDWork.Switch_Mode_e = (rtB.Subtract_p > rtP.Switch_Threshold_j);
    }

    if (rtDWork.Switch_Mode_e) {
      rtB.Divide_h = rtB.Subtract_p / eml_y;
      rtb_Switch = rtB.Divide_h;
    } else {
      rtb_Switch = rtP.Constant_Value_nb;
    }

    rtb_Product11 = rtb_Switch1 - eml_y * rtb_Switch;
    rtb_Product10 = rtB.Add_d - rtb_Product_j * rtB.Switch;
    if (ssIsSampleHit(rtS, 1, 0)) {
      rtB.fiap = rtP.Gap_Value * rtP.VT_Value;
    }

    rtB.taup = (rtB.fiap - rtB.Integrator_o) * rtP.taup_Gain;
    rtB.Subtract2 = rtB.MinMax1 - rtP.fesmin_Value;
    if (ssIsMajorTimeStep(rtS)) {
      rtDWork.Switch_Mode_g = (rtB.Subtract2 >= rtP.Switch_Threshold_p);
    }

    if (rtDWork.Switch_Mode_g) {
      rtB.Add1_a = (rtB.MinMax1 + rtP._Value_c) - rtP.fesmin_Value;
      rtb_Switch1 = rtB.Add1_a;
    } else {
      rtb_Switch1 = rtP.Constant_Value_l;
    }

    eml_y = rtb_Switch1;
    if (ssIsMajorTimeStep(rtS)) {
      if (rtDWork.Fcn_DWORK1) {
        ssSetSolverNeedsReset(rtS);
        rtDWork.Fcn_DWORK1 = 0;
      }
    } else {
      if (rtb_Switch1 < 0.0) {
        eml_y = 0.0;
        rtDWork.Fcn_DWORK1 = 1;
      }
    }

    if (eml_y > 0.0) {
      eml_y = muDoubleScalarLog(eml_y);
    } else if (eml_y == 0.0) {
      eml_y = rtGetMinusInf();
    } else {
      eml_y = rtGetNaN();
    }

    rtB.tauTs = (rtP.GTs_Gain * eml_y - rtb_deltaTs) * rtP.tauTs_Gain;
    rtB.tauTv = (rtP.GTv_Gain * rtB.Add3_n - rtb_deltaTv) * rtP.tauTv_Gain;
    rtB.Subtract5 = rtB.MinMax2 - rtP.fesmin_Value_a;
    if (ssIsMajorTimeStep(rtS)) {
      rtDWork.Switch2_Mode = (rtB.Subtract5 >= rtP.Switch2_Threshold);
    }

    if (rtDWork.Switch2_Mode) {
      rtB.Add5_l = (rtB.MinMax2 + rtP._Value_n) - rtP.fesmin_Value_a;
      rtb_Switch1 = rtB.Add5_l;
    } else {
      rtb_Switch1 = rtP._Value_n;
    }

    eml_y = rtb_Switch1;
    if (ssIsMajorTimeStep(rtS)) {
      if (rtDWork.Fcn2_DWORK1) {
        ssSetSolverNeedsReset(rtS);
        rtDWork.Fcn2_DWORK1 = 0;
      }
    } else {
      if (rtb_Switch1 < 0.0) {
        eml_y = 0.0;
        rtDWork.Fcn2_DWORK1 = 1;
      }
    }

    if (eml_y > 0.0) {
      eml_y = muDoubleScalarLog(eml_y);
    } else if (eml_y == 0.0) {
      eml_y = rtGetMinusInf();
    } else {
      eml_y = rtGetNaN();
    }

    rtB.tauVuev = (rtP.GVuev_Gain * eml_y - rtb_Switch_i) * rtP.tauVuev_Gain;
    rtB.Subtract3 = rtB.MinMax2 - rtP.fesmin_Value_a;
    if (ssIsMajorTimeStep(rtS)) {
      rtDWork.Switch_Mode_f = (rtB.Subtract3 >= rtP.Switch_Threshold_k);
    }

    if (rtDWork.Switch_Mode_f) {
      rtB.Add1_b = (rtB.MinMax2 + rtP._Value_n) - rtP.fesmin_Value_a;
      rtb_Switch1 = rtB.Add1_b;
    } else {
      rtb_Switch1 = rtP._Value_n;
    }

    eml_y = rtb_Switch1;
    if (ssIsMajorTimeStep(rtS)) {
      if (rtDWork.Fcn_DWORK1_o) {
        ssSetSolverNeedsReset(rtS);
        rtDWork.Fcn_DWORK1_o = 0;
      }
    } else {
      if (rtb_Switch1 < 0.0) {
        eml_y = 0.0;
        rtDWork.Fcn_DWORK1_o = 1;
      }
    }

    if (eml_y > 0.0) {
      eml_y = muDoubleScalarLog(eml_y);
    } else if (eml_y == 0.0) {
      eml_y = rtGetMinusInf();
    } else {
      eml_y = rtGetNaN();
    }

    rtB.tauVumv = (rtP.GVumv_Gain * eml_y - rtb_deltaTs_c) * rtP.tauVumv_Gain;
    rtB.Subtract4 = rtB.MinMax2 - rtP.fesmin_Value_a;
    if (ssIsMajorTimeStep(rtS)) {
      rtDWork.Switch1_Mode = (rtB.Subtract4 >= rtP.Switch1_Threshold);
    }

    if (rtDWork.Switch1_Mode) {
      rtB.Add3_b = (rtB.MinMax2 + rtP._Value_n) - rtP.fesmin_Value_a;
      rtb_Switch1 = rtB.Add3_b;
    } else {
      rtb_Switch1 = rtP._Value_n;
    }

    eml_y = rtb_Switch1;
    if (ssIsMajorTimeStep(rtS)) {
      if (rtDWork.Fcn1_DWORK1) {
        ssSetSolverNeedsReset(rtS);
        rtDWork.Fcn1_DWORK1 = 0;
      }
    } else {
      if (rtb_Switch1 < 0.0) {
        eml_y = 0.0;
        rtDWork.Fcn1_DWORK1 = 1;
      }
    }

    if (eml_y > 0.0) {
      eml_y = muDoubleScalarLog(eml_y);
    } else if (eml_y == 0.0) {
      eml_y = rtGetMinusInf();
    } else {
      eml_y = rtGetNaN();
    }

    rtB.tauVusv = (rtP.GVusv_Gain * eml_y - rtb_deltaTs_m) * rtP.tauVusv_Gain;
    rtb_Switch1 = rtX.Integrator_CSTATE_n;
    if (ssIsSampleHit(rtS, 1, 0)) {
      rtB.Divide_d = rtP.Constant_Value_go / rtP.Cpa_Value_m;
    }

    rtB.Product_p = (rtb_Switch - rtb_Switch1) * rtB.Divide_d;
    eml_y = (rtb_Integrator_j - rtb_Integrator_h) / rtB.Add5;
    eml_x = (rtb_Integrator_h - rtb_Integrator_o) / rtP.Rmv_Value;

    {
      real_T t = ssGetTaskTime(rtS,0);
      real_T timeStampA = rtDWork.Derivative_RWORK.TimeStampA;
      real_T timeStampB = rtDWork.Derivative_RWORK.TimeStampB;
      real_T *lastU = &rtDWork.Derivative_RWORK.LastUAtTimeA;
      if (timeStampA >= t && timeStampB >= t) {
        rtb_Switch_i = 0.0;
      } else {
        real_T deltaT;
        real_T lastTime = timeStampA;
        if (timeStampA < timeStampB) {
          if (timeStampB < t) {
            lastTime = timeStampB;
            lastU = &rtDWork.Derivative_RWORK.LastUAtTimeB;
          }
        } else if (timeStampA >= t) {
          lastTime = timeStampB;
          lastU = &rtDWork.Derivative_RWORK.LastUAtTimeB;
        }

        deltaT = t - lastTime;
        rtb_Switch_i = (rtB.Add_p - *lastU++) / deltaT;
      }
    }

    if (ssIsSampleHit(rtS, 1, 0)) {
      rtB.Divide_ix = rtP.Constant_Value_nn / rtP.Cmv_Value_k;
    }

    rtB.Product_k = ((eml_y - eml_x) - rtb_Switch_i) * rtB.Divide_ix;
    eml_y = (rtb_Integrator_j - rtb_Integrator_g) / rtB.Add3_f;
    eml_x = (rtb_Integrator_g - rtb_Integrator_o) / rtP.Rsv_Value;

    {
      real_T t = ssGetTaskTime(rtS,0);
      real_T timeStampA = rtDWork.Derivative_RWORK_l.TimeStampA;
      real_T timeStampB = rtDWork.Derivative_RWORK_l.TimeStampB;
      real_T *lastU = &rtDWork.Derivative_RWORK_l.LastUAtTimeA;
      if (timeStampA >= t && timeStampB >= t) {
        rtb_Switch_i = 0.0;
      } else {
        real_T deltaT;
        real_T lastTime = timeStampA;
        if (timeStampA < timeStampB) {
          if (timeStampB < t) {
            lastTime = timeStampB;
            lastU = &rtDWork.Derivative_RWORK_l.LastUAtTimeB;
          }
        } else if (timeStampA >= t) {
          lastTime = timeStampB;
          lastU = &rtDWork.Derivative_RWORK_l.LastUAtTimeB;
        }

        deltaT = t - lastTime;
        rtb_Switch_i = (rtB.Add2 - *lastU++) / deltaT;
      }
    }

    if (ssIsSampleHit(rtS, 1, 0)) {
      rtB.Divide_g = rtP.Constant_Value_p / rtP.Csv_Value_b;
    }

    rtB.Product_o = ((eml_y - eml_x) - rtb_Switch_i) * rtB.Divide_g;
    eml_y = rtb_Integrator_n - rtb_Product10;
    rtB.Gain_l = rtP.Gain_Gain_i * eml_y;
    if (ssIsMajorTimeStep(rtS)) {
      rtDWork.Switch_Mode_j = (rtB.Gain_l >= rtP.Switch_Threshold_m);
    }

    if (rtDWork.Switch_Mode_j) {
      rtb_Switch_i = rtP.Constant_Value_m;
    } else {
      rtB.Divide_e = eml_y / rtP.Rla_Value;
      rtb_Switch_i = rtB.Divide_e;
    }

    if (ssIsSampleHit(rtS, 1, 0)) {
      rtB.Divide_n = rtP.Constant_Value_ey / rtP.Cla_Value_c;
    }

    rtB.Product_a = ((rtb_Integrator_m - rtb_Integrator_n) / rtP.Rpv_Value -
                     rtb_Switch_i) * rtB.Divide_n;
    rtB.Subtract_a = rtb_Switch_i - rtB.Switch;
    if (ssIsSampleHit(rtS, 1, 0)) {
      rtB.Divide_f = rtP.Constant_Value_f / rtP.Lpa_Value;
    }

    rtB.Product_n = ((rtb_Integrator_gj - rtb_Integrator_e) - rtP.Rpa_Value *
                     rtb_Switch1) * rtB.Divide_f;
    if (ssIsSampleHit(rtS, 1, 0)) {
      rtB.Divide_mg = rtP.Constant_Value_c / rtP.Cpp_Value_o;
    }

    rtB.Product_h = (rtb_Switch1 - (rtb_Integrator_e - rtb_Integrator_m) /
                     rtP.Rpp_Value) * rtB.Divide_mg;
    if (ssIsSampleHit(rtS, 1, 0)) {
      rtB.Divide_iy = rtP.Constant_Value_pe / rtP.Cpv_Value_i;
    }

    rtB.Product_k0 = ((rtb_Integrator_e - rtb_Integrator_m) / rtP.Rpp_Value_i -
                      (rtb_Integrator_m - rtb_Integrator_n) / rtP.Rpv_Value_b) *
      rtB.Divide_iy;
    if (ssIsSampleHit(rtS, 1, 0)) {
      rtB.Divide_mf = rtP.Constant_Value_b / rtP.Csa_Value_n;
    }

    rtb_Switch1 = rtX.Integrator_CSTATE_e;
    rtB.Product_e = (rtB.Switch - rtb_Switch1) * rtB.Divide_mf;
    if (ssIsSampleHit(rtS, 1, 0)) {
      rtB.Divide_b = rtP.Constant_Value_on / rtP.Lsa_Value;
    }

    rtB.Product_f = ((rtB.Integrator - rtb_Integrator_j) - rtP.Rsa_Value *
                     rtb_Switch1) * rtB.Divide_b;
    if (ssIsSampleHit(rtS, 1, 0)) {
      rtb_Add_hq = (((rtP.Chp_Value_e + rtP.Cbp_Value_g) + rtP.Cmp_Value_k) +
                    rtP.Csp_Value_o) + rtP.Cep_Value_o;
    }

    if (ssIsSampleHit(rtS, 1, 0)) {
      rtB.Divide_l = rtP.Constant_Value_bo / rtb_Add_hq;
    }

    rtB.Product_kz = (((((rtb_Switch1 - (rtb_Integrator_j - rtb_Integrator_i) /
                          rtP.Rhp_Value) - (rtb_Integrator_j - rtb_Integrator_f)
                         / rtP.Rbp_Value) - (rtb_Integrator_j - rtb_Integrator_h)
                        / rtB.Add5) - (rtb_Integrator_j - rtb_Integrator_g) /
                       rtB.Add3_f) - (rtb_Integrator_j - rtB.Product) / rtB.Add8)
      * rtB.Divide_l;
    if (ssIsSampleHit(rtS, 1, 0)) {
      rtB.Divide_fl = rtP.Constant_Value_ev / rtP.Chv_Value_i;
    }

    rtB.Product_e1 = ((rtb_Integrator_j - rtb_Integrator_i) / rtP.Rhp_Value_i -
                      (rtb_Integrator_i - rtb_Integrator_o) / rtP.Rhv_Value) *
      rtB.Divide_fl;
    if (ssIsSampleHit(rtS, 1, 0)) {
      rtB.Divide_im = rtP.Constant_Value_lt / rtP.Cbv_Value_g;
    }

    rtB.Product_ff = ((rtb_Integrator_j - rtb_Integrator_f) / rtP.Rhp_Value_a -
                      (rtb_Integrator_f - rtb_Integrator_o) / rtP.Rbv_Value) *
      rtB.Divide_im;
    rtB.Subtract_h = rtb_Integrator_o - rtb_Product11;
    if (ssIsMajorTimeStep(rtS)) {
      rtDWork.Switch_Mode_c = (rtB.Subtract_h > rtP.Switch_Threshold_l);
    }

    if (rtDWork.Switch_Mode_c) {
      rtB.Divide_j = rtB.Subtract_h / rtP.Rra_Value;
      rtb_Switch1 = rtB.Divide_j;
    } else {
      rtb_Switch1 = rtP.Constant_Value_ms;
    }

    if (ssIsSampleHit(rtS, 1, 0)) {
      rtB.Divide_nt = rtP.Constant_Value_k / rtP.Cra_Value_f;
    }

    rtB.Product_nh = ((((((rtb_Integrator_i - rtb_Integrator_o) /
                          rtP.Rhv_Value_c + (rtb_Integrator_f - rtb_Integrator_o)
                          / rtP.Rbv_Value_m) + (rtb_Integrator_h -
      rtb_Integrator_o) / rtP.Rmv_Value_p) + (rtb_Integrator_g -
      rtb_Integrator_o) / rtP.Rsv_Value_h) + (rtB.Product - rtb_Integrator_o) /
                       rtP.Rev_Value) - rtb_Switch1) * rtB.Divide_nt;
    rtB.Subtract_hg = rtb_Switch1 - rtb_Switch;

    {
      real_T t = ssGetTaskTime(rtS,0);
      real_T timeStampA = rtDWork.Derivative_RWORK_o.TimeStampA;
      real_T timeStampB = rtDWork.Derivative_RWORK_o.TimeStampB;
      real_T *lastU = &rtDWork.Derivative_RWORK_o.LastUAtTimeA;
      if (timeStampA >= t && timeStampB >= t) {
        rtb_Switch1 = 0.0;
      } else {
        real_T deltaT;
        real_T lastTime = timeStampA;
        if (timeStampA < timeStampB) {
          if (timeStampB < t) {
            lastTime = timeStampB;
            lastU = &rtDWork.Derivative_RWORK_o.LastUAtTimeB;
          }
        } else if (timeStampA >= t) {
          lastTime = timeStampB;
          lastU = &rtDWork.Derivative_RWORK_o.LastUAtTimeB;
        }

        deltaT = t - lastTime;
        rtb_Switch1 = (rtB.Integrator - *lastU++) / deltaT;
      }
    }

    rtB.Divide2 = ((rtP.tauzb_Gain * rtb_Switch1 + rtB.Integrator) -
                   rtb_Psvlnkou) / rtP.taupb_Value;
    if (ssIsSampleHit(rtS, 1, 0)) {
      eml_y = muDoubleScalarExp((rtP.PasO2_Value - rtP.PasO2n_Value) /
        rtP.kac_Value);
      rtB.Divide_nd = (rtP.facmin_Gain * eml_y + rtP.facmax_Value) / (eml_y +
        rtP._Value_l);
    }

    rtB.tauc = (rtB.Divide_nd - rtB.fac1) * rtP.tauc_Gain;
    rtB.Add11 = rtB.MinMax2 - rtP.fesmin2_Value;
    if (ssIsMajorTimeStep(rtS)) {
      rtDWork.Switch2_Mode_p = (rtB.Add11 >= rtP.Switch2_Threshold_p);
    }

    if (rtDWork.Switch2_Mode_p) {
      rtB.Add7_f = (rtP.c_Value - rtP.fesmin2_Value) + rtB.MinMax2;
      rtb_Switch1 = rtB.Add7_f;
    } else {
      rtb_Switch1 = rtP.Constant2_Value;
    }

    eml_y = rtb_Switch1;
    if (ssIsMajorTimeStep(rtS)) {
      if (rtDWork.Fcn2_DWORK1_k) {
        ssSetSolverNeedsReset(rtS);
        rtDWork.Fcn2_DWORK1_k = 0;
      }
    } else {
      if (rtb_Switch1 < 0.0) {
        eml_y = 0.0;
        rtDWork.Fcn2_DWORK1_k = 1;
      }
    }

    if (eml_y > 0.0) {
      eml_y = muDoubleScalarLog(eml_y);
    } else if (eml_y == 0.0) {
      eml_y = rtGetMinusInf();
    } else {
      eml_y = rtGetNaN();
    }

    rtB.tauRep = (rtP.GRep_Gain * eml_y - rtb_Integrator2) * rtP.tauRep_Gain;
    rtB.Add10 = rtB.MinMax2 - rtP.fesmin1_Value;
    if (ssIsMajorTimeStep(rtS)) {
      rtDWork.Switch1_Mode_d = (rtB.Add10 >= rtP.Switch1_Threshold_e);
    }

    if (rtDWork.Switch1_Mode_d) {
      rtB.Add4_l = (rtP.b_Value - rtP.fesmin1_Value) + rtB.MinMax2;
      rtb_Switch1 = rtB.Add4_l;
    } else {
      rtb_Switch1 = rtP.Constant1_Value_p;
    }

    eml_y = rtb_Switch1;
    if (ssIsMajorTimeStep(rtS)) {
      if (rtDWork.Fcn1_DWORK1_b) {
        ssSetSolverNeedsReset(rtS);
        rtDWork.Fcn1_DWORK1_b = 0;
      }
    } else {
      if (rtb_Switch1 < 0.0) {
        eml_y = 0.0;
        rtDWork.Fcn1_DWORK1_b = 1;
      }
    }

    if (eml_y > 0.0) {
      eml_y = muDoubleScalarLog(eml_y);
    } else if (eml_y == 0.0) {
      eml_y = rtGetMinusInf();
    } else {
      eml_y = rtGetNaN();
    }

    rtB.tauRmp = (rtP.GRmp_Gain * eml_y - rtb_Integrator1) * rtP.tauRmp_Gain;
    rtB.Add9 = rtB.MinMax2 - rtP.fesmin_Value_d;
    if (ssIsMajorTimeStep(rtS)) {
      rtDWork.Switch_Mode_h = (rtB.Add9 >= rtP.Switch_Threshold_a);
    }

    if (rtDWork.Switch_Mode_h) {
      rtB.Add2_jj = (rtP.a_Value - rtP.fesmin_Value_d) + rtB.MinMax2;
      rtb_Switch1 = rtB.Add2_jj;
    } else {
      rtb_Switch1 = rtP.Constant_Value_ch;
    }

    eml_y = rtb_Switch1;
    if (ssIsMajorTimeStep(rtS)) {
      if (rtDWork.Fcn_DWORK1_f) {
        ssSetSolverNeedsReset(rtS);
        rtDWork.Fcn_DWORK1_f = 0;
      }
    } else {
      if (rtb_Switch1 < 0.0) {
        eml_y = 0.0;
        rtDWork.Fcn_DWORK1_f = 1;
      }
    }

    if (eml_y > 0.0) {
      eml_y = muDoubleScalarLog(eml_y);
    } else if (eml_y == 0.0) {
      eml_y = rtGetMinusInf();
    } else {
      eml_y = rtGetNaN();
    }

    rtB.tauRsp = (rtP.GRsp_Gain * eml_y - rtb_Integrator_fj) * rtP.tauRsp_Gain;
    rtB.Add6 = rtB.MinMax1 - rtP.fesmin_Value_n;
    if (ssIsMajorTimeStep(rtS)) {
      rtDWork.Switch_Mode_p = (rtB.Add6 >= rtP.Switch_Threshold_n);
    }

    if (rtDWork.Switch_Mode_p) {
      rtB.Add2_i = (rtP.a_Value_e - rtP.fesmin_Value_n) + rtB.MinMax1;
      rtb_Switch1 = rtB.Add2_i;
    } else {
      rtb_Switch1 = rtP.Constant_Value_ei;
    }

    eml_y = rtb_Switch1;
    if (ssIsMajorTimeStep(rtS)) {
      if (rtDWork.Fcn_DWORK1_a) {
        ssSetSolverNeedsReset(rtS);
        rtDWork.Fcn_DWORK1_a = 0;
      }
    } else {
      if (rtb_Switch1 < 0.0) {
        eml_y = 0.0;
        rtDWork.Fcn_DWORK1_a = 1;
      }
    }

    if (eml_y > 0.0) {
      eml_y = muDoubleScalarLog(eml_y);
    } else if (eml_y == 0.0) {
      eml_y = rtGetMinusInf();
    } else {
      eml_y = rtGetNaN();
    }

    eml_x = rtP.GEmaxrv_Gain * eml_y - rtb_Integrator;
    rtB.Add7 = rtB.MinMax1 - rtP.fesmin1_Value_d;
    if (ssIsMajorTimeStep(rtS)) {
      rtDWork.Switch1_Mode_l = (rtB.Add7 >= rtP.Switch1_Threshold_f);
    }

    if (rtDWork.Switch1_Mode_l) {
      rtB.Add5_g = (rtP.a1_Value - rtP.fesmin1_Value_d) + rtB.MinMax1;
      rtb_Switch1 = rtB.Add5_g;
    } else {
      rtb_Switch1 = rtP.Constant1_Value_l;
    }

    eml_y = rtb_Switch1;
    if (ssIsMajorTimeStep(rtS)) {
      if (rtDWork.Fcn1_DWORK1_h) {
        ssSetSolverNeedsReset(rtS);
        rtDWork.Fcn1_DWORK1_h = 0;
      }
    } else {
      if (rtb_Switch1 < 0.0) {
        eml_y = 0.0;
        rtDWork.Fcn1_DWORK1_h = 1;
      }
    }

    if (eml_y > 0.0) {
      eml_y = muDoubleScalarLog(eml_y);
    } else if (eml_y == 0.0) {
      eml_y = rtGetMinusInf();
    } else {
      eml_y = rtGetNaN();
    }

    rtB.tauEmaxlv = (rtP.GEmaxlv_Gain * eml_y - rtb_Integrator1_a) *
      rtP.tauEmaxlv_Gain;
    rtB.tauEmaxrv = rtP.tauEmaxrv_Gain * eml_x;
  }

  UNUSED_PARAMETER(tid);
}

void MdlUpdate(int_T tid)
{
  {
    real_T timeStampA = rtDWork.Derivative_RWORK.TimeStampA;
    real_T timeStampB = rtDWork.Derivative_RWORK.TimeStampB;
    real_T* lastTime = &rtDWork.Derivative_RWORK.TimeStampA;
    real_T* lastU = &rtDWork.Derivative_RWORK.LastUAtTimeA;
    if (timeStampA != rtInf) {
      if (timeStampB == rtInf) {
        lastTime = &rtDWork.Derivative_RWORK.TimeStampB;
        lastU = &rtDWork.Derivative_RWORK.LastUAtTimeB;
      } else if (timeStampA >= timeStampB) {
        lastTime = &rtDWork.Derivative_RWORK.TimeStampB;
        lastU = &rtDWork.Derivative_RWORK.LastUAtTimeB;
      }
    }

    *lastTime = ssGetTaskTime(rtS,0);
    *lastU++ = rtB.Add_p;
  }

  {
    real_T timeStampA = rtDWork.Derivative_RWORK_l.TimeStampA;
    real_T timeStampB = rtDWork.Derivative_RWORK_l.TimeStampB;
    real_T* lastTime = &rtDWork.Derivative_RWORK_l.TimeStampA;
    real_T* lastU = &rtDWork.Derivative_RWORK_l.LastUAtTimeA;
    if (timeStampA != rtInf) {
      if (timeStampB == rtInf) {
        lastTime = &rtDWork.Derivative_RWORK_l.TimeStampB;
        lastU = &rtDWork.Derivative_RWORK_l.LastUAtTimeB;
      } else if (timeStampA >= timeStampB) {
        lastTime = &rtDWork.Derivative_RWORK_l.TimeStampB;
        lastU = &rtDWork.Derivative_RWORK_l.LastUAtTimeB;
      }
    }

    *lastTime = ssGetTaskTime(rtS,0);
    *lastU++ = rtB.Add2;
  }

  {
    real_T timeStampA = rtDWork.Derivative_RWORK_o.TimeStampA;
    real_T timeStampB = rtDWork.Derivative_RWORK_o.TimeStampB;
    real_T* lastTime = &rtDWork.Derivative_RWORK_o.TimeStampA;
    real_T* lastU = &rtDWork.Derivative_RWORK_o.LastUAtTimeA;
    if (timeStampA != rtInf) {
      if (timeStampB == rtInf) {
        lastTime = &rtDWork.Derivative_RWORK_o.TimeStampB;
        lastU = &rtDWork.Derivative_RWORK_o.LastUAtTimeB;
      } else if (timeStampA >= timeStampB) {
        lastTime = &rtDWork.Derivative_RWORK_o.TimeStampB;
        lastU = &rtDWork.Derivative_RWORK_o.LastUAtTimeB;
      }
    }

    *lastTime = ssGetTaskTime(rtS,0);
    *lastU++ = rtB.Integrator;
  }

  UNUSED_PARAMETER(tid);
}

void MdlDerivatives(void)
{
  {
    ((StateDerivatives *) ssGetdX(rtS))->Integrator_CSTATE = rtB.Product_e;
  }

  {
    ((StateDerivatives *) ssGetdX(rtS))->Integrator_CSTATE_g = rtB.tauTs;
  }

  {
    ((StateDerivatives *) ssGetdX(rtS))->Integrator1_CSTATE = rtB.tauTv;
  }

  {
    ((StateDerivatives *) ssGetdX(rtS))->Integrator1_CSTATE_m = rtB.tauEmaxlv;
  }

  {
    ((StateDerivatives *) ssGetdX(rtS))->Integrator_CSTATE_c = rtB.Subtract_a;
  }

  {
    ((StateDerivatives *) ssGetdX(rtS))->Integrator_CSTATE_k = rtB.Divide2;
  }

  {
    ((StateDerivatives *) ssGetdX(rtS))->fac1_CSTATE = rtB.tauc;
  }

  {
    ((StateDerivatives *) ssGetdX(rtS))->Integrator_CSTATE_o = rtB.taup;
  }

  {
    ((StateDerivatives *) ssGetdX(rtS))->Integrator_CSTATE_gu = rtB.tauRsp;
  }

  {
    ((StateDerivatives *) ssGetdX(rtS))->Integrator1_CSTATE_mr = rtB.tauRmp;
  }

  {
    ((StateDerivatives *) ssGetdX(rtS))->Integrator2_CSTATE = rtB.tauRep;
  }

  {
    ((StateDerivatives *) ssGetdX(rtS))->Integrator_CSTATE_ks = rtB.tauEmaxrv;
  }

  {
    ((StateDerivatives *) ssGetdX(rtS))->Integrator_CSTATE_m = rtB.tauVumv;
  }

  {
    ((StateDerivatives *) ssGetdX(rtS))->Integrator1_CSTATE_j = rtB.tauVusv;
  }

  {
    ((StateDerivatives *) ssGetdX(rtS))->Integrator2_CSTATE_i = rtB.tauVuev;
  }

  {
    ((StateDerivatives *) ssGetdX(rtS))->Integrator_CSTATE_d = rtB.Product_kz;
  }

  {
    ((StateDerivatives *) ssGetdX(rtS))->Integrator_CSTATE_j = rtB.Product_ff;
  }

  {
    ((StateDerivatives *) ssGetdX(rtS))->Integrator_CSTATE_mo = rtB.Product_e1;
  }

  {
    ((StateDerivatives *) ssGetdX(rtS))->Integrator_CSTATE_l = rtB.Product_k;
  }

  {
    ((StateDerivatives *) ssGetdX(rtS))->Integrator_CSTATE_a = rtB.Product_o;
  }

  {
    ((StateDerivatives *) ssGetdX(rtS))->Integrator_CSTATE_f = rtB.Product_nh;
  }

  {
    ((StateDerivatives *) ssGetdX(rtS))->Integrator_CSTATE_l2 = rtB.Product_p;
  }

  {
    ((StateDerivatives *) ssGetdX(rtS))->Integrator_CSTATE_jj = rtB.Product_h;
  }

  {
    ((StateDerivatives *) ssGetdX(rtS))->Integrator_CSTATE_g2 = rtB.Product_k0;
  }

  {
    ((StateDerivatives *) ssGetdX(rtS))->Integrator_CSTATE_cn = rtB.Product_a;
  }

  {
    ((StateDerivatives *) ssGetdX(rtS))->Integrator_CSTATE_h = rtB.Subtract_hg;
  }

  {
    ((StateDerivatives *) ssGetdX(rtS))->Integrator_CSTATE_n = rtB.Product_n;
  }

  {
    ((StateDerivatives *) ssGetdX(rtS))->Integrator_CSTATE_e = rtB.Product_f;
  }
}

void MdlProjection(void)
{
}

void MdlInitSystemMatrices(void)
{
}

void MdlZeroCrossings(void)
{
  ((ZCSignalValues *) ssGetSolverZcSignalVector(rtS))
    ->RelationalOperator_RelopInput_ZC = rtB.y - rtP.alpha_Value;
  ((ZCSignalValues *) ssGetSolverZcSignalVector(rtS))
    ->RelationalOperator1_RelopInput_ZC = rtB.y - rtB.Add1;
  ((ZCSignalValues *) ssGetSolverZcSignalVector(rtS))->Switch_SwitchCond_ZC =
    rtB.Gain - rtP.Switch_Threshold;
  if (rtP.fesmax_Value < rtB.Add_d4) {
    if (rtDWork.MinMax2_MODE == 0) {
      ((ZCSignalValues *) ssGetSolverZcSignalVector(rtS))
        ->MinMax2_MinmaxInput_ZC = rtP.fesmax_Value - rtP.fesmax_Value;
    } else {
      ((ZCSignalValues *) ssGetSolverZcSignalVector(rtS))
        ->MinMax2_MinmaxInput_ZC = rtP.fesmax_Value - rtB.Add_d4;
    }
  } else {
    if (rtDWork.MinMax2_MODE == 0) {
      ((ZCSignalValues *) ssGetSolverZcSignalVector(rtS))
        ->MinMax2_MinmaxInput_ZC = rtB.Add_d4 - rtP.fesmax_Value;
    } else {
      ((ZCSignalValues *) ssGetSolverZcSignalVector(rtS))
        ->MinMax2_MinmaxInput_ZC = rtB.Add_d4 - rtB.Add_d4;
    }
  }

  if (rtP.fesmax1_Value < rtB.Add2_j) {
    if (rtDWork.MinMax1_MODE == 0) {
      ((ZCSignalValues *) ssGetSolverZcSignalVector(rtS))
        ->MinMax1_MinmaxInput_ZC = rtP.fesmax1_Value - rtP.fesmax1_Value;
    } else {
      ((ZCSignalValues *) ssGetSolverZcSignalVector(rtS))
        ->MinMax1_MinmaxInput_ZC = rtP.fesmax1_Value - rtB.Add2_j;
    }
  } else {
    if (rtDWork.MinMax1_MODE == 0) {
      ((ZCSignalValues *) ssGetSolverZcSignalVector(rtS))
        ->MinMax1_MinmaxInput_ZC = rtB.Add2_j - rtP.fesmax1_Value;
    } else {
      ((ZCSignalValues *) ssGetSolverZcSignalVector(rtS))
        ->MinMax1_MinmaxInput_ZC = rtB.Add2_j - rtB.Add2_j;
    }
  }

  ((ZCSignalValues *) ssGetSolverZcSignalVector(rtS))->Switch_SwitchCond_ZC_l =
    rtB.Subtract_p - rtP.Switch_Threshold_j;
  ((ZCSignalValues *) ssGetSolverZcSignalVector(rtS))->Switch_SwitchCond_ZC_g =
    rtB.Subtract2 - rtP.Switch_Threshold_p;
  ((ZCSignalValues *) ssGetSolverZcSignalVector(rtS))->Switch2_SwitchCond_ZC =
    rtB.Subtract5 - rtP.Switch2_Threshold;
  ((ZCSignalValues *) ssGetSolverZcSignalVector(rtS))->Switch_SwitchCond_ZC_f =
    rtB.Subtract3 - rtP.Switch_Threshold_k;
  ((ZCSignalValues *) ssGetSolverZcSignalVector(rtS))->Switch1_SwitchCond_ZC =
    rtB.Subtract4 - rtP.Switch1_Threshold;
  ((ZCSignalValues *) ssGetSolverZcSignalVector(rtS))->Switch_SwitchCond_ZC_o =
    rtB.Gain_l - rtP.Switch_Threshold_m;
  ((ZCSignalValues *) ssGetSolverZcSignalVector(rtS))->Switch_SwitchCond_ZC_of =
    rtB.Subtract_h - rtP.Switch_Threshold_l;
  ((ZCSignalValues *) ssGetSolverZcSignalVector(rtS))->Switch2_SwitchCond_ZC_g =
    rtB.Add11 - rtP.Switch2_Threshold_p;
  ((ZCSignalValues *) ssGetSolverZcSignalVector(rtS))->Switch1_SwitchCond_ZC_k =
    rtB.Add10 - rtP.Switch1_Threshold_e;
  ((ZCSignalValues *) ssGetSolverZcSignalVector(rtS))->Switch_SwitchCond_ZC_h =
    rtB.Add9 - rtP.Switch_Threshold_a;
  ((ZCSignalValues *) ssGetSolverZcSignalVector(rtS))->Switch_SwitchCond_ZC_m =
    rtB.Add6 - rtP.Switch_Threshold_n;
  ((ZCSignalValues *) ssGetSolverZcSignalVector(rtS))->Switch1_SwitchCond_ZC_e =
    rtB.Add7 - rtP.Switch1_Threshold_f;
}

void MdlTerminate(void)
{
}

void MdlInitializeSizes(void)
{
  ssSetNumContStates(rtS, 28);
  ssSetNumY(rtS, 0);
  ssSetNumU(rtS, 0);
  ssSetDirectFeedThrough(rtS, 0);
  ssSetNumSampleTimes(rtS, 2);
  ssSetNumBlocks(rtS, 507);
  ssSetNumBlockIO(rtS, 102);
  ssSetNumBlockParams(rtS, 233);
}

void MdlInitializeSampleTimes(void)
{
  ssSetSampleTime(rtS, 0, 0.0);
  ssSetSampleTime(rtS, 1, 0.0);
  ssSetOffsetTime(rtS, 0, 0.0);
  ssSetOffsetTime(rtS, 1, 1.0);
}

void raccel_set_checksum(SimStruct *rtS)
{
  ssSetChecksumVal(rtS, 0, 3079825192U);
  ssSetChecksumVal(rtS, 1, 2752766914U);
  ssSetChecksumVal(rtS, 2, 2173928114U);
  ssSetChecksumVal(rtS, 3, 1982403063U);
}

SimStruct * raccel_register_model(void)
{
  static struct _ssMdlInfo mdlInfo;
  (void) memset((char *)rtS,0,
                sizeof(SimStruct));
  (void) memset((char *)&mdlInfo,0,
                sizeof(struct _ssMdlInfo));
  ssSetMdlInfoPtr(rtS, &mdlInfo);

  {
    static time_T mdlPeriod[NSAMPLE_TIMES];
    static time_T mdlOffset[NSAMPLE_TIMES];
    static time_T mdlTaskTimes[NSAMPLE_TIMES];
    static int_T mdlTsMap[NSAMPLE_TIMES];
    static int_T mdlSampleHits[NSAMPLE_TIMES];
    static boolean_T mdlTNextWasAdjustedPtr[NSAMPLE_TIMES];
    static int_T mdlPerTaskSampleHits[NSAMPLE_TIMES * NSAMPLE_TIMES];
    static time_T mdlTimeOfNextSampleHit[NSAMPLE_TIMES];

    {
      int_T i;
      for (i = 0; i < NSAMPLE_TIMES; i++) {
        mdlPeriod[i] = 0.0;
        mdlOffset[i] = 0.0;
        mdlTaskTimes[i] = 0.0;
        mdlTsMap[i] = i;
        mdlSampleHits[i] = 1;
      }
    }

    ssSetSampleTimePtr(rtS, &mdlPeriod[0]);
    ssSetOffsetTimePtr(rtS, &mdlOffset[0]);
    ssSetSampleTimeTaskIDPtr(rtS, &mdlTsMap[0]);
    ssSetTPtr(rtS, &mdlTaskTimes[0]);
    ssSetSampleHitPtr(rtS, &mdlSampleHits[0]);
    ssSetTNextWasAdjustedPtr(rtS, &mdlTNextWasAdjustedPtr[0]);
    ssSetPerTaskSampleHitsPtr(rtS, &mdlPerTaskSampleHits[0]);
    ssSetTimeOfNextSampleHitPtr(rtS, &mdlTimeOfNextSampleHit[0]);
  }

  ssSetSolverMode(rtS, SOLVER_MODE_SINGLETASKING);

  {
    ssSetBlockIO(rtS, ((void *) &rtB));
    (void) memset(((void *) &rtB),0,
                  sizeof(BlockIO));
  }

  ssSetDefaultParam(rtS, (real_T *) &rtP);

  {
    real_T *x = (real_T *) &rtX;
    ssSetContStates(rtS, x);
    (void) memset((void *)x,0,
                  sizeof(ContinuousStates));
  }

  {
    void *dwork = (void *) &rtDWork;
    ssSetRootDWork(rtS, dwork);
    (void) memset(dwork, 0,
                  sizeof(D_Work));
  }

  {
    static DataTypeTransInfo dtInfo;
    (void) memset((char_T *) &dtInfo,0,
                  sizeof(dtInfo));
    ssSetModelMappingInfo(rtS, &dtInfo);
    dtInfo.numDataTypes = 14;
    dtInfo.dataTypeSizes = &rtDataTypeSizes[0];
    dtInfo.dataTypeNames = &rtDataTypeNames[0];
    dtInfo.B = &rtBTransTable;
    dtInfo.P = &rtPTransTable;
  }

  ssSetRootSS(rtS, rtS);
  ssSetVersion(rtS, SIMSTRUCT_VERSION_LEVEL2);
  ssSetModelName(rtS, "cardio_v4");
  ssSetPath(rtS, "cardio_v4");
  ssSetTStart(rtS, 0.0);
  ssSetTFinal(rtS, 50.0);

  {
    static RTWLogInfo rt_DataLoggingInfo;
    ssSetRTWLogInfo(rtS, &rt_DataLoggingInfo);
  }

  {
    {
      static int_T rt_LoggedStateWidths[] = {
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1
      };

      static int_T rt_LoggedStateNumDimensions[] = {
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1
      };

      static int_T rt_LoggedStateDimensions[] = {
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1
      };

      static boolean_T rt_LoggedStateIsVarDims[] = {
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
      };

      static BuiltInDTypeId rt_LoggedStateDataTypeIds[] = {
        SS_DOUBLE,
        SS_DOUBLE,
        SS_DOUBLE,
        SS_DOUBLE,
        SS_DOUBLE,
        SS_DOUBLE,
        SS_DOUBLE,
        SS_DOUBLE,
        SS_DOUBLE,
        SS_DOUBLE,
        SS_DOUBLE,
        SS_DOUBLE,
        SS_DOUBLE,
        SS_DOUBLE,
        SS_DOUBLE,
        SS_DOUBLE,
        SS_DOUBLE,
        SS_DOUBLE,
        SS_DOUBLE,
        SS_DOUBLE,
        SS_DOUBLE,
        SS_DOUBLE,
        SS_DOUBLE,
        SS_DOUBLE,
        SS_DOUBLE,
        SS_DOUBLE,
        SS_DOUBLE,
        SS_DOUBLE
      };

      static int_T rt_LoggedStateComplexSignals[] = {
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
      };

      static const char_T *rt_LoggedStateLabels[] = {
        "CSTATE",
        "CSTATE",
        "CSTATE",
        "CSTATE",
        "CSTATE",
        "CSTATE",
        "CSTATE",
        "CSTATE",
        "CSTATE",
        "CSTATE",
        "CSTATE",
        "CSTATE",
        "CSTATE",
        "CSTATE",
        "CSTATE",
        "CSTATE",
        "CSTATE",
        "CSTATE",
        "CSTATE",
        "CSTATE",
        "CSTATE",
        "CSTATE",
        "CSTATE",
        "CSTATE",
        "CSTATE",
        "CSTATE",
        "CSTATE",
        "CSTATE"
      };

      static const char_T *rt_LoggedStateBlockNames[] = {
        "cardio_v4/A1.5 OK/Integrator",
        "cardio_v4/0_33 CORRECTED/Integrator",
        "cardio_v4/0_33 CORRECTED/Integrator1",
        "cardio_v4/A_32 CORRECTED/Integrator1",
        "cardio_v4/A1.15 OK/Integrator",
        "cardio_v4/A1_26 OK/Integrator",
        "cardio_v4/A_27 OK/f ac1",
        "cardio_v4/0_28 OK/Integrator",
        "cardio_v4/A_31 CORRECTED/Integrator",
        "cardio_v4/A_31 CORRECTED/Integrator1",
        "cardio_v4/A_31 CORRECTED/Integrator2",
        "cardio_v4/A_32 CORRECTED/Integrator",
        "cardio_v4/0_34 CORRECTED/Integrator",
        "cardio_v4/0_34 CORRECTED/Integrator1",
        "cardio_v4/0_34 CORRECTED/Integrator2",
        "cardio_v4/A1.7 OK/Integrator",
        "cardio_v4/A1.9 OK/Integrator",
        "cardio_v4/A1.8 OK/Integrator",
        "cardio_v4/A1.10 OK/Integrator",
        "cardio_v4/A1.11 OK/Integrator",
        "cardio_v4/A1_20 OK?/Integrator",
        "cardio_v4/A1.1 OK/Integrator",
        "cardio_v4/A1.3 OK/Integrator",
        "cardio_v4/A1.4 OK/Integrator",
        "cardio_v4/A1.13 OK/Integrator",
        "cardio_v4/A1_22 OK/Integrator",
        "cardio_v4/A1.2 OK/Integrator",
        "cardio_v4/A1.6 OK/Integrator"
      };

      static const char_T *rt_LoggedStateNames[] = {
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        ""
      };

      static boolean_T rt_LoggedStateCrossMdlRef[] = {
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
      };

      static RTWLogDataTypeConvert rt_RTWLogDataTypeConvert[] = {
        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 }
      };

      static RTWLogSignalInfo rt_LoggedStateSignalInfo = {
        28,
        rt_LoggedStateWidths,
        rt_LoggedStateNumDimensions,
        rt_LoggedStateDimensions,
        rt_LoggedStateIsVarDims,
        (NULL),
        rt_LoggedStateDataTypeIds,
        rt_LoggedStateComplexSignals,
        (NULL),

        { rt_LoggedStateLabels },
        (NULL),
        (NULL),
        (NULL),

        { rt_LoggedStateBlockNames },

        { rt_LoggedStateNames },
        rt_LoggedStateCrossMdlRef,
        rt_RTWLogDataTypeConvert
      };

      static void * rt_LoggedStateSignalPtrs[28];
      rtliSetLogXSignalPtrs(ssGetRTWLogInfo(rtS), (LogSignalPtrsType)
                            rt_LoggedStateSignalPtrs);
      rtliSetLogXSignalInfo(ssGetRTWLogInfo(rtS), &rt_LoggedStateSignalInfo);
      rt_LoggedStateSignalPtrs[0] = (void*)&rtX.Integrator_CSTATE;
      rt_LoggedStateSignalPtrs[1] = (void*)&rtX.Integrator_CSTATE_g;
      rt_LoggedStateSignalPtrs[2] = (void*)&rtX.Integrator1_CSTATE;
      rt_LoggedStateSignalPtrs[3] = (void*)&rtX.Integrator1_CSTATE_m;
      rt_LoggedStateSignalPtrs[4] = (void*)&rtX.Integrator_CSTATE_c;
      rt_LoggedStateSignalPtrs[5] = (void*)&rtX.Integrator_CSTATE_k;
      rt_LoggedStateSignalPtrs[6] = (void*)&rtX.fac1_CSTATE;
      rt_LoggedStateSignalPtrs[7] = (void*)&rtX.Integrator_CSTATE_o;
      rt_LoggedStateSignalPtrs[8] = (void*)&rtX.Integrator_CSTATE_gu;
      rt_LoggedStateSignalPtrs[9] = (void*)&rtX.Integrator1_CSTATE_mr;
      rt_LoggedStateSignalPtrs[10] = (void*)&rtX.Integrator2_CSTATE;
      rt_LoggedStateSignalPtrs[11] = (void*)&rtX.Integrator_CSTATE_ks;
      rt_LoggedStateSignalPtrs[12] = (void*)&rtX.Integrator_CSTATE_m;
      rt_LoggedStateSignalPtrs[13] = (void*)&rtX.Integrator1_CSTATE_j;
      rt_LoggedStateSignalPtrs[14] = (void*)&rtX.Integrator2_CSTATE_i;
      rt_LoggedStateSignalPtrs[15] = (void*)&rtX.Integrator_CSTATE_d;
      rt_LoggedStateSignalPtrs[16] = (void*)&rtX.Integrator_CSTATE_j;
      rt_LoggedStateSignalPtrs[17] = (void*)&rtX.Integrator_CSTATE_mo;
      rt_LoggedStateSignalPtrs[18] = (void*)&rtX.Integrator_CSTATE_l;
      rt_LoggedStateSignalPtrs[19] = (void*)&rtX.Integrator_CSTATE_a;
      rt_LoggedStateSignalPtrs[20] = (void*)&rtX.Integrator_CSTATE_f;
      rt_LoggedStateSignalPtrs[21] = (void*)&rtX.Integrator_CSTATE_l2;
      rt_LoggedStateSignalPtrs[22] = (void*)&rtX.Integrator_CSTATE_jj;
      rt_LoggedStateSignalPtrs[23] = (void*)&rtX.Integrator_CSTATE_g2;
      rt_LoggedStateSignalPtrs[24] = (void*)&rtX.Integrator_CSTATE_cn;
      rt_LoggedStateSignalPtrs[25] = (void*)&rtX.Integrator_CSTATE_h;
      rt_LoggedStateSignalPtrs[26] = (void*)&rtX.Integrator_CSTATE_n;
      rt_LoggedStateSignalPtrs[27] = (void*)&rtX.Integrator_CSTATE_e;
    }

    rtliSetLogT(ssGetRTWLogInfo(rtS), "tout");
    rtliSetLogX(ssGetRTWLogInfo(rtS), "tmp_raccel_xout");
    rtliSetLogXFinal(ssGetRTWLogInfo(rtS), "xFinal");
    rtliSetSigLog(ssGetRTWLogInfo(rtS), "");
    rtliSetLogVarNameModifier(ssGetRTWLogInfo(rtS), "none");
    rtliSetLogFormat(ssGetRTWLogInfo(rtS), 0);
    rtliSetLogMaxRows(ssGetRTWLogInfo(rtS), 1000);
    rtliSetLogDecimation(ssGetRTWLogInfo(rtS), 1);
    rtliSetLogY(ssGetRTWLogInfo(rtS), "");
    rtliSetLogYSignalInfo(ssGetRTWLogInfo(rtS), (NULL));
    rtliSetLogYSignalPtrs(ssGetRTWLogInfo(rtS), (NULL));
  }

  {
    static ssSolverInfo slvrInfo;
    static boolean_T contStatesDisabled[28];
    static real_T solverAbsTol[28] = { 1.0E-006, 1.0E-006, 1.0E-006, 1.0E-006,
      1.0E-006, 1.0E-006, 1.0E-006, 1.0E-006, 1.0E-006, 1.0E-006, 1.0E-006,
      1.0E-006, 1.0E-006, 1.0E-006, 1.0E-006, 1.0E-006, 1.0E-006, 1.0E-006,
      1.0E-006, 1.0E-006, 1.0E-006, 1.0E-006, 1.0E-006, 1.0E-006, 1.0E-006,
      1.0E-006, 1.0E-006, 1.0E-006 };

    static boolean_T solverAutoAbsTol[28] = { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
      1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 };

    static uint8_T zcAttributes[17] = { (ZC_EVENT_ALL), (ZC_EVENT_ALL),
      (ZC_EVENT_ALL), (ZC_EVENT_ALL), (ZC_EVENT_ALL), (ZC_EVENT_ALL),
      (ZC_EVENT_ALL), (ZC_EVENT_ALL), (ZC_EVENT_ALL), (ZC_EVENT_ALL),
      (ZC_EVENT_ALL), (ZC_EVENT_ALL), (ZC_EVENT_ALL), (ZC_EVENT_ALL),
      (ZC_EVENT_ALL), (ZC_EVENT_ALL), (ZC_EVENT_ALL) };

    static ssNonContDerivSigInfo nonContDerivSigInfo[1] = {
      { 1*sizeof(boolean_T), (char*)(&rtB.LogicalOperator), (NULL) }
    };

    ssSetSolverRelTol(rtS, 0.001);
    ssSetSolverAbsTol(rtS, solverAbsTol);
    ssSetSolverAutoAbsTol(rtS, solverAutoAbsTol);
    ssSetStepSize(rtS, 0.0);
    ssSetMinStepSize(rtS, 0.0);
    ssSetMaxNumMinSteps(rtS, -1);
    ssSetMinStepViolatedError(rtS, 0);
    ssSetMaxStepSize(rtS, 1.0);
    ssSetSolverMaxOrder(rtS, -1);
    ssSetSolverRefineFactor(rtS, 1);
    ssSetOutputTimes(rtS, (NULL));
    ssSetNumOutputTimes(rtS, 0);
    ssSetOutputTimesOnly(rtS, 0);
    ssSetOutputTimesIndex(rtS, 0);
    ssSetZCCacheNeedsReset(rtS, 1);
    ssSetDerivCacheNeedsReset(rtS, 0);
    ssSetNumNonContDerivSigInfos(rtS, 1);
    ssSetNonContDerivSigInfos(rtS, nonContDerivSigInfo);
    ssSetSolverInfo(rtS, &slvrInfo);
    ssSetSolverName(rtS, "ode45");
    ssSetVariableStepSolver(rtS, 1);
    ssSetSolverConsistencyChecking(rtS, 0);
    ssSetSolverAdaptiveZcDetection(rtS, 0);
    ssSetSolverRobustResetMethod(rtS, 0);
    ssSetSolverStateProjection(rtS, 0);
    ssSetSolverMassMatrixType(rtS, (ssMatrixType)0);
    ssSetSolverMassMatrixNzMax(rtS, 0);
    ssSetModelOutputs(rtS, MdlOutputs);
    ssSetModelLogData(rtS, rt_UpdateTXYLogVars);
    ssSetModelUpdate(rtS, MdlUpdate);
    ssSetModelDerivatives(rtS, MdlDerivatives);
    ssSetSolverZcSignalAttrib(rtS, zcAttributes);
    ssSetSolverNumZcSignals(rtS, 17);
    ssSetModelZeroCrossings(rtS, MdlZeroCrossings);
    ssSetSolverConsecutiveZCsStepRelTol(rtS, 2.8421709430404007E-013);
    ssSetSolverMaxConsecutiveZCs(rtS, 1000);
    ssSetSolverConsecutiveZCsError(rtS, 2);
    ssSetSolverMaxConsecutiveMinStep(rtS, 1);
    ssSetSolverShapePreserveControl(rtS, 2);
    ssSetTNextTid(rtS, INT_MIN);
    ssSetTNext(rtS, rtMinusInf);
    ssSetSolverNeedsReset(rtS);
    ssSetNumNonsampledZCs(rtS, 17);
    ssSetContStateDisabled(rtS, contStatesDisabled);
    ssSetSolverMaxConsecutiveMinStep(rtS, 1);
  }

  ssSetChecksumVal(rtS, 0, 3079825192U);
  ssSetChecksumVal(rtS, 1, 2752766914U);
  ssSetChecksumVal(rtS, 2, 2173928114U);
  ssSetChecksumVal(rtS, 3, 1982403063U);

  {
    static const sysRanDType rtAlwaysEnabled = SUBSYS_RAN_BC_ENABLE;
    static RTWExtModeInfo rt_ExtModeInfo;
    static const sysRanDType *systemRan[15];
    ssSetRTWExtModeInfo(rtS, &rt_ExtModeInfo);
    rteiSetSubSystemActiveVectorAddresses(&rt_ExtModeInfo, systemRan);
    systemRan[0] = &rtAlwaysEnabled;
    systemRan[1] = &rtAlwaysEnabled;
    systemRan[2] = &rtAlwaysEnabled;
    systemRan[3] = &rtAlwaysEnabled;
    systemRan[4] = &rtAlwaysEnabled;
    systemRan[5] = &rtAlwaysEnabled;
    systemRan[6] = &rtAlwaysEnabled;
    systemRan[7] = &rtAlwaysEnabled;
    systemRan[8] = &rtAlwaysEnabled;
    systemRan[9] = &rtAlwaysEnabled;
    systemRan[10] = &rtAlwaysEnabled;
    systemRan[11] = &rtAlwaysEnabled;
    systemRan[12] = &rtAlwaysEnabled;
    systemRan[13] = &rtAlwaysEnabled;
    systemRan[14] = &rtAlwaysEnabled;
    rteiSetModelMappingInfoPtr(ssGetRTWExtModeInfo(rtS), &ssGetModelMappingInfo
      (rtS));
    rteiSetChecksumsPtr(ssGetRTWExtModeInfo(rtS), ssGetChecksums(rtS));
    rteiSetTPtr(ssGetRTWExtModeInfo(rtS), ssGetTPtr(rtS));
  }

  return rtS;
}
