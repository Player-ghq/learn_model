function [lamda,roup,Lq,Ls,Wq,Ws] = fmain(c,u,N,T,s)

% u = 4;
% N = (2218.78*10^4)/2;
% T = 6;
% c = 4;
% s = 2500;
% 
% N0 = N/s;
% lamda = N0/(T*60);


[lamda,roup] = froupp(c,u,N,T,s);


    %% sys free p

for i = 0:c-1

   sum0 = (1/factorial(i))*(lamda/u)^i;
end

p0 = 1/( sum0 + (((lamda/u)^c)/factorial(c))*(1/(1-roup)));



 %% Lq Ls Wq Ws
 
 Lq = (p0*roup*(c*roup)^c)/(factorial(c)*(1-roup)^2)
 
 Ls = Lq + lamda/u
 
 Wq = Lq/lamda
 
 Ws = Wq + 1/u

 

end

