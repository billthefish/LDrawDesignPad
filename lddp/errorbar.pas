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
unit errorbar;

interface

uses
  gnugettext, Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, ComCtrls, Menus, JvDockTree, JvDockControlForm,
  JvDockDelphiStyle, JvComponentBase, ActnList, DATCheck;

type
  TfrErrorWindow = class(TForm)
    ErrorListView: TListView;
    JvDockClient1: TJvDockClient;
    pmL3P: TPopupMenu;
    MarkAllForFixing1: TMenuItem;
    MarkAllofSelectedErrorType1: TMenuItem;
    UnmarkAll1: TMenuItem;
    UnmarkAllofSelectedType1: TMenuItem;
    N17: TMenuItem;
    AutofixSelectedError2: TMenuItem;
    N11: TMenuItem;
    AutofixAllCheckedErrorsofSameType1: TMenuItem;
    AutofixCheckedErrors1: TMenuItem;
    N12: TMenuItem;
    AutofixAllErrorofSameType1: TMenuItem;
    AutofixAllErrors2: TMenuItem;
    N23: TMenuItem;
    CopyErrorListToClipboard2: TMenuItem;
    ActionList1: TActionList;
    acErrorCheck: TAction;
    acECFixError: TAction;
    acECFixAllErrors: TAction;
    acECMarkAll: TAction;
    acECUnMarkAll: TAction;
    acECFixAllMarkedErrors: TAction;
    acECFixAllMarkedErrorsTyped: TAction;
    acECFixAllErrorsTyped: TAction;
    acECMarkAllTyped: TAction;
    acECUnMarkAllTyped: TAction;
    acECCopy: TAction;
    procedure ErrorListViewDblClick(Sender: TObject);
    procedure ErrorListViewSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure acErrorCheckExecute(Sender: TObject);
    procedure acECFixErrorExecute(Sender: TObject);
    procedure acECFixAllErrorsExecute(Sender: TObject);
    procedure acECMarkAllExecute(Sender: TObject);
    procedure acECUnMarkAllExecute(Sender: TObject);
    procedure acECFixAllMarkedErrorsExecute(Sender: TObject);
    procedure acECFixAllMarkedErrorsTypedExecute(Sender: TObject);
    procedure acECFixAllErrorsTypedExecute(Sender: TObject);
    procedure acECMarkAllTypedExecute(Sender: TObject);
    procedure acECUnMarkAllTypedExecute(Sender: TObject);
    procedure acECCopyExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure ErrorCheckErrorFix(OnlyMarked: Boolean; ErrorType: TDATErrorType);
    procedure SetErrorCheckMarks(State: Boolean; ErrorType: TDATErrorType);
  public
    procedure AddError(LineNumber: string; const ErrorRec: TDATError);
    procedure LoadFormValues;
    procedure SaveFormValues;
    procedure RestorePosition;
  end;

var
  frErrorWindow: TfrErrorWindow;

implementation

{$R *.dfm}

uses
  IniFiles, DATBase, DATModel, DATErrorFix, DATUtils, main, options,
  commonprocs, windowsspecific, Contnrs;

procedure TfrErrorWindow.AddError(LineNumber: string; const ErrorRec: TDATError);

var
  error: TListItem;
  PError: TDATError;

begin
  PError := TDATError.Create(ErrorRec.ErrorType, ErrorRec.ErrorValue);
  error := ErrorListView.Items.Add;
  error.Checked := True;
  error.Data := Pointer(PError);
  error.SubItems.Add(LineNumber);
  error.SubItems.Add(GetErrorString(ErrorRec));
end;

procedure TfrErrorWindow.ErrorListViewDblClick(Sender: TObject);
var
   L3PErrorLine: Integer;
begin
    // Line number of errorline. 1 subtracted since lines start
    // at 0 but error check starts with 1
    L3PErrorLine := StrToInt(ErrorListView.Items[ErrorListView.Itemindex].SubItems[0]) - 1;

    // Highlight errorline.
    frMain.editor.GotoLineEnsureVisible(L3PErrorLine);
    frMain.editor.SelectLine(L3PErrorline);

    // Change focus from L3P error pane to editor pane
    frMain.editor.SetFocus;
end;

procedure TfrErrorWindow.ErrorListViewSelectItem(Sender: TObject;
  Item: TListItem; Selected: Boolean);
var
  UnFixableError: Boolean;
  error: TDATError;

begin
  error := TDATError(Item.Data);
  UnFixableError := (error.ErrorType = deIdenticalVertices) or
                    (error.ErrorType = deSigularMatrix) or
                    (error.ErrorType = deTriangleCollinear) or
                    (error.ErrorType = deQuadCollinear) or
                    (error.ErrorType = deNonCoplanerVerticesNormAngle) or
                    (error.ErrorType = deColor24Illegal);
  acECFixError.Enabled := not UnFixableError;
  acECFixAllErrorsTyped.Enabled := not UnFixableError;
  acECFixAllMarkedErrorsTyped.Enabled := not UnFixableError;
