unit uh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, shellapi, filectrl, xpman, StdCtrls, ComCtrls;

type
  Thf = class(TForm)
    c0: TRichEdit;
  private
    { Deklarasi hanya untuk penggunaan dalam unit ini saja }
  public
    { Deklarasi untuk penggunaan ke semua unit yang terintegerasi }
  end;

var
  hf: Thf;

implementation

{$R *.dfm} //template tweaked by : Araachmadi Putra Pambudi

end.
