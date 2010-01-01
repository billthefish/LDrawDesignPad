unit LDDPSynEditDocTabs;

interface

uses
  Windows, Classes, Controls, Contnrs, ComCtrls, Messages, SynEdit,
  SynEditTypes;

type
  TLDDPDoc=class;
  TLDDPEvent_onclosing = procedure(Sender : TObject; const TabIndex : Integer;var AllowClose : Boolean) of object;
  TLDDPEvent_openedandinited = procedure(Sender : TObject; const TabIndex : Integer;doc : TLDDPDoc) of object;
  TLDDPEvent_onhint = procedure(Sender : TObject; const TabIndex : Integer;var HintText : String;doc : TLDDPDoc) of object;

  TLDDPDocumentTabControl=class;

  TLDDPDoc = class(TObject)
  private
    FEditor: TCustomSynEdit;
    FTabCtrl: TCustomTabControl;
    FTabName: string;
    FFileName: string;
    FSelStart: Integer;
    FSelEnd: Integer;
    FFirstLineInView: LongInt;
    FCaretPos: TBufferCoord;
    FIndex: Integer;
    FModified: Boolean;
    FOnChanged : TNotifyEvent;
    FLastChanged : TDateTime;
    FText: string;
    procedure SetTabName(const Value : string);
    procedure SetFileName(const Value : string);
    procedure Changed;
    procedure AssignFromEditor;
    procedure AssignToEditor;
    procedure SetModified(const Value : Boolean);
    property  OnChanged : TNotifyEvent read FOnChanged write FOnChanged; // Used by TLDDPDocumentTabControl, internal

  public
    constructor Create(pp: TCustomSynEdit; ttabctrl: TLDDPDocumentTabControl; const getcurrent: Boolean=false);
    procedure Activate;
    function IsUntitled: Boolean;
    function IsActive: Boolean;
    procedure Close;
    property TabName: string read FTabName Write SetTabName;

  published
    property Text: string read FText write FText;
    property FileName: String read FFileName write SetFileName;
    property DocIndex: Integer read FIndex write FIndex;
    property Modified: Boolean read FModified write SetModified;
    property LastChanged: TDateTime read FLastChanged write FLastChanged;
  end;

  TLDDPDocumentTabControl = class(TCustomTabControl)
    private
      FDocs: TObjectList;
      FEditor: TCustomSynEdit;
      FOnClosing: TLDDPEvent_onclosing;
      FOnOpenedAndInited: TLDDPEvent_openedandinited;
      FOnTabHint: TLDDPEvent_onhint;
      FDefaultExt: String;
      FInactivate: Boolean;
      FDefaultTabName: String;

      procedure EvtTabChanged(Sender: TObject);
      function getCount: Integer;
      function GetDocItm(const Index: Integer): TLDDPDoc;
      procedure SetEditor(Value: TCustomSynEdit);
      function GetActiveDocument: TLDDPDoc;

      procedure SetDefaultExt(const Value: String);
      procedure ChgTab(const Newtab: Integer);
      procedure Remove(const Index: Integer);

    protected
      procedure DoLoadFromFile(const FileName: string); virtual;
      function CanChange: Boolean; override;
      procedure Notification(AComponent: TComponent; Operation: TOperation); override;
      procedure Attach;
      procedure RefreshTabs;
      procedure DoTabHint(const TabIndex: Integer; var HintText: string; Doc :TLDDPDoc); virtual;
      procedure CMHintShow(var Message: TMessage); message CM_HINTSHOW;
      procedure Change; override;

    public
      constructor Create(AOwner: TComponent);override;
      destructor Destroy; override;

      function Open(const Filename: string): Boolean; // Open a file
      procedure Close(const Index: Integer=-1; const AskIfNeeded: Boolean = True); // If 'index' is -1 then close the currently selected Tab, else close the selected index.
      function  NewDocument: Integer; // Init a new document, return tabindex
      procedure Activate(const DocNo: LongInt); // Activate the tab 'docno'
      function  Add(const tabname: string; const FName: string): Integer;   // Add a tab, set the tabname to 'tabname'

      property Count : Integer read getCount;           // Returns number of tabs/documents
      property Document [const Index: Integer]: TLDDPDoc read GetDocItm; // Returns the document item for the specified tabindex
      property DisplayRect;
      property Tabs;
      property TabIndex;  // must be after Tabs
      property ActiveDocument: TLDDPDoc read GetActiveDocument;

    published
      property Editor: TCustomSynEdit read fEditor write SetEditor;
      property Align;
      property Anchors;
      property BiDiMode;
      property Constraints;
      property DragCursor;
      property DragMode;
      property Enabled;
      property Font;
      property HotTrack default True;
      property MultiLine;
      property OwnerDraw;
      property ParentBiDiMode;
      property ParentShowHint default False;
      property PopupMenu;
      property RaggedRight;
      property ScrollOpposite;
      property ShowHint default True;
      property Style;
      property TabHeight;
      property TabOrder;
      property TabPosition;
      property TabWidth;
      property Visible;
      property OnChange;
      property OnChanging;
      property OnContextPopup;
      property OnDrawTab;
      property OnEndDock;
      property OnEndDrag;
      property OnEnter;
      property OnExit;
      property OnMouseDown;
      property OnMouseMove;
      property OnMouseUp;
      property OnResize;
      property OnStartDock;
      property OnUnDock;
      property TabStop default False;
      property DefaultExt: string read FDefaultExt write SetDefaultExt;
      property OnClosing: TLDDPEvent_onclosing read FOnClosing write FOnClosing;
      property OnOpenedAndInited: TLDDPEvent_openedandinited read FOnOpenedAndInited write FOnOpenedAndInited;
      property OnTabHint: TLDDPEvent_onhint read FOnTabHint write FOnTabHint;
  end;

