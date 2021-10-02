program Project6;

uses
  Vcl.Forms,
  Unit33 in '..\..\Embarcadero\Studio\Projects\Unit33.pas' {Cronometro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCronometro, Cronometro);
  Application.Run;
end.
