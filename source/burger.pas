PROGRAM burger;
{Tim Booker}
{2nd October 1996}

USES
    wincrt;

VAR
  initial_cost  :REAL;
  cost_price    :REAL;
  selling_price :REAL;
  profit        :REAL;
  estimate_no   :INTEGER;
  daily_profit  :REAL;
  time          :REAL;

BEGIN
  clrscr;
  write('Cost of a hamburger? ');
  readln(cost_price);
  write('How much will you sell it for? ');
  readln(selling_price);
  write('How many hamburgers to you hope to sell every day? ');
  readln(estimate_no);
  profit:=selling_price-cost_price;
  daily_profit:=estimate_no*profit;
  initial_cost:=200.00;
  time:=initial_cost/daily_profit;
  clrscr;
  writeln('It will take you ',time:3:0,' days to get your money back');
END.

