/* Include files */
#include "cardio_v3_sfun.h"
#include "c2_cardio_v3.h"
#define CHARTINSTANCE_CHARTNUMBER       (chartInstance.chartNumber)
#define CHARTINSTANCE_INSTANCENUMBER    (chartInstance.instanceNumber)
#include "cardio_v3_sfun_debug_macros.h"

/* Type Definitions */

/* Named Constants */
#define c2_IN_NO_ACTIVE_CHILD           (0)

/* Variable Declarations */

/* Variable Definitions */
static SFc2_cardio_v3InstanceStruct chartInstance;

/* Function Declarations */
static void initialize_c2_cardio_v3(void);
static void initialize_params_c2_cardio_v3(void);
static void enable_c2_cardio_v3(void);
static void disable_c2_cardio_v3(void);
static void finalize_c2_cardio_v3(void);
static void sf_c2_cardio_v3(void);
static const mxArray *c2_sf_marshall(void *c2_chartInstance, void *c2_u);
static const mxArray *c2_b_sf_marshall(void *c2_chartInstance, void *c2_u);
static const mxArray *c2_c_sf_marshall(void *c2_chartInstance, void *c2_u);
static real_T *c2_t(void);
static real_T *c2_y(void);
static real_T *c2_Hmin(void);
static void init_dsm_address_info(void);

/* Function Definitions */
static void initialize_c2_cardio_v3(void)
{
  _sfTime_ = (real_T)ssGetT(chartInstance.S);
  chartInstance.c2_is_active_c2_cardio_v3 = 0U;
}

static void initialize_params_c2_cardio_v3(void)
{
}

static void enable_c2_cardio_v3(void)
{
}

static void disable_c2_cardio_v3(void)
{
}

static void finalize_c2_cardio_v3(void)
{
}

static void sf_c2_cardio_v3(void)
{
  uint8_T c2_previousEvent;
  real_T c2_b_t;
  real_T c2_b_Hmin;
  real_T c2_b_y;
  real_T c2_x;
  real_T c2_B;
  real_T c2_c_y;
  real_T c2_d_y;
  real_T c2_b_x;
  real_T c2_xk;
  real_T c2_c_x;
  real_T c2_yk;
  real_T c2_A;
  real_T c2_b_B;
  real_T c2_d_x;
  real_T c2_e_y;
  real_T c2_e_x;
  real_T c2_f_x;
  _sfTime_ = (real_T)ssGetT(chartInstance.S);
  _SFD_DATA_RANGE_CHECK(*c2_t(), 0U);
  _SFD_DATA_RANGE_CHECK(*c2_y(), 2U);
  _SFD_DATA_RANGE_CHECK(*c2_Hmin(), 1U);
  c2_previousEvent = _sfEvent_;
  _sfEvent_ = CALL_EVENT;
  _SFD_CC_CALL(CHART_ENTER_DURING_FUNCTION_TAG,0);
  c2_b_t = *c2_t();
  c2_b_Hmin = *c2_Hmin();
  sf_debug_symbol_scope_push(3U, 0U);
  sf_debug_symbol_scope_add("y", &c2_b_y, c2_c_sf_marshall);
  sf_debug_symbol_scope_add("Hmin", &c2_b_Hmin, c2_b_sf_marshall);
  sf_debug_symbol_scope_add("t", &c2_b_t, c2_sf_marshall);
  CV_EML_FCN(0, 0);
  /*  This block supports an embeddable subset of the MATLAB language. */
  /*  See the help menu for details.  */
  _SFD_EML_CALL(STATE_DURING_DURING_ACTION_TAG,0,5);
  c2_x = c2_b_t;
  c2_B = c2_b_Hmin;
  c2_c_y = c2_B;
  c2_d_y = 60.0 / c2_c_y;
  c2_b_y = 0.0;
  c2_b_x = c2_x;
  c2_xk = c2_b_x;
  c2_c_x = c2_d_y;
  c2_yk = c2_c_x;
  if(c2_yk == 0.0) {
    c2_b_y = c2_xk;
  } else {
    if(c2_xk == c2_yk) {
    } else if(c2_xk == 0.0) {
    } else {
      c2_A = c2_xk;
      c2_b_B = c2_yk;
      c2_d_x = c2_A;
      c2_e_y = c2_b_B;
      c2_e_x = c2_d_x / c2_e_y;
      c2_f_x = c2_e_x;
      c2_f_x = floor(c2_f_x);
      c2_b_y = c2_xk - c2_f_x * c2_yk;
      goto label_1;
    }
    c2_b_y = 0.0;
    label_1:;
  }
  _SFD_EML_CALL(STATE_DURING_DURING_ACTION_TAG,0,-5);
  sf_debug_symbol_scope_pop();
  *c2_y() = c2_b_y;
  _SFD_CC_CALL(EXIT_OUT_OF_FUNCTION_TAG,0);
  _sfEvent_ = c2_previousEvent;
  sf_debug_check_for_state_inconsistency(_cardio_v3MachineNumber_,
   chartInstance.chartNumber, chartInstance.instanceNumber);
}

