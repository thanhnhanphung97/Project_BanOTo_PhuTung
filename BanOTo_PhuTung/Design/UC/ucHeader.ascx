<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucHeader.ascx.cs" Inherits="UC_ucHeader" %>


<div id="imgheader"></div>
    <div id="dangnhap">
        <div class="right">
        <img src="../Images/dangnhap.jpg" title="Đăng Nhập" />
        <asp:LinkButton ID="lbtDangNhap" runat="server" OnClick="lbtDangNhap_Click">Đăng Nhập</asp:LinkButton>
        <asp:Label ID="lbtdn" runat="server" Text="Đăng Nhập"></asp:Label> | 
        <asp:LinkButton ID="lbtDangKy" runat="server" OnClick="lbtDangKy_Click"><a href="../Dangky.aspx">Đăng Ký</a></asp:LinkButton>
        <asp:LinkButton ID="lbtDangXuat" runat="server" OnClick="lbtDangXuat_Click">Đăng Xuất</asp:LinkButton>
        <asp:LinkButton ID="lbtGiohang" runat="server" OnClick="lbtGioHang_Click">
        <a href="../Giohang.aspx"><img src="../Images/Giohang.gif" title="Giỏ Hàng"/>Giỏ hàng(<asp:Label ID="lbTongSL" runat="server" Text="0"></asp:Label>)</a> </asp:LinkButton>
        </div>
    </div>
<div class="clear"></div>

   	