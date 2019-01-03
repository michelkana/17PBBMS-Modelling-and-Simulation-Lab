function ctyrkomp( param,t )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

open_system('ctyrkompart');
set_param('ctyrkompart/u1','Value',num2str(param(1)));
set_param('ctyrkompart/k12','Gain',num2str(param(2)));
set_param('ctyrkompart/k21','Gain',num2str(param(3)));
set_param('ctyrkompart/k32','Gain',num2str(param(4)));
set_param('ctyrkompart/k23','Gain',num2str(param(5)));
set_param('ctyrkompart/k44','Gain',num2str(param(6)));
set_param('ctyrkompart/k34','Gain',num2str(param(7)));
sim('ctyrkompart',t);
plot(simout4);
%close_system('ctyrkompart');

