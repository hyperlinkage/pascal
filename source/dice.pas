PROGRAM die;
{Tim Booker}
{24th March 1997}


USES
    wincrt;

VAR
   y:INTEGER;

PROCEDURE a;
          BEGIN
               gotoxy(2,2+y); writeln('  *');
               gotoxy(9,2+y); writeln('One');
          END;

PROCEDURE b;
          BEGIN
               gotoxy(2,1+y); writeln('*');
               gotoxy(2,3+y); writeln('    *');
               gotoxy(9,2+y); writeln('Two');
          END;

PROCEDURE c;
          BEGIN
               gotoxy(2,1+y); writeln('*');
               gotoxy(2,2+y); writeln('  *');
               gotoxy(2,3+y); writeln('    *');
               gotoxy(9,2+y); writeln('Three');
          END;

PROCEDURE d;
          BEGIN
               gotoxy(2,1+y); writeln('*   *');
               gotoxy(2,3+y); writeln('*   *');
               gotoxy(9,2+y); writeln('Four');
          END;

PROCEDURE e;
          BEGIN
               gotoxy(2,1+y); writeln('*   *');
               gotoxy(2,2+y); writeln('  *');
               gotoxy(2,3+y); writeln('*   *');
               gotoxy(9,2+y); writeln('Five');
          END;

PROCEDURE f;
          BEGIN
               gotoxy(2,1+y); writeln('*   *');
               gotoxy(2,2+y); writeln('*   *');
               gotoxy(2,3+y); writeln('*   *');
               gotoxy(9,2+y); writeln('Six');
          END;

PROCEDURE number;
          VAR
             dice:INTEGER;
             fred:INTEGER;
             result:INTEGER;
          BEGIN
               WHILE y<8 DO

               BEGIN
               randomize;
               fred:=dice;
               dice:=random(5)+1;
               IF dice=1 THEN a
               ELSE IF dice=2 THEN b
               ELSE IF dice=3 THEN c
               ELSE IF dice=4 THEN d
               ELSE IF dice=5 THEN e
               ELSE IF dice=6 THEN f;
               readln;
               clrscr;
               END;
          END;

BEGIN
     clrscr;
     number;
END.