function [C]= f_C(kompartment,mereni)


    C = zeros(kompartment);
    C = sym(C);
    [m,n] = size(mereni);
    string = 'V';

    
    for i=1:kompartment
       for j=1:kompartment
           if(i == j)
              for z=1:m
                  if(mereni(z,1) == i)
                      if(mereni(z,2) == 1)
                         C(i,j) = sym(1);
                      else
                        string_V = strcat(string, num2str(i)); 
                        C(i,j)=1/sym(string_V);   
                      end
                  end
              end
           end
       end
    end

 end
