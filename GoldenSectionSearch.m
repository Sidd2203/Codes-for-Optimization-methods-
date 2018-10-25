% Golden section search method as Explained in the book 
%"Optimization of Engineering Design: Algorithms and Examples" by Prof. Kalyanmoy Deb
% Code developed by Siddhant Jain
% Matlab version R2013a
% Date: 24th October, 2018
clc
clear
format short
syms x
% Input the function to be minimized
f1=input('Enter the function in x: ');
f=matlabFunction(f1);
% Enter the limits
a=input('Enter the value of lower limit a\n');
b=input('Enter the value of upper limit b\n');
n=input('Enter the number of iterations\n');
eps=0.00001;                                     
tau=((sqrt(5)-1)/2);  
% Initialization
k=0;  
% Initial values
x1=a+(1-tau)*(b-a);
x2=a+tau*(b-a);
fx1=f(x1);
fx2=f(x2);
while abs(b-a)> eps && k<n % Termination condition
  k=k+1;
    if fx1<fx2
        b=x2;
        x2=x1;
        x1=a+(1-tau)*(b-a);
    fx1=f(x1);
    fx2=f(x2);
    else
        a=x1;
        x1=x2;
        x2=a+tau*(b-a);
        
        fx1=f(x1);
        fx2=f(x2);
    end
    k=k+1;
end
    fprintf('The minimun occurs at (%f,%f) \n',x1,x2);