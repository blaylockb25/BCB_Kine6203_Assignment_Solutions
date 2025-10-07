function [s,d,p,m] = mathp(n1,n2)
%this function takes two inputs that are numbers and outputs the
%sum,product,max, and difference between the two input numbers.

s = n1 + n2;
p = n1*n2;
m = max(n1,n2);
d = n1 - n2;
disp(s);
disp(d);
disp(m);
disp(p)




end