PROGRAM Array_1;
{Tim Booker}
{6th September 1996}

{program to input numbers into a one dimensional array
and display the contents of the array}

USES
    wincrt;

VAR
  numbers:ARRAY[1..5]OF INTEGER;
  index  :INTEGER;

BEGIN
  {input numbers into the array}
  WRITELN('input five integers, one per line');
    FOR index:=1 TO 5 DO
      BEGIN
        write('cell',index:2,' ');
        readln(numbers[index]);
      END;{for}
  writeln;
  {output numbers from the array}
  writeln('contents of array');
    FOR index:=1 TO 5 DO
      BEGIN
        write('cell',index:2,'');
        writeln(numbers[index]:3);
      END;{for}
END.{array_1}