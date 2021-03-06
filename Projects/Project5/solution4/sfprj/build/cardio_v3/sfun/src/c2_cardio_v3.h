#ifndef __c2_cardio_v3_h__
#define __c2_cardio_v3_h__

/* Include files */
#include "sfc_sf.h"
#include "sfc_mex.h"

/* Type Definitions */

typedef struct {
  SimStruct *S;
  uint32_T chartNumber;
  uint32_T instanceNumber;
  boolean_T c2_doneDoubleBufferReInit;
  uint8_T c2_is_active_c2_cardio_v3;
  ChartInfoStruct chartInfo;
} SFc2_cardio_v3InstanceStruct;

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */
const mxArray *sf_c2_cardio_v3_get_eml_resolved_functions_info(void);

/* Function Definitions */

extern void sf_c2_cardio_v3_get_check_sum(mxArray *plhs[]);
extern void c2_cardio_v3_method_dispatcher(SimStruct *S, int_T method, void
 *data);

#endif

