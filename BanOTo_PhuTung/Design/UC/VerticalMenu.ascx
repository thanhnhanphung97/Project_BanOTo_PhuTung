<%@ Control Language="C#" AutoEventWireup="true" CodeFile="VerticalMenu.ascx.cs" Inherits="UC_VerticalMenu" %>
<link href="../Css/VerticalMenu.css" type="text/css" rel="stylesheet" />
<asp:GridView ID="gvxetheonsx" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="round">
    <Columns>
        <asp:TemplateField HeaderText="HÃNG XE" >
            <ItemTemplate>
                <table class="menu-doc">
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%# "../XeTheoNSX.aspx?idNSX="+Eval("idNSX") %>' Text='<%# Eval("TenNSX") %>' Font-Bold="True"></asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
    <HeaderStyle BackColor="Red" Font-Bold="True" ForeColor="#FFFFCC" Font-Size="Large"/>
    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
    <RowStyle BackColor="White" ForeColor="#330099" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    <SortedAscendingCellStyle BackColor="#FEFCEB" />
    <SortedAscendingHeaderStyle BackColor="#AF0101" />
    <SortedDescendingCellStyle BackColor="#F6F0C0" />
    <SortedDescendingHeaderStyle BackColor="#7E0000" />
</asp:GridView>
<!--<div class="clear"></div>-->
<asp:GridView ID="gvphutung" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="round" Font-Bold="True" >
    <Columns>

        <asp:TemplateField HeaderText="HÃNG PHỤ TÙNG">
            <ItemTemplate>
                <table class="menu-doc">
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# "../PhutungTheoNSX.aspx?idNSX="+Eval("idNSX") %>' Text='<%# Eval("TenNSX") %>' Font-Bold="True" ></asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <FooterStyle BackColor="#FFFFCC" ForeColor="#000000" />
    <HeaderStyle BackColor="Red" Font-Bold="True" ForeColor="#FFFFCC" Font-Size="Large"/>
    <PagerStyle BackColor="#FFFFCC" ForeColor="#000000" HorizontalAlign="Center" />
    <RowStyle BackColor="White" ForeColor="#000000" />
    <SelectedRowStyle BackColor="#000000" Font-Bold="True" ForeColor="#000000" />
    <SortedAscendingCellStyle BackColor="#FEFCEB" />
    <SortedAscendingHeaderStyle BackColor="#AF0101" />
    <SortedDescendingCellStyle BackColor="#F6F0C0" />
    <SortedDescendingHeaderStyle BackColor="#7E0000" />
</asp:GridView>

<div class="sup-online">
    <div class="danhmuc-1"><strong>HỖ TRỢ TRỰC TUYẾN</strong></div>
    <br />
    <img src="../Images/sup-on-1.jpg" alt="" class="img-sup"/> <b>Mr. Nhân</b> </br> <div class="clear"></div>
    <img src="../Images/sup-on-2.png" alt="" class="img-sup"/> <b>0122233338</b> </br> <div class="clear"></div>
    <img src="../Images/sup-on-3.png" alt="" class="img-sup"/> <b>cskh@webcarsales.com</b><div class="clear"></div>
    <br />
</div>

<asp:GridView ID="gvnewcar" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="round">
    <Columns>
        <asp:TemplateField HeaderText="XE MỚI VỀ">
            <ItemTemplate>
                <table style="border: 1px solid #000000;">
                    <tr>
                        <td rowspan="2" class="img-xe">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Images/" + Eval("HinhMinhHoa") %>' />
                        </td>
                        <td class="change01">
                            <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True" Font-Size="10pt" NavigateUrl='<%# "../ThongTinXe.aspx?idSP="+Eval("idSP") %>' Text='<%# Eval("TenSP") %>'></asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td class="change01" style="text-align: center">
                            &nbsp;Giá :
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("DonGia") + "đ" %>' Font-Bold="True" Font-Size="10pt"></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
    <HeaderStyle BackColor="Red" Font-Bold="True" ForeColor="#FFFFCC" />
    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
    <RowStyle BackColor="White" ForeColor="#330099" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    <SortedAscendingCellStyle BackColor="#FEFCEB" />
    <SortedAscendingHeaderStyle BackColor="#AF0101" />
    <SortedDescendingCellStyle BackColor="#F6F0C0" />
    <SortedDescendingHeaderStyle BackColor="#7E0000" />
</asp:GridView>


<div class="sup-online">
    <div class="danhmuc-1"><b>THỐNG KÊ TRUY CẬP</b></div><br />
    <b> Tổng truy cập : <asp:Label ID="lblLuotTruyCap" runat="server" Text="Label"></asp:Label> </b> 
    <p></p>
    <b> Đang online : <asp:Label ID="lblOnline" runat="server" Text="Label"></asp:Label> </b> 
    <p></p>
</div>