end;

procedure TfrErrorWindow.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormValues;
  frMain.acErrorList.Checked := False;
end;

procedure TfrErrorWindow.FormCreate(Sender: TObject);

begin
  TranslateComponent(self);
end;

procedure TfrErrorWindow.FormDestroy(Sender: TObject);

var
  i: Integer;

begin
  for i := 0 to ErrorListView.Items.Count - 1 do
    TDATError(ErrorListView.Items[i].Data).Free;
  SaveFormValues;
end;

procedure TfrErrorWindow.FormShow(Sender: TObject);
begin
  LoadFormValues;
  frMain.acErrorList.Checked := True;
end;

// Error check actions

procedure TfrErrorWindow.acErrorCheckExecute(Sender: TObject);
// Perform an error check based on L3P error check
var
  i, j, iline: Integer;
  identline: Boolean;
  DATModel1: TDATModel;
  errorlist: TObjectList;
  error: TDATError;

begin
  Screen.Cursor := crHourGlass;

  for i := 0 to ErrorListView.Items.Count - 1 do
    TDATError(ErrorListView.Items[i].Data).Free;

  ErrorListView.Items.Clear;

  DATModel1 := TDATModel.Create;
  DATModel1.ModelText := frMain.editor.Lines.Text;
  iline := -1;
  
  for i := 0 to DATModel1.Count - 1 do
    if DATModel1[i] is TDATElement then
    begin
      // Check for Identical Lines
      identline := False;
      if i > 0 then
      begin
        for j := 0 to i - 1 do
        begin
          if SameDATLine(DATModel1[j], DATModel1[i]) then
          begin
            identline := true;
            iline := j;
            Break;
          end;
        end;
      end;
      // Do not continue if line is identical
      if identline then
      begin
        error := TDATError.Create(deIdenticalLine, iline + 1);
        AddError(IntToStr(i + 1), error)
      end
      else
      begin
        // Check for All Other Errors
        errorlist := L3CheckLine(DATModel1[i].DATString);
        if errorlist.Count > 0 then
          for j := 0 to errorlist.Count - 1 do
            AddError(IntToStr(i + 1), (errorlist[j] as TDATError));
        errorlist.Free;
      end;
    end;

    DATModel1.Free;

    if ErrorListView.Items.Count > 0 then
    begin
      if not Visible then
      begin
        Visible := true;
        ManualDock(frMain.JvDockServer1.BottomDockPanel, nil, alBottom);
      end;
      acECFixAllErrors.Enabled := True;
      acECFixAllMarkedErrors.Enabled := True;
      acECMarkAll.Enabled := True;
      acECUnMarkAll.Enabled := True;
      acECMarkAllTyped.Enabled := True;
      acECUnMarkAllTyped.Enabled := True;
      acECCopy.Enabled := True;
      ErrorListView.ItemIndex := 0;
      ErrorListView.OnSelectItem(nil, ErrorListView.Items[ErrorListView.ItemIndex], True);
    end
    else
    begin
      acECFixError.Enabled := False;
      acECFixAllErrors.Enabled := False;
      acECFixAllErrorsTyped.Enabled := False;
      acECFixAllMarkedErrors.Enabled := False;
      acECFixAllMarkedErrorsTyped.Enabled := False;
      acECMarkAll.Enabled := False;
      acECUnMarkAll.Enabled := False;
      acECMarkAllTyped.Enabled := False;
      acECUnMarkAllTyped.Enabled := False;
      acECCopy.Enabled := False;
      frMain.StatusBar.Panels[0].Text := _('No Errors Found!');
    end;
  Screen.Cursor := crDefault;
end;

procedure TfrErrorWindow.ErrorCheckErrorFix(OnlyMarked: Boolean; ErrorType: TDATErrorType);
// Route appropriate error to the error fixing procedure
// OnlyMarked set will only fix checked errors
// Errortype set will only fix those types of errors
var
  i: Integer;
  CurrentErrorType: TDATErrorType;

begin
  for i := ErrorListView.Items.Count - 1 downto 0 do
  begin
    ErrorListView.ItemIndex := i;
    CurrentErrorType := TDATError(ErrorListView.Items[i].Data).ErrorType;
    if ((not OnlyMarked) and (ErrorType = deNil)) or
       ((not OnlyMarked) and (CurrentErrorType = ErrorType)) or
       ((OnlyMarked and ErrorListView.Items[i].Checked) and (ErrorType = deNil)) or
       ((OnlyMarked and ErrorListView.Items[i].Checked) and (CurrentErrorType = ErrorType)) then
      acECFixErrorExecute(nil);
  end;
