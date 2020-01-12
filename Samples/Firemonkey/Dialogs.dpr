program Dialogs;

uses
  System.StartUpCopy,
  FMX.Forms,
  DialogsFMX in 'Views\DialogsFMX.pas' {Form1},
  Dialogs.Controllers.Factory in 'Controllers\Factory\Dialogs.Controllers.Factory.pas',
  Dialogs.Controllers.Interfaces.Factory in 'Controllers\Factory\Dialogs.Controllers.Interfaces.Factory.pas',
  Dialogs.Controllers.Method.Interfaces in 'Controllers\Factory\Methods\Dialogs.Controllers.Method.Interfaces.pas',
  Dialogs.Controllers.Method.OpenDialogs in 'Controllers\Factory\Methods\Dialogs.Controllers.Method.OpenDialogs.pas',
  Dialogs.Controllers.Method.SaveDialogs in 'Controllers\Factory\Methods\Dialogs.Controllers.Method.SaveDialogs.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
