function val = valTri(arr)
%this function outputs a logical true if the input array is equal to a
%regualr triangle. it takes one input of a 3 value array.
if numel(arr) ~= 3
    error('array must contain 3 numbers')
end
val = (arr(1) + arr(2)) > arr(3);

end