end;

procedure TfrErrorWindow.SetErrorCheckMarks(State: Boolean; ErrorType: TDATErrorType);

var
  i: Integer;

begin
  for i := 0 to ErrorListView.Items.Count - 1 do
    if (ErrorType = deNil) or
       (ErrorType = TDATError(ErrorListView.Items[i].Data).ErrorType) then
      ErrorListView.Items[i].Checked := State;
end;

procedure TfrErrorWindow.acECFixErrorExecute(Sender: TObject);
// Fix an error
var
  DATElem: TDATElement;
  tri1, tri2: TDATTriangle;
  i: Integer;
  errorfixed: Boolean;
  PError: TDATError;

begin
  if ErrorListView.ItemIndex >= 0 then
      // Set postion to line with error
      ErrorListViewDblClick(Sender);
      PError := TDATError(ErrorListView.Items[ErrorListView.ItemIndex].Data);

      // Fix the error
      with ErrorListView.Items[ErrorListView.ItemIndex] do
        case PError.ErrorType of
          deRow1AllZeros, deRow2AllZeros, deRow3AllZeros, deYColumnAllZeros:
          begin
            DATElem := TDATSubPart.Create;
            (DATElem as TDATSubPart).DATString :=
              frMain.editor.Lines[frMain.editor.CaretY - 1];
            if PError.ErrorType = deYColumnAllZeros then
              FixYColumnAllZeros(DATElem as TDATSubPart)
            else
              FixRowAllZeros(DATElem as TDATSubPart, Trunc(PError.ErrorValue));

            frMain.editor.lines[frMain.editor.CaretY - 1] :=
              (DATElem as TDATSubPart).DATString;
            DATElem.Free;
            errorfixed := True;
          end;
          deConcaveQuadSplit24, deConcaveQuadSplit13:
          begin
            DATElem := TDATQuad.Create;
            with DATElem as TDATQuad do
            begin
              DATString := frMain.editor.lines[frMain.editor.CaretY - 1];
              if PError.ErrorType = deConcaveQuadSplit24 then
                SplitConcaveQuad24((DATElem as TDATQuad), tri1, tri2)
              else
                SplitConcaveQuad13((DATElem as TDATQuad), tri1, tri2);
              frMain.editor.Lines[frMain.editor.CaretY-1] := tri1.DATString;
              frMain.editor.Lines.Insert(frMain.editor.CaretY, tri2.DATString);
              Free;
            end;
            tri1.Free;
            tri2.Free;
            for i := ErrorListView.ItemIndex + 1 to ErrorListView.Items.Count - 1 do
              ErrorListView.Items[i].SubItems[0] :=
                IntToStr(StrToInt(ErrorListView.Items[i].SubItems[0]) + 1);
            errorfixed := True;
          end;
          deBowtieQuad1423, deBowtieQuad1243:
          begin
            DATElem := TDATQuad.Create;
            with DATElem as TDATQuad do
            begin
              DATString := frMain.editor.lines[frMain.editor.CaretY - 1];
              if PError.ErrorType = deBowtieQuad1423 then
                FixBowtieQuad1423(DATElem as TDATQuad)
              else
                FixBowtieQuad1243(DATElem as TDATQuad);
              frMain.editor.lines[frMain.editor.CaretY-1] := DATString;
              Free;
            end;
            errorfixed := True;
          end;
          deIdenticalLine:
          begin
            frMain.editor.lines[frMain.editor.CaretY-1] := '';
            errorfixed := True;
          end;
          else errorfixed := false;
        end;

      // Delete list entry if error fixed
      if errorfixed then
      begin
        TDATError(ErrorListView.Items[ErrorListView.ItemIndex].Data).Free;;
        ErrorListView.Items.Delete(ErrorListView.ItemIndex);
      end;

      if ErrorListView.Items.Count < 1 then
      begin
        acECFixError.Enabled := False;
        acECFixAllErrors.Enabled := False;
        acECFixAllErrorsTyped.Enabled := False;
        acECFixAllMarkedErrors.Enabled := False;
        acECFixAllMarkedErrorsTyped.Enabled := False;
        acECMarkAll.Enabled := False;
        acECUnMarkAll.Enabled := False;
        acECMarkAllTyped.Enabled := False;
        acECUnMarkAllTyped.Enabled := False;
        acECCopy.Enabled := False;
      end;
end;

procedure TfrErrorWindow.acECFixAllErrorsExecute(Sender: TObject);
// Fix all errors in the error list
begin
  ErrorCheckErrorFix(False, deNil);
