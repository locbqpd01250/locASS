<%@ Page Language="VB" AutoEventWireup="false" CodeFile="loaisanpham.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Maloaisp" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Maloaisp" HeaderText="Maloaisp" ReadOnly="True" SortExpression="Maloaisp" />
                <asp:BoundField DataField="Tenloaisp" HeaderText="Tenloaisp" SortExpression="Tenloaisp" />
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
        <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="Maloaisp" DataSourceID="SqlDataSource1" ForeColor="#333333">
            <EditItemTemplate>
                Maloaisp:
                <asp:Label ID="MaloaispLabel1" runat="server" Text='<%# Eval("Maloaisp") %>' />
                <br />
                Tenloaisp:
                <asp:TextBox ID="TenloaispTextBox" runat="server" Text='<%# Bind("Tenloaisp") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                Maloaisp:
                <asp:TextBox ID="MaloaispTextBox" runat="server" Text='<%# Bind("Maloaisp") %>' />
                <br />
                Tenloaisp:
                <asp:TextBox ID="TenloaispTextBox" runat="server" Text='<%# Bind("Tenloaisp") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Maloaisp:
                <asp:Label ID="MaloaispLabel" runat="server" Text='<%# Eval("Maloaisp") %>' />
                <br />
                Tenloaisp:
                <asp:Label ID="TenloaispLabel" runat="server" Text='<%# Bind("Tenloaisp") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Locbqpd01250_ASSConnectionString5 %>" DeleteCommand="DELETE FROM [LoaiSảnPhẩm] WHERE [Maloaisp] = @Maloaisp" InsertCommand="INSERT INTO [LoaiSảnPhẩm] ([Maloaisp], [Tenloaisp]) VALUES (@Maloaisp, @Tenloaisp)" SelectCommand="SELECT * FROM [LoaiSảnPhẩm]" UpdateCommand="UPDATE [LoaiSảnPhẩm] SET [Tenloaisp] = @Tenloaisp WHERE [Maloaisp] = @Maloaisp">
            <DeleteParameters>
                <asp:Parameter Name="Maloaisp" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Maloaisp" Type="String" />
                <asp:Parameter Name="Tenloaisp" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Tenloaisp" Type="String" />
                <asp:Parameter Name="Maloaisp" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
