Unit uu;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShellAPI, FileCtrl, StdCtrls, ComCtrls, ExtCtrls, Buttons, Gauges, uf,
  uh;

Type
  Tmf = Class(TForm)
    c0: TPageControl;
    c1: TTabSheet;
    c25: TTabSheet;
    c2: TLabel;
    c4: TEdit;
    c6: TLabel;
    c7: TMemo;
    c3: TEdit;
    c9: TGroupBox;
    ca: TImage;
    cb: TLabel;
    ab: TLabel;
    ce: TLabel;
    cf: TLabel;
    c11: TLabel;
    c10: TMemo;
    c5: TButton;
    c8: TBitBtn;
    c12: TPanel;
    c13: TLabel;
    c21: TPanel;
    c22: TImage;
    c14: TGroupBox;
    c15: TMemo;
    c18: TGroupBox;
    c19: TEdit;
    c1b: TGroupBox;
    c1c: TLabel;
    c1d: TGauge;
    c1e: TLabel;
    c1a: TBitBtn;
    c1f: TGauge;
    c16: TGroupBox;
    c17: TRichEdit;
    c23: TPanel;
    c24: TSpeedButton;
    c20: TLabel;
    cc: TLabel;
    cd: TLabel;
    Procedure c5MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    Procedure c5MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    Procedure c4Change(Sender: TObject);
    Procedure c8Click(Sender: TObject);
    Procedure c1aClick(Sender: TObject);
    Procedure c19KeyPress(Sender: TObject; Var Key: Char);
    Procedure FormCreate(Sender: TObject);
    Procedure c24Click(Sender: TObject);
    Procedure c19Change(Sender: TObject);
  Private
    { Deklarasi hanya untuk penggunaan dalam unit ini saja }
  Public
    { Deklarasi untuk penggunaan ke semua unit yang terintegerasi }
    ps0, ps1, ps2, ps3: String;
    pi0: integer;
  End;

Var
  mf: Tmf;

Implementation

{$R *.dfm} //template tweaked by : Araachmadi Putra Pambudi
{$R hm.res}

Procedure Tmf.c5MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
  c4.Hide;
  c3.Show;
End;

Procedure Tmf.c5MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
  c3.Hide;
  c4.Show;
End;

Procedure Tmf.c4Change(Sender: TObject);
Begin
  c3.Text := c4.Text;
End;

Procedure Tmf.c8Click(Sender: TObject);
Var
  a: integer;
  b: Char;
Begin
  If (Length(c4.Text) < 4) Or (Length(c4.Text) > 64) Then
    MessageBox(handle, 'Please make sure the question is between 4 and 64 letters only', 'Oops !', 16)
  Else
  Begin
    If Length(c7.Text) = 0 Then
      MessageBox(Handle, 'Please make sure you have add clue', 'Oops !', 16)
    Else
    Begin
      c15.Text := c7.Text;
      ps0 := f2(c4.Text);
      ps1 := f0(c4.Text);
      c1f.MaxValue := Length(ps1);
      c13.Caption := ps0;
      For a := 1 To Length(ps1) Do
      Begin
        If ps1[a] = ' ' Then
          b := ' '
        Else
          b := '_';
        c13.Caption := StringReplace(c13.Caption, ps1[a], b, [rfReplaceAll]);
      End;
      c0.ActivePageIndex := 1;
      c19.SetFocus;
    End;
  End;
End;

Procedure Tmf.c1aClick(Sender: TObject);
Begin
  Case f1(c19.text[1]) Of
    0:
      MessageBox(Handle, 'Look at red letter line, your word already used', 'Submit Failed', 16);
    1:
      f3;
    2:
      Begin
        f3;
        If MessageBox(handle, 'Oops! you lost all your chance! You''re hanged!.'#13'Play again? If no, game will be ended', 'Failed', 64 + 4) = mryes Then
          ShellExecute(handle, 'open', PChar(Application.exename), nil, nil, sw_show);
        Application.Terminate;
      End;
    3:
      c1f.Progress := c1f.Progress + 1;
  End;
  f4;
  c19.Clear;
  c19.SetFocus;
  If Length(ps1) = Length(ps3) Then
  Begin
    If MessageBox(handle, 'Congratulations!, you win the game.'#13'Play again? If no, game will be ended', 'Success', 64 + 4) = mryes Then
      ShellExecute(handle, 'open', PChar(Application.exename), nil, nil, sw_show);
    Application.Terminate;
  End;
End;

Procedure Tmf.c19KeyPress(Sender: TObject; Var Key: Char);
Begin
  If Not (Key In ['a'..'z', 'A'..'Z', '0'..'9', #8, #13]) Then
    Key := #0
  Else If (Key = #13) And (c19.Text <> '') Then
    c1a.Click;
End;

Procedure Tmf.FormCreate(Sender: TObject);
Begin
  Application.HintHidePause := 60000;
End;

Procedure Tmf.c24Click(Sender: TObject);
Begin
  hf.Show;
End;

Procedure Tmf.c19Change(Sender: TObject);
Begin
  c1a.Enabled := c19.Text <> '';
End;

End.

