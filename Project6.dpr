program Project6;

uses
  Vcl.Forms,
  Unit33 in '..\Embarcadero\Studio\Projects\Unit33.pas' {Cron�metro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCron�metro, Cron�metro);
  Application.Run;
end.
