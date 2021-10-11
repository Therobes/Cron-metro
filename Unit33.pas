unit Unit33;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TCronometro = class(TForm)
    Label1: TLabel;
    Timer1: TTimer;
    Iniciar: TButton;
    Memo1: TMemo;
    NovaVolta: TButton;
    LimparVoltas: TButton;
    Reiniciar: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure IniciarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NovaVoltaClick(Sender: TObject);
    procedure LimparVoltasClick(Sender: TObject);
    procedure ReiniciarClick(Sender: TObject);

  private

  public
    tempo : TTime;
  end;

var
  Cronometro: TCronometro;

implementation

{$R *.dfm}

procedure TCronometro.ReiniciarClick(Sender: TObject);
begin
  tempo := StrToTime('00:00:00');
  Timer1.Enabled := False;
  label1.Caption := TimeToStr(tempo);
  Iniciar.Caption := 'Iniciar';
end;

procedure TCronometro.IniciarClick(Sender: TObject);

begin

  if Timer1.Enabled = True then
  begin
    Timer1.Enabled := False;
    Iniciar.Caption := 'Iniciar';
  end
  else
  begin
    Timer1.Enabled := true;
    Iniciar.Caption := 'Pausar';
  end;
end;

procedure TCronometro.NovaVoltaClick(Sender: TObject);
begin

  if tempo = StrToTime('00:00:00') then
  begin
    Application.messageBox('O cronometro está zerado!','Cronêmetro', MB_OK);
    abort;
  end;
  Memo1.Lines.Add(TimeToStr(tempo));

end;

procedure TCronometro.LimparVoltasClick(Sender: TObject);
begin
  memo1.Text := '';
end;

procedure TCronometro.FormCreate(Sender: TObject);
begin
  Timer1.Enabled := false;
end;

procedure TCronometro.Timer1Timer(Sender: TObject);
begin
  tempo := tempo + StrToTime('00:00:01');
  label1.caption := TimeToStr(tempo);
end;

end.
