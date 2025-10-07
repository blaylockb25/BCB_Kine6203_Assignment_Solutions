function [firstLetter,letterNum,LastLetter] = word(inputstring)
%This function has 3 outputs those being the first letter of the input
%string the last letter of the input string and the number of characters in
%an input string. it takes one input that being a string.
firstLetter = inputstring(1);
LastLetter = inputstring(end);
letterNum = strlength(inputstring);

disp(firstLetter)
disp(LastLetter)
disp(letterNum)
end