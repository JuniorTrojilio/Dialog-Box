unit DialogsFMX;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

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

uses
  Dialogs.Controllers.Factory;

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
var
  lNameFile: TStrings;
begin
  TDialogFactory
    .New
      .OpenDialog
        .Params
          .Title('Tittle of Sample')
          .InitialDir('C:\')
          .AddFilter
            .AddXML
            .AddPDF
            .AddTXT
            .AddAll
          .EndFilter
          .AddOption
            .ReadOnly
            .AllowMultiSelect
            .FileMustExist
          .EndOptions
          .FilterIndex(1)
       .EndParams
       .Execute(lNameFile);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  lNameFile: TStrings;
begin
  TDialogFactory
    .New
      .SaveDialog
        .Params
          .Title('Tittle of Sample')
          .InitialDir('C:\')
          .AddFilter
            .AddXML
            .AddPDF
            .AddTXT
            .AddAll
          .EndFilter
          .AddOption
            .ReadOnly
            .AllowMultiSelect
            .FileMustExist
          .EndOptions
          .FilterIndex(1)
       .EndParams
       .Execute(lNameFile);
end;
end.
