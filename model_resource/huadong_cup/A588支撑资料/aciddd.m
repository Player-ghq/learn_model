clc;
clear;

 %% init data
r = [0.01 0.02 0.05 0.1 0.2 0.3];

px = 0:0.01:0.3;

a = ones(3,length(px));
b = ones(1,length(px));
s = 0;
 %% cal min

for k = 1:length(r)
    for i=1:length(px)

        p(1) = px(i);
        for j=2:3
           p(j) = p(j-1)*r(k);
        end


        fun = @(x) fac(x(1),p(1))+fac(x(2),p(2))+fac(x(3),p(3));
        % for i=1:

        [a(:,i),b(i)] = fmincon(fun,[0 0 0],[],[],[],[],[0 0 0],[30 30 30]);
        str = strcat('f_order =',num2str(s));
%         if (i == 20 )&&(k>=4)
%             t(i) = a(:,i);
%         end
        disp(str);
        s = s+1;
%         disp
        

    end 
 %% plot
    figure(6);
    hold on;
    plot(px,b,'.-');
    hold off;

    figure(7);

    subplot(2,3,k);
    plot(px,a,'.-')
    str = strcat('r=',num2str(r(k)));
    legend('k1','k2','k3');
    title(str);
    xlabel('Prevalence');
    ylabel('Groups');
    
end

figure(6)
axis([0,0.3,0,3])
legend('r=0.01','r=0.02','r=0.05','r=0.1','r=0.2','r=0.3');
title('Prevalence vs. Expectations(min)')
ylabel('Expectations(min)');
xlabel('Prevalence');
 %%
     





