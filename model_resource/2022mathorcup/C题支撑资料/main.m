clear;
clc;

global center;
global direct;

%%  plot

f = figure(1);



f.Position = [0 0 1600 300];

plotmap;

hold on
grid on;
x = 2;
y = 5.3 - 4.9- 1.345; 
h1 = plotcar(x,y,0,0);




%%  init 
%    ???????????  ????????????????? ?

 direct = [0,0];
center = [0,0];

t = 0:0.001:30;
R = 4.995;

dphi = 470/16;          % [deg/s] ???????

v_r = 25/9;   % ????

R = 4.995;

t_rh= 0.5*R*pi/(25/9);   %2.8246s   % ????????

fphi =  dphi;



% [s,v]= cal_sv(t,10);
v = 25/9;
t_r = 0:0.01:t_rh;
theta = 0:0.01*90/t_rh:90;
the_s = atand(4.9/R);
the = 0;

for i = 1:length(t_r)
    the = the +0.01*90/t_rh;
    x_r(i) =  x - R/cosd(the_s)*(cosd(the_s-the)-cosd(the_s));

    y_r(i) =  y +  R/cosd(the_s)*(sind(the_s)+ sind(the-the_s));
end


plotcar(x,y,0,-fphi);

% ????????????????????? phi(t) ??????? (xc(t), yc(t))

% ?????? ???? ?? ??

the = 0;
for i = 1:length(t_r)

    the = the +0.01*90/t_rh;
    [~,xv,yv] = plotcar(x_r(i),y_r(i),-the,-fphi, h1);
%     set(h2, 'XData', x(1:i)+l/2*cosd(theta(1:i)),'YData', y(1:i)+l/2*sind(theta(1:i)));
%     set(h3, 'XData', x(1:i),'YData', y(1:i));
%     delete(h);
    drawnow
    
    % ????????????????
%     if ~isempty(xb) & any(~inpolygon(xv,yv,xb,yb)); break; end
end

h = plotcar(x_r(i),y_r(i),-90,0);

t_s = 0:0.01:30;
% [s1,v1] = cal_sv(t_s,20);
% for i = 1:length(t_s)
%     if s1 > 
%     
% end
    








%%




