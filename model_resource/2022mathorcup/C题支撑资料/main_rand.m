clear;

clc;

zero = [2 5 9 13 45 47 49 52 53 54 64 67 78 81 82];

%% rand

rand_f = ones(85,1);
rand_f(zero) = 0;

rand_f()

% rand_b = 