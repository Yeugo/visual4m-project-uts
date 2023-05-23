unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls;

type
  TForm10 = class(TForm)
    grp1: TGroupBox;
    dg1: TDBGrid;
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
    l5: TLabel;
    l6: TLabel;
    l7: TLabel;
    l8: TLabel;
    e1: TEdit;
    e2: TEdit;
    c1: TComboBox;
    e3: TEdit;
    e4: TEdit;
    e5: TEdit;
    e6: TEdit;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    dtp1: TDateTimePicker;
    procedure bersih;
    procedure b1Click(Sender: TObject);
    procedure Formshow(Sender: TObject);
    procedure dg1CellClick(Column: TColumn);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure b4Click(Sender: TObject);

    private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;
  upd: string;

implementation
uses unit9;

{$R *.dfm}

procedure tForm10.bersih;
begin
  e1.Text:= '00:00';
  e2.Text:= '00:00';
  c1.Text:= '---Pilih Hari--';
  e3.Text:= '-';
  e4.Text:= '-';
  e5.Text:= '-';
  e6.Text:= '0';

  dg1.Columns[0].Width:=20;
  dg1.Columns[1].Width:=50;
  dg1.Columns[2].Width:=50;
  dg1.Columns[3].Width:=90;
  dg1.Columns[4].Width:=60;
  dg1.Columns[5].Width:=60;
  dg1.Columns[6].Width:=110;
  dg1.Columns[7].Width:=80;
  b1.Enabled:=True;
  b2.Enabled:=False;
  b3.Enabled:=False;
end;

procedure TForm10.b1Click(Sender: TObject);
var a : Integer;
begin
  if (e1.Text='') or (e1.Text='00:00') or (e2.Text='00:00') then
  begin
    ShowMessage('Data Belum Diisi Dengan Benar');
  end else
  if(c1.text='') or (c1.text='--Pilih Hari--')then
  begin
    ShowMessage('Hari Belum Diisi Dengan Benar');
  end else
  if (e3.text='') or (e3.text='-') or (e4.text='') or (e4.text='-') then
  begin
    ShowMessage('Inputan Ruangan atau Matakuliah Masih Belum Benar');
  end else
  if (e5.text='') or (e5.text='-') or (e6.text='') or (e6.text='-') then
  begin
    ShowMessage('Imputan Kelas Atau Total Hadir mAsih Belum Sesuai');
  end else
  if (Form9.qry1.Locate('hari',c1.Text,[])) and (Form9.qry1.Locate('jam_mulai',e1.Text,[])) then
  begin
    ShowMessage('Data Sudah Ada Di Dalam Sistem');
    e1.SetFocus;
  end else
  begin
    a:=Form9.qry1.RecordCount+1;
    with Form9.qry1 do
    begin
      SQL.Clear;
      SQL.Add('insert into jadwal_table values("'+inttostr(a)+'","'+e1.Text+'","'+e2.Text+'","'+c1.Text+'","'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'","'+e3.Text+'","'+e4.Text+'","'+e5.Text+'","'+e6.Text+'")');
      ExecSQL;
      ShowMessage('Data Berhasil Disimpan');
    end;
  end;
end;


procedure TForm10.dg1CellClick(Column: TColumn);
begin
  try
    upd:=form9.qry1.Fields[0].AsString;
    e1.Text:=Form9.qry1.Fields[1].AsString;
    e2.Text:=form9.qry1.Fields[2].AsString;
    c1.Text:=form9.qry1.Fields[3].AsString;
    dtp1.Date:=form9.qry1.Fields[4].AsDateTime;
    e3.Text:=form9.qry1.Fields[5].AsString;
    e4.Text:=form9.qry1.Fields[6].AsString;
    e5.Text:=form9.qry1.Fields[7].AsString;
    e6.Text:=form9.qry1.Fields[8].AsString;
    b2.Enabled:=True;
    b3.Enabled:=True;
    b1.Enabled:=False;
  except

  end;
end;

procedure TForm10.FormShow(Sender: TObject);
begin
  bersih;
end;

procedure TForm10.b2Click(Sender: TObject);
begin
if (e1.Text='') or (e1.Text='00:00') or (e2.Text='00:00') then
  begin
    ShowMessage('Data Belum Diisi Dengan Benar');
  end else
  if(c1.text='') or (c1.text='--Pilih Hari--')then
  begin
    ShowMessage('Hari Belum Diisi Dengan Benar');
  end else
  if (e3.text='') or (e3.text='-') or (e4.text='') or (e4.text='-') then
  begin
    ShowMessage('Inputan Ruangan atau Matakuliah Masih Belum Benar');
  end else
  if (e5.text='') or (e5.text='-') or (e6.text='') or (e6.text='-') then
  begin
    ShowMessage('Imputan Kelas Atau Total Hadir mAsih Belum Sesuai');
  end else
  if (e1.Text=form9.qry1.Fields[1].AsString) and (c1.Text=form9.qry1.Fields[3].AsString) then
  begin
    ShowMessage('Data Tidak Ada Perubahan');
  end else
  begin
    with Form9.qry1 do
    begin
      SQL.Clear;
      SQL.Add('update jadwal_table set jam_mulai="'+e1.Text+'",jam_akhir="'+e2.Text+'" where no="'+upd+'"');
      ExecSQL;
      ShowMessage('Data Berhasil Di Update');
    end;
  end;
end;

procedure TForm10.b3Click(Sender: TObject);
begin
  if (e1.Text='') or (e1.Text='00:00') or (e2.Text='00:00') then
  begin
    ShowMessage('Data Belum Diisi Dengan Benar');
  end else
  if(c1.text='') or (c1.text='--Pilih Hari--')then
  begin
    ShowMessage('Hari Belum Diisi Dengan Benar');
  end else
  if (e3.text='') or (e3.text='-') or (e4.text='') or (e4.text='-') then
  begin
    ShowMessage('Inputan Ruangan atau Matakuliah Masih Belum Benar');
  end else
  if (e5.text='') or (e5.text='-') or (e6.text='') or (e6.text='-') then
  begin
    ShowMessage('Imputan Kelas Atau Total Hadir mAsih Belum Sesuai');
  end else
  begin
    if MessageDlg('Apakah Anda Yakin Ingin Menghapus Data Ini?',mtWarning, [mbYes, mbNo],0)=mryes then
    begin
      with Form9.qry1 do
      begin
      SQL.Clear;
      SQL.Add('delete from jadwal_table where no="'+upd+'"');
      ExecSQL;
    end;
      bersih;
      ShowMessage('Data Berhasil Dihapus');
    end else
    begin
      ShowMessage('Data Batal Dihapus');
    end;
  end;
end;

procedure TForm10.b4Click(Sender: TObject);
begin
 bersih;
end;





end.
