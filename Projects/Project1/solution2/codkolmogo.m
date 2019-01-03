function [] = codkolmogo( rou1, K1, P, C, a, e, m, ini1, ini2 )
%Inputs rou1, K1, P, C, a, e, m, ini1, ini2
%rou1 - nastavuje porodnost koristi
%K1 - nastavuje kapacitu zivotniho prostredi
%P - nastavuje maximalni prirustek dravce
%C - nastavuje paremetr premeny biomasy
%a,e,m - jsou pozitivni konstanty
%ini1 - pocatecni hodnota integratoru
%ini2 - pocatecni hodnota integratoru

modelname='mdlkolmogo';
open_system(modelname);
%setup parametres
set_param([modelname '/rou1'],'Value',num2str(rou1)); %nastavuje porodnost koristi
set_param([modelname '/K1'],'Value',num2str(K1)); %nastavuje kapacita zivot. prost.
set_param([modelname '/P'],'Value',num2str(P)); %nastavuje max prirustek dravce
set_param([modelname '/C'],'Value',num2str(C)); %nastavuje paremetr premeny biomasy
set_param([modelname '/a'],'Value',num2str(a));
set_param([modelname '/e'],'Value',num2str(e)); %pozitivni konstanta
set_param([modelname '/m'],'Value',num2str(m)); %pozitivni konstanta
set_param([modelname '/ini1'],'Value',num2str(ini1)); %pocatecni hodnota integratoru
set_param([modelname '/ini2'],'Value',num2str(ini2)); %pozitivni hodnota integratoru


%simulation
sim(modelname);

%outputs
plot(sc.time,sc.signals.values(:,1),sc.time,sc.signals.values(:,2))

end

