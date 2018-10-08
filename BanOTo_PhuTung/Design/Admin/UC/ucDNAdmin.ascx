<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucDNAdmin.ascx.cs" Inherits="Admin_UC_ucDNAdmin" %>


<div class="form-dn-dk" style="height: 360px; margin-top: 10px; margin-left:0px">
    <table class="dn01" >
        <div style="border:1px solid; background: #f20; border-radius: 5px; color: #f1f1f1; padding: 5px 5px 5px 20px;  text-align: center; width: 380px; margin-left: 180px;"><strong>ĐĂNG NHẬP</strong></div>
        <tr style="padding: 10px;">
            <td class="tenhienthi" style="font-size: 18px;">Tên Đăng Nhập :</td>
            <td class="nhap" style="font-size: 18px;">
                <asp:TextBox ID="txttdn" runat="server" CssClass="text"></asp:TextBox>
            </td>
        </tr>
        <tr style="padding: 10px;">
            <td class="tenhienthi" style="font-size: 18px;">Mật khẩu :</td>
            <td class="nhap" style="font-size: 18px;">
                <asp:TextBox ID="txtmk" runat="server" CssClass="text" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr style="font-size: 16px;">
            <td colspan="2" >
                <asp:Button ID="btndn" runat="server" Text="Đăng Nhập" CssClass="btn-click-dn" Font-Bold="true" Font-Size="14px" OnClick="btndn_Click"/>
                
            </td>
        </tr>
        <div class="clear"></div>
        <tr class="left" style="font-size: 16px;">
            <td >
                <asp:Label ID="lbThongBao" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <div class="clear"></div>
</div>
