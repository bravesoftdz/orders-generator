unit Proxy.Orders;

interface

// Generated by Proxy Generator for FireDAC at 2019-02-01 15:51
uses
  Data.DB,
  Data.DataProxy,
  System.SysUtils;

type
  TOrdersProxy = class(TDatasetProxy)
  private
    FORDERID: TIntegerField;
    FCUSTOMERID: TStringField;
    FEMPLOYEEID: TIntegerField;
    FORDERDATE: TDateField;
    FREQUIREDDATE: TDateField;
    FSHIPPEDDATE: TDateField;
    FSHIPVIA: TIntegerField;
    FFREIGHT: TBCDField;
  protected
    procedure ConnectFields; override;
  public
    property OrderID: TIntegerField read FORDERID;
    property CustomerID: TStringField read FCUSTOMERID;
    property EmployeeID: TIntegerField read FEMPLOYEEID;
    property OrderDate: TDateField read FORDERDATE;
    property RequiredDate: TDateField read FREQUIREDDATE;
    property ShippedDate: TDateField read FSHIPPEDDATE;
    property ShipVia: TIntegerField read FSHIPVIA;
    property Freight: TBCDField read FFREIGHT;
    // this property should be hidden, but during migration can be usefull
    // property DataSet: TDataSet read FDataSet;
  end;

implementation

procedure TOrdersProxy.ConnectFields;
begin
  FORDERID := FDataSet.FieldByName('ORDERID') as TIntegerField;
  FCUSTOMERID := FDataSet.FieldByName('CUSTOMERID') as TStringField;
  FEMPLOYEEID := FDataSet.FieldByName('EMPLOYEEID') as TIntegerField;
  FORDERDATE := FDataSet.FieldByName('ORDERDATE') as TDateField;
  FREQUIREDDATE := FDataSet.FieldByName('REQUIREDDATE') as TDateField;
  FSHIPPEDDATE := FDataSet.FieldByName('SHIPPEDDATE') as TDateField;
  FSHIPVIA := FDataSet.FieldByName('SHIPVIA') as TIntegerField;
  FFREIGHT := FDataSet.FieldByName('FREIGHT') as TBCDField;
end;

end.
