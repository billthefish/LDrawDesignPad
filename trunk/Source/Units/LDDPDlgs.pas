unit LDDPDlgs;

interface

uses
  SysUtils, Classes, Controls, Forms, LDDPSynEdit, LDDPOptionsFrm,
  LDDPColorReplaceFrm;

type
  TLDDPBaseDlg = class(TComponent)
  protected
    FEditor: TLDDPSynEdit;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;

  public
    function Execute: Boolean; virtual; abstract;

  published
    property Editor: TLDDPSynEdit read FEditor write FEditor;
  end;

  TLDDPOptionsDlg = class(TLDDPBaseDlg)
  public
    function Execute: Boolean; override;
  end;

  TLDDPColorReplaceDlg = class(TLDDPBaseDlg)
  public
    function Execute: Boolean; override;
  end;

implementation

{ TLDDPOptionsDlg }

function TLDDPOptionsDlg.Execute: Boolean;
begin
  if Assigned(FEditor) then
    with TLDDPOptionsForm.Create(Self) do
    begin
      LDDPOptions := FEditor.LDDPOptions;
      if ShowModal = mrOK then
      begin
        FEditor.LDDPOptions := LDDPOptions;
        Result := True;
      end
      else
        Result := False;
      Free;
    end
  else
    Result := False;
end;

{ TLDDPBaseDlg }

procedure TLDDPBaseDlg.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited;
  if (AComponent = FEditor) and (Operation = opRemove) then FEditor := nil;
end;

{ TLDDPColorReplaceDlg }

function TLDDPColorReplaceDlg.Execute: Boolean;
begin
  if Assigned(FEditor) then
    with TLDDPColorReplaceForm.Create(Self) do
    begin
      Editor := FEditor;
      Result := ShowModal = mrOK;
      Free;
    end
  else
    Result := False;
end;

end.
