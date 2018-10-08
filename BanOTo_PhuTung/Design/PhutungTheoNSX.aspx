<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PhutungTheoNSX.aspx.cs" Inherits="PhutungTheoNSX" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="form-carlist-01">
        <tr style="height:50px;">
            <td class="td">
                <asp:GridView ID="gvhangphutung" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="Red" BorderStyle="None" BorderWidth="0px" CellPadding="2" ShowHeader="False">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                Phụ tùng Ô Tô
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("TenNSX") %>' ></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <HeaderStyle BackColor="Red" Font-Bold="True" ForeColor="White" BorderWidth="0"/>
                    <RowStyle BackColor="Red" ForeColor="White" Font-Bold="true" Font-Size="16pt" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="id">
                <asp:DataList ID="dtlphutung" runat="server" RepeatColumns="4" BorderStyle="None">
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
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "../Giohang.aspx?idSP="+Eval("idSP") %>'><img src="Images/Chonmua.png" /></asp:HyperLink>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <br />
                <asp:Label ID="lbThongBao" runat="server" Text="Label" Font-Bold="True" Font-Italic="True" ></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

