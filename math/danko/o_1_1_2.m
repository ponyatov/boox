function [xn] = o_1_1_2 (x1,x2,lambda)
	xn = (x1+lambda*x2)/(1+lambda);
end
A = -3
B = 7
lambda = 1/4

o_1_1_2(A,B,lambda)