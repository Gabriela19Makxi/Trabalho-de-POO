unit uVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uClasseVendas;

type
  TVendas = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CBPagamento: TComboBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Vendas: TVendas;

implementation

{$R *.dfm}

procedure TVendas.Button1Click(Sender: TObject);
 var MenssagemVenda: TClasseVenda;

begin
   MenssagemVenda := TClasseVenda.Create;
      Try
   MenssagemVenda.MenssagemVenda:=('Esta Cadastrado' + #13 + Edit1.Text + #13+Edit2.Text + #13 + CBPagamento.Text);
       ShowMessage(MenssagemVenda.MenssagemVenda);

       Finally
      End;

end;

end.