static const mxArray *c2_sf_marshall(void *c2_chartInstance, void *c2_u)
{
  const mxArray *c2_b_y = NULL;
  real_T c2_b_u;
  const mxArray *c2_c_y = NULL;
  c2_b_y = NULL;
  c2_b_u = *(real_T *)c2_u;
  c2_c_y = NULL;
  sf_mex_assign(&c2_c_y, sf_mex_create(&c2_b_u, "y", 0, 0U, 0U, 0));
  sf_mex_assign(&c2_b_y, c2_c_y);
  return c2_b_y;
}

static const mxArray *c2_b_sf_marshall(void *c2_chartInstance, void *c2_u)
{
  const mxArray *c2_b_y = NULL;
  real_T c2_b_u;
  const mxArray *c2_c_y = NULL;
  c2_b_y = NULL;
  c2_b_u = *(real_T *)c2_u;
  c2_c_y = NULL;
  sf_mex_assign(&c2_c_y, sf_mex_create(&c2_b_u, "y", 0, 0U, 0U, 0));
  sf_mex_assign(&c2_b_y, c2_c_y);
  return c2_b_y;
}

static const mxArray *c2_c_sf_marshall(void *c2_chartInstance, void *c2_u)
{
  const mxArray *c2_b_y = NULL;
  real_T c2_b_u;
  const mxArray *c2_c_y = NULL;
  c2_b_y = NULL;
  c2_b_u = *(real_T *)c2_u;
  c2_c_y = NULL;
  sf_mex_assign(&c2_c_y, sf_mex_create(&c2_b_u, "y", 0, 0U, 0U, 0));
  sf_mex_assign(&c2_b_y, c2_c_y);
  return c2_b_y;
}

const mxArray *sf_c2_cardio_v3_get_eml_resolved_functions_info(void)
{
  const mxArray *c2_nameCaptureInfo = NULL;
  c2_nameCaptureInfo = NULL;
  sf_mex_assign(&c2_nameCaptureInfo, sf_mex_create(NULL, "nameCaptureInfo", 0,
    0U, 1U, 2, 0, 1));
  return c2_nameCaptureInfo;
}

static real_T *c2_t(void)
{
  return (real_T *)ssGetInputPortSignal(chartInstance.S, 0);
}

static real_T *c2_y(void)
{
  return (real_T *)ssGetOutputPortSignal(chartInstance.S, 1);
}

static real_T *c2_Hmin(void)
{
  return (real_T *)ssGetInputPortSignal(chartInstance.S, 1);
}

static void init_dsm_address_info(void)
{
}

/* SFunction Glue Code */
void sf_c2_cardio_v3_get_check_sum(mxArray *plhs[])
{
  ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(2587575747U);
  ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(1340003869U);
  ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(4274145038U);
  ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(840683582U);
}

