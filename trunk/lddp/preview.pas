unit preview;

interface

uses
  {$IFDEF MSWINDOWS}
  Windows, Messages, Classes, QGraphics, QControls, QForms, QDialogs,
  QStdCtrls, QExtCtrls, ToolWin, QComCtrls,
  {$ENDIF}
  {$IFDEF LINUX}
  Types, QTypes, Classes, Variants, QGraphics, QControls, QForms,
  QDialogs, QComCtrls, QStdCtrls, QExtCtrls,
  {$ENDIF}
  SysUtils;

type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    Panel1: TPanel;
    PaintBox1: TPaintBox;
    ScrollBar: TScrollBar;
    {$IFDEF MSWINDOWS}
//    PrintDialog: TPrintDialog;
    {$ENDIF}
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.xfm}

end.
