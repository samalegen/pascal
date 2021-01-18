program chars;

procedure chars(chars:char; count:integer);
var
    i:integer;
begin

for i:=1 to count do
    write(chars);
writeln
end;

begin
    chars('$', 45)
end.
