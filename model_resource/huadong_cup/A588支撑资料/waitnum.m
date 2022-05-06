clc;
clear;


u = 3;
N = (2218.78*10^4)/ 3;


%% init data

T = 6; 
c = 5;


s1 = [1380:1:1425];
s2 = [1722:1:1793];
Wq1 = ones(1,length(s1));
Lq1 = ones(1,length(s1));
Wq2 = ones(1,length(s2));
Lq2 = ones(1,length(s1));

%%  s1

figure(3);
hold on;
subplot(1,2,1);
c = 5;
for i=1:length(s1)

    [~,~,~,~,Wq1(i),~] = fmain(c,u,N,T,s1(i));
    [~,~,Lq1(i),~,~,~] = fmain(c,u,N,T,s1(i));
end
    
yyaxis left
plot(s1,Wq1,'-k.')
ylabel('Average waiting time(mins)');
ylim([0 10])

yyaxis right
plot(s1,Lq1,'-m.');
ylabel('Average Length of queue waiting');
ylim([20 120]);

legend('waiting time','Length of queue waiting');
xlim([1380 1425]);
title('C = 5 Queued Data');
xlabel('Detection Point Number');


    %% s2
subplot(1,2,2);

c = 4;
for i=1:length(s2)

    [~,~,~,~,Wq2(i),~] = fmain(c,u,N,T,s2(i));
    [~,~,Lq2(i),~,~,~] = fmain(c,u,N,T,s2(i));
end
    

yyaxis left
plot(s2,Wq2,'-k.')
ylabel('Average waiting time(mins)');
ylim([0 10]);

yyaxis right
plot(s2,Lq2,'-m.');
ylabel('Average Length of queue waiting');
ylim([20 120]);
legend('waiting time','Length of queue waiting');
xlim([1722 1793]);
title('c = 4 Queued Data');
xlabel('Detection Point Number');
    