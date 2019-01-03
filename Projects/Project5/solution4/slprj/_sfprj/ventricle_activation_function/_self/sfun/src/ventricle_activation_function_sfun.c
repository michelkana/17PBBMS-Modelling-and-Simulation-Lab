/* Include files */

#include "ventricle_activation_function_sfun.h"
#include "c2_ventricle_activation_function.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */
int32_T _sfEvent_;
uint32_T _ventricle_activation_functionMachineNumber_;
real_T _sfTime_;

/* Function Declarations */

/* Function Definitions */
void ventricle_activation_function_initializer(void)
{
  _sfEvent_ = CALL_EVENT;
}

void ventricle_activation_function_terminator(void)
{
}

/* SFunction Glue Code */
unsigned int sf_ventricle_activation_function_method_dispatcher(SimStruct
  *simstructPtr, unsigned int chartFileNumber, int_T method, void *data)
{
  if (chartFileNumber==2) {
    c2_ventricle_activation_function_method_dispatcher(simstructPtr, method,
      data);
    return 1;
  }

  return 0;
}

unsigned int sf_ventricle_activation_function_process_check_sum_call( int nlhs,
  mxArray * plhs[], int nrhs, const mxArray * prhs[] )
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
      ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(214469932U);
      ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(2617094775U);
      ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(797990625U);
      ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(1076645107U);
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
          extern void sf_c2_ventricle_activation_function_get_check_sum(mxArray *
            plhs[]);
          sf_c2_ventricle_activation_function_get_check_sum(plhs);
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
    ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(2431693267U);
    ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(1285162643U);
    ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(722599451U);
    ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(2873613248U);
  }

  return 1;

#else

  return 0;

#endif

}

unsigned int sf_ventricle_activation_function_autoinheritance_info( int nlhs,
  mxArray * plhs[], int nrhs, const mxArray * prhs[] )
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
        extern mxArray
          *sf_c2_ventricle_activation_function_get_autoinheritance_info(void);
        plhs[0] = sf_c2_ventricle_activation_function_get_autoinheritance_info();
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

unsigned int sf_ventricle_activation_function_get_eml_resolved_functions_info
  ( int nlhs, mxArray * plhs[], int nrhs, const mxArray * prhs[] )
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
        extern const mxArray
          *sf_c2_ventricle_activation_function_get_eml_resolved_functions_info
          (void);
        mxArray *persistentMxArray = (mxArray *)
          sf_c2_ventricle_activation_function_get_eml_resolved_functions_info();
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

void ventricle_activation_function_debug_initialize(void)
{
  _ventricle_activation_functionMachineNumber_ = sf_debug_initialize_machine(
    "ventricle_activation_function","sfun",0,1,0,0,0);
  sf_debug_set_machine_event_thresholds
    (_ventricle_activation_functionMachineNumber_,0,0);
  sf_debug_set_machine_data_thresholds
    (_ventricle_activation_functionMachineNumber_,0);
}

void ventricle_activation_function_register_exported_symbols(SimStruct* S)
{
}
