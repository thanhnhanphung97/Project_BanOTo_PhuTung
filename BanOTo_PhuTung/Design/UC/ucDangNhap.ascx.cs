using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UC_ucDangNhap : System.Web.UI.UserControl
{
    xldl x = new xldl();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["txtDN"] == null) txttdn.Focus();
        else
        {
            txttdn.Text = Session["txtDN"].ToString();
            Session["txtDN"] = null;
            txtmk.Focus();
        }
    }

    protected void btndn_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt = x.GetData("SELECT * FROM dbo.ACCOUNT WHERE TDN = N'" + txttdn.Text + "' AND MK = N'"+ txtmk.Text +"'");
            if (dt.Rows.Count > 0)
            {
                Session["TDN"] = txttdn.Text;
                Response.Redirect("http://localhost:3215/Trangchu.aspx");
            }
            else
            {
                lbThongBao.Text = "Tên Đăng Nhập hoặc Mật Khẩu không hợp lệ! ";
            }
        }
        catch
        {
            lbThongBao.Text = "Thất bại! ";
        }
    }
    public object UnobtrusiveValidationMode { get; set; }
}