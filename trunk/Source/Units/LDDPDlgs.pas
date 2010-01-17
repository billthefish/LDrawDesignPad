{These sources are copyright (C) 2003-2009 the LDDP project contributors.

This source is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This source is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

-------------------------------------------------------------------------------}
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
  if (AComponent = FEditor) and
     (Operation = opRemove) then
    FEditor := nil;
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
