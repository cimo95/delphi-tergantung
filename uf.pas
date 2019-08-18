Unit uf;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShellAPI, FileCtrl, StdCtrls, ComCtrls, ExtCtrls;

Function f0(a: String): String;

Function f1(a: Char): Integer;

Function f2(a: String): String;

Procedure f3;

Procedure f4;

Procedure f5(a: String);

Implementation

Uses
  uu;

Function f0(a: String): String;
Var
  b: TStringList;
  c: integer;
  d: String;
Begin
  b := TStringList.Create;
  b.Sorted := True;
  b.Duplicates := dupIgnore;
  a := StringReplace(a, ' ', '', [rfReplaceAll]);
  For c := 1 To Length(a) Do
    b.Add(a[c]);
  d := StringReplace(b.Text, #13#10, '', [rfreplaceall]);
  b.Free;
  Result := d;
End;

Function f2(a: String): String;
Var
  b: Integer;
Begin
  Result := '';
  For b := 1 To Length(a) Do
    Result := Result + a[b] + ' ';
End;

Procedure f3;
Begin
  With mf Do
  Begin
    If c1f.Progress <> 0 Then
      c1f.Progress := c1f.Progress - 1;
    f5('HMI'+inttostr(pi0));
  End;
End;

Function f1(a: Char): Integer;
Var
  b: integer;
  c: String;
Begin
  With mf Do
  Begin
    If (Pos(a, ps3) <> 0) Or (Pos(a, ps2) <> 0) Then
      Result := 0
    Else
    Begin
      If Pos(a, ps1) = 0 Then
      Begin
        ps2 := ps2 + a;
        pi0 := pi0 + 1;
        MessageBeep(16);
        If pi0 = 6 Then
          Result := 2
        Else
          Result := 1;
      End
      Else
      Begin
        c := c13.Caption;
        For b := 1 To Length(ps0) Do
          If ps0[b] = a Then
            c[b] := a;
        c13.Caption := c;
        ps3 := ps3 + a;
        Result := 3;
        MessageBeep(64);
      End;
      If Length(c17.Text) = 0 Then
        c17.Text := a
      Else
        c17.Text := c17.Text + ', ' + a;
      For b := 1 To Length(c17.Text) Do
      Begin
        c17.SelStart := b - 1;
        c17.SelLength := 1;
        If c17.SelText[1] In ['A'..'Z', '0'..'9'] Then
        Begin
          If Pos(c17.Text[b], ps3) > 0 Then
            c17.SelAttributes.Color := clBlue
          Else
            c17.SelAttributes.Color := clRed;
        End
        Else
          c17.SelAttributes.Color := clBlack;
        c17.SelLength := 0;

      End;
    End;
  End;
End;

Procedure f4;
Begin
  mf.c1d.Progress := (Length(mf.ps3) * 100) Div (Length(mf.ps1));
End;

Procedure f5(a: String);
Var
  b: TResourceStream;
Begin
  b := TResourceStream.Create(HInstance, a, RT_RCDATA);
  mf.c22.Picture.Bitmap.LoadFromStream(b);
  b.Free;
End;

End.

