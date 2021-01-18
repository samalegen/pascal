type
    imts = ^imt;
    imt =record
        data:integer;
        next:^imt;
    end;
    

var
    first: imts;

begin
    new(first);
    first^.data := 25;
    new(first^.next);
    first^.next^.data := 45;
    new(first^.next^.next);
    first^.next^.next^.data := 55;

    writeln(first^.next^.data);
    writeln(first^.data);
end.
