
clc; clear

% ??? Model S ????
l = 2.959; % ??	2,959 mm?116.5???
L = 4.976; % ??	4,976 mm?195.9???
W = 1.943; % ?? 1,963 mm? 77.3???

[z0, fv, fphi, t, xb, yb] = testcase('Parking');
%  [z0, fv, fphi, t, xb, yb] = testcase('Circle');
% [z0, fv, fphi, t, xb, yb] = testcase('Tesla'); 
%%
%        t = 0:0.001:30;      % ???????????
%         l = 2.959;
%         R = l/tand(20);
%         z0 = [0,-R, 0];
%         
%         % ??
%         xb = 1.5*[-1, 1, 1, -1, -1]*R; 
%         yb = 1.5*[-1, -1, 1, 1, -1]*R;
%         
%         % ????????
%         fphi = @(t) 20*(t>=0);   
%         fv = @(t) 5*(t>=0);
%     case {1,'Parking','parking'}
%         t = 0:0.001:75;      % ???????????
%         z0 = [-2.959/2,0,0]; % ?????? = [????, ??????x?y]
%         
%         % ??
%         xb = [-5, 8, 8,14,14,20,20.0,25.0,25,20,20, 3,3,-5];
%         yb = [-3,-3,10,10,-3,-3, 6.5, 6.5,10,10,16,16,3, 3];
%         
%         % ?????????? 20 deg/s
%         dphi = 20;          % [deg/s] ???????
%         tmax = 470/16/dphi; % ???????? 470/16 ???????? 470/16/dbeta
%         % ?????????????= ?????/16??
%         fphi = @(t) 0 + dphi*min(t- 1.00,tmax*1).*(t> 1.00) - ...
%                         dphi*min(t- 9.37,tmax*1).*(t> 9.37) - ...
%                         dphi*min(t-12.20,tmax*1).*(t>12.20) + ...
%                         dphi*min(t-28.87,tmax*1).*(t>28.87) + ...
%                         dphi*min(t-36.00,tmax*1).*(t>36.00) - ...
%                         dphi*min(t-65.39,tmax*1).*(t>65.39);
%         
%         % ????????????????
%         fv = @(t) 1.0 - 0.2*min(t-32.5,6.5).*(t>32.5) + ...
%                         0.2*min(t-73.1,1.5).*(t>73.1);
%         

%% ?????????
figure('position',[50,50,900, 600])
% ???????
h1 = plotcar(0, 0, 0, 0, L, W, l); 
hold on

h2 = plot(   0, 0, ':m', 'linewidth',2);
h3 = plot(-l/2, 0, ':b', 'linewidth',2);
if ~isempty(xb); 
    plot(xb, yb, '--k', 'linewidth',2);
end

axis image

% ????????????????????? phi(t) ??????? (xc(t), yc(t))
[t, z] = ode45(@odecar, t, z0, [], fv, fphi, l);
theta = z(:,3); x = z(:,1); y = z(:,2);


% ????
for i = 1:100:length(t)
    [~,xv,yv] = plotcar(x(i),y(i), theta(i), fphi(t(i)), L, W, l, h1);
    set(h2, 'XData', x(1:i)+l/2*cosd(theta(1:i)),'YData', y(1:i)+l/2*sind(theta(1:i)));
    set(h3, 'XData', x(1:i),'YData', y(1:i));
    drawnow
    
    % ????????????????
    if ~isempty(xb) & any(~inpolygon(xv,yv,xb,yb)); break; end
end



% 
% figure
% subplot(1,2,1); plot(t,fphi(t)*10); 
% xlabel('??(s)'); ylabel('?????(deg)')
% 
% subplot(1,2,2); plot(t,fv(t));      
% xlabel('??(s)'); ylabel('?????(m/s)')