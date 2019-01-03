function [A_hod] = A_hodnoty(kompartment, dist)

[m,n] = size(dist);
for i=1:m
   for j=1:kompartment
       if(dist(i,1) == j)
           cislo_1 = j;
       end
       if(dist(i,2) == j)
           cislo_2 = j;
       end
   end
   A_hod(cislo_1,cislo_2) = dist(i,3);   
end
   

end