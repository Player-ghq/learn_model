function [lamda,roup] = roupp(c,u,N,T,s)
% 
%     u = 4;
%     N = (2218.78*10^4)/2;
%     T = 6;
%     c = 4;
%     s = 2500;
    
    N0 = N/s;
    
    lamda = N0/(T*60);
    roup = lamda/(c*u);
    if roup >1
        roup = 0;
        lamda = 0;
        disp('error');
    end

end

