<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Default.aspx.vb"
	Inherits="ASPxPivotGrid_AddRemoveFilterItems._Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v21.2, Version=21.2.14.0,
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
		<dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" DataSourceID="SqlDataSource1" 
		OnCustomFilterPopupItems="ASPxPivotGrid1_CustomFilterPopupItems" ClientIDMode="AutoID" IsMaterialDesign="False">
			<Fields>
				<dx:PivotGridField ID="fieldProductName" Area="RowArea" AreaIndex="1"
				Caption="Product Name">
				    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="ProductName" />
                    </DataBindingSerializable>
				</dx:PivotGridField>
				<dx:PivotGridField ID="fieldShippedYear" Area="ColumnArea" AreaIndex="0" Caption="Year" GroupIndex="0" InnerGroupIndex="0" UnboundFieldName="fieldShippedYear">
				    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="ShippedDate" GroupInterval="DateYear" />
                    </DataBindingSerializable>
				</dx:PivotGridField>
				<dx:PivotGridField ID="fieldProductSales" Area="DataArea" AreaIndex="0" Caption="Sales">
				    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="ProductSales" />
                    </DataBindingSerializable>
				</dx:PivotGridField>
				<dx:PivotGridField ID="fieldCategoryName" Area="RowArea" AreaIndex="0"
				Caption="Category Name">
				    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="CategoryName" />
                    </DataBindingSerializable>
				</dx:PivotGridField>
				<dx:PivotGridField ID="fieldShippedMonth" Area="ColumnArea" AreaIndex="2" Caption="Month" GroupIndex="0" InnerGroupIndex="2" UnboundFieldName="fieldShippedMonth">
				    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="ShippedDate" GroupInterval="DateMonth" />
                    </DataBindingSerializable>
				</dx:PivotGridField>
				<dx:PivotGridField ID="fieldShippedQuarter" Area="ColumnArea" AreaIndex="1"
				Caption="Quarter" GroupIndex="0" InnerGroupIndex="1"
				ValueFormat-FormatString="Quarter {0}"
				ValueFormat-FormatType="Custom" UnboundFieldName="fieldShippedQuarter">
<ValueFormat FormatString="Quarter {0}" FormatType="Custom"></ValueFormat>
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="ShippedDate" GroupInterval="DateQuarter" />
                    </DataBindingSerializable>
				</dx:PivotGridField>
			</Fields>
			<OptionsData DataProcessingEngine="Optimized" />
			<Groups>
				<dx:PivotGridWebGroup />
			</Groups>
		</dx:ASPxPivotGrid>
		    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT [CategoryName], [ProductName], [ProductSales],
			[ShippedDate] FROM [ProductReports]"></asp:SqlDataSource>

	</div>
	</form>
</body>
</html>