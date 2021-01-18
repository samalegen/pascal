program types_2;

type
    real100 = array[1..100] of real;
    from1to100 = 1..100;
    real101 = array[from1to100] of real;
var 
    a, b:real100;
    i:integer;

begin
    a[1]:=1;
    for i:=2 to 109 do
        a[i]:=a[i-1]/2;
    for i:=1 to 100 do
        b[i]:=sin(a[i]);
    for i:=1 to 100 do
        writeln(a[i], ' ', b[i])
end.
