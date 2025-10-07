function total = change(quarters,dimes,nickles,pennies)
%this function determines the total monies given when the inputs of
%quarters dimes nickles and pennies are given.

total = (quarters*.25)+(dimes*.10)+(nickles*.05)+(pennies*.01)

disp(total)

end