function []=codlogisti(ini1,K1,ro1,Tau1 )
%Inputs ini1,K1,ro1,Tau1

modelname='mdllogisti';
open_system(modelname);

%setup parametres
set_param([modelname '/ini1'],'Value',num2str(ini1));
set_param([modelname '/K1'],'Value',num2str(K1));
set_param([modelname '/ro1'],'Value',num2str(ro1));
set_param([modelname '/Tau1'],'Value',num2str(Tau1));


%simulation
sim(modelname);

%setup outputs
plot(sc.time, sc.signals.values)
end

