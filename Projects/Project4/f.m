function Fi = f(param, C, t, DX, DY, kompartment, A_hod, U_hod)
% V1 = 1;
[m,n] = size(DX);

switch m
    case 1
        S = dsolve(strcat('DX1=', char(DX(1,1))), 'X1(0)=0', 't');
    case 2
        S = dsolve(strcat('DX1=', char(DX(1,1))),strcat('DX2=', char(DX(2,1))), 'X1(0)=0','X2(0)=0', 't');
    case 3
        S = dsolve(strcat('DX1=', char(DX(1,1))),strcat('DX2=', char(DX(2,1))),strcat('DX3=', char(DX(3,1))), 'X1(0)=0','X2(0)=0','X3(0)=0', 't');
    case 4
        S = dsolve(strcat('DX1=', char(DX(1,1))),strcat('DX2=', char(DX(2,1))),strcat('DX3=', char(DX(3,1))),strcat('DX4=', char(DX(4,1))), 'X1(0)=0','X2(0)=0','X3(0)=0','X4(0)=0', 't');
    case 5
        S = dsolve(strcat('DX1=', char(DX(1,1))),strcat('DX2=', char(DX(2,1))),strcat('DX3=', char(DX(3,1))),strcat('DX4=', char(DX(4,1))),strcat('DX5=', char(DX(5,1))), 'X1(0)=0','X2(0)=0','X3(0)=0','X4(0)=0','X5(0)=0', 't');
end

[m,n] = size(A_hod);
for i=1:m
   for j=1:n
       string = strcat(strcat('k', num2str(i)),num2str(j));
       eval([string,'=',int2str(A_hod(i,j))]);
   end
end 


for i=1:length(U_hod)
    eval(['U',int2str(i),strcat('=',int2str(U_hod(i)))]);
end 


[m,n] = size(DY);
for i=1:m
   if(DY(i,1) ~= 0)
        Y1 = strcat('S.',char(DY(i,1)))
      break;
   end
end

Y1 = eval(Y1)
% Y1=S.X1;
% X1=subs(S.X1);
% X2=subs(S.X2);
Y=subs(Y1);
Fi = Y-C;
Fi = double(Fi);