program pointers;

var
    a: ^integer;
    b: ^string;

begin
    new(a);
    a^:= 45;
    writeln(a^);
    new(b);
    b^:='some string';
    writeln(b^);

end.
