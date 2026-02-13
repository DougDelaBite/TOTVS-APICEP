program Totvs.Hospitalidade.Enderecos;

uses
  Vcl.Forms,
  View.ApiCep.Principal in 'View\View.ApiCep.Principal.pas' {viewHospitEndereco},
  ApiCep.Controller in 'Controller\ApiCep.Controller.pas',
  ApiCep.Model in 'Model\ApiCep.Model.pas',
  ApiCep.DTO in 'DTO\ApiCep.DTO.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TviewHospitEndereco, viewHospitEndereco);
  Application.Run;
end.
