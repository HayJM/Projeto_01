unit pesquisa;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, MaskEdit;

type

  { Tfrmpesquisa }

  Tfrmpesquisa = class(TForm)
    btnpesquisa: TButton;
    edtcpf: TMaskEdit;
    lblcpf: TLabel;
    srlpesquisa: TScrollBox;
    procedure btnpesquisaClick(Sender: TObject);
  private

  public

  end;

var
  frmpesquisa: Tfrmpesquisa;

implementation
uses
  principal;

{$R *.lfm}

{ Tfrmpesquisa }

procedure Tfrmpesquisa.btnpesquisaClick(Sender: TObject);
var
  i: Integer;
  cpfBusca: string;
  achou: Boolean;
  lblResultado: TLabel;
begin
  cpfBusca := Trim(edtcpf.Text);
  achou := False;

  // Limpa resultados anteriores da ScrollBox
  while srlpesquisa.ControlCount > 0 do
    srlpesquisa.Controls[0].Free;

  for i := 0 to High(frmprincipal.ListaClientes) do
  begin
    if frmprincipal.ListaClientes[i].CPF = cpfBusca then
    begin
      achou := True;

      lblResultado := TLabel.Create(srlpesquisa);
      lblResultado.Parent := srlpesquisa;
      lblResultado.Top := 8;
      lblResultado.Left := 8;
      lblResultado.Caption :=
        'Nome: ' + frmprincipal.ListaClientes[i].Nome + LineEnding +
        'Gênero: ' + frmprincipal.ListaClientes[i].Genero + LineEnding +
        'Telefone: ' + frmprincipal.ListaClientes[i].Telefone + LineEnding +
        'CEP: ' + frmprincipal.ListaClientes[i].CEP;
      lblResultado.WordWrap := True;
      lblResultado.AutoSize := True;
      Exit;
    end;
  end;

  if not achou then
    ShowMessage('CPF não encontrado.');
end;

end.

