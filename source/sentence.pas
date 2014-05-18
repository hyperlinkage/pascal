PROGRAM sentence;
{Tim Booker}
{31st October 1996}

USES
    wincrt;
CONST
  space=' ';
  stop='.';
VAR
  character     :char;
  words         :integer;
  letters       :real;
  letters3      :integer;
  xstart        :integer;
PROCEDURE input;
  BEGIN
    clrscr;
    gotoxy(1,10); write('Input sentence [terminate with "."]: ');
                  readln(character);
    xstart:=38;
    words:=1;
      WHILE character<>stop DO
        BEGIN
          xstart:=xstart+1;
          letters:=letters+1;
            IF (letters>3) AND (character=space)  THEN letters3:=letters3+1;
            IF character<>space THEN letters:=letters+1
            ELSE
              BEGIN
                words:=words+1;
                letters:=0;
              END;
          gotoxy(xstart,10); write('');
                             readln(character);
        END;
  END;
PROCEDURE output;
  BEGIN
    gotoxy(1,11); writeln('Your sentence has ',words,' words in and ',letters3,' words with 3 or more letters.');
  END;
BEGIN
  input;
  output;
END.

















