unit uCadastroVeiculo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uCarro, uMoto;

type
  TCadVeiculos = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    EdtModelo: TEdit;
    EdtAno: TEdit;
    EdtPreco: TEdit;
    EdtMarca: TEdit;
    BtnCadastrarCarro: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure BtnCadastrarCarroClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadVeiculos: TCadVeiculos;

implementation

{$R *.dfm}

procedure TCadVeiculos.BtnCadastrarCarroClick(Sender: TObject);
var   MenssagemCar : TCarro;

begin
 MenssagemCar := TCarro.Create;
 Try
   MenssagemCar.MenssagemCar:=('Esta Cadastrado' + #13 + EdtModelo.Text + #13  +EdtMarca.Text + #13 + EdtAno.Text + #13 + EdtPreco.Text);
    ShowMessage(MenssagemCar.MenssagemCar);
 Finally

 End;


end;

procedure TCadVeiculos.Button1Click(Sender: TObject);
var MenssagemMot: TMoto;

begin
   MenssagemMot := TMoto.Create;
      Try
   MenssagemMot.MenssagemMot:=('Esta Cadastrado' + #13 + Edit1.Text + #13  +Edit2.Text + #13 + Edit3.Text + #13 + Edit4.Text);
       ShowMessage(MenssagemMot.MenssagemMot);

       Finally
      End;

end;

end.
