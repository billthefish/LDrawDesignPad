{$Include SciCommonDef.Inc}
unit SciSearchReplaceBase;
{
 Unit    : SciSearchReplaceBase
 Purpose : Baseclass for Search and Replace for TScintilla based on Synedit Dialogs
 Created : 20/03/2003
 Author  : hdalis
 History : 27/06/2005 Moved most of the TSciSearchReplace class to the baseclass named TSciSearchReplaceBase.
                      This is to add some flexibility when deriving new search components,
                      e.g if you want TBX dialogs instead of the usual, and so on.
           23/07/2005 Added support for UTF8, so the dialog handles the scintilla's
                      SC_CP_UTF8 correctly.. or so it seems anyway..
                      Don't know which version introduced the support for UTF8Encode/Decode etc, but I
                      have set it dependant on the HASUTFFUNCS define in SciCommonDef.Inc
           11/01/2006 Added the parameter 'Confirmation' to the DoSearchReplaceText as suggested by N.Metsovo
					 16/07/2008 Added bugfix as suggested by dormitionskete

}

interface
Uses
  Types, Classes, Controls, Forms, SciScintillaBase,Menus;

Type
  TReplaceConfirmType = (rctConfirm, rctReplace, rctReplaceAll);
  TSciSearchReplaceBase=class(TComponent)
  private
    FSearchForSelWord : Boolean;
    FEditor : TScintillaBase;
    FFoundText : String;
    FOnTextFound : TNotifyEvent;
    FOnTextNotFound : TNotifyEvent;
    FOnTextReplaced : TNotifyEvent;
    FOnBeforeShow : TNotifyEvent;
    FOnAfterShow : TNotifyEvent;
{$Ifdef ALLOWSEARCHPOPUPMENUS}
    FReplacePopupMenu : TPopupMenu;
    FSearchPopupMenu : TPopupMenu;
{$Endif}
  protected
    FSearchFromCaretInt: Boolean;
    FCurrentForm : TForm;

    procedure Notification(AComponent: TComponent;
                Operation: TOperation);  override;
    function ConfirmReplace(editorRect: TRect; X, Y1, Y2: Integer;AReplaceText: String) : TModalResult;virtual;abstract;
    procedure DoBeforeShow;virtual;
    procedure DoAfterShow;virtual;
  public
    // Search Options
{    SearchBackwards: Boolean;
    SearchCaseSensitive: Boolean;
    SearchFromCaret: Boolean;
    SearchSelectionOnly: Boolean;
    SearchWholeWords: Boolean;
    SearchRegex: Boolean;
    SearchText: String;
    SearchTextHistory: String;
    ReplaceText: String;
    ReplaceTextHistory: String;
    ReplacedCount : Integer;
}
    FSearchBackwards: Boolean;
    FSearchCaseSensitive: Boolean;
    FSearchFromCaret: Boolean;
    FSearchSelectionOnly: Boolean;
    FSearchWholeWords: Boolean;
    FSearchRegex: Boolean;
    FSearchText: String;
    FSearchTextHistory: String;
    FReplaceText: String;
    FReplaceTextHistory: String;
    FReplacedCount : Integer;

    constructor Create(AOwner : TComponent);override;
    procedure DoSearchReplaceText(AReplace, ABackwards: Boolean;Confirmation : TReplaceConfirmType=rctConfirm);virtual;
    procedure ShowSearchDialog;virtual;
    procedure ShowReplaceDialog;virtual;
    property FoundText : String read fFoundText;
    property SearchTextHistory: String read FSearchTextHistory write FSearchTextHistory;
    property ReplaceTextHistory: String read FReplaceTextHistory write FReplaceTextHistory;
    
    property CurrentForm : TForm read FCurrentForm;
  published
    property SearchBackwards: Boolean read FSearchBackwards write FSearchBackwards;
    property SearchCaseSensitive: Boolean read FSearchCaseSensitive write FSearchCaseSensitive;
    property SearchFromCaret: Boolean read FSearchFromCaret write FSearchFromCaret;
    property SearchSelectionOnly: Boolean read FSearchSelectionOnly write FSearchSelectionOnly;
    property SearchWholeWords: Boolean read FSearchWholeWords write FSearchWholeWords;
    property SearchRegex: Boolean read FSearchRegex write FSearchRegex;
    property SearchText: String read FSearchText write FSearchText;
    property ReplaceText: String read FReplaceText write FReplaceText;
    property ReplacedCount : Integer read FReplacedCount;

    property SearchForSelWord : Boolean read FSearchForSelWord write FSearchForSelWord;
    property Editor : TScintillaBase read FEditor write FEditor;
    property OnTextFound : TNotifyEvent read FOnTextFound write FOnTextFound;
    property OnTextNotFound : TNotifyEvent read FOnTextNotFound write FOnTextNotFound;
    property OnTextReplaced : TNotifyEvent read FOnTextReplaced write FOnTextReplaced;
    property BeforeShow : TNotifyEvent read FOnBeforeShow write FOnBeforeShow;
    property AfterShow : TNotifyEvent read FOnAfterShow write FOnAfterShow;
{$Ifdef ALLOWSEARCHPOPUPMENUS}
    property ReplacePopupMenu : TPopupMenu read FReplacePopupMenu write FReplacePopupMenu;
    property SearchPopupMenu : TPopupMenu read FSearchPopupMenu write FSearchPopupMenu;
{$Endif}
  end;

