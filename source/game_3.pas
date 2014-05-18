PROGRAM game;
{Tim Booker}
{4th November 1996}

{Game to guess computers randomly selected number}
{Game for computer to guess your number}

USES
    wincrt;

VAR
  rand          :REAL;     {number thought of by computer}
  randseed      :REAL;     {seed generated from clock}
  guess_number  :INTEGER;
  number_2      :INTEGER;
  tries         :INTEGER;  {number of times payer has guessed}
  cycle         :INTEGER;
  number        :REAL;     {players attempted guess}
  quit_yn       :INTEGER;
  triesleft     :INTEGER;  {number of tries the player has left}
  another       :INTEGER;
  score         :REAL;
  game_no       :INTEGER;
  index  :INTEGER;


PROCEDURE initialise;
  BEGIN
    
    clrscr;
    randomize;
    rand:=random(1000);
    {computer 'thinks' of random number}
  END;

PROCEDURE title;
  BEGIN
    clrscr;
	gotoxy(35,5); writeln('WELCOME TO');
	gotoxy(20,7); writeln('GAME to GUESS random NUMBERS title PAGE');
    gotoxy(3,11); writeln('This is called the title page because it is at the beginning of the game');
    gotoxy(3,12); writeln('and serves no purpose whatsoever.  So why don''t you get on with the game,');
    gotoxy(3,13); writeln('it''s very simple, all you have to do is press [ENTER] and make this screen');
    gotoxy(3,14); writeln('disappear.');
    readln;
    clrscr;
END;

PROCEDURE rules;   {rules page for stupid people}
  BEGIN
    clrscr;
    gotoxy(39,1); writeln('GAME to GUESS random NUMBERS rules PAGE');
    gotoxy(1,5); writeln('THE aim OF the GAME');
    gotoxy(1,7); writeln('The aim of the game is very simple and is, basically, to guess RANDOM NUMBERS');
                 write('that are randomly generated using the ''randomize''');
                 writeln('command in Turbo Pascal.');

    gotoxy(1,11); writeln('HOW to PLAY');

    gotoxy(1,13); writeln('This is how you play. The computer will randomly select a number');
                  writeln('between 1 and 1000. All you have to do is to guess the number and,');
                  writeln('using the information the computer gives you, use trial and error');
                  writeln('to find the selected number. You only have 20 guesses so take care.');
    gotoxy(1,24);writeln('Press enter to return to game');
    readln;
END;

PROCEDURE rules_2;
  BEGIN
    clrscr;
    gotoxy(39,1); writeln('GAME to GUESS random NUMBERS rules PAGE');
    gotoxy(1,5); writeln('THE aim OF the GAME');
    gotoxy(1,7); 
                  writeln('The aim of the game is very simple and is, basically, to input a ');
                  writeln('RANDOM NUMBER and the computer will then attempt to guess it');
    gotoxy(1,11); 
                  writeln('HOW to PLAY');
                  
    gotoxy(1,13); writeln('This is how you play. The computer will ask you to input a');
                  writeln('number, this must be between 1 and 1000. The computer will then');
                  writeln('show you all of it''s guesses and tell you if it has made the');
                  writeln('challenge (guess the number in less than 8 tries).');
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
    IF number>1000 THEN writeln('Number must be less than 1000');
    IF number<-1 THEN writeln ('Number must be more than 1');
    write('What number am I thinking of? '); 
    readln(number);
    
    UNTIL (number>=-2) AND (number<=1000);
  END;

PROCEDURE output;
VAR
  bonus         :REAL;
  BEGIN
    clrscr;
    gotoxy(50,1); writeln('GAME to GUESS random NUMBERS');
    gotoxy(1,24); writeln('Please, don''t have nightmares');
    gotoxy(1,5);
       {give congrats. or abuse to the player}
        IF tries<=5 THEN
         begin
          writeln('EXCELLENT');
          gotoxy(11,5); writeln(' it only took you ',tries,' tries to get it right!');
         end
      ELSE
        IF tries<=10 THEN
         begin
          writeln('BRILLIANT'); 
          gotoxy(11,5); writeln (' it only took you ',tries,' tries to get it right.')
         end
      ELSE
        IF tries<=15 THEN
         begin
         writeln('WELL DONE');
         gotoxy(11,5); writeln(' it only took you ',tries,' tries to get it right.')
         end
      ELSE
        IF tries>=20 THEN
          BEGIN
            
            writeln('SORRY BUT YOU LOOSE');
            
            gotoxy(1,23); writeln('You have died a horrible death');
            gotoxy(1,6);
          END
      ELSE
        BEGIN
          gotoxy(1,5); 
          writeln('HELLO, ARE YOU AWAKE');
          gotoxy(22,5);
          writeln(' it took you ',tries,' tries to get it right.');
        END;
    bonus:=1000*(20-tries);
    score:=score+bonus;
    writeln('Bonus score is ',bonus:1:0);
    gotoxy(50,23); writeln('Your score: ',score:8:0);
    
    gotoxy(50,24); writeln('Thankyou for playing, goodbye');
    
    gotoxy(1,7);
    writeln(rand:1:0,' is the correct number.');
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
          
          gotoxy(1,3);

            IF number>rand THEN
              begin
              writeln('Sorry ',number:3:0,' is too high, try something a bit lower');
              score:=score+(1000-(number-rand));
              end
            ELSE  {if,then statement to show magnitude of incorrectness}
              begin
              writeln('Sorry ',number:3:0,' is too low, try something a bit higher');
              score:=score+(1000-(rand-number));
              end;
              gotoxy(50,24); writeln('Your score: ',score:8:0);
              gotoxy(1,2);
          repeat
          if number>1000 then writeln ('Number must be less than 1000. Please guess again');
          IF number<1 THEN writeln ('Number must be more than 1');
          write('What number am I thinking of? '); 
          readln(number);    {repeat question}
          
          until (number>=1) and (number<=1000);
        END;
      output;
  END;

