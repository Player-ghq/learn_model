function [s,v] = cal_sv(t,flag)
%UNTITLED3 Summary of this function goes here
%   Detailed exp90lanation goes here
        
        v = 0;
        s1 = x1(t);
        s2 = x2(t,flag);
        s3 = x3(t,flag);
        s =  s1+s2+s3;
        
        if  t <0.15 
                v = 20/3*t*t;
        end
        
        if t >=0.15
             v = 9/40 + 3*(t-0.15);
            if t >1.92
                v = 50/9;
            end
        end

end

function y = x1(t)
    if t < 0.15
        y = 10/3*t*t*t;
    end
    
    if t >=0.15
          y = 10/3*(0.15^3);
    else 
           y = 0;
    end
    
end

function y = x2(t,flag)
    if flag ==20
        if  (t>=0.15)
            if  t >=1.92
                 p = 1.77;
                 y = (9/40)*p +1.5*p^2;
            end
            p = t - 0.15;
            y = (9/40)*p +1.5*p^2;

        else
             y = 0;
        end
    end
    
    if flag ==10
        if  (t>=0.15)
            if  t >=1.035
                 p = 0.885;
                 y = (9/40)*p +1.5*p^2;
            end
            p = t - 0.15;
            y = (9/40)*p +1.5*p^2;
        else
             y = 0;
        end
    end
end


function y = x3(t,flag)

    if flag==20
        if t > 1.92
            p = t - 1.92;
            y = 50/9*p;
        else
            y = 0;
        end
    end
    
    
    if flag==10
        if t > 1.035
            p = t - 1.035;
            y = 25/9*p;
        else
            y = 0;
        end
    end
end

