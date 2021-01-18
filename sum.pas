program summa;

var
x, sum:integer;

begin
    x:=0;
    sum:=0;
    repeat
        readln(x);
        sum:=x+sum;
    until sum >1000;
    writeln(sum)
end.
