function [B]= f_B(kompartment,vstup)

    B = zeros(kompartment);
    [m,n] = size(vstup);

    for i=1:kompartment
       for j=1:kompartment
           if(i == j)
              for z=1:m
                  if(vstup(z,1) == i)
                      B(i,j) = 1;
                  end
              end
           end
       end
    end

end

