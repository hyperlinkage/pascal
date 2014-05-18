PROGRAM elec;
{Tim Booker}
{23rd September 1996}

{program to calculate an electricity bill}

USES
    wincrt;
VAR
  standing_charge :REAL; {the fixed quarterly charge}
  unit_rate       :REAL;
  units_used      :INTEGER;
  total_bill      :REAL;

BEGIN
  clrscr;
  standing_charge:=7.41;
  unit_rate:=0.065; {converted to pounds}
  units_used:=1200;
  total_bill:=standing_charge+(unit_rate*units_used);
  WRITELN('Total amount payable',total_bill:8:2);
END.
{The Turtle Moves!}
