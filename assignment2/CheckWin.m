
function[IFWIN, WINNER] = CheckWin (Board);

    

IFWIN = 'no';
WINNER = [];
%sum the rows and collumns to identify win
rowWin = sum(Board,2)';
colWin = sum(Board,1);
diagWin1 = Board (1,1)+Board(2,2)+Board(3,3);
diagWin2 = Board (1,3)+Board(2,2)+Board(3,1);
ALLWIN = [rowWin,colWin,diagWin1,diagWin2];
% if statement determines whether a value has been assigned to the row and
% collumn to sum.
if ~isempty(find(ALLWIN==3));
IFWIN = 'yes';
WINNER = 1;
elseif ~isempty(find(ALLWIN==-3));
    IFWIN = 'yes';
    WINNER = -1;

end
if (sum(sum(Board==0)))==0 && ~strcmpi(IFWIN,'yes')
        IFWIN = 'tie';   
end