mxArray *sf_c2_cardio_v3_get_autoinheritance_info(void)
{
  const char *autoinheritanceFields[] =
  {"checksum","inputs","parameters","outputs"};
  mxArray *mxAutoinheritanceInfo =
  mxCreateStructMatrix(1,1,4,autoinheritanceFields);
  {
    mxArray *mxChecksum = mxCreateDoubleMatrix(4,1,mxREAL);
    double *pr = mxGetPr(mxChecksum);
    pr[0] = (double)(3636685496U);
    pr[1] = (double)(125297181U);
    pr[2] = (double)(2510442466U);
    pr[3] = (double)(3334081771U);
    mxSetField(mxAutoinheritanceInfo,0,"checksum",mxChecksum);
  }
  {
    const char *dataFields[] = {"size","type","complexity"};
    mxArray *mxData = mxCreateStructMatrix(1,2,3,dataFields);
    {
      mxArray *mxSize = mxCreateDoubleMatrix(1,2,mxREAL);
      double *pr = mxGetPr(mxSize);
      pr[0] = (double)(1);
      pr[1] = (double)(1);
      mxSetField(mxData,0,"size",mxSize);
    }
    {
      const char *typeFields[] = {"base","aliasId","fixpt"};
      mxArray *mxType = mxCreateStructMatrix(1,1,3,typeFields);
      mxSetField(mxType,0,"base",mxCreateDoubleScalar(10));
      mxSetField(mxType,0,"aliasId",mxCreateDoubleScalar(0));
      mxSetField(mxType,0,"fixpt",mxCreateDoubleMatrix(0,0,mxREAL));
      mxSetField(mxData,0,"type",mxType);
    }
    mxSetField(mxData,0,"complexity",mxCreateDoubleScalar(0));
    {
      mxArray *mxSize = mxCreateDoubleMatrix(1,2,mxREAL);
      double *pr = mxGetPr(mxSize);
      pr[0] = (double)(1);
      pr[1] = (double)(1);
      mxSetField(mxData,1,"size",mxSize);
    }
    {
      const char *typeFields[] = {"base","aliasId","fixpt"};
      mxArray *mxType = mxCreateStructMatrix(1,1,3,typeFields);
      mxSetField(mxType,0,"base",mxCreateDoubleScalar(10));
      mxSetField(mxType,0,"aliasId",mxCreateDoubleScalar(0));
      mxSetField(mxType,0,"fixpt",mxCreateDoubleMatrix(0,0,mxREAL));
      mxSetField(mxData,1,"type",mxType);
    }
    mxSetField(mxData,1,"complexity",mxCreateDoubleScalar(0));
    mxSetField(mxAutoinheritanceInfo,0,"inputs",mxData);
  }
  {
    mxSetField(mxAutoinheritanceInfo,0,"parameters",mxCreateDoubleMatrix(0,0,mxREAL));
  }
  {
    const char *dataFields[] = {"size","type","complexity"};
    mxArray *mxData = mxCreateStructMatrix(1,1,3,dataFields);
    {
      mxArray *mxSize = mxCreateDoubleMatrix(1,2,mxREAL);
      double *pr = mxGetPr(mxSize);
      pr[0] = (double)(1);
      pr[1] = (double)(1);
      mxSetField(mxData,0,"size",mxSize);
    }
    {
      const char *typeFields[] = {"base","aliasId","fixpt"};
      mxArray *mxType = mxCreateStructMatrix(1,1,3,typeFields);
      mxSetField(mxType,0,"base",mxCreateDoubleScalar(10));
      mxSetField(mxType,0,"aliasId",mxCreateDoubleScalar(0));
      mxSetField(mxType,0,"fixpt",mxCreateDoubleMatrix(0,0,mxREAL));
      mxSetField(mxData,0,"type",mxType);
    }
    mxSetField(mxData,0,"complexity",mxCreateDoubleScalar(0));
    mxSetField(mxAutoinheritanceInfo,0,"outputs",mxData);
  }
  return(mxAutoinheritanceInfo);
}

