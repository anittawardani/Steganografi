unit UnitAnita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, ExtDlgs;

type
  TForm1 = class(TForm)
    gambar1: TImage;
    gambar2: TImage;
    labelKeterangan: TLabel;
    btnOpenImage: TButton;
    btnInversi: TButton;
    btnEqualization: TButton;
    btnClose: TButton;
    pb: TProgressBar;
    dlgOpenPic1: TOpenPictureDialog;
    procedure btnOpenImageClick(Sender: TObject);
    procedure btnInversiClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnOpenImageClick(Sender: TObject);
var gambar :TBitmap;
begin
if not dlgOpenPic1.Execute then Exit
   else
    begin
      gambar := TBitmap.Create;
      gambar.LoadFromFile(dlgOpenPic1.FileName);
    end;
    gambar1.Picture.Bitmap :=gambar;
    gambar2.Picture.Bitmap :=gambar;
end;

procedure TForm1.btnInversiClick(Sender: TObject);
var pixel : PByteArray;
brs,kol   : Integer;
RGB1      : array[0..2] of Integer;
begin
for brs:= 0 to gambar2.Picture.Height-1 do
    begin
      pixel:=gambar2.Picture.Bitmap.ScanLine[brs];
      for kol:= 0 to gambar2.Picture.Width-1 do
        begin
          if gambar2.Picture.Bitmap.PixelFormat = pf8bit then //citra 8 bit
          pixel[kol]:= 256 - pixel[kol];
          if gambar2.Picture.Bitmap.PixelFormat = pf24bit then //citra 24 bit
            begin
              pixel[3*kol]:=256-pixel[3*kol];
              pixel[3*kol+1]:=256-pixel[3*kol+1];
              pixel[3*kol+2]:=256-pixel[3*kol+2];
            end;
        end;
        gambar2.Invalidate;
end;
end;

procedure TForm1.btnCloseClick(Sender: TObject);
begin
Application.Terminate;
end;

end.
