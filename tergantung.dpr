Program tergantung;

Uses
  Forms,
  uu In 'uu.pas' {mf},
  uf In 'uf.pas',
  uh In 'uh.pas' {hf};

{$R *.res}  

Begin
  Application.Initialize;
  Application.Title := 'TERgantung 1.0';
  Application.CreateForm(Tmf, mf);
  Application.CreateForm(Thf, hf);
  Application.Run;
End.

