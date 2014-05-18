PROGRAM position;
{Tim Booker}
{8th January 1997}

USES
    wincrt;

VAR
  name  :STRING;
  x     :INTEGER;
  y     :INTEGER;

PROCEDURE input;
  BEGIN
    clrscr;
    REPEAT
    write('Enter X co-ordinate: ');
    readln(x);
    UNTIL (x>1) AND (x<80);
    REPEAT
    write('Enter Y co-ordinate: ');
    readln(y);
    UNTIL (y<24) AND (y>1);
  END;

PROCEDURE output;
  BEGIN
    gotoxy(x,y);
    write('Enter your name: ');
    readln(name);
    gotoxy(x,y+1);
    writeln ('Thankyou ',name,'.');
  END;

PROCEDURE star;
  BEGIN
    gotoxy(79,23);
    writeln('*');
    readln;
  END;

BEGIN
  input;
  output;
  star;
END.