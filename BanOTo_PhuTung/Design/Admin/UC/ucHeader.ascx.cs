using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UC_ucHeader : System.Web.UI.UserControl
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["TDNAdmin"] != null)
            {
                lbtDangNhap.Visible = false;
                lbtdn.Visible = true;
                lbtdn.Text = "Xin chào : " + Session["TDNAdmin"].ToString();
                lbtDangNhap.Visible = false;
            }
            else
            {
                lbtdn.Text = "";
                lbtdn.Visible = false;
                lbtDangNhap.Visible = true;
                lbtDangXuat.Visible = false;
            }

        }



    }
    protected void lbtDangNhap_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AdminDangnhap.aspx");
    }
    protected void lbtDangXuat_Click(object sender, EventArgs e)
    {
        Session["TDNAdmin"] = null;
        Response.Redirect("~/Admin.aspx");
    }

}