unit sorting;

interface

uses
  gnugettext, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
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
    Label2: TLabel;
    cbSort2: TComboBox;
    Label3: TLabel;
    cbSort3: TComboBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSort: TfmSort;

implementation

{$R *.dfm}


procedure TfmSort.FormCreate(Sender: TObject);
begin
  TranslateComponent (self);
end;

end.
