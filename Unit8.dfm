object Form8: TForm8
  Left = 321
  Top = 188
  Width = 361
  Height = 267
  Caption = 'Form8'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 8
    Top = 8
    object File1: TMenuItem
      Caption = 'File'
      object Kalkulator1: TMenuItem
        Caption = 'Latihan 1'
        OnClick = Kalkulator1Click
      end
      object LatihanMandiri11: TMenuItem
        Caption = 'Lathian 2'
        OnClick = LatihanMandiri11Click
      end
      object LatihanMandiri21: TMenuItem
        Caption = 'Konditional 1'
        OnClick = LatihanMandiri21Click
      end
      object LatihanMandiri31: TMenuItem
        Caption = 'Konditional 2'
        OnClick = LatihanMandiri31Click
      end
      object ugasMandiri31: TMenuItem
        Caption = 'Grafik Penyakit'
        OnClick = ugasMandiri31Click
      end
      object ugasMandiri41: TMenuItem
        Caption = 'Grafik StringGrid'
        OnClick = ugasMandiri41Click
      end
      object ugasMandiri42: TMenuItem
        Caption = 'Grafik StringGrid Revisi'
        OnClick = ugasMandiri42Click
      end
      object CloseKeluar1: TMenuItem
        Caption = 'Latiihan Database '
        OnClick = CloseKeluar1Click
      end
      object CloseKeluar2: TMenuItem
        Caption = 'Close/Keluar'
        OnClick = CloseKeluar2Click
      end
    end
  end
end
