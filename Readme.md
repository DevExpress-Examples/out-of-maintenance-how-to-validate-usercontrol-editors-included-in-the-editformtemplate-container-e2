<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/TestGridViewSite81/Default.aspx) (VB: [Default.aspx](./VB/TestGridViewSite81/Default.aspx))
* [Default.aspx.cs](./CS/TestGridViewSite81/Default.aspx.cs) (VB: [Default.aspx](./VB/TestGridViewSite81/Default.aspx))
* [MasterPage.master.cs](./CS/TestGridViewSite81/MasterPage.master.cs) (VB: [MasterPage.master.vb](./VB/TestGridViewSite81/MasterPage.master.vb))
* [WebUserControl.ascx](./CS/TestGridViewSite81/WebUserControl.ascx) (VB: [WebUserControl.ascx](./VB/TestGridViewSite81/WebUserControl.ascx))
* [WebUserControl.ascx.cs](./CS/TestGridViewSite81/WebUserControl.ascx.cs) (VB: [WebUserControl.ascx](./VB/TestGridViewSite81/WebUserControl.ascx))
<!-- default file list end -->
# How to validate UserControl editors included in the EditFormTemplate Container


<p>To enable data validation of UserControl Editors, use the following approach:</p><p>1)  set the ValidationSettings.ValidationGroup property of all editors in this UserControl to the same value;<br />
2)  use the ASPxClientEdit.ValidationGroup method to validate editor values when the Update button is clicked.</p>

<br/>


