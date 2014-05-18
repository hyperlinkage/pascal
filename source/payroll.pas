PROGRAM payroll;
{Tim Booker}
{7th October 1996}

 USES
     wincrt;
 VAR
   emp_name     :STRING;
   hourly_rate  :REAL;
   no_of_hours  :REAL;
   gross_pay    :REAL;
   tax          :REAL;
   net_pay      :REAL;
   total_gross  :REAL;
   total_tax    :REAL;
   total_net    :REAL;
   no_of_emps   :INTEGER;
BEGIN
  clrscr;
  write('Name (enter "fish" to end): ');
  readln(emp_name);
  WHILE emp_name<>'fish' DO
    BEGIN
      write('Hourly rate: ');
      readln(hourly_rate);
      write('Number of hours worked: ');
      readln(no_of_hours);
      gross_pay:=no_of_hours*hourly_rate;
      tax:=(gross_pay/100)*25;
      net_pay:=gross_pay-tax;
      writeln('Gross pay: ',gross_pay:3:2);
      writeln('Tax: ',tax:2:2);
      writeln('Net pay: ',net_pay:3:2);
      total_gross:=total_gross+gross_pay;
      total_tax:=total_tax+tax;
      total_net:=total_net+net_pay;
      no_of_emps:=no_of_emps+1;
      write('Name (enter "fish" to end): ');
      readln(emp_name);
    END;
  clrscr;
  writeln('Total gross: ',total_gross:4:2);
  writeln('Total tax: ',total_tax:4:2);
  writeln('Total net pay: ',total_net:4:2);
  writeln('Number of employees: ',no_of_emps);
END.


























































