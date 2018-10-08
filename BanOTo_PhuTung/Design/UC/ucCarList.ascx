<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucCarList.ascx.cs" Inherits="UC_ucCarList" %>
<style type="text/css">
    
    
</style>

<table class="form-carlist">
    <tr>
        <td class="td" style="height:50px;">
            <strong style="float:left; margin-left: 30px; font-size:18px; color: #121372;">HONDA</strong>
            <div style="float:right; margin-right: 5px; font-size:18px; "><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/XeTheoNSX.aspx?idNSX=1">Xem tất cả</asp:HyperLink></div>
        </td>
    </tr>
    <tr>
        <td class="id">
            <asp:DataList ID="dtlhonda" runat="server" RepeatColumns="4" BorderStyle="None">
                <ItemTemplate>
                    <table class="design01">
                        <tr>
                            <td class="td-img-list">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Images/" + Eval("HinhMinhHoa") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="td02">
                                <b><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl='<%# "../ThongTinXe.aspx?idSP="+Eval("idSP") %>' Text='<%# Eval("TenSP") %>'></asp:HyperLink></b>
                            </td>
                        </tr>
                        <tr>
                            <td class="td03"> Giá :
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("DonGia") + "đ" %>' Font-Bold="True"></asp:Label>
                                &nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </td>
    </tr>
</table>

<table class="form-carlist">
    <tr >
        <td class="td" style="height:50px;">
            <strong style="float:left; margin-left: 30px; font-size:18px; color: #121372;">TOYOTA</strong>
            <div style="float:right; margin-right: 5px; font-size:18px; "><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/XeTheoNSX.aspx?idNSX=2">Xem tất cả</asp:HyperLink></div>
        </td>
    </tr>
    <tr>
        <td class="id">
            <asp:DataList ID="dtltoyota" runat="server" RepeatColumns="4" BorderStyle="None">
                <ItemTemplate>
                    <table class="design01">
                        <tr>
                            <td class="td-img-list">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Images/" + Eval("HinhMinhHoa") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="td02">
                                <b><asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl='<%# "../ThongTinXe.aspx?idSP="+Eval("idSP") %>' Text='<%# Eval("TenSP") %>'></asp:HyperLink></b>
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

<table class="form-carlist">
    <tr>
        <td class="td" style="height:50px;">
            <strong style="float:left; margin-left: 30px; font-size:18px; color: #121372;">BMW</strong>
            <div style="float:right; margin-right: 5px; font-size:18px; "><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/XeTheoNSX.aspx?idNSX=3">Xem tất cả</asp:HyperLink></div>
        </td>
    </tr>
    <tr>
        <td class="id">
            <asp:DataList ID="dtlbmw" runat="server" RepeatColumns="4" BorderStyle="None">
                <ItemTemplate>
                    <table class="design01">
                        <tr>
                            <td class="td-img-list">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Images/" + Eval("HinhMinhHoa") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="td02">
                                <b><asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl='<%# "../ThongTinXe.aspx?idSP="+Eval("idSP") %>' Text='<%# Eval("TenSP") %>'></asp:HyperLink></b>
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

<table class="form-carlist">
    <tr>
        <td class="td" style="height:50px;">
            <strong style="float:left; margin-left: 30px; font-size:18px; color: #121372;">HYUNDAI </strong>&nbsp;<div style="float:right; margin-right: 5px; font-size:18px; "><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/XeTheoNSX.aspx?idNSX=4">Xem tất cả</asp:HyperLink></div>
        </td>
    </tr>
    <tr>
        <td class="id">
            <asp:DataList ID="dtlhyundai" runat="server" RepeatColumns="4" BorderStyle="None">
                <ItemTemplate>
                    <table class="design01">
                        <tr>
                            <td class="td-img-list">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Images/" + Eval("HinhMinhHoa") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="td02">
                                <b><asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl='<%# "../ThongTinXe.aspx?idSP="+Eval("idSP") %>' Text='<%# Eval("TenSP") %>'></asp:HyperLink></b>
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

<table class="form-carlist">
    <tr>
        <td class="td" style="height:50px;">
            <strong style="float:left; margin-left: 30px; font-size:18px; color: #121372;">MITSUBISHI</strong>
            <div style="float:right; margin-right: 5px; font-size:18px; "><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/XeTheoNSX.aspx?idNSX=5">Xem tất cả</asp:HyperLink></div>
        </td>
    </tr>
    <tr>
        <td class="id">
            <asp:DataList ID="dtlmitsu" runat="server" RepeatColumns="4" BorderStyle="None">
                <ItemTemplate>
                    <table class="design01">
                        <tr>
                            <td class="td-img-list">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Images/" + Eval("HinhMinhHoa") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="td02">
                                <b><asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl='<%# "../ThongTinXe.aspx?idSP="+Eval("idSP") %>' Text='<%# Eval("TenSP") %>'></asp:HyperLink></b>
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

