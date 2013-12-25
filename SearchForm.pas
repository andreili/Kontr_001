unit SearchForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ExtCtrls, Grids, DBGrids, StrUtils;

type
  TFormSearch = class(TForm)
    Panel1: TPanel;
    cb_table: TComboBox;
    Panel2: TPanel;
    Label2: TLabel;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    cb_field: TComboBox;
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure cb_tableChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cb_fieldChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    table_name: string;
    field_name: string;
  public
    { Public declarations }
  end;

var
  FormSearch: TFormSearch;

implementation

{$R *.dfm}

uses
  MainForm;

procedure TFormSearch.Button1Click(Sender: TObject);
begin
  // ищем по началу теста, без учета регистра
  if (not DataSource1.DataSet.Locate(field_name, Edit1.Text,
    [loCaseInsensitive, loPartialKey])) then
  begin
    MessageBox(Handle, 'Не найдено!', 'Ошибка', MB_ICONERROR);
  end;
end;

procedure TFormSearch.Button2Click(Sender: TObject);
var
  res: Variant;
begin
  // ищем полный тест, с учетом регистра
  res:=DataSource1.DataSet.Lookup(field_name, Edit1.Text,
    field_name);
  if VarIsNull(res) then
  begin
    MessageBox(Handle, 'Не найдено!', 'Ошибка', MB_ICONERROR);
  end
    else
  begin
    MessageBox(Handle, pChar(vartostr(res)), 'Результат', MB_ICONINFORMATION);
  end;
end;

procedure TFormSearch.Button3Click(Sender: TObject);
begin
  DataSource1.DataSet.Filtered:=false;
  DataSource1.DataSet.Filter:=field_name+' LIKE '+quotedstr(Edit1.Text);
  DataSource1.DataSet.Filtered:=true;
end;

procedure TFormSearch.cb_fieldChange(Sender: TObject);
begin
  DataSource1.DataSet.Filtered:=false;
  field_name:=cb_field.Text;
end;

procedure TFormSearch.cb_tableChange(Sender: TObject);
var
  i: integer;
begin
  DataSource1.DataSet.Filtered:=false;
  case (cb_table.ItemIndex) of
    0: table_name:='dolzhn';
    1: table_name:='Personal';
    2: table_name:='Zakazchik';
    3: table_name:='prod';
  end;
  ADOTable1.Active:=false;
  ADOTable1.TableName:=table_name;
  ADOTable1.Active:=true;

  for i:=0 to DBGrid1.Columns.Count-1 do
    DBGrid1.Columns.Items[i].Width:=100;

  cb_field.Items.Clear();
  for i:=0 to DataSource1.DataSet.FieldCount-1 do
    cb_field.Items.Add(DataSource1.DataSet.Fields[i].FieldName);
  cb_field.ItemIndex:=1;
  cb_fieldChange(sender);
end;

procedure TFormSearch.FormCreate(Sender: TObject);
begin
  ADOTable1.Connection:=Form1.ADOConnection1;
  cb_tableChange(sender);
  cb_fieldChange(sender);
end;

end.
