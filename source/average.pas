PROGRAM marks;
{Tim Booker}
{30th September 1996}

USES
    wincrt;

VAR
  student_name          :STRING;
  mark_1                :INTEGER;
  mark_2                :INTEGER;
  mark_3                :INTEGER;
  average               :REAL;

BEGIN
  clrscr;
  write('Students name? ');
  readln(student_name);
  write('1st mark? ');
  readln(mark_1);
  write('2nd mark? ');
  readln(mark_2);
  write('3rd mark? ');
  readln(mark_3);
  average:=(mark_1+mark_2+mark_3)/3;
  clrscr;
  writeln('Student name: ',student_name);
  writeln('Marks: ',mark_1,'  ',mark_2,'  ',mark_3);
  writeln('Average: ',average:3:1);
END.