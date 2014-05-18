PROGRAM receipt;
{Tim Booker}
{2nd October 1996}

{RELAX AND ENJOY}

USES
    wincrt;
VAR
  item           :STRING;
  qty            :INTEGER;
  unit_price     :REAL;
  value          :REAL;
  tendered       :REAL;
  change         :REAL;
BEGIN
  clrscr;
  write('Item: ');
  readln(item);
  write('Quantity: ');
  readln(qty);
  write('Unit price: ');
  readln(unit_price);
  value:=qty*unit_price;
  writeln('Value: ',value:5:2);
  write('Amount tendered: ');
  readln(tendered);
  change:=tendered-value;
  clrscr;
  gotoxy(26,1); writeln('TAYLOR GROUP PLC.');
  gotoxy(35,3); writeln('unit');
  gotoxy(6,4);  writeln('item');
  gotoxy(26,4); writeln('qty');
  gotoxy(35,4); writeln('price');
  gotoxy(44,4); writeln('value');
  gotoxy(6,5);  writeln(item);
  gotoxy(26,5); writeln(qty);
  gotoxy(35,5); writeln(unit_price:3:2);
  gotoxy(44,5); writeln(value:5:2);
  gotoxy(6,7);  writeln('amount tendered');
  gotoxy(44,7); writeln(tendered:5:2);
  gotoxy(43,8); writeln('--------');
  gotoxy(6,9);  writeln('change due');
  gotoxy(44,9); writeln(change:5:2);
  gotoxy(14,11);writeln('PLEASE RETAIN YOUR RECEIPT');
  gotoxy(16,12);writeln('PLEASE SHUT THE GATE');
END.
{wasn't that fun?}







