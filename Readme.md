<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/ASPxPivotGrid_AddRemoveFilterItems/Default.aspx) (VB: [Default.aspx](./VB/ASPxPivotGrid_AddRemoveFilterItems/Default.aspx))
* [Default.aspx.cs](./CS/ASPxPivotGrid_AddRemoveFilterItems/Default.aspx.cs) (VB: [Default.aspx](./VB/ASPxPivotGrid_AddRemoveFilterItems/Default.aspx))
<!-- default file list end -->
# How to add and remove items from the filter drop-down list


<p>The following example shows how to add and remove items from the filter dropdown list.</p>
<p>In this example, the 'Beverages' item is hidden from the filter dropdown list of the Category field, and a dummy item is created and added to the list. To do this, the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxPivotGridASPxPivotGrid_CustomFilterPopupItemstopic">CustomFilterPopupItems</a> event is handled. In the event handler, the 'Beverages' item is removed from the event parameter's Items collection, and a new item ('Dummy Item') is added to the collection.</p>

<br/>


