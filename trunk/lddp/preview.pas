unit preview;

interface

uses
  Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ToolWin, ComCtrls,
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

{$R *.dfm}

end.
