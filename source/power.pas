PROGRAM get_power;
{Tim Booker}
{15th January 1997}

{program to test power function}

USES wincrt;

VAR number,power_num,power_result       :INTEGER;

FUNCTION power(x,index:INTEGER) :INTEGER;
{raises x to positive integer power index}

VAR count,product:INTEGER;

BEGIN
  product:=1;
  FOR count:=1 TO index DO
    BEGIN
      product:=product*X;
    END;
  power:=product;
END; {power function}

BEGIN
  power_result:=0;
  clrscr;
  write('Please enter number: ');
  readln(number);
  write('Please enter power of that number: ');
  readln(power_num);
  power_result:=power(number,power_num);
  write(number,' to the power of ',power_num,' is ',power_result);
  readln;
END.