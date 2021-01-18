program PrintDigitOfNumber;

procedure printDigit(n:integer);
begin
    if n > 0 then
        begin
        printDigit(n div 10);
        write(n mod 10, ' ');
        end

end;

begin
    printDigit(7843)
end.
