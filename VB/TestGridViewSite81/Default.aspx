<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default"  MasterPageFile="~/MasterPage.master"%>

<%@ Register Src="WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.3.0, Culture=neutral, PublicKeyToken=B88D1754D700E49A"
	Namespace="DevExpress.Web" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.3.0, Culture=neutral, PublicKeyToken=B88D1754D700E49A"
	Namespace="DevExpress.Web" TagPrefix="dxe" %>


<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="CC" runat="Server">
<script language="javascript" type="text/javascript">

function DoUpdate() {
	grid.UpdateEdit();
}

function DoCancel() {
	grid.CancelEdit();
}

</script>

	&nbsp;&nbsp;<br />
	<br />
	<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
		SelectCommand="SELECT * FROM [Categories]">
	</asp:AccessDataSource>
	<br />
	Clear an editor value and press the Update button to see how the validation works<br />
	&nbsp; &nbsp;<br />
	<dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False"
		DataSourceID="AccessDataSource1" KeyFieldName="CategoryID" Width="627px" ClientInstanceName="grid">
		<Columns>
            <dxwgv:GridViewCommandColumn VisibleIndex="0" ShowEditButton="True"/>
			<dxwgv:GridViewDataTextColumn FieldName="CategoryID" ReadOnly="True" VisibleIndex="1">
				<EditFormSettings Visible="False" />
			</dxwgv:GridViewDataTextColumn>
			<dxwgv:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="2">
				<Settings AutoFilterCondition="Contains" />
			</dxwgv:GridViewDataTextColumn>
			<dxwgv:GridViewDataTextColumn FieldName="Description" VisibleIndex="3">
			</dxwgv:GridViewDataTextColumn>
		</Columns>
		<Templates>
			<EditForm>
				<uc1:WebUserControl ID="WebUserControl1" runat="server" />            
			</EditForm>
		</Templates>
	</dxwgv:ASPxGridView>
</asp:Content>
