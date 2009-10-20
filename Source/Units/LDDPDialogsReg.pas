unit LDDPDialogsReg;

interface

uses
  Classes;

procedure Register;

implementation

uses
  LDDPDlgs;

procedure Register;
begin
  RegisterComponents('LDDP Dialogs', [TLDDPOptionsDlg, TLDDPColorReplaceDlg]);
end;

end.
