% Uppgift: Studera hur proteinerna A och R varierar under tidsintervallet

% tid i timmar
starttid = 0;
sluttid = 48;
h = [starttid sluttid];

% definera variabler (begynnelsevariablerna)
da = 1;
dr = 1;
dprima = 0;
dprimr = 0;
ma = 0;
mr = 0;
a = 0;
r = 0;
c = 0;

y0 = [da; dr; dprima; dprimr; ma; mr; a; r; c];

% globala parametrar 
global alfaa alfaprima alfar alfaprimr betaa betar;
global deltama deltamr deltaa deltar yotaa yotar yotac;
global thetaa thetar;
alfaa = 50;
alfaprima = 500;
alfar = 0.01;
alfaprimr = 50;
betaa = 50;
betar = 5;
deltama = 10;
deltamr = 0.5;
deltaa = 1;
deltar = 0.2;
yotaa = 1;
yotar = 1;
yotac = 2;
thetaa = 50;
thetar = 100;

val = odeset;
%val = odeset('OutputFcn', 'odeplot', 'RelTol', 1e-2);
tic;
[t,y] = ode15s(@problem2model, h, y0);
elapsedTime = toc;
fprintf('%f sekunder.', elapsedTime);

if isempty(val.OutputFcn) 
   plot( t,y(:,7), t,y(:,8) );
   xlabel('TID');
   ylabel('Antal A resp. R');
   title('Simulering av molekylär mekanism för dygnsrytm');
   legend('A', 'R');

   figure;
   
   plot( t(1:end-1), diff(t) );
   xlabel('Tidssteg');
   ylabel('Steglängder');
   title('Simulering av molekylär mekanism för dygnsrytm');
end


