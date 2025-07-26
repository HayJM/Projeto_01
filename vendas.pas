unit vendas;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, MaskEdit;

type

  { TfrmVendas }

  TfrmVendas = class(TForm)
    btncpf: TButton;
    btnBusca: TButton;
    Button3: TButton;
    btnAdd: TButton;
    edtCodigoProd: TEdit;
    edtcpf: TMaskEdit;
    lblCPF: TLabel;
    lblCodProd: TLabel;
    Label3: TLabel;
    srlrProduto: TScrollBox;
    srlProdutosCompr: TScrollBox;
    procedure btnpesquisaClick(Sender: TObject);
    procedure btncpfClick(Sender: TObject);
  private

  public

  end;

var
  frmVendas: TfrmVendas;

implementation
uses
  principal, produto;

{$R *.lfm}

{ TfrmVendas }

procedure TfrmVendas.btncpfClick(Sender: TObject);
begin

end;

end.

