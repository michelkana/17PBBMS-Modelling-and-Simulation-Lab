/* Include files */

#include "cardio_v3_sfun.h"
#include "c2_cardio_v3.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */
int32_T _sfEvent_;
uint32_T _cardio_v3MachineNumber_;
real_T _sfTime_;

/* Function Declarations */

/* Function Definitions */
void cardio_v3_initializer(void)
{
  _sfEvent_ = CALL_EVENT;
}

void cardio_v3_terminator(void)
{
}

/* SFunction Glue Code */
unsigned int sf_cardio_v3_method_dispatcher(SimStruct *simstructPtr, unsigned
  int chartFileNumber, int_T method, void *data)
{
  if (chartFileNumber==2) {
    c2_cardio_v3_method_dispatcher(simstructPtr, method, data);
    return 1;
  }

  return 0;
}

unsigned int sf_cardio_v3_process_check_sum_call( int nlhs, mxArray * plhs[],
  int nrhs, const mxArray * prhs[] )
{

#ifdef MATLAB_MEX_FILE

  char commandName[20];
  if (nrhs<1 || !mxIsChar(prhs[0]) )
    return 0;

  /* Possible call to get the checksum */
  mxGetString(prhs[0], commandName,sizeof(commandName)/sizeof(char));
  commandName[(sizeof(commandName)/sizeof(char)-1)] = '\0';
  if (strcmp(commandName,"sf_get_check_sum"))
    return 0;
  plhs[0] = mxCreateDoubleMatrix( 1,4,mxREAL);
  if (nrhs>1 && mxIsChar(prhs[1])) {
    mxGetString(prhs[1], commandName,sizeof(commandName)/sizeof(char));
    commandName[(sizeof(commandName)/sizeof(char)-1)] = '\0';
    if (!strcmp(commandName,"machine")) {
      ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(1035750212U);
      ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(4064572045U);
      ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(3393440499U);
      ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(2747091551U);
    } else if (!strcmp(commandName,"exportedFcn")) {
      ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(0U);
      ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(0U);
      ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(0U);
      ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(0U);
    } else if (!strcmp(commandName,"makefile")) {
      ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(3866525943U);
      ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(2050288410U);
      ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(2406395632U);
      ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(2742741607U);
    } else if (nrhs==3 && !strcmp(commandName,"chart")) {
      unsigned int chartFileNumber;
      chartFileNumber = (unsigned int)mxGetScalar(prhs[2]);
      switch (chartFileNumber) {
       case 2:
        {
          extern void sf_c2_cardio_v3_get_check_sum(mxArray *plhs[]);
          sf_c2_cardio_v3_get_check_sum(plhs);
          break;
        }

       default:
        ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(0.0);
        ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(0.0);
        ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(0.0);
        ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(0.0);
      }
    } else if (!strcmp(commandName,"target")) {
      ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(1202817889U);
      ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(2707286010U);
      ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(801213713U);
      ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(289536825U);
    } else {
      return 0;
    }
  } else {
    ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(1124629155U);
    ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(1600187347U);
    ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(2520489005U);
    ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(2362047773U);
  }

  return 1;

#else

  return 0;

#endif

}

unsigned int sf_cardio_v3_autoinheritance_info( int nlhs, mxArray * plhs[], int
  nrhs, const mxArray * prhs[] )
{

#ifdef MATLAB_MEX_FILE

  char commandName[32];
  if (nrhs<2 || !mxIsChar(prhs[0]) )
    return 0;

  /* Possible call to get the autoinheritance_info */
  mxGetString(prhs[0], commandName,sizeof(commandName)/sizeof(char));
  commandName[(sizeof(commandName)/sizeof(char)-1)] = '\0';
  if (strcmp(commandName,"get_autoinheritance_info"))
    return 0;

  {
    unsigned int chartFileNumber;
    chartFileNumber = (unsigned int)mxGetScalar(prhs[1]);
    switch (chartFileNumber) {
     case 2:
      {
        extern mxArray *sf_c2_cardio_v3_get_autoinheritance_info(void);
        plhs[0] = sf_c2_cardio_v3_get_autoinheritance_info();
        break;
      }

     default:
      plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
    }
  }

  return 1;

#else

  return 0;

#endif

}

unsigned int sf_cardio_v3_get_eml_resolved_functions_info( int nlhs, mxArray *
  plhs[], int nrhs, const mxArray * prhs[] )
{

#ifdef MATLAB_MEX_FILE

  char commandName[64];
  if (nrhs<2 || !mxIsChar(prhs[0]))
    return 0;

  /* Possible call to get the get_eml_resolved_functions_info */
  mxGetString(prhs[0], commandName,sizeof(commandName)/sizeof(char));
  commandName[(sizeof(commandName)/sizeof(char)-1)] = '\0';
  if (strcmp(commandName,"get_eml_resolved_functions_info"))
    return 0;

  {
    unsigned int chartFileNumber;
    chartFileNumber = (unsigned int)mxGetScalar(prhs[1]);
    switch (chartFileNumber) {
     case 2:
      {
        extern const mxArray *sf_c2_cardio_v3_get_eml_resolved_functions_info
          (void);
        mxArray *persistentMxArray = (mxArray *)
          sf_c2_cardio_v3_get_eml_resolved_functions_info();
        plhs[0] = mxDuplicateArray(persistentMxArray);
        mxDestroyArray(persistentMxArray);
        break;
      }

     default:
      plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
    }
  }

  return 1;

#else

  return 0;

#endif

}

void cardio_v3_debug_initialize(void)
{
  _cardio_v3MachineNumber_ = sf_debug_initialize_machine("cardio_v3","sfun",0,1,
    0,0,0);
  sf_debug_set_machine_event_thresholds(_cardio_v3MachineNumber_,0,0);
  sf_debug_set_machine_data_thresholds(_cardio_v3MachineNumber_,0);
}

void cardio_v3_register_exported_symbols(SimStruct* S)
{
}
