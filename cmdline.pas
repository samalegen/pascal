program cmdline;


var
    i:integer;

begin
    for i:=0 to Paramcount do
        writeln('[', i, ']: ', Paramstr(i));
end.