procedure Register;

implementation

uses
  SysUtils;

const
  sUntitled: string = 'Untitled';
  sReload: string = 'Document changed, reload?';
  sConfirmation: string = 'Confirm?';

constructor TLDDPDocumentTabControl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FEditor := nil;
  FDocs := nil;
  FInactivate := False;
  DragKind := dkDock;
  MultiSelect := False;
  TabStop := False;
  ShowHint := True;
  FDefaultExt := '.dat';
  FDefaultTabName := '<' + sUntitled + FDefaultExt + '>';
  ControlStyle := ControlStyle - [csAcceptsControls];
end;

destructor TLDDPDocumentTabControl.Destroy;
var
  i: Integer;

begin
  if Assigned(FDocs) and Assigned(FEditor) then
    for i := FDocs.Count - 1 downto 0 do
      TLDDPDoc(FDocs.Items[i]).OnChanged := nil;
  inherited;
end;

procedure TLDDPDocumentTabControl.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited;
  if (Operation = opRemove) and (AComponent = FEditor) then
  begin
    if Assigned(FDocs) then
      FDocs.Free;
    if Assigned(Tabs) then
      Tabs.Clear;
    FEditor := nil;
  end;
end;

procedure TLDDPDocumentTabControl.Attach;
var
  LDoc: TLDDPDoc;

begin
  if Assigned(FDocs) then
    try
      Tabs.BeginUpdate;
      if (Assigned(Tabs)) and (Tabs.Count > 0) then
        Tabs.Clear;
      if (FDocs.Count > 0) then
        FDocs.Clear;
      if Assigned(FEditor) then
      begin
        LDoc := TLDDPDoc.Create(FEditor, Self, true);
        LDoc.DocIndex := 0;
        LDoc.TabName := FDefaultTabName;
        LDoc.OnChanged := EvtTabChanged;
        FDocs.Add(LDoc);
        Tabs.Add(LDoc.TabName);
        if Assigned(FOnOpenedAndInited) then
          FOnOpenedAndInited(Self, LDoc.DocIndex, LDoc);
      end;
    finally
      Tabs.EndUpdate;
    end;
end;

procedure TLDDPDocumentTabControl.DoLoadFromFile(const FileName: string);
begin
  FEditor.Lines.LoadFromFile(FileName);
end;

function TLDDPDocumentTabControl.NewDocument : Integer;
begin
  Result := Add(FDefaultTabName, sUntitled + FDefaultExt);
  if Result <> -1 then
    TLDDPDoc(FDocs.Items[Result]).Changed;
  if Assigned(FOnOpenedAndInited) then
    FOnOpenedAndInited(Self, Result, TLDDPDoc(FDocs.Items[Result]));

end;

function TLDDPDocumentTabControl.Open(const filename: string): Boolean;
var
  LDoc : TLDDPDoc;
  i, newitemindex : Integer;
  FName: string;
  confirmed: Integer;
  dtime: TDateTime;

