Imports Microsoft.VisualBasic
Imports System
Imports System.Web.UI
Imports DevExpress.Web.ASPxPivotGrid
Imports DevExpress.XtraPivotGrid.Data

Namespace ASPxPivotGrid_AddRemoveFilterItems
	Partial Public Class _Default
		Inherits Page
		Private ReadOnly dummyItem As Object = "Dummy"
		Protected Sub ASPxPivotGrid1_CustomFilterPopupItems(ByVal sender As Object, _
				ByVal e As PivotCustomFilterPopupItemsEventArgs)
			If Object.ReferenceEquals(e.Field, fieldCategoryName) Then
				For i As Integer = e.Items.Count - 1 To 0 Step -1
					If Object.Equals(e.Items(i).Value, "Beverages") Then
						e.Items.RemoveAt(i)
						Exit For
					End If
				Next i
				e.Items.Insert(0, New PivotGridFilterItem(dummyItem, _
										"Dummy Item", _
										e.Field.FilterValues.Contains(dummyItem)))
			End If	
		End Sub
	End Class
End Namespace
