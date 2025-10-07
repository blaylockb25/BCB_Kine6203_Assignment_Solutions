function vectorfig(v1,v2)
%this funciton takes two vectors as inputs and plots them in a figure.

if length(v1) ~= length(v2)
    error('vectors must be the same length')
end

plot(v1,v2,'-o')

xlabel  'seconds';
ylabel  'voltage';
title 'vectorplot';

grid on
end