begin
  FName := filename;

  // Check and see if file is already open and shift focus if it is
  for i := 0 to FDocs.Count - 1 do
  begin
    LDoc := TLDDPDoc(FDocs.Items[i]);
    if Assigned(LDoc) and (CompareText(LDoc.FileName, FName) = 0) then
    begin
      ChgTab(i);
      FileAge(FName, dtime);
      if (LDoc.LastChanged <= dtime) then
      begin
        if LDoc.Modified then
          confirmed := MessageBox(Handle, PChar(Format(sReload,[FName])),
                                  PChar(sConfirmation),MB_YESNO)
        else
          confirmed := IDYES;
        if confirmed = IDYES then
        begin
          DoLoadFromFile(filename);
          LDoc.LastChanged := dtime;
        end;
      end;
      Result := True;
      Exit;
    end;
  end;

  // Add a new tab and open file if current tab is not the default tab
  if (FDocs.Count > 1) or (FEditor.Modified) or
     (TLDDPDoc(FDocs.Items[0]).TabName <> FDefaultTabName) then
  begin
    newitemindex := Add(ExtractFileName(filename), FName);
    LDoc := TLDDPDoc(FDocs.Items[newitemindex]);
  end
  else
  begin
    LDoc := TLDDPDoc(FDocs.Items[0]);
    LDoc.FileName := FName;
    ChgTab(0);
  end;

  if FileExists(FName) then
  begin
    DoLoadFromFile(FName);
    LDoc.Text := FEditor.Text;
  end;

  LDoc.Modified := False;

  if Assigned(FOnOpenedAndInited) then
    FOnOpenedAndInited(Self, LDoc.DocIndex, LDoc);
  Result := True;
end;

procedure  TLDDPDocumentTabControl.Close(const Index: Integer; const AskIfNeeded: Boolean);
var
  AllowClose: Boolean;
  idx: Integer;
begin
  AllowClose := True;
  if Index = -1 then
    idx := TabIndex
  else
    idx := Index;
  if (AskIfNeeded) and (Assigned(FOnClosing)) then
  begin
    if TLDDPDoc(FDocs[idx]).IsActive <> True then
    begin
      Activate(idx);
    end;
    FOnClosing(Self, idx, AllowClose)
  end;
  if AllowClose then
    Remove(idx);
end;

function TLDDPDocumentTabControl.Add(const TabName: string; const FName: string): Integer;
var
  LDoc: TLDDPDoc;
  Idx: Integer;

begin
  if Assigned(FEditor) and (Assigned(FDocs)) then
  begin
    try
      Tabs.BeginUpdate;

      // Save state of the active document
      ActiveDocument.AssignFromEditor;

      // Create a new tab
      LDoc := TLDDPDoc.Create(FEditor, Self, False);
      if TabName <> '' then
        LDoc.TabName := TabName;
      if FName <> '' then
        LDoc.FileName := FName;
      Idx := FDocs.Add(LDoc);
      LDoc.DocIndex := Idx;
      Tabs.Insert(Idx, TabName);
      LDoc.OnChanged := EvtTabChanged;
      if FName <> '' then
        LDoc.Changed;
      ChgTab(Idx);
      Result := Idx;
    finally
      Tabs.EndUpdate;
    end;
  end
  else
    Result := -1;
end;

procedure TLDDPDocumentTabControl.Remove(const index: Integer);
var
  LDoc: TLDDPDoc;
  cur, i: Integer;
  idxtoremove: Integer;

begin
  if Assigned(FEditor) and Assigned(FDocs) then
  begin
    try
      Tabs.BeginUpdate;
      LDoc := TLDDPDoc(FDocs.Items[index]);
      idxtoremove := LDoc.DocIndex;
      if FDocs.Count = 1 then
      begin
        FEditor.ClearAll;
        LDoc := TLDDPDoc(FDocs.Items[0]);
        LDoc.AssignFromEditor;
        LDoc.FileName := FDefaultTabName;
        LDoc.Modified := false;
        ChgTab(0);
      end
      else
      begin
        FDocs.Remove(LDoc);
        cur := idxtoremove;
        Tabs.Delete(idxtoremove);
        if(Tabs.Count > cur + 1) then
          Inc(cur)
        else if cur > 0 then
          Dec(cur);
        for i := idxtoremove to (FDocs.Count - 1) do
          TLDDPDoc(FDocs.Items[i]).DocIndex := i;
        ChgTab(cur);
      end;
      RefreshTabs;
    finally
      Tabs.EndUpdate;
    end;
  end;
end;


procedure TLDDPDocumentTabControl.ChgTab(const newtab: Integer);
begin
  TabIndex := newtab;
  Change;
end;

