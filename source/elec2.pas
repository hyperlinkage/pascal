PROGRAM elec2;
{Tim Booker}
{23rd September 1996}

{program to calculate an electricity bill}

USES
    wincrt;

VAR
  month1                :REAL; {the quarterly charges}
  month2                :REAL;
  month3                :REAL;
  month4                :REAL;
  total_bill            :REAL;

BEGIN
  clrscr;
  month1:=35.00;
  month2:=37.78;
  month3:=22.53;
  month4:=43.85;
  total_bill:=month1+month2+month3+month4;
  WRITELN('Total amount payable',total_bill:8:2);
END.
{Life,the Universe and Everything = 42}
