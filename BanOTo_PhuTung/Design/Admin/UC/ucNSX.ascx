<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucNSX.ascx.cs" Inherits="Admin_UC_ucThemNSX" %>



<div style="margin-top:10px; padding: 10px; border: 1px solid #000000; border-radius: 5px; width: 830px; height: 335px; margin-bottom: 26px; ">   
        <div style="border:1px solid; background: #f1f1f1; border-radius: 5px; color: #000000; padding: 5px 5px 5px 20px; text-align: center; width: 800px; margin-bottom: 10px;"><strong>DANH SÁCH NHÀ SẢN XUẤT</strong></div>
        <div style="padding: 10px;">
            <p>
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Italic="True" ForeColor="Black" NavigateUrl="~/ThemNSX.aspx">Thêm mới ...</asp:HyperLink>
           </p></div>
        <div style="padding: 7px; text-align:center;">
            <asp:GridView ID="gvthemnsx" runat="server" AutoGenerateColumns="False" DataKeyNames="idNSX" OnRowCancelingEdit="gvthemnsx_RowCancelingEdit" OnRowCommand="gvthemnsx_RowCommand" OnRowEditing="gvthemnsx_RowEditing" OnRowUpdating="gvthemnsx_RowUpdating">
                <Columns>
                    
                    <asp:BoundField DataField="idNSX" HeaderText="Mã NSX" />
                    <asp:BoundField DataField="TenNSX" HeaderText="Tên Nhà Sản Xuất" />
                    <asp:BoundField DataField="DiaChi" HeaderText="Địa Chỉ" />
                    <asp:BoundField DataField="SDT" HeaderText="Số Điện Thoại" />
                    <asp:ButtonField ButtonType="Image" CommandName="Xoa" HeaderImageUrl="~/Images/Delete.jpg" Text="Xoá" />
                    <asp:CommandField CancelText="Huỷ" EditText="Sửa" HeaderText="Sửa" UpdateText="Lưu" ShowEditButton="True" />
                    <asp:CommandField ButtonType="Image" CancelText="Huỷ" DeleteImageUrl="~/Images/Delete.jpg" DeleteText="Xoá" EditText="Xoá" HeaderText="Xoá" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        </div>
        <asp:Label ID="lbthongbaoloi" runat="server"></asp:Label>

</div>


