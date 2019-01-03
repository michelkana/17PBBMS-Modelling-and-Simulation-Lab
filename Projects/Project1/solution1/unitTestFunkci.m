clear all;
clc;
KSUM=3;
disp('Start test')
disp(' ')
disp('TEST Malthusuv model')
x0=10;
r=2;
t=10;
mal=fceMalthus(x0,r,t);
if  mal(t)==x0*exp(r*t)
    disp('Malthus OK')
    KSUM=KSUM-1;
else
    disp('Maltus CHYBA')
end
disp(' ')
disp('TEST Logisticky model')
x0=10;
r=2;
t=10;
K=100;
logic=fceLogistic(x0,r,t,K);

if int32(logic(10))==109
    disp('Logisticky model OK')
    KSUM=KSUM-1;
else
    disp('Logisticky model CHYBA')
end
disp(' ')
disp('TEST model Lodky-Voltery')
x0=100;
y0=20;
t=15;
rustx=0.75;
lov=.01;
pretvoreni=.02;
umrtnost=0.2;
LaV=fceLodkyVoltery(x0,y0,t,rustx,lov,pretvoreni, umrtnost);

if int32(LaV(1,10))==41 && int32(LaV(2,10))==23
    disp('test Lodky a Voltery OK')
    KSUM=KSUM-1;
else
     disp('test Lodky a Voltery CHYBA')
end
disp('_________________________')
if KSUM==0
    disp('UnitTEST probehl uspesne')
else
    disp('UnitTEST neuspesny, pocet chyb:') 
    disp(KSUM)
    
end
