function [WOO,HAA] = evenodd(n1,n2)
%this funciton determines whether the sum of the two inputs is even or odd
%if even it outputs woo if odd it outputs haa.
result = n1 + n2;
if mod(result,2)== 0
    fprintf('WOO');
else
    fprintf('HAA');

end


