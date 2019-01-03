r=200000000000;
d=0.002;
N = 30000000000000;
t=0:365;

for index=t
    
    N=r+N-d*N;
    
end

N