function TLDDPDocumentTabControl.CanChange: Boolean;
var
  itm: TLDDPDoc;
begin
  if Assigned(FEditor) and Assigned(FDocs) then
  begin
    itm := ActiveDocument;
    if Assigned(itm) then
      itm.AssignFromEditor;
    Result := Inherited CanChange;
  end
  else
    Result := False;
end;

procedure TLDDPDocumentTabControl.Change;
begin
  if Assigned(FDocs) then
    TLDDPDoc(FDocs.Items[TabIndex]).Activate;
  inherited;
end;

procedure TLDDPDocumentTabControl.DoTabHint(const TabIndex: Integer; var HintText: string; doc: TLDDPDoc);
begin
  if Assigned(FOnTabHint) then
    FOnTabHint(Self, TabIndex, HintText, doc);
end;

procedure TLDDPDocumentTabControl.CMHintShow(var Message: TMessage);
var
  Index: Integer;
begin
  with TCMHintShow(Message) do
  begin
    if not ShowHint then
      Message.Result := 1
    else
    begin
      with HintInfo^ do
      begin
        Result := 0;
        index := IndexOfTabAt(CursorPos.X,CursorPos.Y);
        if index<>-1 then
        begin
          HintStr := '';
          if Assigned(FOnTabHint) then
            DoTabHint(index, HintStr, TLDDPDoc(FDocs.Items[index]));
          CursorRect := TabRect(index);
        end
        else
          HintStr:=Hint;
      end;
    end;
  end;
end;

procedure TLDDPDocumentTabControl.Activate(const docno: Integer);
begin
  if (TabIndex <> docno) and CanChange then
  begin
    TabIndex := docno;
    if Assigned(FDocs) then
      TLDDPDoc(FDocs.Items[docno]).Activate;
  end;
end;

procedure TLDDPDocumentTabControl.RefreshTabs;
var
  i: Integer;

begin
  try
    Tabs.BeginUpdate;
    Tabs.Clear;
    if Assigned(FDocs) then
      for i := 0 to FDocs.Count - 1 do
        Tabs.Add(IntToStr(i + 1) + ' ' + TLDDPDoc(FDocs.Items[i]).TabName);
  finally
    Tabs.EndUpdate;
  end;
end;

procedure TLDDPDocumentTabControl.SetEditor(Value: TCustomSynEdit);
var
  tp: TPoint;
  r : TRect;
begin
  if (Value <> FEditor) and  Assigned(Value) then
  begin
    FEditor := Value;
    if (not (csWriting in ComponentState)) and
       (not (csDestroying in ComponentState)) then
    begin
      FEditor.Parent := self;
      FEditor.Visible := true;
      FEditor.Align := alClient;
      FDocs := TObjectList.Create(True);
      Attach;
      RefreshTabs;
    end;
  end
  else
  begin
    if Assigned(FDocs) then
      FDocs.Free;
    if Assigned(Tabs) and (Tabs.Count > 0) then
      Tabs.Clear;
    if FEditor.HandleAllocated and Assigned(Parent) then
    begin
      FEditor.Align := alNone;
      r := ClientRect;
      tp.x := r.Left;
      tp.y := r.Top;
      tp := FEditor.ClientToParent(tp);
      FEditor.Parent := Parent;
      FEditor.Left := tp.x;
      FEditor.Top := tp.y;
    end;
    FEditor := nil;
  end;
end;

function TLDDPDocumentTabControl.GetCount: Integer;
begin
  if Assigned(FDocs) then
    result := FDocs.Count
  else
    result := 0;
end;

function TLDDPDocumentTabControl.GetDocItm(const Index: Integer) : TLDDPDoc;
begin
  if Assigned(FDocs) then
    result := TLDDPDoc(FDocs.Items[Index])
  else
    result := nil;
end;

function TLDDPDocumentTabControl.GetActiveDocument: TLDDPDoc;
begin
  Result := TLDDPDoc(FDocs.Items[TabIndex]);
end;

procedure TLDDPDocumentTabControl.SetDefaultExt(const Value: String);
var
  oldtab: string;
  i, cnt: Integer;
  itm :TLDDPDoc;

begin
  oldtab := FDefaultTabName;
  FDefaultExt := Value;
  if Pos('.', FDefaultExt) = 0 then
    Insert('.', FDefaultExt, 1);
  FDefaultTabName := '<' + sUntitled + FDefaultExt + '>';
  cnt := Tabs.Count;
  for i := 0 to cnt - 1 do
  begin
    itm := TLDDPDoc(FDocs.Items[i]);
    if StrLIComp(PChar(itm.TabName), PChar(oldtab), Length(oldtab)) = 0 then
    begin
      itm.TabName := FDefaultTabName;
      itm.FileName := sUntitled + FDefaultExt;
    end;
  end;
