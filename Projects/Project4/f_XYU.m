 function [matrix]= f_XYU(kompartment,name)
    for i=1:kompartment
       string = strcat(name, num2str(i));
       matrix(i,1) = sym(string); 
    end
end