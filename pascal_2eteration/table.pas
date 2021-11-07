program tableAscii;

var
    c: char;
    i: integer;
    
begin
    write('|');
    for c := '0' to '9' do
        write(' .', c);
    for c := 'A' to 'F' do
        write(' .', c);
    writeln;
    write('|');
    for i := 1 to 16 do
        write('---');
end.
