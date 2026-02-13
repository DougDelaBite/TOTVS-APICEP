unit ApiCep.Controller;

interface

uses
  ApiCep.Model, ApiCep.DTO;

type
  TApiCepController = class
  private
    FModel: TEnderecoModel;
  public
    constructor Create;
    destructor Destroy; override;
    function BuscaCEP(const ACEP: string): TEndereco;

  end;

implementation

{ TApiCepController }

constructor TApiCepController.Create;
begin
  FModel := TEnderecoModel.Create;
end;

destructor TApiCepController.Destroy;
begin
  FModel.Free;
  inherited;
end;

function TApiCepController.BuscaCEP(const ACEP: string): TEndereco;
begin
  result := FModel.BuscarCEP(ACEP);
end;

end.
