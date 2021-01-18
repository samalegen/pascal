program hello_screen;

uses crt;
const
    print='Alexey you are the best programmer ever';
    duration= 5000;


var x, y:integer;

begin
    clrscr;
    x:=(ScreenWidth -length(print)) div 2;
    y:=ScreenHeight div 2;
    GotoXY(x, y);
    write(print);
    GotoXY(1, 1);
    writeln(ScreenWidth, ' ', ScreenHeight);
    delay(duration);
    clrscr;
end.
