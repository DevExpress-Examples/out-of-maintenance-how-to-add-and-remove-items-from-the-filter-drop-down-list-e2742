<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Default.aspx.cs"
	Inherits="ASPxPivotGrid_AddRemoveFilterItems._Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v10.2, Version=10.2.3.0,
Culture=neutral, PublicKeyToken=b88d1754d700e49a"
Namespace="DevExpress.Web.ASPxPivotGrid"
TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title>Untitled Page</title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" DataSourceID="AccessDataSource1" 
		OnCustomFilterPopupItems="ASPxPivotGrid1_CustomFilterPopupItems">
			<Fields>
				<dx:PivotGridField ID="fieldProductName" Area="RowArea" AreaIndex="1"
				Caption="Product Name" FieldName="ProductName">
				</dx:PivotGridField>
				<dx:PivotGridField ID="fieldShippedYear" Area="ColumnArea" AreaIndex="0" Caption="Year"
					FieldName="ShippedDate" GroupIndex="0" GroupInterval="DateYear" InnerGroupIndex="0">
				</dx:PivotGridField>
				<dx:PivotGridField ID="fieldProductSales" Area="DataArea" AreaIndex="0" Caption="Sales"
					FieldName="ProductSales">
				</dx:PivotGridField>
				<dx:PivotGridField ID="fieldCategoryName" Area="RowArea" AreaIndex="0"
				Caption="Category Name" FieldName="CategoryName">
				</dx:PivotGridField>
				<dx:PivotGridField ID="fieldShippedMonth" Area="ColumnArea" AreaIndex="2" Caption="Month"
					FieldName="ShippedDate" GroupIndex="0" InnerGroupIndex="2" GroupInterval="DateMonth">
				</dx:PivotGridField>
				<dx:PivotGridField ID="fieldShippedQuarter" Area="ColumnArea" AreaIndex="1"
				Caption="Quarter" FieldName="ShippedDate" GroupIndex="0"
				GroupInterval="DateQuarter" InnerGroupIndex="1"
				ValueFormat-FormatString="Quarter {0}"
				ValueFormat-FormatType="Custom">
				</dx:PivotGridField>
			</Fields>
			<Groups>
				<dx:PivotGridWebGroup />
			</Groups>
		</dx:ASPxPivotGrid>
		<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/nwind.mdb"
			SelectCommand="SELECT [CategoryName], [ProductName], [ProductSales],
			[ShippedDate] FROM [ProductReports]">
		</asp:AccessDataSource>

	</div>
	</form>
</body>
</html>