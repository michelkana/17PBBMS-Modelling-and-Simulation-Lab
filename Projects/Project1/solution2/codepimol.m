function [] = codepimol( r, ininachyl, ininemoc, iniodol, a )
%Inputs r, ininachyl, ininemoc, iniodol, a, t
%r - nastavuje rychlost sireni infekce
%ininachyl - nastavuje pocatecni hodnotu integratoru - pocet jedincu nachylnych na nemoc
%ininemoc - nastavuje pocatecni hodnotu integratoru - pocet nemocnych jedincu
%iniodol - nastavuje pocatecni hodnotu integratoru - pocet odolnych jedincu
%a - nastavuje rychlost izolace nebo leceni

modelname='mdlepimol';
open_system(modelname);

%setup parametres
set_param([modelname '/r'],'Value',num2str(r)); %nastavuje rychlost sireni infekce
set_param([modelname '/ininachyl'],'Value',num2str(ininachyl)); %nastavuje pocatecni hodnotu integratoru - pocet jed. nachylnych na nemoc
set_param([modelname '/ininemoc'],'Value',num2str(ininemoc)); %nastavuje pocatecni hodnotu integratoru - pocet nemocnych jedincu
set_param([modelname '/iniodol'],'Value',num2str(iniodol)); %nastavuje pocatecni hodnotu integratoru - pocet odolnych jedincu
set_param([modelname '/a'],'Value',num2str(a)); %nastavuje rychlost izolace nebo leceni

%simulation
sim(modelname);

%outputs
plot(sc.time, sc.signals.values)
end

