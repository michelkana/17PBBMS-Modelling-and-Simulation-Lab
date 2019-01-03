function [ pole ] = fceLodkyVoltery( x0, y0, t, rustx, loveni, pretvoreni, umrtnost)

pole=zeros(2,t);
pole(1,1)=x0;
pole(2,1)=y0;
for i=2: 1: t-1
    
    pole(1,i+1)=pole(1,i)+(rustx*pole(1,i)-(loveni*pole(1,i)*pole(2,i)));
    if pole(1,i+1)<1
        pole(1,i+1)=1;
    end
    pole(2,i+1)=pole(1,i)+((loveni*pretvoreni*pole(1,i)*pole(2,i))-(umrtnost*pole(2,i)));
    if pole(2,i+1)<1
        pole(2,i+1)=1;
    end
end

end

