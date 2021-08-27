<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128543892/13.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E245)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/TestGridViewSite81/Default.aspx) (VB: [Default.aspx](./VB/TestGridViewSite81/Default.aspx))
* [Default.aspx.cs](./CS/TestGridViewSite81/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/TestGridViewSite81/Default.aspx.vb))
* [MasterPage.master.cs](./CS/TestGridViewSite81/MasterPage.master.cs) (VB: [MasterPage.master.vb](./VB/TestGridViewSite81/MasterPage.master.vb))
* [WebUserControl.ascx](./CS/TestGridViewSite81/WebUserControl.ascx) (VB: [WebUserControl.ascx](./VB/TestGridViewSite81/WebUserControl.ascx))
* [WebUserControl.ascx.cs](./CS/TestGridViewSite81/WebUserControl.ascx.cs) (VB: [WebUserControl.ascx.vb](./VB/TestGridViewSite81/WebUserControl.ascx.vb))
<!-- default file list end -->
# How to validate UserControl editors included in the EditFormTemplate Container
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e245/)**
<!-- run online end -->


<p>To enable data validation of UserControl Editors, use the following approach:</p><p>1)  set the ValidationSettings.ValidationGroup property of all editors in this UserControl to the same value;<br />
2)  use the ASPxClientEdit.ValidationGroup method to validate editor values when the Update button is clicked.</p>

<br/>


