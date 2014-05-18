PROGRAM tables;
{Tim Booker}
{17th March 1997}

USES
    wincrt;

VAR
   name:STRING;
   table:INTEGER;
   rand:INTEGER;
   answer:INTEGER;
   answer_2:INTEGER;
   quest:INTEGER;
   score:INTEGER;

PROCEDURE initialise;
          BEGIN
               clrscr;
               randomize;
          END;

PROCEDURE calc;
          VAR
             ans:INTEGER;
             a:INTEGER;
             b:INTEGER;
          BEGIN
               clrscr;
               gotoxy(50,1); write('TIMES TABLE game MULTIPLYER');
               gotoxy(1,3);
               write('What number do you want to multiply? ');
               read(a);
               gotoxy(1,5);
               write('What number do you want to multiply it by? ');
               read(b);
               gotoxy(40,7);
               ans:=a*b;
               write(a,' x ',b,' = ');
               write(ans);
               readln;
               gotoxy(1,9);
               write('THANK YOU ');
               write('for using the multiplyer ',name,'. It''s not very good.');
               readln;
               gotoxy(1,11);
               write('We will now start the ');
               write('REAL ');
               write('game.');
               readln;
          END;

PROCEDURE screen;
          BEGIN
               clrscr;
               gotoxy(60,1); writeln('TIMES TABLE game');
               gotoxy(1,24); writeln('Can YOU get 5/5??');
               gotoxy(1,2);
          END;

PROCEDURE title;
          BEGIN
               clrscr;
               gotoxy(25,10); write('You are about to play the...');
               gotoxy(30,12); write('TIMES TABLE game!');
               readln;
               clrscr;
               gotoxy(20,10);
               write('Test your mental arithmatic skills and');
               gotoxy(20,12);
               write('meet new friends!');
               readln;
               clrscr;
               gotoxy(20,10);
               write('The computer will ask you five questions on the');
               gotoxy(20,12);
               write('times table of your choice. At the end you will');
               gotoxy(20,14);
               write('be given a mark.');
               readln;
               clrscr;
               gotoxy(20,8);write('I hope you have fun playing this game.');
               gotoxy(20,10) ;write('It didn''t take me very long to write.');
               gotoxy(40,12); write('From Tim.');
               gotoxy(20,16); write('PS. It''s bloody hard to write a ''');
               gotoxy(20,17); write('using PASCAL!');
               readln;
          END;


PROCEDURE input;
          VAR
             choice:INTEGER;
          BEGIN
               screen;
               write('Hello, what is your name? ');
               read(name);
               clrscr;
               screen;
               REPEAT
               screen;
               write('Which table shall I test you on ',name,'? ');
               read(table);
               UNTIL (table>0) AND (table<10);
               clrscr;
          END;

PROCEDURE test;
          BEGIN
                WHILE quest<>5 DO
                      BEGIN
                           screen;
                           quest:=quest+1;
                           writeln('Question ',quest);
                           rand:=random(10);
                           answer:=rand*table;
                           write('What is ',table,' times ',rand,'? ');
                           read(answer_2);
                           IF answer_2<>answer THEN
                           BEGIN
                           writeln('Incorrect. The answer is ',answer);
                           readln;
                           END
                           ELSE
                               BEGIN
                                    writeln(answer_2,' is correct.');
                                    score:=score+1;
                                    readln;
                               END; {if}
                           readln;
                           clrscr;
                      END; {while}
          END; {proc}

PROCEDURE output;
          BEGIN
               screen;
                      IF score>4 THEN
                      BEGIN
                      write('EXELLENT ');
                      write(name,', you got ',score,' correct!');
                      END
                      ELSE
                          IF score>3 THEN
                          BEGIN
                          write('VERY GOOD ');
                          write(name,', you got ',score,' correct!');
                          END
                          ELSE
                              IF score>2 THEN
                              BEGIN
                              write('WELL DONE ');
                              write(name,', you got ',score,' correct.');
                              END
                              ELSE
                                  IF score>1 THEN
                                  BEGIN
                                  write('YOU NEED MORE PRACTICE ');
                                  write(name,', you got ',score,' correct.');
                                  END
                                  ELSE
                                      BEGIN
                                      write('OH DEAR ');
                                      write(name,', you got ',score,' correct.');
                                      END; {if}
               readln;
          END;

PROCEDURE creds;
          BEGIN
               clrscr;
               gotoxy(20,6);
               writeln('I really do appreciate you playing my game');
               gotoxy(20,8);
               write('Thankyou very much.');
               gotoxy(20,15);
               write('ALSO BY THE SAME AUTHOR:');
               gotoxy(22,17);
               write('GAME to GUESS random NUMBERS');
               readln;
          END;

BEGIN
     initialise;
     title;
     input;
     test;
     output;
     creds;
END.