end;

procedure TLDDPDocumentTabControl.EvtTabChanged(Sender: TObject);
var
  tmp: TLDDPDoc;
  ist: string;
begin
  tmp := TLDDPDoc(Sender);
  if tmp.DocIndex < Tabs.Count then
  begin
    ist := IntToStr(tmp.DocIndex + 1);


Tabs.Strings[tmp.DocIndex] := ist + ' ' + tmp.TabName;
  end;
end;

{TLDDPDoc}

procedure TLDDPDoc.SetFileName(const Value: string);

begin
  if Value <> FFileName then
  begin
    FFileName := Value;
    if Pos('<' + sUntitled, Value) = 1 then
    begin
      FTabName := TLDDPDocumentTabControl(fTabCtrl).FDefaultTabName;
      FFileName := sUntitled + TLDDPDocumentTabControl(fTabCtrl).FDefaultExt;
      FLastChanged := -1;
    end
    else
    begin
      FTabName := ExtractFileName(Value);
      FileAge(Value, FLastChanged);
    end;
    Changed;
  end;
end;

procedure TLDDPDoc.Changed;
begin
  if Assigned(FOnChanged) then FOnChanged(self);
end;

procedure TLDDPDoc.SetTabName(const Value : string);
begin
  if Value <> FTabName then
  begin
    FTabName := Value;
    Changed;
  end;
end;

function TLDDPDoc.IsActive: Boolean;
begin
  if (not Assigned(FEditor)) or (not Assigned(FTabCtrl)) then
    Result := False
  else
    Result := TLDDPDocumentTabControl(FTabCtrl).ActiveDocument.DocIndex = DocIndex;
end;

constructor TLDDPDoc.Create(pp: TCustomSynEdit; ttabctrl: TLDDPDocumentTabControl; const getcurrent : Boolean);
begin
  inherited Create;
  FTabCtrl := ttabctrl;
  FEditor := pp;
  FTabName := TLDDPDocumentTabControl(fTabCtrl).FDefaultTabName;
  FModified := False;
  FLastChanged := -1;
  FFileName := sUntitled + TLDDPDocumentTabControl(fTabCtrl).DefaultExt;
  AssignFromEditor;
end;

procedure TLDDPDoc.AssignFromEditor;
begin
  FFirstLineInView := FEditor.DisplayToBufferPos(DisplayCoord(0,0)).Line;
  FCaretPos := FEditor.CaretXY;
  FSelStart := FEditor.SelStart;
  FSelEnd := FEditor.SelEnd;
  FModified := FEditor.Modified;
  FText := FEditor.Lines.Text;
end;

procedure TLDDPDoc.AssignToEditor;
begin
  FEditor.Lines.Text := FText;
  FEditor.SelStart := FSelStart;
  FEditor.SelEnd := FSelEnd;
  FEditor.Modified := FModified;
  FEditor.CaretXY := BufferCoord(0, FFirstLineInView);
  FEditor.EnsureCursorPosVisible;
  FEditor.CaretXY := FCaretPos;
//  if FEditor.Visible and FEditor.Showing then
//    SetFocus;
end;

procedure TLDDPDoc.Activate;
begin
  if (TLDDPDocumentTabControl(FTabCtrl).TabIndex <> DocIndex) and
     (TLDDPDocumentTabControl(FTabCtrl).CanChange) then
    TLDDPDocumentTabControl(FTabCtrl).TabIndex := DocIndex;
  AssignToEditor;
end;

function TLDDPDoc.IsUntitled: Boolean;
begin
  if (Pos('<' + sUntitled, TabName) <> 0) and (Pos('>', TabName) <> 0) then
    Result := True
  else
    Result := False;
end;

procedure TLDDPDoc.SetModified(const Value: Boolean);
begin
  FModified := Value;
  if Assigned(fEditor) and (IsActive = True) then
  begin
    FEditor.Modified := Value;
  end;
end;

procedure TLDDPDoc.Close;
begin
  if Assigned(FTabCtrl) then
    TLDDPDocumentTabControl(FTabCtrl).Close(DocIndex);
end;

procedure Register;
begin
  RegisterComponents('LDDP', [TLDDPDocumentTabControl]);
end;

end.