static void chart_debug_initialization(SimStruct *S, unsigned int
 fullDebuggerInitialization)
{
  if(ssIsFirstInitCond(S) && fullDebuggerInitialization==1) {
    /* do this only if simulation is starting */
    if(!sim_mode_is_rtw_gen(S)) {
      {
        unsigned int chartAlreadyPresent;
        chartAlreadyPresent = sf_debug_initialize_chart(_cardio_v3MachineNumber_,
         2,
         1,
         1,
         3,
         0,
         0,
         0,
         0,
         &(chartInstance.chartNumber),
         &(chartInstance.instanceNumber),
         ssGetPath(S),
         (void *)S);
        if(chartAlreadyPresent==0) {
          /* this is the first instance */
          sf_debug_set_chart_disable_implicit_casting(_cardio_v3MachineNumber_,chartInstance.chartNumber,1);
          sf_debug_set_chart_event_thresholds(_cardio_v3MachineNumber_,
           chartInstance.chartNumber,
           0,
           0,
           0);

          _SFD_SET_DATA_PROPS(0,1,1,0,SF_DOUBLE,0,NULL,0,0,0,0.0,1.0,0,"t",0,c2_sf_marshall);
          _SFD_SET_DATA_PROPS(2,2,0,1,SF_DOUBLE,0,NULL,0,0,0,0.0,1.0,0,"y",0,c2_c_sf_marshall);
          _SFD_SET_DATA_PROPS(1,1,1,0,SF_DOUBLE,0,NULL,0,0,0,0.0,1.0,0,"Hmin",0,c2_b_sf_marshall);
          _SFD_STATE_INFO(0,0,2);
          _SFD_CH_SUBSTATE_COUNT(0);
          _SFD_CH_SUBSTATE_DECOMP(0);
        }
        _SFD_CV_INIT_CHART(0,0,0,0);
        {
          _SFD_CV_INIT_STATE(0,0,0,0,0,0,NULL,NULL);
        }

        _SFD_CV_INIT_TRANS(0,0,NULL,NULL,0,NULL);

        /* Initialization of EML Model Coverage */
        _SFD_CV_INIT_EML(0,1,0,0,0,0,0,0);
        _SFD_CV_INIT_EML_FCN(0,0,"eML_blk_kernel",0,-1,146);
        _SFD_TRANS_COV_WTS(0,0,0,1,0);
        if(chartAlreadyPresent==0)
        {
          _SFD_TRANS_COV_MAPS(0,
           0,NULL,NULL,
           0,NULL,NULL,
           1,NULL,NULL,
           0,NULL,NULL);
        }
        _SFD_SET_DATA_VALUE_PTR(0U, c2_t());
        _SFD_SET_DATA_VALUE_PTR(2U, c2_y());
        _SFD_SET_DATA_VALUE_PTR(1U, c2_Hmin());
      }
    }
  } else {
    sf_debug_reset_current_state_configuration(_cardio_v3MachineNumber_,chartInstance.chartNumber,chartInstance.instanceNumber);
  }
}

static void sf_opaque_initialize_c2_cardio_v3(void *chartInstanceVar)
{
  chart_debug_initialization(chartInstance.S,0);
  initialize_params_c2_cardio_v3();
  initialize_c2_cardio_v3();
}

static void sf_opaque_enable_c2_cardio_v3(void *chartInstanceVar)
{
  enable_c2_cardio_v3();
}

static void sf_opaque_disable_c2_cardio_v3(void *chartInstanceVar)
{
  disable_c2_cardio_v3();
}

static void sf_opaque_gateway_c2_cardio_v3(void *chartInstanceVar)
{
  sf_c2_cardio_v3();
}

static void sf_opaque_terminate_c2_cardio_v3(void *chartInstanceVar)
{
  if (sim_mode_is_rtw_gen(chartInstance.S)) {
    sf_clear_rtw_identifier(chartInstance.S);
  }
  finalize_c2_cardio_v3();
}

static void mdlProcessParameters_c2_cardio_v3(SimStruct *S)
{
  int i;
  for(i=0;i<ssGetNumRunTimeParams(S);i++) {
    if(ssGetSFcnParamTunable(S,i)) {
      ssUpdateDlgParamAsRunTimeParam(S,i);
    }
  }
  initialize_params_c2_cardio_v3();
}

