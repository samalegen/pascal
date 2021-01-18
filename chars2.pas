program chars2;

procedure PrintChars(ch:char; count:integer);

begin
    if count>0 then
    begin
        write(ch);
        PrintChars('*', count-1)
    end
end;

begin

    PrintChars('#', 76)
end.
