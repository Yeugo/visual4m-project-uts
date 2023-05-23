object Form10: TForm10
  Left = 468
  Top = 174
  Width = 675
  Height = 524
  Caption = 'Form10'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = Formshow
  PixelsPerInch = 96
  TextHeight = 13
  object grp1: TGroupBox
    Left = 24
    Top = 16
    Width = 561
    Height = 257
    Caption = 'Tambah Jadwal'
    TabOrder = 0
    object l1: TLabel
      Left = 16
      Top = 24
      Width = 45
      Height = 13
      Caption = 'Jam Awal'
    end
    object l2: TLabel
      Left = 160
      Top = 24
      Width = 46
      Height = 13
      Caption = 'Jam Akhir'
    end
    object l3: TLabel
      Left = 16
      Top = 64
      Width = 82
      Height = 13
      Caption = 'Hari Pelaksanaan'
    end
    object l4: TLabel
      Left = 16
      Top = 96
      Width = 41
      Height = 13
      Caption = 'Tanggal '
    end
    object l5: TLabel
      Left = 16
      Top = 128
      Width = 43
      Height = 13
      Caption = 'Ruangan'
    end
    object l6: TLabel
      Left = 16
      Top = 160
      Width = 55
      Height = 13
      Caption = 'Mata Kuliah'
    end
    object l7: TLabel
      Left = 16
      Top = 192
      Width = 25
      Height = 13
      Caption = 'Kelas'
    end
    object l8: TLabel
      Left = 16
      Top = 224
      Width = 84
      Height = 13
      Caption = 'Jumlah Kehadiran'
    end
    object e1: TEdit
      Left = 72
      Top = 24
      Width = 73
      Height = 21
      TabOrder = 0
      Text = 'e1'
    end
    object e2: TEdit
      Left = 208
      Top = 24
      Width = 73
      Height = 21
      TabOrder = 1
      Text = 'e2'
    end
    object c1: TComboBox
      Left = 112
      Top = 64
      Width = 169
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = 'c1'
      Items.Strings = (
        'Senin'
        'Selasa '
        'Rabu '
        'Kamis '
        'Jumat')
    end
    object e3: TEdit
      Left = 112
      Top = 128
      Width = 169
      Height = 21
      TabOrder = 3
      Text = 'e3'
    end
    object e4: TEdit
      Left = 112
      Top = 160
      Width = 169
      Height = 21
      TabOrder = 4
      Text = 'e3'
    end
    object e5: TEdit
      Left = 112
      Top = 192
      Width = 169
      Height = 21
      TabOrder = 5
      Text = 'e3'
    end
    object e6: TEdit
      Left = 112
      Top = 224
      Width = 169
      Height = 21
      TabOrder = 6
      Text = 'e3'
    end
    object b1: TButton
      Left = 320
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 7
      OnClick = b1Click
    end
    object b2: TButton
      Left = 320
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 8
      OnClick = b2Click
    end
    object b3: TButton
      Left = 320
      Top = 104
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 9
      OnClick = b3Click
    end
    object b4: TButton
      Left = 320
      Top = 144
      Width = 75
      Height = 25
      Caption = 'Batal'
      TabOrder = 10
    end
    object dtp1: TDateTimePicker
      Left = 112
      Top = 96
      Width = 169
      Height = 21
      Date = 45064.722495659720000000
      Time = 45064.722495659720000000
      TabOrder = 11
    end
  end
  object dg1: TDBGrid
    Left = 24
    Top = 280
    Width = 561
    Height = 185
    DataSource = Form9.d1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dg1CellClick
  end
end
