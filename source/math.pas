PROGRAM maths;
{Tim Booker}
{19th March 1997}

USES
    wincrt;

VAR
   nam:STRING;
   sum:INTEGER;
   que:INTEGER;
   qe2:INTEGER;
   ans:REAL;
   an2:REAL;
   cor:INTEGER;


PROCEDURE initialise;
          BEGIN
               clrscr;
               write('Name: ');
               read(nam);
          END;

PROCEDURE ran;
          BEGIN
               randomize;
               que:=random(10);
               qe2:=random(10);
          END;

PROCEDURE times;

VAR
   counter:INTEGER;

          BEGIN
               counter:=0;
                          WHILE counter<6 DO
                          BEGIN
                          counter:=counter+1;
                          ans:=que*qe2;
                          write('What is ',que,' x ',qe2,'? ');
                          readln(an2);
                          IF ans=an2 THEN
                          BEGIN
                          cor:=cor+1;
                          writeln('Correct');
                          END
                          ELSE
                          BEGIN
                          writeln('Incorrect');
                          END;
                          ran;
                          END;
          END;

PROCEDURE divide;

VAR
   counter:INTEGER;

          BEGIN
               counter:=0;
                          WHILE counter<6 DO
                          BEGIN
                          counter:=counter+1;
                          ans:=que/qe2;
                          write('What is ',que,' / ',qe2,'? ');
                          readln(an2);
                          IF ans=an2 THEN
                          BEGIN
                          cor:=cor+1;
                          write('Correct');
                          END
                          ELSE
                          BEGIN
                          write('Incorrect');
                          counter:=counter+1;
                          END;
                          ran;
                          end;
          END;

PROCEDURE plus;

VAR
   counter:INTEGER;

          BEGIN
               counter:=0;
                          WHILE counter<6 DO
                          ans:=que+qe2;
                          write('What is ',que,' + ',qe2,'? ');
                          readln(an2);
                          IF ans=an2 THEN
                          BEGIN
                          cor:=cor+1;
                          write('Correct');
                          END
                          ELSE
                          BEGIN
                          write('Incorrect');
                          counter:=counter+1;
                          END;
          END;

PROCEDURE minus;

VAR
   counter:INTEGER;

          BEGIN
               counter:=0;
                          WHILE counter<6 DO
                          ans:=que-qe2;
                          write('What is ',que,' - ',qe2,'? ');
                          read(an2);
                          IF ans=an2 THEN
                          BEGIN
                          cor:=cor+1;
                          write('Correct');
                          END
                          ELSE
                          BEGIN
                          write('Incorrect');
                          counter:=counter+1;
                          END;
          END;

PROCEDURE out;
          BEGIN
               IF cor>4 THEN write('EXELLENT ',nam,' you got ',cor,' correct')
               ELSE
               IF cor>3 THEN write('VERY GOOD ',nam,' you got ',cor,' correct')
               ELSE
               IF cor>2 THEN write('WELL DONE ',nam,' you got ',cor,' correct')
               ELSE
               IF cor>1 THEN write(nam,' you got ',cor,' correct')
               ELSE
               write('BAD LUCK ',nam,' you got ',cor,' correct');
               readln;

          END;

PROCEDURE choice;
          BEGIN
               REPEAT
               writeln('What type of sum do you want to be tested on ',nam,'? (* / + -)  ');
               write('Choose 1, 2, 3 or 4: ');
               read(sum);
               UNTIL (sum>0) AND (sum<5);
          END;

PROCEDURE sum_type;
          BEGIN
               IF sum=1  THEN times
               ELSE
               IF sum=2 THEN divide
               ELSE
               IF sum=3 THEN plus
               ELSE
               IF sum=4 THEN minus;
          END;




BEGIN
initialise;
ran;
choice;
sum_type;
out;
END.






