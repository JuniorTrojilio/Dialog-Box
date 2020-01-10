unit DialogVCL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Dialogs.Controllers.Factory;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  lNameFile :TStrings;
begin
  TDialogFactory
    .New
      .OpenDialog
        .Params
          .Title('Tittle of Program')
          .InitialDir('C:\')
          .AddFilter
            .AddXML
            .AddPDF
            .AddTXT
            .AddAll
          .EndFilter
          .AddOption
            .ReadOnly
            .FileMustExist
            .AllowMultiSelect
          .EndOptions
          .FilterIndex(2)
        .EndParams
        .Execute(lNameFile);

  ShowMessage(lNameFile.Text);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  lNameFile :TStrings;
begin
    TDialogFactory
    .New
      .SaveDialog
        .Params
          .Title('Tittle of Program')
          .InitialDir('C:\')
          .AddFilter
            .AddXML
            .AddPDF
            .AddTXT
            .AddAll
          .EndFilter
          .AddOption
            .ReadOnly
            .FileMustExist
            .AllowMultiSelect
          .EndOptions
          .FilterIndex(2)
      .EndParams
      .Execute(lNameFile);

  ShowMessage(lNameFile.Text);
end;

end.
