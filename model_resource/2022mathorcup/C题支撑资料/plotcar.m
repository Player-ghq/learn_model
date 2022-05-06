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

% line line line 


xif = [0 1]'*T+[1 1]'*(W-T)/2;
yif = [0 0]'+[1 1]'*(L-(L-I)/2);

xib = [0 1]'*T +[1 1]'*(W-T)/2 ;
yib = [0 0]' +[1 1]'*((L-I)/2) ;

hix = [0 0]'+[1 1]'*(W/2);
hiy = [0 1]'*I + [1 1]'*((L-I)/2) ;


% front car tire
[xf, yf] = rotxyd(xt, yt, 0, 0, phi);
xfl = xf + [1, 1]'*(W-T)/2;
xfr = xf + [1, 1]'*((W-T)/2+T);
yf = yf + [1,1]'*(L-(L-I)/2);



% behind car tire

xbl = xt +[1, 1]'*(W-T)/2 ; 
xbr = xt +[1, 1]'*((W-T)/2+T) ; 
yb = yt + [1,1]'*((L-I)/2);

% rot
yfl =yf;
yfr =yf;

ybl = yb;
ybr = yb;

[xv,yv] = rotxyd(xv, yv, 0, 0, theta);

[xif,yif] = rotxyd(xif, yif, 0, 0, theta);
[xib,yib] = rotxyd(xib, yib, 0, 0, theta);
[hix,hiy] = rotxyd(hix, hiy, 0, 0, theta);

[xfr,yfr] = rotxyd(xfr, yfr, 0, 0, theta);
[xfl,yfl] = rotxyd(xfl, yfl, 0, 0, theta);

[xbr,ybr] = rotxyd(xbr, ybr, 0, 0, theta);
[xbl,ybl] = rotxyd(xbl, ybl, 0, 0, theta);


%translate
% v  car body 

xv = xv + x; 
yv = yv + y;

xif = xif + x;
yif = yif + y;

xib = xib + x;
yib = yib + y;

hix = hix + x;
hiy = hiy + y;

xbr = xbr + x;
xbl = xbl + x;
ybr =ybr + y;
ybl = ybl + y;

xfl = xfl+ x;
xfr = xfr + x;
yfr = yfr + y;
yfl = yfl + y;
%% 

% plot
if nargin<5
   h = plot(xv, yv,'k',xbr, ybr,'b',xbl, ybl,'b',xif,yif,'b',xib,yib,'b',hix,hiy,'b',xfr, yfr, 'r',xfl, yfl, 'r ','linewidth',1.5);
else
    set(h(1), 'XData', xv, 'YData', yv);
   set(h(2), 'XData', xbr, 'YData', ybr);
   set(h(3), 'XData', xfr,'YData', yfr);
      set(h(4), 'XData', xbl, 'YData', ybl);
   set(h(5), 'XData', xfl, 'YData', yfl);
end
