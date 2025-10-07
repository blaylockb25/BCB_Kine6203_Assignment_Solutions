function isit = isItPrime(input)
%this function determines if a given input is a prime number it takes 1
%input that is a number and should be put in parentheses after calling the
%function.
if input < 1
    isit = false;
    return
end
    for i = 2:sqrt(input)
        if mod(input,i)==0
            isit = false;
            return
        end
    end
    isit = true;
end