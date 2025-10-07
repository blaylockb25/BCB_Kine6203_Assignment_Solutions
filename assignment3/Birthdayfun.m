function [daysuntil,currentAge] = Birthdayfun(birthday)
%This function takes 1 input the users birthday and outputs their current
%age and how long until their next birthday. it requires that the input be
%in year day month format
if ~isa(birthday,'datetime')
error('birthday must be in datetime format year day month')
end
currentdate = datetime('today');

currentAge = years(currentdate-birthday);
currentAge = floor(currentAge);

nextbirth = datetime(year(currentdate), month(birthday), day(birthday));
if nextbirth < currentdate
    nextbirth = nextbirth + calyears(1);
end

daysuntil = nextbirth - currentdate;

