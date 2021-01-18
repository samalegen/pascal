program numfile;

const
    start=1000;
    step=1001;
    count=100;
    filename= 'num.txt';

var
    i:integer;
    n:longint;
    f:text;

begin
    assign(f, filename);
    rewrite(f);
    n:=start;
    for i:=1 to count do
    begin
        writeln(f, n);
        n:=n+step;
    end;
    close(f);
end.
