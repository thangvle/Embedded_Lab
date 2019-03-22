clear;
clc;

% initialize 1D array to store sinuisoid window of 4096 discrete points.
x = zeros(1, 4096);

num = [b0 b1 b2 b3 b4]
sys = tf(num,[1 0 0 0 0])
%y(m) = b0 + b1*x(m-1) + b2*x(m-2) +  b3*x(m-3) + b4*x(m-4)

bode(sys);

%% finding b value
b0 = mod(1,2) + 1;  %2
b1 = mod(2,3) + 1;  %3  
b2 = mod(3,4) + 1;  %4
b3 = mod(5,5) + 1;  %1
b4 = mod(0,6) + 1;  %1

%% Transfer function

sys = tf([b0 b1 b2 b3 b4],[1 0 0 0 0], 20e-6)   %initialize transfer function

[z,p,k] = zpkdata(sys);     %finding zeros, poles, gain of tf

disp("gain: " + k);
z
p

figure(9)
pzplot(sys);    %ploting zero-pole plane

%% signal processing in a window of 4096 discrete points
% initialize a window of 4096 discrete points
for i = 1:4096
    x(i) = sin(2*pi*i/4096);    % i/4096 represents the Fs
end

for n = 1:8 % inputting every nth point
    j = 1;
    H = [];
    for i = 5:n:4096
        H(j) = b0*x(i) + b1*x(i-1) + b2*x(i-2) + b3*x(i-3) + b4*x(i-4);
        j = j + 1;
    end
    figure(n);
    title(n)
    plot(H);
end

