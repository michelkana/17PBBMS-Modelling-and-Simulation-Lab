function [] = coddrkozpo( ktau1, kK1, krou1, kini, ptau2, pK2, prou2 , pini)
%Inputs ktau1, kK1, krou1, kini, ptau2, pK2, prou2 , pini
%ktau1 - nastavuje tau u koristi
%kK1 - nastavuje K1 u koristi
%krou1 - nastavuje rou1 u koristi
%kini - nastavuje pocatecni podminku v integratoru u koristi - populace
%ptau2 - nastavuje tau u predatora
%pK2 - nastavuje K2 u predatora
%prou2 - nastavuje rou2 u predatora
%pini - nastavuje pocatecni podminku v integratoru u predatora - populace

modelname='mdldrkozpo';
open_system(modelname);
%pini=0;


%setup parametres
set_param([modelname '/ktau1'],'Value',num2str(ktau1)); %nastavuje tau u koristi
set_param([modelname '/kK1'],'Value',num2str(kK1)); %nastavuje K1 u koristi
set_param([modelname '/krou1'],'Value',num2str(krou1)); %nastavuje rou1 u koristi
set_param([modelname '/kini'],'Value',num2str(kini)); %nastavuje pocatecni podminku v integratoru u koristi

set_param([modelname '/ptau2'],'Value',num2str(ptau2)); %nastavuje tau u predatora
set_param([modelname '/pK2'],'Value',num2str(pK2)); %nastavuje K1 u predatora
set_param([modelname '/prou2'],'Value',num2str(prou2)); %nastavuje rou1 u predatora
set_param([modelname '/pini'],'Value',num2str(pini)); %nastavuje pocatecni podminku v integratoru u predatora

%simulation
sim(modelname);

%outputs
plot(sc.time,sc.signals.values(:,1),sc.time,sc.signals.values(:,2))

end

