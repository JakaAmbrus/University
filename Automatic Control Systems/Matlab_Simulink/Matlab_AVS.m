m=60; %kg
cp=1012; %J/kgK
A=0.1; %W/K
S=45; %m^2
d=0.1; %m
Tz=10; %°C
Tn=10; %°C

%1. Naloga
a1=-(S*A)/(m*cp*d);
b=1/(cp*m);
s=tf('s');
g0=b/(s-a1);
K=dcgain(g0) %ojacanje
tk=-1/a1 %casovna konstanta

%2. Naloga
hold off;
Pg=500; 
[y, t]=step(g0);
y0=Pg*step(g0);

plot(t, y0 + Tn, 'color','g');

%3. Naloga


Pg2=250;%W
g1=b/(s-a1);
[y, t]=step(g1);
y1=Pg2 * step(g1);
d2=0.2;%m
a2=-(A * S)/(m*cp*d2);
b2=1/(m*cp);
g2= b2/(s-a2);
[y, t]=step(g2);
y2=Pg2* step(g2);
a3=-(A*S)/(m*cp*d2);
b3=1/(m*cp);
g3=b3/(s-a3);
[y, t]=step(g3);
y3=Pg*step(g3);

figure(1)
xlabel('t[s]') 
ylabel('T[°C]')
hold on

plot(t, y1 + Tn,'color','b');
plot(t, y2 + Tn,'color','y');
plot(t, y3 + Tn,'color','r');
title('Odziv sistema na vhodni signal')
 legend('y0','y1','y2','y3')
hold off