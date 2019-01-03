function [ pole ] = fceMalthus( x0, r, t)
%x0 pocatecni velikost populace
%r parametr rustu
%t cas simulace
pole=zeros(1,t);
pole(1)=x0;
for i=2: 1: t
    pole(i)=x0*exp(r*i);  
    if pole(1)<=0
        pole(1)=0;
    end
end

end

