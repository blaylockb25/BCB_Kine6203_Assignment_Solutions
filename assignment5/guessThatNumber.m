function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber() - Assignment 5
%
%        NAME:
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1:3): '); 



while level ~= beginner && level ~= moderate && level ~= advanced       
fprintf('Sorry, that is not a valid level selection.\n');
level = input('Please re-enter a level of play (1-3): ');
end
% BUG The or condition in this while loop would cause an infinite loop as two
% of the conditions will always be true. Found this error by running
% function and seeing that fprintf error displayed no matter the input.

% set highest secret number based on level selected

if level == beginner %Bug found: I found this by trying to run the code and getting a incorrect use of '=' error message.                      

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else
highest = advancedHighest; %BUG Found lowercase h bug by utilizing error message...
%and comparing term to previously used same term
end

% randomly select secret number between 1 and highest for level of play

secretNumber = floor(rand() * highest)+1;   % BUG Played game multiple times and...
%noticed that highest number was always the winner evaluated existing code 
% and noticed that floor(rand() + 1 * highest) this logic is essentially 1
% times the highest value thus the highest number would always be picked negating the random component
%  rearranged the code to generate a random number
% between 0 and the highest possible value dependent on the level selected.

% initialize number of guesses and User_guess

numOfTries = 0; %BUG noticed that when the congratulations messege displayed it counted
%the choice of level in the number of tries changed numOfTries to 0 to
%correct.
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');
while userGuess < 1 || userGuess > highest %BUG found one off error by entering 
    % highest number and seeing fprintf error

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

end % of guess validation loop

% add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1;

% report whether the user's guess was high, low, or correct

if userGuess < secretNumber
fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess >  secretNumber 
    % BUG read description and swapped less than and greater than signs based on
    %printed description
fprintf('Sorry, %d is too high.\n', userGuess);
elseif numOfTries == 1
fprintf('\nLucky You!  You got it on your first try!\n\n');
else
fprintf('\nCongratulations!  You got %d in %d tries.\n\n',secretNumber, ...
numOfTries);
%BUG Noticed that the message at completion of game was not reading correctly
% looked at code and noticed that two variables should be used but only
% secret number was being utilized added numOfTries and ran code to test.

fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');

end  % of guessing while loop
end
%BUG ran code and utilized error to determine missing end

% end of game
% Function was tested on windows 11 computer with matlab vrs. 2025