unit sorting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfmSort = class(TForm)
    rgScope: TRadioGroup;
    cbSort: TComboBox;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    rgSortDirection: TRadioGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSort: TfmSort;

implementation

{$R *.dfm}


end.
