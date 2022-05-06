clc;
clear;

u = 3;
N = 2830;


%% init data
   % shenzhen T=6  c = 4 or 5  s = 1712 or 1370   +10    2160 2730
   % shanghai_1 T=4  c = 3 or 4  s = 14.25 10.69  + 10
   % shanghai_2 T=2  c = 4 or 5  s = 1.048 1.31 ?
T = 6; 
c = 5;
s = 2;


%%   cal 
[lamda,roup,Lq,Ls,Wq,Ws] = fmain(c,u,N,T,s);

