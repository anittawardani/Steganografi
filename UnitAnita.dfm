object Form1: TForm1
  Left = 191
  Top = 124
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object gambar1: TImage
    Left = 88
    Top = 104
    Width = 97
    Height = 177
  end
  object gambar2: TImage
    Left = 208
    Top = 104
    Width = 105
    Height = 177
  end
  object labelKeterangan: TLabel
    Left = 96
    Top = 64
    Width = 158
    Height = 13
    Caption = 'Masukkan Image Berektensi bmp'
  end
  object btnOpenImage: TButton
    Left = 280
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Open Image'
    TabOrder = 0
    OnClick = btnOpenImageClick
  end
  object btnInversi: TButton
    Left = 392
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Inversi'
    TabOrder = 1
    OnClick = btnInversiClick
  end
  object btnEqualization: TButton
    Left = 392
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Equalization'
    TabOrder = 2
  end
  object btnClose: TButton
    Left = 392
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 3
    OnClick = btnCloseClick
  end
  object pb: TProgressBar
    Left = 104
    Top = 328
    Width = 305
    Height = 17
    TabOrder = 4
  end
  object dlgOpenPic1: TOpenPictureDialog
    Left = 136
    Top = 216
  end
end
