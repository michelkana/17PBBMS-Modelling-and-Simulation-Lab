#include "ext_types.h"

static uint_T rtDataTypeSizes[] = {
  sizeof(real_T),
  sizeof(real32_T),
  sizeof(int8_T),
  sizeof(uint8_T),
  sizeof(int16_T),
  sizeof(uint16_T),
  sizeof(int32_T),
  sizeof(uint32_T),
  sizeof(boolean_T),
  sizeof(fcn_call_T),
  sizeof(int_T),
  sizeof(pointer_T),
  sizeof(action_T),
  2*sizeof(uint32_T)
};

static const char_T * rtDataTypeNames[] = {
  "real_T",
  "real32_T",
  "int8_T",
  "uint8_T",
  "int16_T",
  "uint16_T",
  "int32_T",
  "uint32_T",
  "boolean_T",
  "fcn_call_T",
  "int_T",
  "pointer_T",
  "action_T",
  "timer_uint32_pair_T"
};

static DataTypeTransition rtBTransitions[] = {
  { (char_T *)(&rtB.Integrator), 0, 0, 101 },

  { (char_T *)(&rtB.LogicalOperator), 8, 0, 1 }
  ,

  { (char_T *)(&rtDWork.Derivative_RWORK.TimeStampA), 0, 0, 3 },

  { (char_T *)(&rtDWork.Scope_PWORK.LoggedData), 11, 0, 20 },

  { (char_T *)(&rtDWork.MinMax2_MODE), 10, 0, 2 },

  { (char_T *)(&rtDWork.Fcn_DWORK1), 2, 0, 9 },

  { (char_T *)(&rtDWork.is_active_c2_cardio_v4), 3, 0, 1 },

  { (char_T *)(&rtDWork.RelationalOperator_Mode), 8, 0, 17 }
};

static DataTypeTransitionTable rtBTransTable = {
  8U,
  rtBTransitions
};

static DataTypeTransition rtPTransitions[] = {
  { (char_T *)(&rtP.Integrator_IC), 0, 0, 233 }
};

static DataTypeTransitionTable rtPTransTable = {
  1U,
  rtPTransitions
};
