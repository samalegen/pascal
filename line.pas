program line;

var
i, n: integer;

begin
    for n:=1 to 24 do
        begin
        for i:=1 to (n-1) do
            write(' ');
        writeln('*')
        end
end.
