function improvement = dayComparer(sbid,di1,di2)
%this function displays the subject ids of the individuals who increased
%their strenght across two given input days. it utilizes the find function
%to determine where the second day values are greater than the first day
%values based on the days that are input. the function also gives the amount by which the individual increased. THis function requires the input of variables that were previously
%read in including subjectid, and the users choice between days 1,2,&3.
%this function was tested on a windows 11 laptop.10/23/2025. matlab version
%2025.

increasedStrength = find(di2>di1);

improvement = sbid(increasedStrength);




    






