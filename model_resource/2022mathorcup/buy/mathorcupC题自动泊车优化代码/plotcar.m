function [h, xv, yv] = plotcar(x, y, theta, phi,h)
%% ???????????????????
%    x y pingyi     theta car body   phi  car tai   
% ????
L = 4.9;
W = 1.8;
I = 2.8;
T = 1.7;
xv = W *[0 0 1 1 0]';
yv = L*[0 1 1 0 0]';

% lunkuo
xt =[0 0]';
yt = W/10*[-1 1]';


% front car tire
[xf, yf] = rotxyd(xt, yt, 0, 0, phi);
xfl = xf + [1, 1]'*(W-T)/2;
xfr = xf + [1, 1]'*((W-T)/2+T);
yf = yf + [1,1]'*(L-(L-I)/2);


% behind car tire
xbl = xt +[1, 1]'*(W-T)/2 ; 
xbr = xt +[1, 1]'*((W-T)/2+T) ; 
yb = yt + [1,-1]'*((L-I)/2);

% rot
[xv,yv] = rotxyd(xv, yv, 0, 0, theta);
[xfl,  yf] = rotxyd(xfl, yf, 0, 0, theta);
[xbl,yb] = rotxyd(xbl, yb, 0, 0, theta);
[xfr,yf] = rotxyd(xfr, yf, 0, 0, theta);
[xbr,yb] = rotxyd(xbr, yb, 0, 0, theta);

%translate
% v  car body 
xv = xv + x; 
yv = yv + y;
xbr = xbr + x;
xbl = xbl + x;
yb =yb + y;
xfl = xfl+ x;
xfr = xfr + x;
yf = yf + y;
%% 

% plot
if nargin<5
   h = plot(xv, yv,'k',xb, yb,'b', xf, yf, 'r', 'linewidth',2);
else
   set(h(1), 'XData', xv, 'YData', yv);
   set(h(2), 'XData', xb, 'YData', yb);
   set(h(3), 'XData', xf, 'YData', yf);
end
