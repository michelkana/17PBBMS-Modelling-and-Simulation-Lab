function []=codspol2pop(ini1,ini2,K1,K2,ro1,ro2,b12,b21 )
%Inputs ini1,ini2,K1,K2,ro1,ro2,b12,b21
%ini1 - nastavuje hodnotu prvniho integratoru - pocet jedincu v prvni
%populaci
%ini2 - nastavuje hodnotu druheho integratoru - pocet jedincu ve druhe
%populaci
%K1 - je kapacita prostredi pro prvni populaci
%K2 - je kapacita prostredi pro druhou populaci
%ro1 - je relativni porodnost prvni populace
%ro2 - je relativni porodnost druhe populace
%b12 - reprezentuje konkurencni vliv druhe populace na prvni
%b21 - reprezentuje konkurencni vliv prvni populace na druhou


modelname='mdlspol2pop';
open_system(modelname);

%setup parametres
set_param([modelname '/ini1'],'Value',num2str(ini1));
set_param([modelname '/ini2'],'Value',num2str(ini2));
set_param([modelname '/K1'],'Value',num2str(K1));
set_param([modelname '/K2'],'Value',num2str(K2));
set_param([modelname '/ro1'],'Value',num2str(ro1));
set_param([modelname '/ro2'],'Value',num2str(ro2));
set_param([modelname '/b12'],'Gain',num2str(b12));
set_param([modelname '/b21'],'Gain',num2str(b21));


%simulation
sim(modelname);

%setup outputs

plot(sc.time,sc.signals.values(:,1),sc.time,sc.signals.values(:,2))

end

