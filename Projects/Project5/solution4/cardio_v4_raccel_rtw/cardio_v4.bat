@echo off
set MATLAB=C:\Program Files\MATLAB\R2009b
"%MATLAB%\bin\win32\gmake" -f cardio_v4.mk  GENERATE_REPORT=0 RSIM_SOLVER_SELECTION=2
