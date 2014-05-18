PROGRAM game;
{Tim Booker}
{4th November 1996}

USES
    wincrt;

VAR
  rand          :REAL;     {number thought of by computer}
  rand_2        :INTEGER;
  randseed      :REAL;     {seed generated from clock}
  number        :REAL;     {players attempted guess}
  quit_yn       :INTEGER;
  tries         :INTEGER;  {number of times payer has guessed}
  triesleft     :INTEGER;  {number of tries the player has left}

PROCEDURE initialise;
  BEGIN
       clrscr;
       randomize;
       rand:=random(1000);
       rand_2:=random(50);   {computer 'thinks' of random number}
  END;

PROCEDURE title;
  BEGIN
	clrscr;
	gotoxy(35,5); writeln('WELCOME TO');
	gotoxy(20,7); writeln('GAME to GUESS random NUMBERS title PAGE');
	gotoxy(3,11); writeln('This is called the title page because it is at the beginning of the game');
	gotoxy(3,12); writeln('and serves no purpose whatsoever.  So why don''t you get on with the game,');
	gotoxy(3,13); writeln('it''s very simple, all you have to do is press [ENTER] and make this screen');
	gotoxy(3,14); writeln('dissapear.');
	readln;
	clrscr;
END;

PROCEDURE rules;   {rules page for stupid people}
  BEGIN
    clrscr;
    gotoxy(39,1); writeln('GAME to GUESS random NUMBERS rules PAGE');
    gotoxy(1,5); writeln('THE aim OF the GAME');
    gotoxy(1,7); writeln('The aim of the game is very simple and is, basically, to guess');
                 writeln('RANDOM NUMBERS that are randomly generated using the ''randomize''');
                 writeln('command in Turbo Pascal.');
    gotoxy(1,11); writeln('HOW to PLAY');
    gotoxy(1,13); writeln('This is how you play. The computer will randomly select a number');
                  writeln('between 1 and 1000. All you have to do is to guess the number and,');
                  writeln('using the information the computer gives you, use trial and error');
                  writeln('to find the selected number. You only have 20 guesses so take care.');
    gotoxy(1,24);writeln('Press enter to return to game');
    readln;

  END;


PROCEDURE input;
  BEGIN
    clrscr;
    gotoxy(50,1); writeln('GAME to GUESS random NUMBERS');
    gotoxy(1,22); writeln('Type [-1] to quit the game');
    gotoxy(1,23); writeln('Type [0] for rules page');
    gotoxy(1,24); writeln('You have got 20 tries left');
    gotoxy(1,2);
    REPEAT
    IF number>1000 THEN writeln('Number is out of range. Please guess again');
    write('What number am I thinking of? ');
    readln(number);
    UNTIL (number>=-2) AND (number<=1000);
  END;


PROCEDURE output;
  BEGIN
    clrscr;
    gotoxy(50,1); writeln('GAME to GUESS random NUMBERS');
    gotoxy(1,24); writeln('Please, don''t have nightmares');
    gotoxy(1,5);

       {give congrats. or abuse to the player}
        IF tries<=5 THEN writeln('EXCELLENT it only took you ',tries,' tries to get it right!')
      ELSE
        IF tries<=10 THEN writeln('BRILLIANT it only took you ',tries,' tries to get it right.')
      ELSE
        IF tries<=15 THEN writeln('WELL DONE it only took you ',tries,' tries to get it right.')
      ELSE
        IF tries>=20 THEN
          BEGIN
            writeln('SORRY BUT YOU LOOSE');

            gotoxy(1,23); writeln('You have died a horrible death');
          END
      ELSE
        BEGIN
          gotoxy(1,5);
          writeln('HELLO, ARE YOU AWAKE it took you ',tries,' tries to get it right.');
        END;

    gotoxy(50,24); writeln('Thankyou for playing, goodbye');

    gotoxy(1,6);
    writeln(rand:3:0,' is the correct number.');
    readln;
  END;


PROCEDURE input_2;
  BEGIN
      IF number=0 THEN   {if '0' is typed, the rule screen comes on}
        BEGIN
          rules;
          clrscr;
          input;    {after displaying rules go back to begining of input}
        END
       ELSE tries:=1;
      WHILE (number<>rand) AND (tries<=19) DO {counted loop repeats<=20 times}
        BEGIN
          triesleft:=20-tries; {integer value to show on-screen how many tries are left}
          tries:=tries+1;
          clrscr;
          gotoxy(1,24); writeln('You have got ',triesleft,' lives left');
          gotoxy(50,1); writeln('GAME to GUESS random NUMBERS');
          gotoxy(1,2);
            IF number>rand THEN
              writeln('Sorry ',number:3:0,' is too high, try something a bit lower')
            ELSE  {if,then statement to show magnitude of incorrectness}
              writeln('Sorry ',number:3:0,' is too low, try something a bit higher');
          repeat
          if number>1000 then writeln ('Number is out of range. Please guess again');
          write('What number am I thinking of? ');
          readln(number);    {repeat question}
          until (number>=1) and (number<=1000);

        END;
      output;
  END;



PROCEDURE credits;
  BEGIN
    clrscr;
    gotoxy(15,3); writeln('GAME to GUESS random NUMBERS credit LIST');
    gotoxy(10,5); writeln('designed by Tim & James');
    gotoxy(10,7); writeln('programed by Tim & James M202');
    gotoxy(10,9); writeln('special thanks to ''CRIMEWATCH UK'' ');
    gotoxy(50,24); writeln('Thankyou for playing, goodbye');
    readln;
  END;

PROCEDURE quit;
  BEGIN
   IF number<=-1 THEN
        BEGIN
          write('Are you sure you want to quit (-2=Yes -1=No)? ');
          readln(quit_yn);
        IF quit_yn<=-2 THEN credits ELSE input_2 ;
          END;
   IF number<>-1 THEN input_2;
        END;


BEGIN
initialise;
title;
input;
quit;   {set the program in action}
credits;

END.




