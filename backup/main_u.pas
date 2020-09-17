unit main_u;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, SQLite3Conn, SQLDB, DB, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, StdCtrls, DBGrids, DBExtCtrls, DBCtrls, Buttons, ExtDlgs;

type

  { TfrmMain }

  TfrmMain = class(TForm)
    btnAbout: TBitBtn;
    addImgBtn: TButton;
    DBDatasource: TDataSource;
    amountEdit: TDBEdit;
    colorwayEdit: TDBEdit;
    dateEdit: TDBDateEdit;
    DBNavigator1: TDBNavigator;
    notesEdit: TDBMemo;
    importantEdit: TDBMemo;
    dyelotEdit: TDBEdit;
    OpenPictureDialog1: TOpenPictureDialog;
    patternImage: TDBImage;
    fiberEdit: TDBEdit;
    lblNotes: TLabel;
    lblDyelot: TLabel;
    yarnbEdit: TDBEdit;
    needleEdit: TDBEdit;
    madeforEdit: TDBEdit;
    designEdit: TDBEdit;
    patNameEdit: TDBEdit;
    dbPatternGrid: TDBGrid;
    lblDate: TLabel;
    lblPatName: TLabel;
    lblimage: TLabel;
    lblColorway: TLabel;
    lblDate3: TLabel;
    lblYarnBrand: TLabel;
    lblImportant: TLabel;
    lblAmountused: TLabel;
    lblFiber: TLabel;
    lblNeedle: TLabel;
    lblMadefor: TLabel;
    lblPk: TLabel;
    pnlFunctions: TPanel;
    DBConnection: TSQLite3Connection;
    DBQuery: TSQLQuery;
    DBTransaction: TSQLTransaction;
    procedure addImgBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);

  private

  public

  end;

var
  frmMain: TfrmMain;

implementation

{$R *.lfm}

{ TfrmMain }

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  //DBConnection.DatabaseName:= './PKdb.db';
  DBConnection.Open;
  DBTransaction.Active:= True;
  DBQuery.Open;
end;


procedure TfrmMain.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  DBConnection.Close(True);
  DBTransaction.Active:= False;
  DBQuery.Close;
end;

procedure TfrmMain.addImgBtnClick(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then begin
    patternImage.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  end;

end;


end.

