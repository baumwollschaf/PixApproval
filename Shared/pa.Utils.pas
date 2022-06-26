unit pa.Utils;

interface

uses
  System.IOUtils;

function Scramble(s: string): string;
function CreatePassword(ALength: Integer = 8): String;

implementation

const
  cCHARS = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789*~#.,;';

function CreatePassword(ALength: Integer): String;
begin
  Result := '';
  var
    Len: Integer;
  Len := Length(cCHARS);
  for var i: Integer := 0 to ALength - 1 do
  begin
    Result := Result + cCHARS[Random(Len) + 1];
  end;
end;

function Scramble(s: string): string;
var
  r: string;
  i: Integer;
  c: char;
  b: byte;
begin
  r := '';
  for i := 1 to Length(s) do
  begin
    b := ord(s[i]);
    b := (b and $E0) + ((b and $1F) xor 5);
    c := chr(b);
    r := r + c;
  end;
  Result := r;
end;

end.
