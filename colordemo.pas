program colordemo;

uses crt;

const
    ColorCount = 16;
    BGColorcount = 8;

var
    AllColors: array [1..ColorCount] of word =
    (
        Black, Blue, Green, Cyan, Red, Magenta, Brown, LightGray, DarkGray, LightBlue, lightGreen, LightCyan, LightRed, LightMagenta, Yellow, White
    );

procedure MakeLine(line, fgcolor: integer);
var
    i, j, w:integer;
begin
    w := screenWidth div BGColorCount;
    for i := 1 to BGColorCount do
    begin
        GotoXY((i-1)*w +1, line);
        TextBackground(Allcolors[i]);
        for j :=1 to w do
        begin
            if j mod 2 = 0 then
                textcolor(fgcolor + blink)
            else
                textcolor(fgcolor);
            write('*')
        end;
    end;
end;

procedure Makescreen;
var
    i:integer;
begin
    clrscr;
    for i := 1 to screenheight do
        MakeLine(i, allcolors[i mod colorcount +1]);
end;

begin
    MakeScreen;
    readkey;
    TextBackground(Black);
    TextColor(lightGray);
    clrscr;
end.
