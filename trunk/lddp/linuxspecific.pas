unit linuxspecific;

interface
  function GetTempDir:string;

implementation


function GetTempDir:string;
{---------------------------------------------------------------------
Description: Find out windows temp path
Parameter: None
Return value: Linux Temp dir
----------------------------------------------------------------------}
  var
  tempDir: string;
begin
  tempDir := '~/'; //use the user's home directory, for now
  Result:=tempDir;
end;

end.
