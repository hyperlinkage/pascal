PROGRAM foodbooks;
{Tim Booker}
{25th September 1996}

USES
    wincrt;

VAR
  meal_price    :REAL;
  drink_price   :REAL;
  total_cost    :REAL;
  food_month    :REAL;
  total_food    :REAL;
  books_cost    :REAL;
  total_books   :REAL;
  full_price    :REAL;

BEGIN
  clrscr;
  WRITE('How much does a meal cost? ');
  READLN(meal_price);
  WRITE('How much does a drink cost? ');
  READLN(drink_price);
  WRITE('How much do you spend on books and stationary each month? ');
  READLN(books_cost);                  {to find the value of x (see p34)}
  total_cost:=5*(meal_price+(drink_price*2));  {to find the price for a 5 day week}
  food_month:=4*total_cost;
  total_food:=total_cost*13;
  total_books:=13*(books_cost/4);      {to find the price for a 13 week term}
  full_price:=total_books+total_food;
  WRITELN('Food will cost you £',total_cost:3:2,' per week, and £',food_month:3:2,' per month');
  WRITELN('Food will cost £',total_food:4:2,' per term, books and stationary will cost £',total_books:3:2);
  WRITELN('Making a grand total of £',full_price:4:2);
END.

