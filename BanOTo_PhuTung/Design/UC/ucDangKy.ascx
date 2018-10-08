<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucDangKy.ascx.cs" Inherits="UC_ucDangKy" %>
<div style="margin-left: 200px;">
    <div style="border:1px solid; background: #f20; border-radius: 5px; color: #f1f1f1; padding: 5px 5px 5px 20px; text-align: center; width: 500px;"><strong>ĐĂNG KÝ</strong></div>

    <div style="border: 1px solid #000000; border-radius: 5px; padding: 20px; height: 400px; width: 500px;">
            <tr>
                <td class="dk-tht" style="font-size: 18px; margin-bottom: 15px;">&nbsp;<td class="dk-nhap" style="font-size: 18px; width: 173px; margin-bottom: 15px; "></td></tr><br />
                <table class="dk01">
                    <tr>
                        <td class="dk-tht" style="font-size: 18px; margin-bottom: 15px;">Họ Tên :</td>
                        <td class="dk-txt" style="font-size: 18px; margin-bottom: 15px;">
                            <asp:TextBox ID="txthoten" runat="server" CssClass="text" Width="190px"></asp:TextBox>
                        </td>
                        <td class="auto-style7">
                            <asp:RequiredFieldValidator ID="requiredhoten" runat="server" ControlToValidate="txthoten" ErrorMessage="Nhập họ tên" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="dk-tht" style="font-size: 18px; margin-bottom: 15px;">Số Điện Thoại :</td>
                        <td class="dk-txt" style="font-size: 18px; margin-bottom: 15px;">
                            <asp:TextBox ID="txtsdt" runat="server" CssClass="text" TextMode="Phone" Width="190px"></asp:TextBox>
                        </td>
                        <td class="auto-style7">
                            <asp:RequiredFieldValidator ID="requiredsdt" runat="server" ControlToValidate="txtsdt" ErrorMessage="Nhập số điện thoại" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regularsdt" runat="server" ErrorMessage="Cần nhập số " ForeColor="Red" ValidationExpression="^(0[0-9]{9,10})$" ControlToValidate="txtsdt" SetFocusOnError="True">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="dk-tht" style="font-size: 18px; margin-bottom: 15px;">Địa Chỉ :</td>
                        <td class="dk-txt" style="font-size: 18px; margin-bottom: 15px;">
                            <asp:TextBox ID="txtdiachi" runat="server" CssClass="text" Height="60px" TextMode="MultiLine" Width="190px"></asp:TextBox>
                        </td>
                        <td class="auto-style7" >
                            <asp:RequiredFieldValidator ID="requireddiachi" runat="server" ControlToValidate="txtdiachi" ErrorMessage="Nhập địa chỉ" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="dk-tht" style="font-size: 18px; margin-bottom: 15px;">Tên Đăng Nhập :</td>
                        <td class="dk-txt" style="font-size: 18px; margin-bottom: 15px;">
                    <asp:TextBox ID="txttdndk" runat="server" CssClass="text" Width="190px"></asp:TextBox>
                        </td>
                        <td class="auto-style7">
                            <asp:RequiredFieldValidator ID="requiredtdndk" runat="server" ControlToValidate="txttdndk" ErrorMessage="Nhập tên đăng nhập" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regulartdn" runat="server" ForeColor="Red" ControlToValidate="txttdndk" ErrorMessage="Tên đăng nhập cần ít nhất 2 kí tự" SetFocusOnError="True" ValidationExpression="^[a-zA-z]{1}[a-zA-Z0-9]{2,19}$">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="dk-tht" style="font-size: 18px; margin-bottom: 15px;">Mật Khẩu :</td>
                        <td class="dk-txt" style="font-size: 18px; margin-bottom: 15px;">
                   <asp:TextBox ID="txtmkdk" runat="server" CssClass="text" TextMode="Password" Width="190px"></asp:TextBox>
                        </td>
                        <td class="auto-style7">
                            <asp:RequiredFieldValidator ID="requiredmkdk" runat="server" ControlToValidate="txtmkdk" ErrorMessage="Nhập mật khẩu" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="dk-tht" style="font-size: 18px; margin-bottom: 15px;">Nhập Lại Mật Khẩu :</td>
                        <td class="dk-txt" style="font-size: 18px; margin-bottom: 15px;">
                            <asp:TextBox ID="txtnlmkdk" runat="server" CssClass="text" TextMode="Password" Width="190px"></asp:TextBox>
                        </td>
                        <td class="auto-style7">
                            <asp:RequiredFieldValidator ID="requiredrmk" runat="server" ControlToValidate="txtnlmkdk" ErrorMessage="Nhập lại mật khẩu" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cmparermk" runat="server" ControlToCompare="txtmkdk" ControlToValidate="txtnlmkdk" ErrorMessage="Cần nhập lại mật khẩu đúng với mật khẩu đã nhập" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
                        </td>
                    </tr>
                </table>
                <asp:Label ID="lbDKThanhCong" runat="server" ForeColor="Red"></asp:Label>
                <asp:Button ID="btndk" runat="server" Text="Đăng Ký" CssClass="btn-click-dk" Font-Bold="true" Font-Size="16px" OnClick="btndk_Click" />
                <asp:ValidationSummary ID="validation" runat="server" Enabled="False" ForeColor="Red" ShowMessageBox="True" />
            </div>

</div>