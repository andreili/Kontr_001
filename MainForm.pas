unit MainForm;
//22

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ComCtrls, TabNotBk, ExtCtrls, DBCtrls, Grids, DBGrids,
  StdCtrls, SearchForm;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    TabbedNotebook1: TTabbedNotebook;
    TabbedNotebook2: TTabbedNotebook;
    table_dolzhn: TADOTable;
    ds_dolzhn: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    ds_sotr: TDataSource;
    ds_zak: TDataSource;
    ds_prod: TDataSource;
    table_sotr: TADOTable;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    table_zak: TADOTable;
    table_prod: TADOTable;
    table_sotrID: TAutoIncField;
    table_sotrFIO: TWideStringField;
    table_sotrAdres: TWideStringField;
    table_sotrTel: TWideStringField;
    table_prodno: TAutoIncField;
    table_proddate: TDateTimeField;
    table_prodsotr: TIntegerField;
    table_prodzakazch: TIntegerField;
    table_prodkol: TIntegerField;
    table_prodstoim: TFloatField;
    cb_dolzhn: TDBLookupComboBox;
    table_sotrdolzhn: TIntegerField;
    cb_zak: TDBLookupComboBox;
    cb_sotr: TDBLookupComboBox;
    table_prodsumma: TFloatField;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    DBGrid5: TDBGrid;
    GroupBox1: TGroupBox;
    CB_SotrByDogNO: TDBComboBox;
    Label1: TLabel;
    Btn_SotrByDogNO: TButton;
    Btn_SotrByFirmName: TButton;
    CB_SotrByFirmName: TDBComboBox;
    Label2: TLabel;
    Label3: TLabel;
    CB_ProdByFirmName: TDBComboBox;
    Btn_ProdByFirmName: TButton;
    DS_q: TDataSource;
    q_q: TADOQuery;
    Btn_ListByDog: TButton;
    table_sotrYoB: TDateTimeField;
    Btn_ListByDate: TButton;
    Btn_CountSotr: TButton;
    Btn_ListFirm: TButton;
    Btn_CalcBySotr: TButton;
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure table_prodCalcFields(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid3TitleClick(Column: TColumn);
    procedure DBGrid4TitleClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure Btn_SotrByDogNOClick(Sender: TObject);
    procedure Btn_SotrByFirmNameClick(Sender: TObject);
    procedure Btn_ProdByFirmNameClick(Sender: TObject);
    procedure Btn_ListByDogClick(Sender: TObject);
    procedure Btn_ListByDateClick(Sender: TObject);
    procedure Btn_CountSotrClick(Sender: TObject);
    procedure Btn_ListFirmClick(Sender: TObject);
    procedure Btn_CalcBySotrClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  dir: boolean = true;

implementation

{$R *.dfm}

procedure TForm1.Btn_ProdByFirmNameClick(Sender: TObject);
var
  i: integer;
begin
  q_q.Active:=false;
  q_q.SQL.Text:='SELECT prod.date AS `Дата договора`, prod.kol AS `Количество`, prod.stoim AS `Стоимость за единицу` '+
    'FROM Zakazchik INNER JOIN prod ON Zakazchik.ID = prod.zakazch '+
    'WHERE (Zakazchik.firm_name="' + CB_ProdByFirmName.Text + '")';
  q_q.Active:=true;
  TabbedNotebook1.PageIndex:=2;
  for i:=0 to DBGrid5.Columns.Count-1 do
    DBGrid5.Columns.Items[i].Width:=150;
end;

procedure TForm1.Btn_SotrByDogNOClick(Sender: TObject);
var
  i: integer;
begin
  q_q.Active:=false;
  q_q.SQL.Text:='SELECT Personal.FIO AS `ФИО`, Personal.Adres AS `Адрес`, Personal.Tel AS `Телефон`, '+
    'Personal.YoB AS `Год рождения`, dolzhn.name AS `Должность` '+
    'FROM dolzhn INNER JOIN (Personal INNER JOIN prod ON Personal.ID = prod.sotr) ON dolzhn.id = Personal.dolzhn '+
    'WHERE (prod.[no]=' + CB_SotrByDogNO.Text + ')';
  q_q.Active:=true;
  TabbedNotebook1.PageIndex:=2;
  for i:=0 to DBGrid5.Columns.Count-1 do
    DBGrid5.Columns.Items[i].Width:=100;
end;

procedure TForm1.Btn_SotrByFirmNameClick(Sender: TObject);
var
  i: integer;
begin
  q_q.Active:=false;
  q_q.SQL.Text:='SELECT Personal.FIO AS `ФИО`, Personal.Adres AS `Адрес`, Personal.Tel AS `Телефон`, '+
    'dolzhn.name AS `Должность` FROM Zakazchik INNER JOIN ((dolzhn INNER JOIN Personal ON '+
    'dolzhn.id = Personal.dolzhn) INNER JOIN prod ON Personal.ID = prod.sotr) ON Zakazchik.ID = prod.zakazch '+
    'WHERE (Zakazchik.firm_name="' + CB_SotrByFirmName.Text + '")';
  q_q.Active:=true;
  TabbedNotebook1.PageIndex:=2;
  for i:=0 to DBGrid5.Columns.Count-1 do
    DBGrid5.Columns.Items[i].Width:=100;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  // Поиск  и  фильтрация данных
  FormSearch:=TFormSearch.Create(self);
  if (FormSearch.ShowModal=mrOK) then
  begin

  end;
  FormSearch.Free;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  // создание   основного  индекса  во   время   работы  программы ,
  //  желательно ,  чтобы   индекс   состоял  из двух  или  более полей
  //  ( Номер  чека  в моем примере ).
  //Table_prod.MasterFields
  table_prod.IndexFieldNames:='date;sotr';
  TabbedNotebook1.PageIndex:=0;
  TabbedNotebook2.PageIndex:=3;
end;

procedure TForm1.Btn_ListByDogClick(Sender: TObject);
var
  i: integer;
begin
  q_q.Active:=false;
  q_q.SQL.Text:='SELECT Personal.FIO AS ФИО, Zakazchik.firm_name AS [Название фирмы] '+
    'FROM Personal INNER JOIN (Zakazchik INNER JOIN prod ON Zakazchik.ID = prod.zakazch) ON Personal.ID = prod.sotr '+
    'GROUP BY Personal.FIO, Zakazchik.firm_name;';
  q_q.Active:=true;
  TabbedNotebook1.PageIndex:=2;
  for i:=0 to DBGrid5.Columns.Count-1 do
    DBGrid5.Columns.Items[i].Width:=100;
end;

procedure TForm1.Btn_ListFirmClick(Sender: TObject);
var
  i: integer;
begin
  q_q.Active:=false;
  q_q.SQL.Text:='SELECT Zakazchik.firm_name AS `Название`, Zakazchik.adres AS `Адрес`, '+
    'Zakazchik.tel AS `Телефон`, Zakazchik.rekv AS `Реквизиты` '+
    'FROM Zakazchik INNER JOIN prod ON Zakazchik.ID = prod.zakazch '+
    'WHERE ((Year([date])=2011) AND (Month([date])=10));';
  q_q.Active:=true;
  TabbedNotebook1.PageIndex:=2;
  for i:=0 to DBGrid5.Columns.Count-1 do
    DBGrid5.Columns.Items[i].Width:=100;
end;

procedure TForm1.Btn_CalcBySotrClick(Sender: TObject);
var
  i: integer;
begin
  q_q.Active:=false;
  q_q.SQL.Text:='SELECT Personal.FIO AS ФИО, Personal.Adres AS Адрес, '+
    'Personal.Tel AS Телефон, dolzhn.name AS Должность, '+
    'Sum([prod].[kol]*[prod].[stoim]) AS Сумма продаж '+
    'FROM (dolzhn INNER JOIN Personal ON dolzhn.id = Personal.dolzhn) '+
    'INNER JOIN prod ON Personal.ID = prod.sotr '+
    'WHERE (Year([date])=2011) '+
    'GROUP BY Personal.FIO, Personal.Adres, Personal.Tel, dolzhn.name;';
  q_q.Active:=true;
  TabbedNotebook1.PageIndex:=2;
  for i:=0 to DBGrid5.Columns.Count-1 do
    DBGrid5.Columns.Items[i].Width:=100;
end;

procedure TForm1.Btn_CountSotrClick(Sender: TObject);
var
  i: integer;
begin
  q_q.Active:=false;
  q_q.SQL.Text:='SELECT Count(Personal.ID) AS [Количество] '+
    'FROM Personal INNER JOIN prod ON Personal.ID = prod.sotr '+
    'HAVING (Year([prod.date])=Year(Now()));';
  q_q.Active:=true;
  TabbedNotebook1.PageIndex:=2;
  for i:=0 to DBGrid5.Columns.Count-1 do
    DBGrid5.Columns.Items[i].Width:=100;
end;

procedure TForm1.Btn_ListByDateClick(Sender: TObject);
var
  i: integer;
begin
  q_q.Active:=false;
  q_q.SQL.Text:='SELECT Personal.FIO AS `ФИО`, Personal.Adres AS `Адрес`, Personal.Tel AS `Телефон`, '+
    'Personal.YoB AS `Год рождения`, dolzhn.name AS `Должность` '+
    'FROM dolzhn INNER JOIN Personal ON dolzhn.id = Personal.dolzhn '+
    'WHERE (Personal.YoB Is Null)';
  q_q.Active:=true;
  TabbedNotebook1.PageIndex:=2;
  for i:=0 to DBGrid5.Columns.Count-1 do
    DBGrid5.Columns.Items[i].Width:=100;
end;

procedure TForm1.DBGrid1TitleClick(Column: TColumn);
begin
  if dir then
    table_dolzhn.Sort:=Column.FieldName+' ASC'
  else
    table_dolzhn.Sort:=Column.FieldName+' DESC';
  dir:=not dir;
end;

procedure TForm1.DBGrid2ColExit(Sender: TObject);
begin
  if TDBGrid(Sender).SelectedField.FieldName = 'dolzhn' then
    cb_dolzhn.Visible := false
  else if TDBGrid(Sender).SelectedField.FieldName = 'sotr' then
    cb_sotr.Visible := false
  else if TDBGrid(Sender).SelectedField.FieldName = 'zakazch' then
    cb_zak.Visible := false;
end;

procedure TForm1.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);

  procedure show_ed(ed: TDBLookupComboBox);
  begin
    ed.Left := Rect.Left + TDBGrid(Sender).Left + 2;
    ed.Top := Rect.Top + TDBGrid(Sender).top;
    ed.Width := Rect.Right - Rect.Left + 1;
    ed.Visible := True;
  end;
  procedure draw_text(ds: TDataSource; idx, no: integer);
  var
    txt: string;
  begin
    ds.DataSet.RecNo:=no;
    txt:=ds.DataSet.Fields.Fields[idx].AsString;
    with TDBGrid(Sender).Canvas do
      begin
        Brush.Color:=clWhite;
        FillRect(Rect);
        TextOut(Rect.Right-2-TextWidth(txt), Rect.Top+2, txt);
      end;
  end;
