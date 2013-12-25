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
    table_sotrYoB: TIntegerField;
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
  table_prod.MasterFields
  table_prod.IndexFieldNames:='date;sotr';
  TabbedNotebook1.PageIndex:=0;
  TabbedNotebook2.PageIndex:=3;
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
