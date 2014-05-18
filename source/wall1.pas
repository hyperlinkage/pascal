PROGRAM wallpaper;
{Tim Booker}

USES
    wincrt;

VAR
  length        :REAL;
  height        :REAL;
  roll_area     :REAL;
  paper_width   :REAL;
  paper_length  :REAL;
  wall_area     :REAL;
  no_of_rolls   :REAL;
BEGIN
  clrscr;
  {enter dimensions of wall and wallpaper roll}
  WRITE('Enter the length of the wall: ');
  READLN(length);
  WRITE('Enter the height of the wall: ');
  READLN(height);
  WRITE('Enter the length of the paper: ');
  READLN(paper_length);
  WRITE('Enter the width of the paper: ');
  READLN(paper_width);
  {calculate number of elephants required}
  wall_area:=length*height;
  roll_area:=paper_length*paper_width;
  no_of_rolls:=wall_area/roll_area;
  no_of_rolls:=1.10*no_of_rolls;   {add 10% for matching tank-top and flares}
  WRITELN('You will need ',no_of_rolls:6:1,' bread rolls');
END.






















