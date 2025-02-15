clc
clear
close all
%% defination equation dot(x)=a*x+b*u, u=sin(omega *t)
 % Developer name
a=-1; %param1
b=2; %param2
omega=0.2;% param3
Ts=0.01;  % Sample time
x(1)=0; %param 4 initial condition
Tf=20; %final time
%% runing
t=0:Ts:Tf;
u=sin(t*omega);% input
L=length(t);
i=1;
while(i<L)
x(i+1)=x(i)+Ts*(a*x(i)+b*u(i));
i=i+1;
end
figure()
hold on
grid minor
plot(t,x,'b')
plot(t,u,'r')

