function [U_hod] = U_hodnoty(vstup)

[m,n] = size(vstup);
for i=1:m
   U_hod(i) = vstup(i,2);  
end

end
