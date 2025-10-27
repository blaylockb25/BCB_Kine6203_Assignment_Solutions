function [maleIsoIndMeans, femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(tb)
%this function takes the name of the data table as an input and reads the
%table to seperate the data between male and female of all columns using a
%data property boolian operator. It also reads the table to find any data
%with a variable name starting with the string day it then uses the data
%seperated by the variable property gender to form a matrix of data
%specific to the gender. It then calculates the individual means of each
%gender utilizing said matrix. this function was run on a windows 11 laptop
%device.10/23/2025 matlab version 2025
strengthVars = startsWith(tb.Properties.VariableNames, 'Day');
maledata = tb(tb.Gender == 'M', :);
femaledata = tb(tb.Gender== 'F', :);


maleMatrix = maledata{:,strengthVars};
femaleMatrix = femaledata{:,strengthVars};

maleIsoIndMeans = mean(maleMatrix,2);
femaleIsoIndMeans = mean(femaleMatrix,2);

maleGroupIsoMean = mean(maleIsoIndMeans);
femaleGroupIsoMean = mean(femaleIsoIndMeans);