begin
  if (gdFocused in State)  then
  begin
    if (Column.Field.FieldName='dolzhn') then show_ed(cb_dolzhn)
    else if (Column.Field.FieldName='sotr') then show_ed(cb_sotr)
    else if (Column.Field.FieldName='zakazch') then show_ed(cb_zak)
  end
    else
  begin
    if (Column.Field.IsNull) then
      exit;
    if (Column.Field.FieldName='dolzhn') then
      draw_text(ds_dolzhn, 1, Column.Field.Value)
    else if (Column.Field.FieldName='sotr') then
      draw_text(ds_sotr, 1, Column.Field.Value)
    else if (Column.Field.FieldName='zakazch') then
      draw_text(ds_zak, 1, Column.Field.Value)
  end;
end;

procedure TForm1.DBGrid2TitleClick(Column: TColumn);
begin
  if dir then
    table_sotr.Sort:=Column.FieldName+' ASC'
  else
    table_sotr.Sort:=Column.FieldName+' DESC';
  dir:=not dir;
end;

procedure TForm1.DBGrid3TitleClick(Column: TColumn);
begin
  if dir then
    table_zak.Sort:=Column.FieldName+' ASC'
  else
    table_zak.Sort:=Column.FieldName+' DESC';
  dir:=not dir;
end;

procedure TForm1.DBGrid4TitleClick(Column: TColumn);
begin
  if (Column.FieldName = 'date') then
  begin
    // создание дополнительного ин-декса во время работы программы
    if dir then
      table_prod.IndexFieldNames:=Column.FieldName
    else
      table_prod.IndexFieldNames:=Column.FieldName;
  end
    else
  begin
    if dir then
      table_prod.Sort:=Column.FieldName+' ASC'
    else
      table_prod.Sort:=Column.FieldName+' DESC';
    dir:=not dir;
  end;
end;

procedure TForm1.table_prodCalcFields(DataSet: TDataSet);
begin
  // Вычисляемые поля
  // Подсчитать  стоимость электроэнергии  ( количество  * стоимость за  единицу )
  table_prod.FieldByName('summa').Value:=table_prod.FieldByName('kol').Value *
   table_prod.FieldByName('stoim').Value;
end;

end.
