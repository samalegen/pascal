program linked_list;
{
    реализация односвязного списка с добавлением в начало. 
}

type
    list_p = ^list;
    list = record
        ints: integer;
        next: list_p;
    end;

var
    first, tmp: list_p;
    i:integer;

begin
    first := nil;
    while not eof do
    begin
        readln(i);
        new(tmp);
        tmp^.ints := i;
        tmp^.next := first;
        first := tmp;
    end;

    tmp := first;
    while tmp <> nil do
        begin
            writeln(tmp^.ints);
            tmp := tmp^.next;
        end;

end.
