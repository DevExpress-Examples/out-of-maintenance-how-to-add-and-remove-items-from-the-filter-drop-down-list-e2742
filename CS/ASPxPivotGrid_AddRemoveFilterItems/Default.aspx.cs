using System;
using System.Web.UI;
using DevExpress.Web.ASPxPivotGrid;
using DevExpress.XtraPivotGrid.Data;

namespace ASPxPivotGrid_AddRemoveFilterItems {
    public partial class _Default : Page {
        readonly object dummyItem = "Dummy";
        protected void ASPxPivotGrid1_CustomFilterPopupItems(object sender, 
                                    PivotCustomFilterPopupItemsEventArgs e) {
            if (object.ReferenceEquals(e.Field, fieldCategoryName)) {
                for (int i = e.Items.Count - 1; i >= 0; i--) {
                    if (object.Equals(e.Items[i].Value, "Beverages")) {
                        e.Items.RemoveAt(i);
                        break;
                    }
                }
                e.Items.Insert(0, new PivotGridFilterItem(dummyItem,
                                                          "Dummy Item",
                                                          e.Field.FilterValues.Contains(dummyItem)));
            }
        }
    }
}
