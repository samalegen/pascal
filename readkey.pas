program readk;

uses crt;

var
    c, cc:char;

begin
    repeat
    c:=Readkey;
    {    cc:=c;
    if (cc < #32) or (cc > #126) then
        cc:='?';}
    writeln(ord(c), ' (', c, ')');
    until c = ' ';

end.
