program array_char;

{type 
    arraychar = array[1..40] of char;
    }
var
    {ar_ch:arraychar;}
    ar_ch:array[1..45] of char;
    i:integer;

begin

    ar_ch:='hello world';
    for i:=1 to 45 do
        begin
            if ar_ch[i] =#0 then
                break;
            write(ar_ch[i])
        end;
    writeln;
end.
