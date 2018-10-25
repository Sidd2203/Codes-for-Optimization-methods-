% Fibonacci search method as Explained in the book 
%"Optimization of Engineering Design: Algorithms and Examples" by Prof. Kalyanmoy Deb
% Code developed by Siddhant Jain
% Matlab version R2013a
% Date: 25th October, 2018
clear
clc
format short % Modify the format as needed  
syms x
% Input the function to be minimized
n=input('no of iterations\n');
%code for creating a fibonacci series
%Since, fib(0) won't exist in MATLAB hence we start with fib(1)
i=1:n+2;
fib(i)=zeros(1,n+2);
fib(1)=1;
fib(2)=1;
k=3;
while k<=n+2
    fib(k)=fib(k-2)+fib(k-1);
    k=k+1;
end
f1=input('Enter the function in x: ');
f=matlabFunction(f1);
% Enter the limits
a=input('Enter the value of lower limit a\n');
b=input('Enter the value of upper limit b\n');                                   
%initialization
d=b-a;
k=2;
%the formula of L has been modified a bit to adjust the corresponding
%values of vector fib(i)
 while k<=n
L=(fib(n-k+2)/fib(n+2))*d;
 x1=a+L;
 x2=b-L;
 if f(x1)<f(x2)
     b=x2;
 else
     a=x1;
 end
  k=k+1;
 end
fprintf('The minima lies in the interval (%f,%f)\n',a,b);
