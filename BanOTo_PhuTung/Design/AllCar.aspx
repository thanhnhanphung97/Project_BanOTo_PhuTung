<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AllCar.aspx.cs" Inherits="AllCar" %>

<%@ Register src="UC/ucSlider.ascx" tagname="ucSlider" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-left: 70px;"><uc1:ucSlider ID="ucSlider1" runat="server" /></div>

    <br />

<table class="form-carlist-01">
    <tr>
        <td style="background: #f20; border-radius: 5px; ">
            <strong style="float:left; margin-left: 30px; font-size:18px; color: #f1f1f1; margin-top: 10px; margin-bottom: 10px;">Ô TÔ</strong>
        </td>
    </tr>
    <tr>
        <td>
            <asp:DataList ID="dtlxefull" runat="server" RepeatColumns="4" BorderStyle="None" CssClass="changefont">
                <ItemTemplate>
                    <table class="design01">
                        <tr>
                            <td class="td-img-list">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Images/" + Eval("HinhMinhHoa") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="td02">
                                <b><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "../ThongTinXe.aspx?idSP="+Eval("idSP") %>' Text='<%# Eval("TenSP") %>'></asp:HyperLink></b>
                            </td>
                        </tr>
                        <tr>
                            <td class="td03">Giá :
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("DonGia") + "đ" %>' Font-Bold="True"></asp:Label>
                                &nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </td>
    </tr>
</table>
</asp:Content>

