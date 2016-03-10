<%@ Page Language="VB" AutoEventWireup="false" CodeFile="hoadon.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaHD" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD" />
                <asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH" />
                <asp:BoundField DataField="NgayLap" HeaderText="NgayLap" SortExpression="NgayLap" />
                <asp:BoundField DataField="Kháchhàng_MaKH" HeaderText="Kháchhàng_MaKH" SortExpression="Kháchhàng_MaKH" />
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
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaHD" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                MaHD:
                <asp:Label ID="MaHDLabel1" runat="server" Text='<%# Eval("MaHD") %>' />
                <br />
                MaKH:
                <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
                <br />
                NgayLap:
                <asp:TextBox ID="NgayLapTextBox" runat="server" Text='<%# Bind("NgayLap") %>' />
                <br />
                Kháchhàng_MaKH:
                <asp:TextBox ID="Kháchhàng_MaKHTextBox" runat="server" Text='<%# Bind("Kháchhàng_MaKH") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                MaHD:
                <asp:TextBox ID="MaHDTextBox" runat="server" Text='<%# Bind("MaHD") %>' />
                <br />
                MaKH:
                <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
                <br />
                NgayLap:
                <asp:TextBox ID="NgayLapTextBox" runat="server" Text='<%# Bind("NgayLap") %>' />
                <br />
                Kháchhàng_MaKH:
                <asp:TextBox ID="Kháchhàng_MaKHTextBox" runat="server" Text='<%# Bind("Kháchhàng_MaKH") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                MaHD:
                <asp:Label ID="MaHDLabel" runat="server" Text='<%# Eval("MaHD") %>' />
                <br />
                MaKH:
                <asp:Label ID="MaKHLabel" runat="server" Text='<%# Bind("MaKH") %>' />
                <br />
                NgayLap:
                <asp:Label ID="NgayLapLabel" runat="server" Text='<%# Bind("NgayLap") %>' />
                <br />
                Kháchhàng_MaKH:
                <asp:Label ID="Kháchhàng_MaKHLabel" runat="server" Text='<%# Bind("Kháchhàng_MaKH") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Locbqpd01250_ASSConnectionString2 %>" DeleteCommand="DELETE FROM [Hoadon] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [Hoadon] ([MaHD], [MaKH], [NgayLap], [Kháchhàng_MaKH]) VALUES (@MaHD, @MaKH, @NgayLap, @Kháchhàng_MaKH)" SelectCommand="SELECT * FROM [Hoadon]" UpdateCommand="UPDATE [Hoadon] SET [MaKH] = @MaKH, [NgayLap] = @NgayLap, [Kháchhàng_MaKH] = @Kháchhàng_MaKH WHERE [MaHD] = @MaHD">
            <DeleteParameters>
                <asp:Parameter Name="MaHD" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaHD" Type="String" />
                <asp:Parameter Name="MaKH" Type="String" />
                <asp:Parameter Name="NgayLap" Type="DateTime" />
                <asp:Parameter Name="Kháchhàng_MaKH" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MaKH" Type="String" />
                <asp:Parameter Name="NgayLap" Type="DateTime" />
                <asp:Parameter Name="Kháchhàng_MaKH" Type="String" />
                <asp:Parameter Name="MaHD" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
