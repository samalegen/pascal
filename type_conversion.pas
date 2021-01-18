program type_conversion;

var
    j, r:integer;
    i:real;

begin
    i:=15.75;
    j:=trunc(i);
    r:=round(i);
    writeln(j, ' ', r);
end.
