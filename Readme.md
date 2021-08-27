<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128577157/13.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E2742)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/ASPxPivotGrid_AddRemoveFilterItems/Default.aspx) (VB: [Default.aspx](./VB/ASPxPivotGrid_AddRemoveFilterItems/Default.aspx))
* [Default.aspx.cs](./CS/ASPxPivotGrid_AddRemoveFilterItems/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/ASPxPivotGrid_AddRemoveFilterItems/Default.aspx.vb))
<!-- default file list end -->
# How to add and remove items from the filter drop-down list
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e2742/)**
<!-- run online end -->


<p>The following example shows how to add and remove items from the filter dropdown list.</p>
<p>In this example, the 'Beverages' item is hidden from the filter dropdown list of the Category field, and a dummy item is created and added to the list. To do this, the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxPivotGridASPxPivotGrid_CustomFilterPopupItemstopic">CustomFilterPopupItems</a> event is handled. In the event handler, the 'Beverages' item is removed from the event parameter's Items collection, and a new item ('Dummy Item') is added to the collection.</p>

<br/>