end;

procedure TfrErrorWindow.acECMarkAllExecute(Sender: TObject);
// Check the checkbox for all errors
begin
  SetErrorCheckMarks(True, deNil);
end;

procedure TfrErrorWindow.acECUnMarkAllExecute(Sender: TObject);
// Uncheck the checkbox for all errors
begin
  SetErrorCheckMarks(False, deNil);
end;

procedure TfrErrorWindow.acECMarkAllTypedExecute(Sender: TObject);
// Check the checkbox for all errors of the currently selected type
begin
  SetErrorCheckMarks(True, TDATError(ErrorListView.Items[ErrorListView.ItemIndex].Data).ErrorType);
end;

procedure TfrErrorWindow.acECUnMarkAllTypedExecute(Sender: TObject);
// Uncheck the checkbox for all errors of the currently selected type
begin
  SetErrorCheckMarks(False, TDATError(ErrorListView.Items[ErrorListView.ItemIndex].Data).ErrorType);
end;

procedure TfrErrorWindow.acECFixAllMarkedErrorsExecute(Sender: TObject);
// Fix all marked errors
begin
  ErrorCheckErrorFix(True, deNil);
end;

procedure TfrErrorWindow.acECFixAllMarkedErrorsTypedExecute(Sender: TObject);
// Fix all marked errors of the currently selected type
begin
  ErrorCheckErrorFix(True, TDATError(ErrorListView.Items[ErrorListView.ItemIndex].Data).ErrorType);
end;

procedure TfrErrorWindow.acECFixAllErrorsTypedExecute(Sender: TObject);
// Fix all marked errors of the currently selected type
begin
  ErrorCheckErrorFix(False, TDATError(ErrorListView.Items[ErrorListView.ItemIndex].Data).ErrorType);
end;

procedure TfrErrorWindow.acECCopyExecute(Sender: TObject);
// Copy the contents of the errorlist to the clipboard
var
  i: Integer;
  errorlist: string;

begin
  errorlist := '';
  for i := 0 to ErrorListView.Items.Count - 1 do
    errorlist := errorlist + 'Line ' + ErrorListView.Items[i].SubItems[0] +
                 ': ' + ErrorListView.Items[i].SubItems[1] +
                 ': ' + frMain.editor.Lines[StrToInt(ErrorListView.Items[i].SubItems[0]) - 1] + #13#10;
  frMain.editor.CopyText(Length(errorlist), PAnsiChar(errorlist));
end;

procedure TfrErrorWindow.LoadFormValues;
// Loads form values from the LDDP.ini file
var
  LDDPini: TMemIniFile;
  IniSection: string;

begin
  LDDPini := TMemIniFile.Create(IniFilePath + '\LDDP.ini');

  Inisection := 'LDDP ErrorWindow';

  Left := LDDPini.ReadInteger(IniSection, 'frErrorWindow_Left', Left);
  Top := LDDPini.ReadInteger(IniSection, 'frErrorWindow_Top', Top);
  Width := LDDPini.ReadInteger(IniSection, 'frErrorWindow_Width', Width);
  Height := LDDPini.ReadInteger(IniSection, 'frErrorWindow_Height', Height);

  LDDPini.Free;
end;

procedure TfrErrorWindow.SaveFormValues;
// Saves form values to the LDDP.ini file
var
  LDDPini: TMemIniFile;
  IniSection: string;

begin
  LDDPini := TMemIniFile.Create(IniFilePath + '\LDDP.ini');

  // Save Main position, size, and toolbar visibility
  Inisection := 'LDDP ErrorWindow';
  LDDPini.EraseSection(IniSection);

  LDDPini.WriteInteger(IniSection, 'frErrorWindow_Left', Left);
  LDDPini.WriteInteger(IniSection, 'frErrorWindow_Top', Top);
  LDDPini.WriteInteger(IniSection, 'frErrorWindow_Width', Width);
  LDDPini.WriteInteger(IniSection, 'frErrorWindow_Height', Height);
  LDDPini.WriteBool(IniSection, 'frErrorWindow_Floating', Floating);

  LDDPini.UpdateFile;
  LDDPini.Free;
end;

procedure TfrErrorWindow.RestorePosition;

var
  LDDPini: TMemIniFile;
  IniSection: string;
  floating: Boolean;

begin
  LDDPini := TMemIniFile.Create(IniFilePath + '\LDDP.ini');

  Inisection := 'LDDP ErrorWindow';

  floating := LDDPini.ReadBool(IniSection, 'frErrorWindow_Floating', False);

  if Visible and not floating then
    ManualDock(frMain.JvDockServer1.BottomDockPanel, nil, alBottom);

  LDDPini.Free;
end;

end.
