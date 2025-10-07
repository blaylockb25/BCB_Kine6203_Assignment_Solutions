function [] = stepcounter(a,b)
%this funciton takes two inputs that are both numbers the lesser number
%must be input first. it has a theoretically infinite number of outputs as
%it takes the first input and adds 1 until it reaches the second input.
if b < a
    fprintf('smaller number must go first')
end
a = a
while a < b
    a = a + 1;
    disp(a)
end
