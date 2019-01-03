function [A] = f_A(kompartment, dist)

string = 'k';
[m,n] = size(dist);
s = 1;
for i=1:m
    for j=1:kompartment
        if(dist(i,1) == j)
           string_k = strcat(string, num2str(j));
            for x=1:kompartment
                if(dist(i,2) == x)         
                    string_k_n = strcat(string_k, num2str(x));
                    sub_A(j,s) = sym(string_k_n)*-1;
                    s = s + 1;
                end  
            end
        end
    end 
end

sub_A
%--------------------------------------------------------------------------

q = 1;
[m,n] = size(sub_A);
string = '';
for i=1:m
   for j=1:n 
       if(sub_A(i,j)~=0)
        string = strcat(string,char(sub_A(i,j)));
       end  
   end
   A(q,q) = sym(string);
   q = q + 1;
   string = ''; 
end

A
%--------------------------------------------------------------------------

[m,n] = size(dist);
string = 'k';
for i=1:m
    if(dist(i,1) ~= dist(i,2))
        string_k = strcat(string, num2str(dist(i,1)));
        string_k_n = strcat(string_k, num2str(dist(i,2)));
        A(dist(i,2),dist(i,1)) =  sym(string_k_n);
    end
end

A
%--------------------------------------------------------------------------

end


