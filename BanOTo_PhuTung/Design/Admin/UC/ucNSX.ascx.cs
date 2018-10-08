using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_UC_ucThemNSX : System.Web.UI.UserControl
{
    xldl x = new xldl();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["TDNAdmin"] == null)
        {
            Response.Redirect("http://localhost:3215/AdminDangnhap.aspx");
        }
        else
        {
            try
            {
                CapNhatNSX();
            }
            catch 
            {
                lbthongbaoloi.Text = "Thất bại !";
            }
        }


    }

    private void CapNhatNSX()
    {
        gvthemnsx.DataSource = x.GetData("SELECT idNSX,TenNSX,DiaChi,SDT FROM dbo.NHASANXUAT");
        gvthemnsx.DataBind();
    }
    protected void gvthemnsx_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Xoa")
        {
            try
            {
                int chiso = int.Parse(e.CommandArgument.ToString());
                int ma = int.Parse(gvthemnsx.Rows[chiso].Cells[0].Text);
                DataTable dt = x.GetData("SELECT idSP FROM dbo.SANPHAM WHERE idNSX = " + ma + "'");
                if (dt.Rows.Count > 0)
                {
                    lbthongbaoloi.Text = "Nhà sản xuất đã xuất sản phẩm nên không thể xoá .<br/> Bạn cần xoá hết tất cả sản phẩm của nhà sẩn xuất này trước! ";
                }
                else 
                {
                    string str = "DELETE FROM dbo.NHASANXUAT WHERE idNSX = " + ma;
                    x.Execute(str);
                    Response.Redirect("~/NhaSanXuat.aspx");
                }
            }
            catch
            {
                lbthongbaoloi.Text = "Thất bại!";
            }
        }
    }
    protected void gvthemnsx_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvthemnsx.EditIndex = e.NewEditIndex;
        CapNhatNSX();
    }
    protected void gvthemnsx_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int idNSX = int.Parse(gvthemnsx.DataKeys[e.RowIndex].Value.ToString());
        string TenNSX = (gvthemnsx.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox).Text;
        string DiaChi = (gvthemnsx.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text;
        string SDT = (gvthemnsx.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox).Text;

        if (TenNSX == "")
        {
            Response.Write("<script>alert('Tên không được rỗng!')</script>");

        }
        else
        {
            x.Execute(@"UPDATE dbo.NHASANXUAT SET TenNSX = N'" + TenNSX + "',DiaChi = N'" + DiaChi + "',SDT = N'" + SDT + "' WHERE idNSX = '" + idNSX + "'");
            gvthemnsx.EditIndex = -1;
            CapNhatNSX();
        }

    }
    protected void gvthemnsx_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gvthemnsx.EditIndex = -1;
        CapNhatNSX();
    }
}