program hello_moving;

uses crt;
const
    message = 'Alexey';

procedure ShowMessage(x, y:integer; msg:string);
    begin
        GotoXY(x, y);
        write(msg);
        GotoXY(1, 1);
    end;

procedure HideMessage(x, y:integer; msg:string);
    var
        len, i:integer;
    begin
        len:=length(msg);
        GotoXY(x, y);
        for i:=1 to len do 
            write(' ');
        GotoXY(1, 1);
    end;

procedure MoveMessage(var x, y:integer; msg:string; dx, dy:integer);
    begin
    HideMessage(x, y, msg);
    x := x + dx;
    if x = 66 then
        x:=1;
    if x < 1 then
        x:=66;
    y := y + dy;
    if y=41 then
        y:=1;
    if y < 1 then
        y:=41;
    ShowMessage(x, y, msg);
    end;

var
    crx, cry:integer;
    c:char;

begin
    clrscr;
    crx := (ScreenWidth - length(message)) div 2;
    cry := ScreenHeight div 2;
    ShowMessage(crx, cry, message);
    while True do
        begin
            c := Readkey;
             if c = ' ' then
                break;
            c := ReadKey;
            case c of
                #97:
                    MoveMessage(crx, cry, message, -1, 0);
                #100:
                    MoveMessage(crx, cry, message, 1, 0);
                #119:
                    MoveMessage(crx, cry, message, 0, -1);
                #115:
                    MoveMessage(crx, cry, message, 0, 1);
                end
        end;
        clrscr;
end.

















