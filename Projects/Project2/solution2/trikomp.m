function trikomp( param,t)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
open_system('trikompar');
set_param('trikompar/u1','Value',num2str(param(1)));
set_param('trikompar/k12','Gain',num2str(param(2)));
set_param('trikompar/k21','Gain',num2str(param(3)));
set_param('trikompar/k22','Gain',num2str(param(4)));
set_param('trikompar/k31','Gain',num2str(param(5)));
set_param('trikompar/k13','Gain',num2str(param(6)));
sim('trikompar',t);
plot(simout3);
%close_model('trikompar');

