PROGRAM beam;
{Tim Booker}
{30th September 1996}

{program demonstrates difference between write and writeln}

USES
    wincrt;

BEGIN
  write('Beam me up ');
  write('please ');
  writeln('Scotty. '); { 'writeln' causes a skip to a new line after }
  writeln('Fast!');    { writing the data.}
END.
