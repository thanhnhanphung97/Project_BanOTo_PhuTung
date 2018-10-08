<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucTTXe.ascx.cs" Inherits="UC_ucTTXe" %>

<div class="dlhinh-img">
    <asp:DataList ID="dlhinh" runat="server">
        <ItemTemplate>
            <div class="sp-nsx"><b><asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label></b></div>
            <div class="left">
                <div class="img-img">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Images/" + Eval("HinhMinhHoa") %>' />
                </div>
            </div>
            <div class="right" style="margin-top: 20px; width: 250px;">
                <div style="font-size: 18px; padding: 5px; margin-top: 15px; margin-left: 10px;"><b> Hãng Xe :  <asp:Label ID="Label11" runat="server" Text='<%# Eval("TenNSX") %>'></asp:Label></b></div>
                <div style="font-size: 18px; padding: 5px; margin-left: 10px;"><b><asp:Label ID="Label12" runat="server" Text='<%# "Giá bán từ : " + Eval("DonGia") + "đ" %>'></asp:Label></b></div>
                <div style="border: 1px solid #f20; border-radius: 10px; width:220px; height: 100px; margin-left: 25px; text-align:center; background: #0ff; margin-top: 20px;">
                    <b style="font-size: 17px; color: #333;">LIÊN HỆ CHÚNG TÔI</b><div class="clear"></div>
                    <div class="left" style="text-align:left; margin-top: 10px; margin-left: 5px;"><img src="../Images/sup-on-2.png" style="width: 60px; "/></div>
                    <div class="left" style="margin-top: 10px;"><b style="color: #f20; font-size: 19px; margin-left: 28px;">09.456.668</b></div>
                    <div class="left" style="margin-top: 10px;"><b style="color: #f20; font-size: 19px; margin-left: 25px;">0122.258.888</b></div>
                </div>
            </div>
            
        </ItemTemplate>
    </asp:DataList>

    <div style="font-size: 22px; margin-left: 150px; padding: 30px; color: #000000;"><b>THÔNG SỐ KỸ THUẬT</b></div>


<div class="ds-tskt">
    <asp:DataList ID="dltskt" runat="server" RepeatColumns="1" CellPadding="0">
        <ItemTemplate>
            <table class="table-car">
                <tr>
                    <td class="danh-muc">Kiểu động cơ :</td>
                    <td class="noi-dung">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("kieudongco") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="danh-muc">Hộp số :</td>
                    <td class="noi-dung">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("hopso") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="danh-muc">Dung tích xi-lanh :</td>
                    <td class="noi-dung">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("dungtichxilanh") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="danh-muc">Công suất cực đại (Hp/rpm) :</td>
                    <td class="noi-dung">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("congsuat") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="danh-muc">Mô men xoắn cực đại (Nm/rpm) :</td>
                    <td class="noi-dung">
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("momenxoan") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="danh-muc">Tốc độ tối đa (km/h) :</td>
                    <td class="noi-dung">
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("tocdo") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="danh-muc">Thời gian tăng tốc từ 1 đến 100 km/h (giây): </td>
                    <td class="noi-dung">
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("thoigiantangtoc") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="danh-muc">Dung tích thùng nhiên liệu (lít) :</td>
                    <td class="noi-dung">
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("dungtichthungnhienlieu") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="danh-muc">Hệ thống nhiên liệu :</td>
                    <td class="noi-dung">
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("hethongnhienlieu") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</div>
</div>
