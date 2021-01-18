program alfabet;


var 
    s:string;
    c:char;

begin
    s:='';
    for c:='A' to 'Z' do
        s:=s+c;
    writeln(s);
    writeln(length(s));
    Setlength(s, 5);
    writeln(s);
end.
