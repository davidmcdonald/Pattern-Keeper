unit About;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TaboutFrm }

  TaboutFrm = class(TForm)
    Button1: TButton;
    Image1: TImage;
  private

  public

  end;

var
  aboutFrm: TaboutFrm;

implementation

{$R *.lfm}

end.

