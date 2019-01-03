function []=codmalthus(u1,ini )
%Inputs u1,ini 
%u1 - je porodnost 
%ini - je pocatecni hodnota integratoru - pocatecni populace


modelname='mdlmalthus';
open_system(modelname);

%setup parametres
set_param([modelname '/u1'],'Value',num2str(u1));
set_param([modelname '/ini'],'Value',num2str(ini));

%simulation
sim(modelname);

%setup outputs
plot( sc.time, sc.signals.values)
%close_system(modelname);
end