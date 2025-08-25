clc
clear
close all
k=8.62*10^(-5);
T=linspace(0,1600,200);
%Si
A1=3.2841*10^15;
Eg1=1.12;
n1=A1.*T.^(3/2).*exp(-Eg1./(2*k.*T));
semilogy(T,n1,'b');
hold on;
%Ge
A2=1.52*10^15;
Eg2=0.66;
n2=A2.*T.^(3/2).*exp(-Eg2./(2*k.*T));
semilogy(T,n2,'m');
hold on;
%GaAs
A3=3.49*10^14;
Eg3=1.4;
n3=A3.*T.^(3/2).*exp(-Eg3./(2*k.*T));
semilogy(T,n3,'r');
hold on;
grid on;
legend('Si','Ge','GaAs','Location','northeast');
xlabel('Temperature(K)');
ylabel('n_i(cm^{-3})');
xlim([200 1600]);
ylim([1 1e20]);