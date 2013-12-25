program kontr;

uses
  Forms,
  MainForm in 'MainForm.pas' {Form1},
  SearchForm in 'SearchForm.pas' {FormSearch};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
