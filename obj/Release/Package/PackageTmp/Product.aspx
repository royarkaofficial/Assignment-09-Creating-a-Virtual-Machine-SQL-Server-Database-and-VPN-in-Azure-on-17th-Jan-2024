<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="WebAppProducts.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td><h2 class="text-center">Products</h2></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="gvProducts" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="PId" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="PId" HeaderText="PId" ReadOnly="True" SortExpression="PId" />
                        <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                        <asp:BoundField DataField="Pprice" HeaderText="Pprice" SortExpression="Pprice" />
                        <asp:BoundField DataField="PCategory" HeaderText="PCategory" SortExpression="PCategory" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ProductsDbConnectionString3 %>" DeleteCommand="DELETE FROM [Product] WHERE [PId] = @original_PId AND [Pname] = @original_Pname AND [Pprice] = @original_Pprice AND [PCategory] = @original_PCategory" InsertCommand="INSERT INTO [Product] ([PId], [Pname], [Pprice], [PCategory]) VALUES (@PId, @Pname, @Pprice, @PCategory)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ProductsDbConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [Pname] = @Pname, [Pprice] = @Pprice, [PCategory] = @PCategory WHERE [PId] = @original_PId AND [Pname] = @original_Pname AND [Pprice] = @original_Pprice AND [PCategory] = @original_PCategory">
                    <DeleteParameters>
                        <asp:Parameter Name="original_PId" Type="Int32" />
                        <asp:Parameter Name="original_Pname" Type="String" />
                        <asp:Parameter Name="original_Pprice" Type="Double" />
                        <asp:Parameter Name="original_PCategory" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="PId" Type="Int32" />
                        <asp:Parameter Name="Pname" Type="String" />
                        <asp:Parameter Name="Pprice" Type="Double" />
                        <asp:Parameter Name="PCategory" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Pname" Type="String" />
                        <asp:Parameter Name="Pprice" Type="Double" />
                        <asp:Parameter Name="PCategory" Type="String" />
                        <asp:Parameter Name="original_PId" Type="Int32" />
                        <asp:Parameter Name="original_Pname" Type="String" />
                        <asp:Parameter Name="original_Pprice" Type="Double" />
                        <asp:Parameter Name="original_PCategory" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
