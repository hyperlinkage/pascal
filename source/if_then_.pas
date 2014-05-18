PROGRAM if_then_else;
{Tim Booker}
{7th October 1996}

{example of if_then_else selection}

USES
    wincrt;
VAR
  mark  :INTEGER;

BEGIN
  clrscr;
  write('Please enter your mark ');
  readln(mark);
  IF mark>=70 THEN
    writeln('Merit')
  ELSE
    IF mark>=50 THEN
      writeln('Pass')
    ELSE
      writeln('Fail')
END.
