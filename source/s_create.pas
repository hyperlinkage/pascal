PROGRAM s_create;

uses wincrt;

const max=20;

type
  string_max=array[1..max] of char;
  stock_rec_type=record
  item_no               :integer;
  description           :string_max;
  selling_price         :real;
  qty_in_stock          :integer;
  end;

  stock_file_type=file of stock_rec_type;

var
  stock_file    :stock_file_type;
  stock_item    :stock_rec_type;
  filename      :string[20];

procedure read_text_string(no_of_chars:integer; var text_string:string_max);

const space=' ';

var counter:integer;

begin
  for counter:=1 to no_of_chars do
    if eoln then text_string[counter]:=space
    else read(text_string[counter]);
    {endif}
  {endfor}
  readln;
end; {procedure}

procedure initialise;
begin
  clrscr;
  writeln('please enter the name of the file, including pathname (eg a:\stockmas.dat);');
  readln(filename);
  assign(stock_file,filename);
  rewrite(stock_file);
  write('enter item no; 999 to finish: ');
  readln(stock_item.item_no);
end; {procedure}

procedure write_recs;
begin
  with stock_item do
    begin
      while item_no <>999 do
        begin
          write('enter description: ');
          read_text_string(20,description);
          write('selling price: ');
          readln(selling_price);
          write('quantity in stock: ');
          readln(qty_in_stock);
          {write the record to the file}
          write(stock_file,stock_item);
          write('enter item number; 999 to finish: ');
          readln(item_no);
        end; {while}
      close(stock_file);
    end; {with}
end; {procedure}

procedure read_recs;
  begin
    reset(stock_file);
    with stock_item do
      begin
        while not eof(stock_file) do
          begin
            read(stock_file,stock_item);
            writeln(item_no:7, description:22, selling_price:8:2, qty_in_stock:5);
          end; {while}
      end; {with}
    close(stock_file);
  end; {procedure}

{main program}

begin
  initialise;
  write_recs;
  read_recs;
end.


