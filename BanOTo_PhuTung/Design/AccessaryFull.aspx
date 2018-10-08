<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AccessaryFull.aspx.cs" Inherits="AccessaryFull" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="form-carlist-01">
        <tr>
            <td style="background: #f20; border-radius: 5px; "><strong style="float:left; margin-left: 30px; font-size:18px; color: #f1f1f1; margin-top: 10px; margin-bottom: 10px;">PHỤ TÙNG Ô TÔ</strong> </td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="dtlphutungfull" runat="server" RepeatColumns="4" BorderStyle="None" CssClass="changefont">
                    <ItemTemplate>
                        <table class="design01">
                            <tr>
                                <td class="td-img-list">
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Images/" + Eval("HinhMinhHoa") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="td02">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSP") %>' Font-Bold="True"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="td03">Giá :
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("DonGia") + "đ" %>' Font-Bold="True"></asp:Label>
                                &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="td04">
                                    <asp:HyperLink ID="HyperLink1"  runat="server" NavigateUrl='<%# "../Giohang.aspx?idSP="+Eval("idSP") %>'><img src="Images/Chonmua.png" /></asp:HyperLink>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>

