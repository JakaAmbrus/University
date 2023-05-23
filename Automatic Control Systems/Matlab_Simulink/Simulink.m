m = 60;
d = 0.1;
S = 45;
lambda = 0.1;
cp = 1012;
Tz = 10;
Tn = 5;
Tr=Tz-Tn;
a = -(lambda * S) / (m * cp * d);
b = 1 / (m * cp);
P=500;
K=d/(S*lambda)
T=m*cp*d/(S*lambda)

%1.Naloga
Y1=sim('VAJA3_1');
figure(1)
plot(Y1.tout,Y1.ena)
xlabel('t/s')
ylabel('T/°C')
title('1. NALOGA')
hold on
%2.Naloga
Y2=sim('VAJA3');
figure(2)
plot(Y2.tout,Y2.dva)
xlabel('t/s')
ylabel('T/°C')
title('2. NALOGA')
hold on
%3.Naloga
Y3=sim('VAJA3_3');
figure(3)
plot(Y3.tout,Y3.tri)
xlabel('t/s')
ylabel('P/W')
hold on
Y3=sim('VAJA3_3');
a=a/2
plot(Y3.tout,Y3.tri)
xlabel('t/s')
ylabel('P/W')
title('3. NALOGA')
hold on
Y3=sim('VAJA3_3');
a=a*2
P=P/2
plot(Y3.tout,Y3.tri)
xlabel('t/s')
ylabel('P/W')
hold on
Y3=sim('VAJA3_3');
a=a/2
plot(Y3.tout,Y3.tri)
xlabel('t/s')
ylabel('P/W')
hold on
title('3. NALOGA')
xlabel('t/s')
ylabel('T/°C')
legend('P=500,d=0,1','P=500,d=0,2','P=250,d=0,1','P=250,d=0,2')
hold off
grid on









