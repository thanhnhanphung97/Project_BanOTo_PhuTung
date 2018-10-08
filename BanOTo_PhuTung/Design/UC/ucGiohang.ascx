<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucGiohang.ascx.cs" Inherits="UC_ucGiohang" %>

<style type="text/css">
    .auto-style1 {
    text-align:center;
    border: 1px solid #fff;
    margin: 2px;
    width: 100px;
    height: 35px;
    font:bold;
}

</style>

<table style="border: 1px solid; width: 770px; height: 200px; border-radius: 10px; margin-left: 70px;">
    <tr style="border: 1px solid #000000; background: #f20; font-size: 17px; text-align:center; padding: 5px; border-radius: 5px; color: #f1f1f1;">
        <td colspan="4"><b>THÔNG TIN VỀ GIỎ HÀNG CỦA BẠN</b></td>
    </tr>
    <tr>
        <td colspan="4">
            <div style="padding: 10px; text-align: center; font-size: 20px;">
            <asp:GridView ID="gvgiohang" runat="server" AutoGenerateColumns="False" DataKeyNames="idSP" OnRowCommand="gvgiohang_RowCommand" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="736px" Font-Bold="False" Font-Size="13pt" ForeColor="Black" PageSize="16">
                
                <Columns>
                    <asp:BoundField DataField="idSP" HeaderText="Mã Phụ Tùng" >
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TenSP" HeaderText="Tên Phụ Tùng" />
                    <asp:BoundField DataField="DonGia" HeaderText="Đơn Giá" />
                    <asp:TemplateField HeaderText="Số Lượng">
                        <ItemTemplate>
                            <asp:TextBox ID="txtSoLuong" runat="server" Text='<%# Eval("SoLuong") %>' style="text-align:center;"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                        <asp:BoundField DataField="ThanhTien" HeaderText="Thành Tiền" />
                        <asp:ButtonField ButtonType="Image" CommandName="Xoa" Text="Xoá" HeaderText="Xoá" ImageUrl="~/Images/Delete.jpg" />
                    </Columns>
                    <EditRowStyle HorizontalAlign="Center" />
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
            </div>
        </td>
    </tr>
    <div class="clear"></div>
    <div class="clear"></div>
    <tr>
        <td class="auto-style1">
            &nbsp;</td>
        <td class="auto-style1">
            &nbsp;</td>
        <td style="text-align:center; font-weight: bold;" >Tổng cộng : </td>
        <td class="auto-style1" style="text-align:left; font-weight: bold;" >
            <asp:Label ID="lbTongThanhTien" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Button ID="btnttmua" runat="server" OnClick="btnttmua_Click" Text="Tiếp Tục Mua" />
        </td>
        <td class="auto-style1">
            <asp:Button ID="btnxoagh" runat="server" OnClick="btnxoagh_Click" Text="Xoá Giỏ Hàng" />
        </td>
        <td class="auto-style1">
            <asp:Button ID="btncapnhat" runat="server" OnClick="btncapnhat_Click" Text="Cập Nhật" />
        </td>
        <td class="auto-style1">
            <asp:Button ID="btndathang" runat="server" OnClick="btndathang_Click" Text="Đặt Hàng" />
        </td>
    </tr>
    <tr>
        <td class="auto-style1" colspan="4">
            <asp:Label ID="lbThongBao" runat="server"></asp:Label>
        </td>
    </tr>
</table>

