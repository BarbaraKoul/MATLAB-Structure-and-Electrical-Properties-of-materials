clc
clear
close all
N=logspace(14,20);
L=0.8070; %για ΑΜ που λήγει σε 070
mn=(5.1*10^18.*L+92*N.^(0.91))./(3.75*10^15+N.^(0.91));
mp=(2.9*10^15.*L+47.7*N.^(0.76))./(5.86*10^12+N.^(0.76));
semilogx(N,mn,'b');
hold on;
semilogx(N,mp,'g');
hold on;
grid on;
xlabel('Doping Concentration N_D or N_A (cm^{-3})');
ylabel('Mobility(cm^{2}/V.s)');
legend('Electon Mobility','Hole Mobility','Location','northeast');
