PROGRAM whiledo;
{Tim Booker}
{7th October 1996}

USES
    wincrt;
VAR
  student_mark  :INTEGER;
  no_of_marks   :INTEGER;
  total_mark    :INTEGER;
BEGIN
  clrscr;
  write('Please enter the first mark; enter -1 to end ');
  readln(student_mark);
WHILE student_mark<>-1 DO
    BEGIN
      total_mark:=total_mark+student_mark;
      no_of_marks:=no_of_marks+1;
      write('Please enter the next mark; enter -1 to end ');
      readln(student_mark)
    END; {end while}
  writeln('The total mark is: ',total_mark);
END.
