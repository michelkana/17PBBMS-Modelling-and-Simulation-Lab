function dvoukomp(param,t)

%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
open_system('dvoukompar');
set_param('dvoukompar/V1','Value',num2str(param(1)));
set_param('dvoukompar/K11','Gain',num2str(param(2)));
set_param('dvoukompar/K12','Gain',num2str(param(3)));
set_param('dvoukompar/K21','Gain',num2str(param(4)));
sim('dvoukompar',t);
plot(simout2);
%close_system('dvoukompar');

