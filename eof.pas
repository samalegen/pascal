program eof_ok;

var 
    c:char;
    n:integer;
begin
    n:=0;
    while not eof do
        begin
            read(c);
            if c= #10 then
                begin
                writeln('ok');
                writeln(n);
            end
            else
                n:=n+1;
        end;
    writeln('GoodBay')
end.
