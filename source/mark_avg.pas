PROGRAM mark_avg(input,output);
{Tim Booker}
{7th October 1996}

{program to calculate average of a set of students' marks}

USES
    wincrt;

VAR
  student_mark, total_mark, no_of_marks :INTEGER;
  average                               :REAL;

PROCEDURE initialise;
BEGIN
  no_of_marks:=0;
  total_mark:=0;
END; {end of procedure}
PROCEDURE input_and_process;
  BEGIN
    clrscr;
    write('Please enter the first mark, -1 to end: ');
    readln(student_mark);
    WHILE student_mark<>-1 DO
      BEGIN
        total_mark:=total_mark+student_mark;
        no_of_marks:=no_of_marks+1;
        write('Please enter the next mark, -1 to end: ');
        readln(student_mark)
      END; {endwhile}
  END; {end of procedure}
PROCEDURE output_result;
  BEGIN
    average:=total_mark/no_of_marks;
    writeln('Average mark is ',average:5:2);
    writeln('Total number of students: ',no_of_marks:3)
  END; {end of procedure}
BEGIN
  initialise;
  input_and_process;
  output_result;
END.

