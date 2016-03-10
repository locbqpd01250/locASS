<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Khachhang.aspx.vb" Inherits="Khachhang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaKH" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" style="text-align: center" Width="875px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MaKH" HeaderText="MaKH" ReadOnly="True" SortExpression="MaKH" />
                <asp:BoundField DataField="TênKH" HeaderText="TênKH" SortExpression="TênKH" />
                <asp:BoundField DataField="SốDT" HeaderText="SốDT" SortExpression="SốDT" />
                <asp:BoundField DataField="Điachi" HeaderText="Điachi" SortExpression="Điachi" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:FormView ID="FormView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="MaKH" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Both">
            <EditItemTemplate>
                MaKH:
                <asp:Label ID="MaKHLabel1" runat="server" Text='<%# Eval("MaKH") %>' />
                <br />
                TênKH:
                <asp:TextBox ID="TênKHTextBox" runat="server" Text='<%# Bind("TênKH") %>' />
                <br />
                SốDT:
                <asp:TextBox ID="SốDTTextBox" runat="server" Text='<%# Bind("SốDT") %>' />
                <br />
                Điachi:
                <asp:TextBox ID="ĐiachiTextBox" runat="server" Text='<%# Bind("Điachi") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                MaKH:
                <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
                <br />
                TênKH:
                <asp:TextBox ID="TênKHTextBox" runat="server" Text='<%# Bind("TênKH") %>' />
                <br />
                SốDT:
                <asp:TextBox ID="SốDTTextBox" runat="server" Text='<%# Bind("SốDT") %>' />
                <br />
                Điachi:
                <asp:TextBox ID="ĐiachiTextBox" runat="server" Text='<%# Bind("Điachi") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                MaKH:
                <asp:Label ID="MaKHLabel" runat="server" Text='<%# Eval("MaKH") %>' />
                <br />
                TênKH:
                <asp:Label ID="TênKHLabel" runat="server" Text='<%# Bind("TênKH") %>' />
                <br />
                SốDT:
                <asp:Label ID="SốDTLabel" runat="server" Text='<%# Bind("SốDT") %>' />
                <br />
                Điachi:
                <asp:Label ID="ĐiachiLabel" runat="server" Text='<%# Bind("Điachi") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:Button ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Locbqpd01250_ASSConnectionString %>" DeleteCommand="DELETE FROM [Kháchhàng] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [Kháchhàng] ([MaKH], [TênKH], [SốDT], [Điachi]) VALUES (@MaKH, @TênKH, @SốDT, @Điachi)" SelectCommand="SELECT * FROM [Kháchhàng]" UpdateCommand="UPDATE [Kháchhàng] SET [TênKH] = @TênKH, [SốDT] = @SốDT, [Điachi] = @Điachi WHERE [MaKH] = @MaKH">
            <DeleteParameters>
                <asp:Parameter Name="MaKH" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaKH" Type="String" />
                <asp:Parameter Name="TênKH" Type="String" />
                <asp:Parameter Name="SốDT" Type="String" />
                <asp:Parameter Name="Điachi" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TênKH" Type="String" />
                <asp:Parameter Name="SốDT" Type="String" />
                <asp:Parameter Name="Điachi" Type="String" />
                <asp:Parameter Name="MaKH" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
