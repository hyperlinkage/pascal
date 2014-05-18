PROGRAM ai;
{Tim Booker}
{27th November 1996}

USES 
     wincrt;

VAR
   randseed		:REAL;
   guess_number	:REAL;
   number			:INTEGER;
   tries			:INTEGER;
   cycle			:INTEGER;
   intgess			:REAL;

PROCEDURE help;
  BEGIN
    clrscr;
    write('Enter a number between 1 and 1000: ');
    readln(number);
    guess_number:=500;
    cycle:=1;
      WHILE (Intgess<>number) AND (tries<=25) DO
        BEGIN
          cycle:=cycle+1;
          tries:=tries+1;
          IF guess_number<number THEN

              guess_number:=guess_number+(500/cycle)
          ELSE

              guess_number:=guess_number-(500/cycle);
           Intgess:=INT(guess_number);

           writeln('GUESS No.',cycle,': ',Intgess:3:0);
        END;
      IF Intgess=number THEN
        BEGIN
          writeln('THIS IS THE NUMBER: ',Intgess:3:0);
          readln;
        END
      ELSE
        BEGIN
          writeln('OH DEAR I''VE LOST');
          readln;
        END;


  END;



BEGIN
  help;
END.

