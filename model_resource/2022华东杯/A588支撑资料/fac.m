function t = fac(x,p)
%     x = 0:1:50;
%     t = ones(1,51);
    q = 1-p;

    t = 1 + 1./x - q.^x;
    
%     plot(x,t,'m');

end

