clear;

b0 = mod(1,2) + 1;
b1 = mod(2,3) + 1;
b2 = mod(3,4) + 1;
b3 = mod(5,5) + 1;
b4 = mod(0,6) + 1; 

num = [b0 b1 b2 b3 b4]
sys = tf(num,[1 0 0 0 0])
%y(m) = b0 + b1*x(m-1) + b2*x(m-2) +  b3*x(m-3) + b4*x(m-4)

bode(sys);
