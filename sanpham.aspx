<%@ Page Language="VB" AutoEventWireup="false" CodeFile="sanpham.aspx.vb" Inherits="sanpham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-bottom: 0px">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Masp" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" style="text-align: center" Width="922px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Masp" HeaderText="Masp" ReadOnly="True" SortExpression="Masp" />
                <asp:BoundField DataField="Maloaisp" HeaderText="Maloaisp" SortExpression="Maloaisp" />
                <asp:BoundField DataField="Tensp" HeaderText="Tensp" SortExpression="Tensp" />
                <asp:BoundField DataField="Soluong" HeaderText="Soluong" SortExpression="Soluong" />
                <asp:BoundField DataField="Mota" HeaderText="Mota" SortExpression="Mota" />
                <asp:BoundField DataField="LoaiSảnPhẩm_Maloaisp" HeaderText="LoaiSảnPhẩm_Maloaisp" SortExpression="LoaiSảnPhẩm_Maloaisp" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Masp" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                Masp:
                <asp:Label ID="MaspLabel1" runat="server" Text='<%# Eval("Masp") %>' />
                <br />
                Maloaisp:
                <asp:TextBox ID="MaloaispTextBox" runat="server" Text='<%# Bind("Maloaisp") %>' />
                <br />
                Tensp:
                <asp:TextBox ID="TenspTextBox" runat="server" Text='<%# Bind("Tensp") %>' />
                <br />
                Soluong:
                <asp:TextBox ID="SoluongTextBox" runat="server" Text='<%# Bind("Soluong") %>' />
                <br />
                Mota:
                <asp:TextBox ID="MotaTextBox" runat="server" Text='<%# Bind("Mota") %>' />
                <br />
                LoaiSảnPhẩm_Maloaisp:
                <asp:TextBox ID="LoaiSảnPhẩm_MaloaispTextBox" runat="server" Text='<%# Bind("LoaiSảnPhẩm_Maloaisp") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Masp:
                <asp:TextBox ID="MaspTextBox" runat="server" Text='<%# Bind("Masp") %>' />
                <br />
                Maloaisp:
                <asp:TextBox ID="MaloaispTextBox" runat="server" Text='<%# Bind("Maloaisp") %>' />
                <br />
                Tensp:
                <asp:TextBox ID="TenspTextBox" runat="server" Text='<%# Bind("Tensp") %>' />
                <br />
                Soluong:
                <asp:TextBox ID="SoluongTextBox" runat="server" Text='<%# Bind("Soluong") %>' />
                <br />
                Mota:
                <asp:TextBox ID="MotaTextBox" runat="server" Text='<%# Bind("Mota") %>' />
                <br />
                LoaiSảnPhẩm_Maloaisp:
                <asp:TextBox ID="LoaiSảnPhẩm_MaloaispTextBox" runat="server" Text='<%# Bind("LoaiSảnPhẩm_Maloaisp") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Masp:
                <asp:Label ID="MaspLabel" runat="server" Text='<%# Eval("Masp") %>' />
                <br />
                Maloaisp:
                <asp:Label ID="MaloaispLabel" runat="server" Text='<%# Bind("Maloaisp") %>' />
                <br />
                Tensp:
                <asp:Label ID="TenspLabel" runat="server" Text='<%# Bind("Tensp") %>' />
                <br />
                Soluong:
                <asp:Label ID="SoluongLabel" runat="server" Text='<%# Bind("Soluong") %>' />
                <br />
                Mota:
                <asp:Label ID="MotaLabel" runat="server" Text='<%# Bind("Mota") %>' />
                <br />
                LoaiSảnPhẩm_Maloaisp:
                <asp:Label ID="LoaiSảnPhẩm_MaloaispLabel" runat="server" Text='<%# Bind("LoaiSảnPhẩm_Maloaisp") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Locbqpd01250_ASSConnectionString3 %>" DeleteCommand="DELETE FROM [SảnPhẩm] WHERE [Masp] = @Masp" InsertCommand="INSERT INTO [SảnPhẩm] ([Masp], [Maloaisp], [Tensp], [Soluong], [Mota], [LoaiSảnPhẩm_Maloaisp]) VALUES (@Masp, @Maloaisp, @Tensp, @Soluong, @Mota, @LoaiSảnPhẩm_Maloaisp)" SelectCommand="SELECT * FROM [SảnPhẩm]" UpdateCommand="UPDATE [SảnPhẩm] SET [Maloaisp] = @Maloaisp, [Tensp] = @Tensp, [Soluong] = @Soluong, [Mota] = @Mota, [LoaiSảnPhẩm_Maloaisp] = @LoaiSảnPhẩm_Maloaisp WHERE [Masp] = @Masp">
            <DeleteParameters>
                <asp:Parameter Name="Masp" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Masp" Type="String" />
                <asp:Parameter Name="Maloaisp" Type="String" />
                <asp:Parameter Name="Tensp" Type="String" />
                <asp:Parameter Name="Soluong" Type="String" />
                <asp:Parameter Name="Mota" Type="String" />
                <asp:Parameter Name="LoaiSảnPhẩm_Maloaisp" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Maloaisp" Type="String" />
                <asp:Parameter Name="Tensp" Type="String" />
                <asp:Parameter Name="Soluong" Type="String" />
                <asp:Parameter Name="Mota" Type="String" />
                <asp:Parameter Name="LoaiSảnPhẩm_Maloaisp" Type="String" />
                <asp:Parameter Name="Masp" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
