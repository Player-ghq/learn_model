clear;
clc;


%%
x = 0:1:50;
figure(4);
p = [0.3 0.2 0.1 0.01,0.001 0.0001];

hold on;

for i= 1:3
    subplot(2,3,i);
    k = f(x,p(i));
    str = strcat('p=',num2str(p(i)));
    title(str);
    xlabel('Watier Number');
    ylabel('Tests that each person needs');
    axis([1,50,0.5,1.2]);
end


x = 1:1:150;

for i=1:3
    subplot(2,3,i+3);
    k = f(x,p(i+3));
    str = strcat('p=',num2str(p(i+3)));
    title(str);
    xlabel('Watier Number');
    ylabel('Tests that each person needs');
    axis([1,50*i,0,1.1]);
end

suptitle('Corresponding to Different p-Values');

hold off;


  %%  plot gailv and (Ex min and k) 
figure(5);

ppp = [0:0.01:0.3];

for i=1:length(ppp)
    
    k = f(x,ppp(i));
   [Emin(i),I(i)] = min(k);
    
    
end

yyaxis left
plot(ppp,I,'-b.');
ylabel('Groups');
ylim([2,50]);

yyaxis right
plot(ppp,Emin,'-m.');
ylabel('Expectations(min)');

xlim([0 0.3]);
legend('k','E(x)min');
xlabel('Prevalence');
title('Prevalence Vs. Expectations(min) and Groups ');

