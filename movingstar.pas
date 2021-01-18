program movingstar;

uses crt;

const delayduration = 100;

type
    star=record crx, cry, dx, dy:integer;
end;

procedure ShowStar(var s:star);
begin
    GotoXY(s.crx, s.cry);
    write('*');
    GotoXY(1, 1);
end;

procedure HideStar(var s:star);
begin
    GotoXY(s.crx, s.cry);
    write(' ');
    GotoXY(1, 1);
end;

procedure MoveStar(var s: star);
begin
    HideStar(s);
    s.crx:= s.crx + s.dx;
    if s.crx > screenWidth then
        s.crx := 1
    else
    if s.crx < 1 then
        s.crx := screenWidth;
    s.cry := s.cry +s.dy;
    if s.cry >screenHeight then
        s.cry := 1
    else
    if s.cry < 1 then
        s.cry := screenHeight;
    ShowStar(s);
end;

procedure SetDirection(var s:star; dx, dy:integer);
begin
    s.dx := dx;
    s.dy := dy;
end;

procedure HendlArrowKey(var s:star; c:char);
begin
case c of
    #97:
      SetDirection(s, -1, 0);
    #100:
      SetDirection(s, 1, 0);
    #119:
      SetDirection(s, 0, -1);
    #115:
      SetDirection(s, 0, 1);
    end
end;

var
    s:star;
    ch:char;

begin
    clrscr;
    s.crx := screenWidth div 2;
    s.cry := screenHeight div 2;
    s.dx := 0;
    s.dy := 0;
    ShowStar(s);
    while True do
    begin
        if not keypressed then
        begin
            MoveStar(s);
            delay(delayduration);
            continue;
        end;
        ch := readkey;
        case ch of
            #0: begin
                ch := readkey;
                HendlArrowKey(s, ch);
            end;
            ' ': SetDirection(s, 0, 0);
            #27: break;
        end
    end;
    clrscr;
end.





