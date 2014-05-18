PROGRAM food;
{Tim Booker}
{25th September 1996}

USES
    wincrt;

VAR
  meal_price    :REAL;
  drink_price   :REAL;
  total_cost    :REAL;

BEGIN
  clrscr;
  WRITE('How much does a meal cost? ');
  READLN(meal_price);
  WRITE('How much does a drink cost? ');
  READLN(drink_price);
  total_cost:=5*(meal_price+(drink_price*2));
  WRITELN('It will cost you: £',total_cost:3:2);
END.

