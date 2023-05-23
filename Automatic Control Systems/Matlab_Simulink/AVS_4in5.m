m = 60;
d = 0.1;
S = 45;
lambda = 0.1;
cp = 1012;
a = -(lambda * S) / (m * cp * d);
b = 1 / (m * cp);
K=d/(S*lambda)
T=m*cp*d/(S*lambda)
Tzz=T/10
%->SLEDILNO P<-%
%Ojačanje P regulatorja
Kp=(T-Tzz)/(K*Tzz)%405
%Simulacija:
Y1=sim('AVS_SIM4');
figure(1)
hold on
title('P SLEDILNO')
xlabel('t/s')
ylabel('T/°C')
plot(Y1.tout,Y1.A)
plot(Y1.tout,Y1.B)
plot(Y1.tout,Y1.ref+10)
hold off
%Ojačanje zaprtozančnega sistema
Kzz=(Kp*K)/(Kp*K+1)%0.9
Tz=T/(Kp*K+1)%134.93

%->REGULACIJSKO P<-
figure(2)
hold on
title('P REAKCIJSKO')
xlabel('t/s')
ylabel('T/°C')
plot(Y1.tout,Y1.C)
plot(Y1.tout,Y1.CR+10)
hold off
%Ojačanje zaprtozančnega sistema
KM=K/(Kp*K+1)%0.0022
TM=T/(Kp*K+1)%134.93+

%->SLEDILNO PI<-
figure(3)
KP=T/(K*Tzz)%495
KI=Kp/T%0.3669
hold on
title('PI SLEDILNO')
xlabel('t/s')
ylabel('T/°C')
plot(Y1.tout,Y1.D)
plot(Y1.tout,Y1.DR+10)
hold off

%->REGULACIJSKO PI<-
figure(4)
hold on
title('PI REAKCIJSKO')
xlabel('t/s')
ylabel('T/°C')
plot(Y1.tout,Y1.E)
plot(Y1.tout,Y1.ER+10)
hold off