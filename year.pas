program year;

var
    r: integer;

begin
    writeln('please enter your born year');
    readln(r);
    while (r<1900) or (r>2017) do
        begin
            writeln('you''re enter not valid year');
            writeln('try again');
            readln(r)
        end;
    writeln('you are born in ', r); 
end.
