<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default"  MasterPageFile="~/MasterPage.master"%>

<%@ Register Src="WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<%@ Register Assembly="DevExpress.Web.ASPxGridView.v8.1, Version=8.1.6.0, Culture=neutral, PublicKeyToken=79868b8147b5eae4"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.1, Version=8.1.6.0, Culture=neutral, PublicKeyToken=79868b8147b5eae4"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
    
    
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
            <dxwgv:GridViewCommandColumn VisibleIndex="0">
                <EditButton Visible="True"></EditButton>
            </dxwgv:GridViewCommandColumn>
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
