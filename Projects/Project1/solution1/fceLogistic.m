function [ pole ] = fceLogistic( x0, r, t, K )
% x0 pocatecni stav populace
% r rust populace
% K kapacita
% t cas simulace
kapacita=K;
pole=zeros(1,t);
pole(1)=x0;
for i=2: 1: t
    pole(i)=pole(i-1)+pole(i-1)*r*(1-(pole(i-1)/kapacita));
    if pole(1)<=0
        pole(1)=0;
    end
end

end