implementation

Uses
 SciSupport,sciUtils,SysUtils;

{ TSciSearchReplace }
constructor TSciSearchReplaceBase.Create(AOwner : TComponent);
begin
  FReplacedCount:=0;
  SearchFromCaret:=True;
  FCurrentForm:=nil;
  Inherited;
end;

procedure TSciSearchReplaceBase.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited;
  if Operation=opRemove then
  begin
    if (AComponent = FEditor) then FEditor := nil;
{$Ifdef ALLOWSEARCHPOPUPMENUS}
    if (AComponent = FReplacePopupMenu) then FReplacePopupMenu := nil;
    if (AComponent = FSearchPopupMenu) then FSearchPopupMenu := nil;
{$Endif}
  end;
end;

procedure TSciSearchReplaceBase.ShowSearchDialog;
begin
  //
end;
procedure TSciSearchReplaceBase.ShowReplaceDialog;
begin
  //
end;

procedure TSciSearchReplaceBase.DoBeforeShow;
begin
  if assigned(FOnBeforeShow) then
    FOnBeforeShow(Self);
end;
procedure TSciSearchReplaceBase.DoAfterShow;
begin
  if assigned(FOnAfterShow) then
    FOnAfterShow(Self);
end;

procedure TSciSearchReplaceBase.DoSearchReplaceText(AReplace, ABackwards: Boolean;Confirmation : TReplaceConfirmType);
var
  Options: Integer;
  StartPosition, EndPosition : Integer;
  TargetStart, TargetEnd, posFind : Integer;
  APos: TPoint;
  EditRect: TRect;
  DlgRes : Integer;
  lastMatch,lenTarget,MovePastEOL : Integer;
  chNext : Integer;
  findLen : Integer;
  LenFound, LenReplaced : Integer;
  doendundo : Boolean;
{$ifdef HASUTFFUNCS}
  UsesUtf8 : Boolean;
  UtfReplaceText,UtfSearchText : String;
{$Endif}
begin
  doendundo:=false;
  if not Assigned(FEditor) then Exit;
  Options := 0;
  if SearchCaseSensitive then
    Options := Options or SCFIND_MATCHCASE;
  if SearchWholeWords then
    Options := Options or SCFIND_WHOLEWORD;
  if SearchRegex then
    Options := Options or SCFIND_REGEXP;
  if SearchText='' then Exit;
{$ifdef HASUTFFUNCS}
  UsesUtf8:=(FEditor.GetCodePage=SC_CP_UTF8);
  if UsesUtf8 then
  begin
    UtfSearchText:=AnsiToUTF8(SearchText);
    UtfReplaceText:=AnsiToUTF8(ReplaceText);
  end;
{$Endif}
  if ABackwards then
  begin
		if SearchFromCaret and not SearchSelectionOnly then
    //if fSearchFromCaretInt and not SearchSelectionOnly then
      StartPosition := FEditor.GetSelectionStart - 1
    else if SearchSelectionOnly then
      StartPosition := FEditor.GetSelectionEnd
    else
      StartPosition := FEditor.GetLength;
    if SearchSelectionOnly then
      EndPosition := FEditor.GetSelectionStart
    else
      EndPosition := 0;
  end else
  begin
		//if fSearchFromCaretInt and not SearchSelectionOnly then
    if SearchFromCaret and not SearchSelectionOnly then
      StartPosition := FEditor.GetSelectionEnd + 1
    else if SearchSelectionOnly then
      StartPosition := FEditor.GetSelectionStart
    else
      StartPosition := 0;
    if SearchSelectionOnly then
      EndPosition := FEditor.GetSelectionEnd
    else
      EndPosition := FEditor.GetLength;
  end;
{$ifdef HASUTFFUNCS}
  if UsesUtf8 then
    findLen:=Length(UtfSearchText)
  else
{$Endif}
  findLen:=Length(SearchText);

  with FEditor do
  begin
    SetTargetStart(StartPosition);
    SetTargetEnd(EndPosition);
    SetSearchFlags(Options);
{$ifdef HASUTFFUNCS}
    if UsesUtf8 then
      posFind := SearchInTarget(findLen, PChar(UtfSearchText))
    else
{$Endif}
      posFind := SearchInTarget(findLen, PChar(SearchText));
    if (posFind < 0) then
    begin
      if Assigned(FOnTextNotFound) then
        FOnTextNotFound(Self);
    end else
    begin
      lastMatch:=posFind;
      TargetStart := GetTargetStart;
      TargetEnd := GetTargetEnd;
      LenFound := TargetEnd - TargetStart;
      LenReplaced := LenFound;
      EnsureRangeVisible(TargetStart, TargetEnd);
      SetSel(TargetStart, TargetEnd);
{$ifdef HASUTFFUNCS}
    if UsesUtf8 then
      FFoundText := UTF8ToAnsi(FEditor.SelText)
    else
{$Endif}
      FFoundText := FEditor.SelText;
      if Assigned(FOnTextFound) then
        FOnTextFound(Self);

      // Replace code
      if AReplace then
      begin
        DlgRes := mrYes;

        FReplacedCount:=0;
        while (posFind >= 0) and (DlgRes <> mrCancel) do
        begin
          lenTarget:=GetTargetEnd-GetTargetStart;
          movePastEOL:=0;
          if lenTarget<=0 then
          begin
            chNext:=GetCharAt(GetTargetEnd);
            if (chNext=10) or (chNext=13) then MovePastEOL:=1;
          end;
          if not (DlgRes = mrYesToAll) then
          begin
            if Confirmation=rctConfirm then
            begin
              APos := Point(PointXFromPosition(TargetStart), PointYFromPosition(TargetStart));
              APos := ClientToScreen(APos);
              EditRect := FEditor.ClientRect;
              EditRect.TopLeft := ClientToScreen(EditRect.TopLeft);
              EditRect.BottomRight := ClientToScreen(EditRect.BottomRight);
              DlgRes:=ConfirmReplace(EditRect, APos.X, APos.Y,APos.Y + 2 * FEditor.TextHeight(LineFromPosition(TargetStart)), SearchText);
            end else
            case Confirmation of
              rctReplace: DlgRes:=mrYes;
              rctReplaceAll: DlgRes:=mrYesToAll;
            end;
            if (DlgRes = mrYesToAll) and (doendundo=false) then
            begin
              FEditor.BeginUndoAction;
              doendundo:=True;
            end;
          end;


          if DlgRes in [mrYes, mrYesToAll] then
          begin
            // Replace
{$ifdef HASUTFFUNCS}
            if UsesUtf8 then
            begin
              if SearchRegex then
                LenReplaced := ReplaceTargetRE(Length(UtfReplaceText), PChar(UtfReplaceText))
              else
                LenReplaced := ReplaceTarget(Length(UtfReplaceText), PChar(UtfReplaceText));
            end else
            begin
{$Endif}
            if SearchRegex then
              LenReplaced := ReplaceTargetRE(Length(ReplaceText), PChar(ReplaceText))
            else
              LenReplaced := ReplaceTarget(Length(ReplaceText), PChar(ReplaceText));
{$ifdef HASUTFFUNCS}
end;
{$Endif}
            Inc(FReplacedCount);

            lastMatch:=posFind + lenReplaced + movepastEOL;
            if lenTarget=0 then
            lastMatch:=PositionAfter(lastMatch);

            TargetEnd := TargetStart + LenReplaced -1+movePastEOL;
            if Assigned(FOnTextReplaced) then FOnTextReplaced(Self);
          end;
          if DlgRes in [mrYes, mrNo, mrYesToAll] then
          begin
            // carry on
            if ((lastMatch>=endPosition) and not ABackwards) or
               ((lastMatch<=endPosition) and ABackwards) then
            begin
              posFind:=-1;
            end else
            begin
              if ABackwards then
              begin
                SetTargetStart(TargetStart - 1);
                SetTargetEnd(EndPosition);
              end else
              begin
                SetTargetStart(TargetEnd + 1);
                EndPosition := EndPosition + LenReplaced - LenFound;
                SetTargetEnd(EndPosition);
              end;
              SetTargetEnd(EndPosition);
              SetSearchFlags(Options);
{$ifdef HASUTFFUNCS}
            if UsesUtf8 then
              posFind := SearchInTarget(Length(UtfSearchText), PChar(UtfSearchText))
            else
{$Endif}
              posFind := SearchInTarget(Length(SearchText), PChar(SearchText));
            end;
            if posFind >= 0 then
            begin
              TargetStart := GetTargetStart;
              TargetEnd := GetTargetEnd;
              lastMatch:=TargetStart;
              LenFound := TargetEnd - TargetStart;
              LenReplaced := LenFound;
              EnsureRangeVisible(TargetStart, TargetEnd);
              SetSel(TargetStart, TargetEnd);
            end;
          end else
            break;
        end;   // While
        if doendundo then
          FEditor.EndUndoAction;

        // Restore original selection if Searching in Selection
        if SearchSelectionOnly then
        begin
          if ABackwards then
            SetSel(EndPosition, StartPosition)
          else
            SetSel(StartPosition, EndPosition);
          EnsureRangeVisible(GetSelectionStart, GetSelectionEnd);
        end;
      end;  // if AReplace
    end;  //if (posFind < 0)
  end; // with FEditor
end;

end.