static void mdlSetWorkWidths_c2_cardio_v3(SimStruct *S)
{
  if(sim_mode_is_rtw_gen(S)) {
    int_T chartIsInlinable =
      (int_T)sf_is_chart_inlinable("cardio_v3",2);
    ssSetStateflowIsInlinable(S,chartIsInlinable);
    ssSetEnableFcnIsTrivial(S,1);
    ssSetDisableFcnIsTrivial(S,1);
    ssSetNotMultipleInlinable(S,sf_rtw_info_uint_prop("cardio_v3",2,"gatewayCannotBeInlinedMultipleTimes"));
    if(chartIsInlinable) {
      ssSetInputPortOptimOpts(S, 0, SS_REUSABLE_AND_LOCAL);
      ssSetInputPortOptimOpts(S, 1, SS_REUSABLE_AND_LOCAL);
      sf_mark_chart_expressionable_inputs(S,"cardio_v3",2,2);
      sf_mark_chart_reusable_outputs(S,"cardio_v3",2,1);
    }
    if (!sf_is_chart_instance_optimized_out("cardio_v3",2)) {
      int dtId;
      char *chartInstanceTypedefName =
        sf_chart_instance_typedef_name("cardio_v3",2);
      dtId = ssRegisterDataType(S, chartInstanceTypedefName);
      if (dtId == INVALID_DTYPE_ID ) return;
      /* Register the size of the udt */
      if (!ssSetDataTypeSize(S, dtId, 8)) return;
      if(!ssSetNumDWork(S,1)) return;
      ssSetDWorkDataType(S, 0, dtId);
      ssSetDWorkWidth(S, 0, 1);
      ssSetDWorkName(S, 0, "ChartInstance"); /*optional name, less than 16 chars*/
      sf_set_rtw_identifier(S);
    }
    ssSetHasSubFunctions(S,!(chartIsInlinable));
    ssSetOptions(S,ssGetOptions(S)|SS_OPTION_WORKS_WITH_CODE_REUSE);
  }

  ssSetChecksum0(S,(3420893791U));
  ssSetChecksum1(S,(2846448569U));
  ssSetChecksum2(S,(1685950111U));
  ssSetChecksum3(S,(1250413002U));

  ssSetExplicitFCSSCtrl(S,1);
}

static void mdlRTW_c2_cardio_v3(SimStruct *S)
{
  if(sim_mode_is_rtw_gen(S)) {
    sf_write_symbol_mapping(S, "cardio_v3", 2);
    ssWriteRTWStrParam(S, "StateflowChartType", "Embedded MATLAB");
  }
}

static void mdlStart_c2_cardio_v3(SimStruct *S)
{
  chartInstance.chartInfo.chartInstance = NULL;
  chartInstance.chartInfo.isEMLChart = 1;
  chartInstance.chartInfo.chartInitialized = 0;
  chartInstance.chartInfo.sFunctionGateway = sf_opaque_gateway_c2_cardio_v3;
  chartInstance.chartInfo.initializeChart = sf_opaque_initialize_c2_cardio_v3;
  chartInstance.chartInfo.terminateChart = sf_opaque_terminate_c2_cardio_v3;
  chartInstance.chartInfo.enableChart = sf_opaque_enable_c2_cardio_v3;
  chartInstance.chartInfo.disableChart = sf_opaque_disable_c2_cardio_v3;
  chartInstance.chartInfo.mdlRTW = mdlRTW_c2_cardio_v3;
  chartInstance.chartInfo.mdlStart = mdlStart_c2_cardio_v3;
  chartInstance.chartInfo.mdlSetWorkWidths = mdlSetWorkWidths_c2_cardio_v3;
  chartInstance.chartInfo.restoreLastMajorStepConfiguration = NULL;
  chartInstance.chartInfo.restoreBeforeLastMajorStepConfiguration = NULL;
  chartInstance.chartInfo.storeCurrentConfiguration = NULL;
  chartInstance.S = S;
  ssSetUserData(S,(void *)(&(chartInstance.chartInfo))); /* register the chart instance with simstruct */

  if(!sim_mode_is_rtw_gen(S)) {
    init_dsm_address_info();
  }
  chart_debug_initialization(S,1);
}

void c2_cardio_v3_method_dispatcher(SimStruct *S, int_T method, void *data)
{
  switch (method) {
   case SS_CALL_MDL_START:
    mdlStart_c2_cardio_v3(S);
    break;
   case SS_CALL_MDL_SET_WORK_WIDTHS:
    mdlSetWorkWidths_c2_cardio_v3(S);
    break;
   case SS_CALL_MDL_PROCESS_PARAMETERS:
    mdlProcessParameters_c2_cardio_v3(S);
    break;
   default:
    /* Unhandled method */
    sf_mex_error_message("Stateflow Internal Error:\n"
     "Error calling c2_cardio_v3_method_dispatcher.\n"
     "Can't handle method %d.\n", method);
    break;
  }
}

