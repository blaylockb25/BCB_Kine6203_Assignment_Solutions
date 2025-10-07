function dmcount = dayminucount(a,b)
%this function outputs either the amount of minutes in a given number of
%years or the number of days in a given number of years depending on the
%number of inputs if the user wants to output the number of days they need
%only input 1 number being the number of years that they would like
%translated if they would like the output to be minutes they need to input
%2 inputs being the number of years they want output in minutes
if nargin == 1
    dmcount = (a * 365);
    disp(dmcount)
elseif nargin == 2
    dmcount = (b * 521600);
    disp(dmcount)
end