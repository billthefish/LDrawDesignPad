unit dlgSubpart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrSubFile = class(TForm)
    edFilename: TEdit;
    edAuthor: TEdit;
    edComments: TMemo;
    rgType: TRadioGroup;
    cbUnofficial: TCheckBox;
    btnCreate: TBitBtn;
    btnCancel: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edTitle: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frSubFile: TfrSubFile;

implementation

{$R *.dfm}

end.
