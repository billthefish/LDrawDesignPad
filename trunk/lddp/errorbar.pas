{These sources are copyright (C) 2003-2008 the LDDP project contributors.

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
  JvDockDelphiStyle, JvComponentBase, ActnList;

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
    procedure ErrorCheckErrorFix(OnlyMarked: Boolean; ErrorType: string);
    procedure SetErrorCheckMarks(State: Boolean; ErrorType: string);
  public
    function AddError(LineNumber, ErrorType: string): Boolean;
    procedure LoadFormValues;
    procedure SaveFormValues;
    procedure RestorePosition;
  end;

var
  frErrorWindow: TfrErrorWindow;

implementation

{$R *.dfm}

uses
  IniFiles, DATBase, DATModel, DATCheck, DATErrorFix, DATUtils, main, options,
  commonprocs, windowsspecific;

function TfrErrorWindow.AddError(LineNumber, ErrorType: string): Boolean;

var
  error: TListItem;

begin
  error := ErrorListView.Items.Add;
  error.Checked := True;
  error.SubItems.Add(LineNumber);
  error.SubItems.Add(ErrorType);
  Result := True;
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

begin
  UnFixableError := (Item.SubItems[1] = 'Identical vertices') or
     (pos('Singular matrix',Item.SubItems[1]) > 0) or
     (pos('Collinear vertices',Item.SubItems[1]) > 0) or
     (pos('Vertices not coplaner',Item.SubItems[1]) > 0);
  acECFixError.Enabled := not UnFixableError;
  acECFixAllErrorsTyped.Enabled := not UnFixableError;
  acECFixAllMarkedErrorsTyped.Enabled := not UnFixableError;
end;

procedure TfrErrorWindow.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormValues;
  frMain.UpdateViewMenu;
end;

procedure TfrErrorWindow.FormCreate(Sender: TObject);
begin
  TranslateComponent(self);
end;

procedure TfrErrorWindow.FormDestroy(Sender: TObject);
begin
  SaveFormValues;
end;

procedure TfrErrorWindow.FormShow(Sender: TObject);
begin
  LoadFormValues;
end;

// Error check actions

procedure TfrErrorWindow.acErrorCheckExecute(Sender: TObject);
// Perform an error check based on L3P error check
var
  strid: string;
  i, j: Integer;
  errorfound: Boolean;
  DATModel1: TDATModel;
  s: TStringList;

begin
  Screen.Cursor := crHourGlass;

  ErrorListView.Items.Clear;

  DATModel1 := CreateDATModel(frOptions.sePntAcc.Value, frOptions.seRotAcc.Value);
  DATModel1.ModelText := frMain.editor.Lines.Text;

  strid := 'Identical to line';
  for i := 0 to DATModel1.Count - 1 do
    if DATModel1[i] is TDATElement then
    begin
      // Check for Identical Lines
      errorfound := False;
      if i > 0 then
      begin
        for j := 0 to i - 1 do
          if DATModel1[j].LineType = DATModel1[i].LineType then
            case DATModel1[j].LineType of
               1: if DATModel1[i].DATString = DATModel1[j].DATString then
                    errorfound := AddError(IntToStr(i+1),strid + ' ' + IntToStr(j+1));
               2: if CheckIdentPoints([(DATModel1[i] as TDATLine).Point[1], (DATModel1[i] as TDATLine).Point[2]],
                                      [(DATModel1[j] as TDATLine).Point[1], (DATModel1[j] as TDATLine).Point[2]]) then
                    errorfound := AddError(IntToStr(i+1),strid + ' ' + IntToStr(j+1));
               3: if CheckIdentPoints([(DATModel1[i] as TDATTriangle).Point[1], (DATModel1[i] as TDATTriangle).Point[2], (DATModel1[i] as TDATTriangle).Point[3]],
                                      [(DATModel1[j] as TDATTriangle).Point[1], (DATModel1[j] as TDATTriangle).Point[2], (DATModel1[j] as TDATTriangle).Point[3]]) then
                    errorfound := AddError(IntToStr(i+1),strid + ' ' + IntToStr(j+1));
               4: if CheckIdentPoints([(DATModel1[i] as TDATQuad).Point[1], (DATModel1[i] as TDATQuad).Point[2], (DATModel1[i] as TDATQuad).Point[3], (DATModel1[i] as TDATQuad).Point[4]],
                                      [(DATModel1[j] as TDATQuad).Point[1], (DATModel1[j] as TDATQuad).Point[2], (DATModel1[j] as TDATQuad).Point[3], (DATModel1[j] as TDATQuad).Point[4]]) then
                    errorfound := AddError(IntToStr(i+1),strid + ' ' + IntToStr(j+1));
               5: if (CheckIdentPoints([(DATModel1[i] as TDATOpLine).Point[1], (DATModel1[i] as TDATOpLine).Point[2]],
                                      [(DATModel1[j] as TDATOpLine).Point[1], (DATModel1[j] as TDATOpLine).Point[2]])) and
                     (CheckIdentPoints([(DATModel1[i] as TDATOpLine).Point[3], (DATModel1[i] as TDATOpLine).Point[4]],
                                      [(DATModel1[j] as TDATOpLine).Point[3], (DATModel1[j] as TDATOpLine).Point[4]])) then
                    errorfound := AddError(IntToStr(i+1),strid + ' ' + IntToStr(j+1));
            end;
      end;
      // Do not continue if line is identical
      if (not errorfound) then
      begin
        // Check For Illegal Color Number
        if (DATModel1[i] is TDATSubPart) and
           ((DATModel1[i] as TDATElement).Color = 24) then
          AddError(IntToStr(i+1),'Color 24 Illegal for this linetype');

        // Check for All Other L3P Errors
        s := L3CheckLine(DATModel1[i].DATString);
        if s.Count > 0 then
          for j := 0 to s.Count - 1 do
            AddError(IntToStr(i+1),s[j]);
        s.Free;    
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

procedure TfrErrorWindow.ErrorCheckErrorFix(OnlyMarked: Boolean; ErrorType: string);
// Route appropriate error to the error fixing procedure
// OnlyMarked set will only fix checked errors
// Errortype set will ony fix those types of errors
var
  i: Integer;
  currenterror: string;

begin
  if pos('Identical to line', ErrorType) > 0 then
    ErrorType := 'Identical to line';

  if ErrorListView.Items.Count > 0 then
    for i := ErrorListView.Items.Count - 1 downto 0 do
    begin
      ErrorListView.ItemIndex := i;
      currenterror := ErrorListView.Items[ErrorListView.ItemIndex].SubItems[1];
      if pos('Identical to line', currenterror) > 0 then
        currenterror := 'Identical to line';
      if ((not OnlyMarked) and (ErrorType = '')) or
         ((not OnlyMarked) and (currenterror = ErrorType)) or
         ((OnlyMarked and ErrorListView.Items[ErrorListView.ItemIndex].Checked) and (ErrorType = '')) or
         ((OnlyMarked and ErrorListView.Items[ErrorListView.ItemIndex].Checked) and (currenterror = ErrorType)) then
        acECFixErrorExecute(nil);
    end;
end;

procedure TfrErrorWindow.SetErrorCheckMarks(State: Boolean; ErrorType: string);

var
  i: Integer;
  errorstring: string;

begin
  if pos('Identical to line', ErrorType) > 0 then
    ErrorType := 'Identical to line'
  else if pos('Vertices not coplaner', ErrorType) > 0 then
    ErrorType := 'Vertices not coplaner'
  else if pos('Collinear vertices', ErrorType) > 0 then
    ErrorType := 'Collinear vertices';

    if ErrorListView.Items.Count > 0 then
      for i := 0 to ErrorListView.Items.Count - 1 do
      begin
        if pos('Identical to line', ErrorListView.Items[i].SubItems[1]) > 0 then
          errorstring := 'Identical to line'
        else if pos('Vertices not coplaner', ErrorListView.Items[i].SubItems[1]) > 0 then
          errorstring := 'Vertices not coplaner'
        else if pos('Collinear vertices', ErrorListView.Items[i].SubItems[1]) > 0 then
          errorstring := 'Collinear vertices'
        else
          errorstring := ErrorListView.Items[i].SubItems[1];

        if (ErrorType = '') or (ErrorType = errorstring) then
          ErrorListView.Items[i].Checked := State;
      end;
end;

procedure TfrErrorWindow.acECFixErrorExecute(Sender: TObject);
// Fix an error
var
  DATElem: TDATElement;
  tri1, tri2: TDATTriangle;
  i: Integer;

begin
  if ErrorListView.ItemIndex >= 0 then
      // Set postion to line with error
      ErrorListViewDblClick(Sender);

      // Fix the error
      if pos('Bad vertex sequence, 0132',ErrorListView.Items[ErrorListView.ItemIndex].SubItems[1])>0 then
      begin
        DATElem := TDATQuad.Create;
        with DATElem as TDATQuad do
        begin
          DATString := frMain.editor.lines[frMain.editor.CaretY-1];
          FixBowtieQuad0132(DATElem as TDATQuad);
          frMain.editor.lines[frMain.editor.CaretY-1] := DATString;
        end;
        DATElem.Free;
        ErrorListView.items.delete(ErrorListView.ItemIndex);
      end

      else if pos('Bad vertex sequence, 0312',ErrorListView.Items[ErrorListView.ItemIndex].SubItems[1])>0 then
      begin
        DATElem := TDATQuad.Create;
        with DATElem as TDATQuad do
        begin
          DATString := frMain.editor.lines[frMain.editor.CaretY-1];
          FixBowtieQuad0312(DATElem as TDATQuad);
          frMain.editor.lines[frMain.editor.CaretY-1] := DATString;
        end;
        DATElem.Free;
        ErrorListView.items.delete(ErrorListView.ItemIndex);
      end

      else if pos('Concave Quad, split on 13',ErrorListView.Items[ErrorListView.ItemIndex].SubItems[1])>0 then
      begin
        DATElem := TDATQuad.Create;
        with DATElem as TDATQuad do
        begin
          DATString := frMain.editor.lines[frMain.editor.CaretY-1];
          SplitConcaveQuad13((DATElem as TDATQuad), tri1, tri2);
          frMain.editor.Lines[frMain.editor.CaretY-1] := tri1.DATString;
          frMain.editor.Lines.Insert(frMain.editor.CaretY, tri2.DATString);
        end;
        DATElem.Free;
        tri1.Free;
        tri2.Free;
        for i := ErrorListView.ItemIndex + 1 to ErrorListView.Items.Count - 1 do
          ErrorListView.Items[i].SubItems[0] := IntToStr(StrToInt(ErrorListView.Items[i].SubItems[0]) + 1);
        ErrorListView.items.delete(ErrorListView.ItemIndex);
      end

      else if pos('Concave Quad, split on 02',ErrorListView.Items[ErrorListView.ItemIndex].SubItems[1])>0 then
      begin
        DATElem := TDATQuad.Create;
        with DATElem as TDATQuad do
        begin
          DATString := frMain.editor.lines[frMain.editor.CaretY-1];
          SplitConcaveQuad02((DATElem as TDATQuad), tri1, tri2);
          frMain.editor.Lines[frMain.editor.CaretY-1] := tri1.DATString;
          frMain.editor.Lines.Insert(frMain.editor.CaretY, tri2.DATString);
        end;
        DATElem.Free;
        tri1.Free;
        tri2.Free;
        for i := ErrorListView.ItemIndex + 1 to ErrorListView.Items.Count - 1 do
          ErrorListView.Items[i].SubItems[0] := IntToStr(StrToInt(ErrorListView.Items[i].SubItems[0]) + 1);
        ErrorListView.items.delete(ErrorListView.ItemIndex);
      end

      else if pos('Identical to line',ErrorListView.Items[ErrorListView.ItemIndex].SubItems[1])>0 then
      begin
        frMain.editor.lines[frMain.editor.CaretY-1]:='';
        ErrorListView.items.delete(ErrorListView.ItemIndex);
      end

      else if pos('Row 0 all zeros',ErrorListView.Items[ErrorListView.ItemIndex].SubItems[1])>0 then
      begin
        DATElem := TDATSubPart.Create;
        (DATElem as TDATSubPart).DATString := frMain.editor.Lines[frMain.editor.CaretY-1];
        FixRowAllZeros(DATElem as TDATSubPart, 1);
        frMain.editor.lines[frMain.editor.CaretY-1] := (DATElem as TDATSubPart).DATString;
        DATElem.Free;
        ErrorListView.items.delete(ErrorListView.ItemIndex);
      end

      else if pos('Row 1 all zeros',ErrorListView.Items[ErrorListView.ItemIndex].SubItems[1])>0 then
      begin
        DATElem := TDATSubPart.Create;
        (DATElem as TDATSubPart).DATString := frMain.editor.lines[frMain.editor.CaretY-1];
        FixRowAllZeros(DATElem as TDATSubPart, 2);
        frMain.editor.lines[frMain.editor.CaretY-1] := (DATElem as TDATSubPart).DATString;
        DATElem.Free;
        ErrorListView.items.delete(ErrorListView.ItemIndex);
      end

      else if pos('Row 2 all zeros',ErrorListView.Items[ErrorListView.ItemIndex].SubItems[1])>0 then
      begin
        DATElem := TDATSubPart.Create;
        (DATElem as TDATSubPart).DATString := frMain.editor.lines[frMain.editor.CaretY-1];
        FixRowAllZeros(DATElem as TDATSubPart, 3);
        frMain.editor.lines[frMain.editor.CaretY-1] := (DATElem as TDATSubPart).DATString;
        DATElem.Free;
        ErrorListView.items.delete(ErrorListView.ItemIndex);
      end

      else if pos('Y column all zeros',ErrorListView.Items[ErrorListView.ItemIndex].SubItems[1])>0 then
      begin
        DATElem := TDATSubPart.Create;
        (DATElem as TDATSubPart).DATString := frMain.editor.lines[frMain.editor.CaretY-1];
        FixYColumnAllZeros(DATElem as TDATSubPart);
        frMain.editor.lines[frMain.editor.CaretY-1] := (DATElem as TDATSubPart).DATString;
        DATElem.Free;
        ErrorListView.items.delete(ErrorListView.ItemIndex);
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
  ErrorCheckErrorFix(False,'');
end;

procedure TfrErrorWindow.acECMarkAllExecute(Sender: TObject);
// Check the checkbox for all errors
begin
  SetErrorCheckMarks(True, '');
end;

procedure TfrErrorWindow.acECUnMarkAllExecute(Sender: TObject);
// Uncheck the checkbox for all errors
begin
  SetErrorCheckMarks(False, '');
end;

procedure TfrErrorWindow.acECMarkAllTypedExecute(Sender: TObject);
// Check the checkbox for all errors of the currently selected type
begin
  SetErrorCheckMarks(True, ErrorListView.Items[ErrorListView.ItemIndex].SubItems[1]);
end;

procedure TfrErrorWindow.acECUnMarkAllTypedExecute(Sender: TObject);
// Uncheck the checkbox for all errors of the currently selected type
begin
  SetErrorCheckMarks(False, ErrorListView.Items[ErrorListView.ItemIndex].SubItems[1]);
end;

procedure TfrErrorWindow.acECFixAllMarkedErrorsExecute(Sender: TObject);
// Fix all marked errors
begin
  ErrorCheckErrorFix(True,'');
end;

procedure TfrErrorWindow.acECFixAllMarkedErrorsTypedExecute(Sender: TObject);
// Fix all marked errors of the currently selected type
begin
  ErrorCheckErrorFix(True,ErrorListView.Items[ErrorListView.ItemIndex].SubItems[1]);
end;

procedure TfrErrorWindow.acECFixAllErrorsTypedExecute(Sender: TObject);
// Fix all marked errors of the currently selected type
begin
  ErrorCheckErrorFix(False,ErrorListView.Items[ErrorListView.ItemIndex].SubItems[1]);
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
