{These sources are copyright (C) 2003-2005 the LDDP project contributors.

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
unit splash;

interface

uses
  Forms,Controls, StdCtrls, Graphics, Classes, ExtCtrls;

type
  TfrSplash = class(TForm)
    Image1: TImage;
    lbState: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frSplash: TfrSplash;

implementation

{$R *.dfm}

end.
