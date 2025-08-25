clc
clear
close all
E1=linspace(2.2,3.2);
E2=linspace(0,1);
i=0.07; %για ΑΜ που λήγει σε 070
Ne1=0.8/(10^13*pi^2)*(2.18*i*9.11*10^(-31)/(1.055*10^(-34))^2)^(3/2)*(E1-2.2).^(1/2); %Οι μετατροπές μονάδων έγιναν κατευθείαν
Ne2=0.8/(10^13*pi^2)*(2.3*i*9.11*10^(-31)/(1.055*10^(-34))^2)^(3/2)*(1-E2).^(1/2); 
Ev=1;
Ec=2.2;
plot(Ne1,E1,Ne2,E2,'g','MarkerSize',20);
yline(Ec, 'k--'); 
yline(Ev, 'k--'); 
xlabel('N(E)(cm^{-3}*eV^{-1})');
ylabel('E(eV)');
legend('electrons','holes','Location','northeast');
grid on;