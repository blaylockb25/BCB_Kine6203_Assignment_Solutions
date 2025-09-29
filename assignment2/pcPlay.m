function Pplay = pcPlay(Board)

[row,col] = find(Board == 0);
sel = randi([1,length(row)]);
x = row(sel);
y = col(sel);
Pplay = [x,y]
end