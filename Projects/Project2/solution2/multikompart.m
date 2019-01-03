function multikompart(k,t,a)
open_system('multikompar');

switch a
    case 2
        set_param('multikompar/u1','Value',num2str(k(17)));
        set_param('multikompar/u2','Value',num2str(k(18)));
        set_param('multikompar/u3','Value',num2str(k(19)));
        set_param('multikompar/u3','Value',num2str(k(20)));
        
        set_param('multikompar/dx1','InitialCondition','0');
        set_param('multikompar/dx2','InitialCondition','0');
        set_param('multikompar/dx3','InitialCondition','0');
        set_param('multikompar/dx4','InitialCondition','0');
            
    case 1
        set_param('multikompar/dx1','InitialCondition',num2str(k(17)));
        set_param('multikompar/dx2','InitialCondition',num2str(k(18)));
        set_param('multikompar/dx3','InitialCondition',num2str(k(19)));
        set_param('multikompar/dx4','InitialCondition',num2str(k(20)));
        
        set_param('multikompar/u1','Value','0');
        set_param('multikompar/u2','Value','0');
        set_param('multikompar/u3','Value','0');
        set_param('multikompar/u3','Value','0');
end
        

set_param('multikompar/k11','Value',num2str(k(1)));
set_param('multikompar/k12','Value',num2str(k(2)));
set_param('multikompar/k13','Value',num2str(k(3)));
set_param('multikompar/k14','Value',num2str(k(4)));
set_param('multikompar/k21','Value',num2str(k(5)));
set_param('multikompar/k22','Value',num2str(k(6)));
set_param('multikompar/k23','Value',num2str(k(7)));
set_param('multikompar/k24','Value',num2str(k(8)));
set_param('multikompar/k31','Value',num2str(k(9)));
set_param('multikompar/k32','Value',num2str(k(10)));
set_param('multikompar/k33','Value',num2str(k(11)));
set_param('multikompar/k34','Value',num2str(k(12)));
set_param('multikompar/k41','Value',num2str(k(13)));
set_param('multikompar/k42','Value',num2str(k(14)));
set_param('multikompar/k43','Value',num2str(k(15)));
set_param('multikompar/k44','Value',num2str(k(16)));
sim('multikompar',t);
plot(simout);
title('Množství/èas');
xlabel('Èas');
ylabel('Množství');
legend('X1','X2','X3','X4','Location','NorthEastOutside');
