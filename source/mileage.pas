PROGRAM mileage;
{Tim Booker}
{16th October 1996}

{to calculate staff mileage allowances}

USES
    wincrt;
VAR
  date                  :STRING;
  staff_name            :STRING;
  student_mile          :REAL;
  other_mile            :REAL;
  journey_type          :INTEGER;
  total_allowance       :REAL;
PROCEDURE name_date;
  BEGIN
    clrscr;
    write('Date: ');
    readln(date);
    write('Name: ');
    readln(staff_name);
    clrscr;
    gotoxy(3,2); writeln('Name: ',staff_name);
    gotoxy(3,3); writeln('Date: ',date);
    gotoxy(51,2); writeln('Staff mileage allowance');
    gotoxy(3,5); writeln('1. Journey to visit students (1 or more).');
    gotoxy(3,6); writeln('2. Other type of journey.');
  END;
PROCEDURE data_entry;
  BEGIN
    gotoxy(3,8); writeln('Enter data:');
    write('Purpose of journey (1 or 2. 3 to end)? ');
    readln(journey_type);
    WHILE journey_type<3 DO
      BEGIN
        IF journey_type< 2 THEN
          BEGIN
            write('How many miles did this journey take you? ');
            readln(student_mile);
            total_allowance:=total_allowance+(student_mile*0.28);

          END;
        IF journey_type<>1 THEN
          BEGIN
            write('How many miles did this journey take you? ');
            readln(other_mile);
            total_allowance:=total_allowance+(other_mile*0.22);
          END;
        write('Purpose of journey (1 or 2. 3 to end)? ');
        readln(journey_type);
      END;
  END;
PROCEDURE display_results;
  BEGIN
    clrscr;
    gotoxy(3,2); writeln ('Name: ',staff_name);
    gotoxy(3,3); writeln ('Date: ',date);
    gotoxy(51,2); writeln ('Staff mileage allowance');
    gotoxy(3,5); writeln ('Allownace for a type 1 journey is 28p per mile');
    gotoxy(3,6); writeln ('Allowance for a type 2 journey is 22p per mile');
    gotoxy(3,8); writeln ('Your total mileage allowance is £',total_allowance:3:2);
    gotoxy(51,24); writeln ('Thank you for not smoking');
  END;
BEGIN
  name_date;
  data_entry;
  display_results;
END.






