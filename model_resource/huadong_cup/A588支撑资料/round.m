clc;
clear;

%% init data


r = [0.01 0.02 0.05 0.1 0.2 0.3];
px = 0:0.01:0.3;

s = 0;



%% plot

n = 6;
constain1 = zeros(1,n);
constain2 = 30*ones(1,n);
figure(8);
for k = 1:length(r)
    alpha = ones(1,length(px));
    for i=1:length(px)

        p(1) = px(i);

        for j=2:n
           p(j) = p(j-1)*r(k);
        end

        fun = @(x) fac(x(1),p(1))+fac(x(2),p(2))+fac(x(3),p(3))+fac(x(4),p(4))+fac(x(5),p(5))+fac(x(6),p(6));
    %               +fac(x(3),p(3))
    %               +fac(x(3),p(3))
    %               +fac(x(3),p(3));


        % for i=1:
        [a(:,i),~] = fmincon(fun,constain1,[],[],[],[],constain1,constain2);
        str = strcat('f_order =',num2str(s));

        for z=1:n
            if a(z,i)>29
                alpha(i) = alpha(i) + 1; 
            end
        end
        disp(str);
        s = s+1;


    end 

    subplot(2,3,k);
    hold on;
    bar(n,mean(alpha));

    str = strcat('r=',num2str(r(k)));
    title(str);
    xlabel('Round');
    ylabel('Mean(alpha)');
    axis([1,7,0,6]);

    
end

       



    
    
% end

%% 
% figure(6)
% axis([0,0.3,0,3])
% legend('r=0.01','r=0.02','r=0.05','r=0.1','r=0.2','r=0.3');
% title('Prevalence vs. Expectations(min)')
% ylabel('Expectations(min)');
% xlabel('Prevalence');
 %%
     


