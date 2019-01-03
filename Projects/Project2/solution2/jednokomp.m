function jednokomp( param,t )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

open_system('jednokompar');
set_param('jednokompar/u1','Value',num2str(param(1)));
set_param('jednokompar/k11','Gain',num2str(param(2)));

sim('jednokompar',t);
plot(simout1);
%close_system('jednokompar');

