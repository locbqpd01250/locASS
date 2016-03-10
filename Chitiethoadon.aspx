<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Chitiethoadon.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Masp,MaHD" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Masp" HeaderText="Masp" ReadOnly="True" SortExpression="Masp" />
                <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD" />
                <asp:BoundField DataField="soluongmua" HeaderText="soluongmua" SortExpression="soluongmua" />
                <asp:BoundField DataField="Donggiaban" HeaderText="Donggiaban" SortExpression="Donggiaban" />
                <asp:BoundField DataField="SảnPhẩm_Masp" HeaderText="SảnPhẩm_Masp" SortExpression="SảnPhẩm_Masp" />
                <asp:BoundField DataField="Hoadon_MaHD" HeaderText="Hoadon_MaHD" SortExpression="Hoadon_MaHD" />
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
        <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="Masp,MaHD" DataSourceID="SqlDataSource1" ForeColor="#333333">
            <EditItemTemplate>
                Masp:
                <asp:Label ID="MaspLabel1" runat="server" Text='<%# Eval("Masp") %>' />
                <br />
                MaHD:
                <asp:Label ID="MaHDLabel1" runat="server" Text='<%# Eval("MaHD") %>' />
                <br />
                soluongmua:
                <asp:TextBox ID="soluongmuaTextBox" runat="server" Text='<%# Bind("soluongmua") %>' />
                <br />
                Donggiaban:
                <asp:TextBox ID="DonggiabanTextBox" runat="server" Text='<%# Bind("Donggiaban") %>' />
                <br />
                SảnPhẩm_Masp:
                <asp:TextBox ID="SảnPhẩm_MaspTextBox" runat="server" Text='<%# Bind("SảnPhẩm_Masp") %>' />
                <br />
                Hoadon_MaHD:
                <asp:TextBox ID="Hoadon_MaHDTextBox" runat="server" Text='<%# Bind("Hoadon_MaHD") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                Masp:
                <asp:TextBox ID="MaspTextBox" runat="server" Text='<%# Bind("Masp") %>' />
                <br />
                MaHD:
                <asp:TextBox ID="MaHDTextBox" runat="server" Text='<%# Bind("MaHD") %>' />
                <br />
                soluongmua:
                <asp:TextBox ID="soluongmuaTextBox" runat="server" Text='<%# Bind("soluongmua") %>' />
                <br />
                Donggiaban:
                <asp:TextBox ID="DonggiabanTextBox" runat="server" Text='<%# Bind("Donggiaban") %>' />
                <br />
                SảnPhẩm_Masp:
                <asp:TextBox ID="SảnPhẩm_MaspTextBox" runat="server" Text='<%# Bind("SảnPhẩm_Masp") %>' />
                <br />
                Hoadon_MaHD:
                <asp:TextBox ID="Hoadon_MaHDTextBox" runat="server" Text='<%# Bind("Hoadon_MaHD") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Masp:
                <asp:Label ID="MaspLabel" runat="server" Text='<%# Eval("Masp") %>' />
                <br />
                MaHD:
                <asp:Label ID="MaHDLabel" runat="server" Text='<%# Eval("MaHD") %>' />
                <br />
                soluongmua:
                <asp:Label ID="soluongmuaLabel" runat="server" Text='<%# Bind("soluongmua") %>' />
                <br />
                Donggiaban:
                <asp:Label ID="DonggiabanLabel" runat="server" Text='<%# Bind("Donggiaban") %>' />
                <br />
                SảnPhẩm_Masp:
                <asp:Label ID="SảnPhẩm_MaspLabel" runat="server" Text='<%# Bind("SảnPhẩm_Masp") %>' />
                <br />
                Hoadon_MaHD:
                <asp:Label ID="Hoadon_MaHDLabel" runat="server" Text='<%# Bind("Hoadon_MaHD") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Locbqpd01250_ASSConnectionString4 %>" DeleteCommand="DELETE FROM [ChitietHóaĐơn] WHERE [Masp] = @Masp AND [MaHD] = @MaHD" InsertCommand="INSERT INTO [ChitietHóaĐơn] ([Masp], [MaHD], [soluongmua], [Donggiaban], [SảnPhẩm_Masp], [Hoadon_MaHD]) VALUES (@Masp, @MaHD, @soluongmua, @Donggiaban, @SảnPhẩm_Masp, @Hoadon_MaHD)" SelectCommand="SELECT * FROM [ChitietHóaĐơn]" UpdateCommand="UPDATE [ChitietHóaĐơn] SET [soluongmua] = @soluongmua, [Donggiaban] = @Donggiaban, [SảnPhẩm_Masp] = @SảnPhẩm_Masp, [Hoadon_MaHD] = @Hoadon_MaHD WHERE [Masp] = @Masp AND [MaHD] = @MaHD">
            <DeleteParameters>
                <asp:Parameter Name="Masp" Type="String" />
                <asp:Parameter Name="MaHD" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Masp" Type="String" />
                <asp:Parameter Name="MaHD" Type="String" />
                <asp:Parameter Name="soluongmua" Type="String" />
                <asp:Parameter Name="Donggiaban" Type="Decimal" />
                <asp:Parameter Name="SảnPhẩm_Masp" Type="String" />
                <asp:Parameter Name="Hoadon_MaHD" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="soluongmua" Type="String" />
                <asp:Parameter Name="Donggiaban" Type="Decimal" />
                <asp:Parameter Name="SảnPhẩm_Masp" Type="String" />
                <asp:Parameter Name="Hoadon_MaHD" Type="String" />
                <asp:Parameter Name="Masp" Type="String" />
                <asp:Parameter Name="MaHD" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
