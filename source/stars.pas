PROGRAM stars;
{Tim Booker}
{9th October 1996}

USES
    wincrt;
VAR
  no_of_stars    :INTEGER;
  startY         :INTEGER;
  startX         :INTEGER;
  star           :STRING;
PROCEDURE initialise;
  BEGIN
    star:='*';
    no_of_stars:=1;
  END;
PROCEDURE print_stars;
  BEGIN
    clrscr;
    startX:=37;
    startY:=2;
      WHILE no_of_stars<42 DO
        BEGIN
          gotoxy(startX,startY);
          writeln(star);
          startX:=startx-1;
          starty:=startY+1;
          star:=star+'**';
          no_of_stars:=no_of_stars+2;
        END;
  END;
BEGIN
  initialise;
  print_stars;
END.

