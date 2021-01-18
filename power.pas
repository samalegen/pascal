program powers;

var
    p, q, r:integer;
    t:longint;

procedure powers(x:integer; var quard, cube, fourth:integer; var fifth:longint);
begin
    quard:=x*x;
    cube:=quard*x;
    fourth:=cube*x;
    fifth:=fourth*x
end;

begin
    powers(9, p, q, r, t);
    writeln(p);
    writeln(q);
    writeln(r);
    writeln(t)
end.
