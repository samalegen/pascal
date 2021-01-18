program types;

type
    mytype = integer;
    digit10 = 0..9;
    latinCaps = 'A'..'Z';
    ranbow_colors =
    (red, orange, yellow, green, blue, indigo, violet);
    real100 = array[1..100] of real;

var 
    x: latinCaps;
    y: digit10;
    r: ranbow_colors;


begin
    x:='A';
    y:= ord(violet);
    r:= pred(green);
    writeln(r);
    r:= succ(indigo);
    writeln(y);
end.