PROCEDURE input_3;
  BEGIN
    clrscr;
    
    gotoxy(50,1); writeln ('GAME to GUESS random NUMBERS');
    
    REPEAT
    IF number>1000 THEN writeln ('Number must be less than 1000. Please guess again');
    IF number<-1 THEN writeln ('Number must be more than 1');
    
    gotoxy(1,22); writeln('Type [-1] to quit the game');
    gotoxy(1,23); writeln('Type [0] for rules page');
    
    gotoxy(1,2);

    write('Enter a number between 1 and 1000: '); 
    readln(number);    {repeat question}
        
    UNTIL (number>=-1) AND (number<=1000);
  END;

PROCEDURE credits;
  BEGIN
    clrscr;
    gotoxy(15,3); writeln('GAME to GUESS random NUMBERS credit LIST');
    gotoxy(15,5); writeln('designed by Tim & James');
    gotoxy(15,7); writeln('programed by Tim & James M202');
    gotoxy(15,9); writeln('special thanks to ''CRIMEWATCH UK'' ');
    gotoxy(15,11); writeln('This program was written using TURBO PASCAL');
    gotoxy(15,12); writeln('as an answer to this question:');
    gotoxy(10,14); writeln('''Write a program for a game in which the user guesses');
    gotoxy(10,15); writeln('what random number between 1 and 1000 the computer has');
    gotoxy(10,16); writeln('"thought of", untill he or she has found the correct number.');
    gotoxy(10,17); writeln('The computer should tell the user for each guess whether');
    gotoxy(10,18); writeln('it was too high, too low or spot on! How many carefully');
    gotoxy(10,19); writeln('chosen guesses should the user need before getting the');
    gotoxy(10,20); writeln('right answer?');
    gotoxy(10,21); writeln('Write a program to let the computer guess what number YOU');
    gotoxy(10,22); writeln('have thought of, within a specified range.''');
    gotoxy(50,24); writeln('Thankyou for playing, goodbye');
    readln;
  END;

PROCEDURE input_4;
VAR
  hello :INTEGER;
  min   :INTEGER;
  max   :INTEGER;
  x:INTEGER;
  BEGIN
      IF number=0 THEN   {if '0' is typed, the rule screen comes on}
        BEGIN
          rules_2;
          clrscr;
          input_3;    {after displaying rules go back to begining of input}
        END;
    guess_number:=random(1000);
    IF guess_number>number THEN score:=score+(guess_number-number);
    IF guess_number<number THEN score:=score+(number-guess_number);
    tries:=1;
    x:=3;
    min:=0;
    max:=1000;
    writeln('GUESS No.',tries,': ',guess_number:3);
      WHILE (guess_number<>number) AND (tries<=7) DO
        BEGIN
         x:=x+1;
         hello:=7-tries;
         
         gotoxy(1,24); writeln('The computer has got ',hello,' tries left');
         gotoxy(1,x);
         
         tries:=tries+1;
          IF guess_number<number THEN
            BEGIN
                 min:=guess_number;
                 guess_number:=(max+min) div 2
            END
          ELSE
            BEGIN
               max:=guess_number;
               guess_number:=((max-min) div 2)+min;
            END;
        writeln('GUESS No.',tries,': ',guess_number:3);
    IF guess_number>number THEN score:=score+(guess_number-number);
    IF guess_number<number THEN score:=score+(number-guess_number);
    END;
      IF guess_number=number THEN
        BEGIN
          score:=score*tries;
          writeln('THIS IS THE NUMBER: ',guess_number:3);
          readln;
        END
      ELSE
        BEGIN
          score:=score+(tries*1000);
          
          writeln('AAAARRRRGGGGGGH! I''VE LOST');
          gotoxy(50,23); writeln('Your Score: ',score:1:0);
          
          readln;
        END;
  END;

PROCEDURE quit;
  BEGIN
   IF number<=-1 THEN
        BEGIN
          REPEAT
          IF quit_yn<>0 THEN writeln('Must be either 1 or 2');
          write('Are you sure you want to quit (2=Yes 1=No)? '); 
          readln(quit_yn);
          
          UNTIL (quit_yn>=1) AND (quit_yn<=2);
        IF quit_yn>=2 THEN credits ELSE
          BEGIN
            IF game_no<=1 THEN input_2 ELSE input_4;
          END;
        END;
   IF number<>-1 THEN
     BEGIN
       IF game_no<=1 THEN input_2 ELSE input_4;
        END;

  END;


PROCEDURE startup;
  BEGIN
  score:=0;
  clrscr;
  
  gotoxy(50,1); writeln('GAME to GUESS random NUMBERS');
  gotoxy(1,5); writeln('Game 1');
  gotoxy(1,6); writeln('You guess computers number');
  gotoxy(1,8); writeln('Game 2');
  gotoxy(1,9); writeln('Computer guesses your number');
  repeat
  writeln;
  write('Please input your choice of game: '); 
  readln(game_no); 
  IF game_no>2 THEN writeln('Must be either 1 or 2');
  IF game_no<1 THEN writeln('Must be either 1 or 2');
  until (game_no>=1) and (game_no<=2);
    IF game_no<=1 THEN
      BEGIN
        input;
        quit;

      END
    ELSE
      BEGIN
        input_3;
        quit;

      END;
    REPEAT
    clrscr;
    gotoxy(15,10);
    write('Do you want another game? (1=Yes, 2=No) '); 
    readln(another);
    UNTIL (another>=1) AND (another<=2);
    IF another<=1 THEN startup;
    credits;
   END;

BEGIN
initialise;
title;
startup;
END.




