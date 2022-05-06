clear;
clc;


 %% init data 
% s = ones(1,5);

u = 3;
N = 2830;
T = 4;

c = [2:1:6];


figure(1);

 %% plot
for i = 1:3
    hold on ;  
    s = N./(60*T*u*c);
%     s(3)
    subplot(1,2,1);
    plot(c,s,'-o');

    T = T-1;
%     hold on ;  

end

legend('T=6','T=5','T=4');
% axis([2,6,1000,6000]);
title('Function Detection Point');
xlabel('Watier Number');
ylabel('Detection Point Number');

 %%
%  pp = 60*T*u*c;
T = 6;
for i = 1:3
    hold on ;  
    s = N./(60*T*u*c);
    subplot(1,2,2);
    pp = 60*T*u*c;
    plot(c,pp,'-o');
    T = T-1;

end 
% 
legend('T=6','T=5','T=4');
axis([2,6,1000,6000]);
title('Function Detection Point');
xlabel('Watier Number');
ylabel('Average Detection Point People Number');

suptitle('Relevant Screeners From SH');

hold off;


