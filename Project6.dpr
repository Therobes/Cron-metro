program Project6;

uses
  Vcl.Forms,
  Unit33 in '..\Embarcadero\Studio\Projects\Unit33.pas' {Cronômetro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCronômetro, Cronômetro);
  Application.Run;
end.
