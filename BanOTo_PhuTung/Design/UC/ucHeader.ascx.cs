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
            if (Session["TDN"] != null)
            {
                lbtDangNhap.Visible = false;
                lbtdn.Visible = true;
                lbtdn.Text = "Xin chào : " + Session["TDN"].ToString();
                lbtDangNhap.Visible = false;
                lbtDangKy.Visible = false;
            }
            else
            {
                lbtdn.Text = "";
                lbtdn.Visible = false;
                lbtDangNhap.Visible = true;
                lbtDangXuat.Visible = false;
                lbtDangKy.Visible = true;
            }

        }

        if (Session["Giohang"] != null)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["Giohang"];
            System.Int32 tongSL = 0;
            foreach (DataRow r in dt.Rows)
            {
                tongSL += Convert.ToInt32(r["SoLuong"]);
                lbTongSL.Text = tongSL.ToString();
            }
        }


    }
    protected void lbtDangNhap_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Dangnhap.aspx");
    }
    protected void lbtDangXuat_Click(object sender, EventArgs e)
    {
        Session["TDN"] = null;
        Response.Redirect("~/Trangchu.aspx");
    }
    protected void lbtDangKy_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Dangky.aspx");
    }
    protected void lbtGioHang_Click(object sender, EventArgs e)
    {
        if(lbtdn.Visible == true) Response.Redirect("~/Giohang.aspx");
        else Response.Redirect("~/Dangnhap.aspx");
    }
}