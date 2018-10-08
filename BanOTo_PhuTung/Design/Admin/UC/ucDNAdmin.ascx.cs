using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_UC_ucDNAdmin : System.Web.UI.UserControl
{
    xldl x = new xldl();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btndn_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt = x.GetData("SELECT * FROM dbo.ACCOUNT WHERE TDN = N'" + txttdn.Text + "' AND MK = N'" + txtmk.Text + "'");
            if (dt.Rows.Count > 0)
            {
                Session["TDNAdmin"] = txttdn.Text;
                Response.Redirect("http://localhost:3215/Admin.aspx");
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
}