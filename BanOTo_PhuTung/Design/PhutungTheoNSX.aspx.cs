using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PhutungTheoNSX : System.Web.UI.Page
{
    xldl x = new xldl();
    xldl y = new xldl();
    protected void Page_Load(object sender, EventArgs e)
    {
        Phutung();
    }

    private void Phutung()
    {
        string idNSX = Request.QueryString["idNSX"];
        int id = Convert.ToInt32(idNSX.ToString());
        DataTable dt = x.GetData("SELECT idSP,TenSP,DonGia,HinhMinhHoa FROM dbo.SANPHAM WHERE idNSX = " + id + " AND Type = 2");
        if (dt.Rows.Count > 0)
        {
            dtlphutung.DataSource = dt;
            dtlphutung.DataBind();
            lbThongBao.Text = "";
            DataTable dt_ = y.GetData("SELECT TenNSX FROM dbo.NHASANXUAT WHERE idNSX = " + id);
            gvhangphutung.DataSource = dt_;
            gvhangphutung.DataBind();
        }
        else
        {
            DataTable dt_ = y.GetData("SELECT TenNSX FROM dbo.NHASANXUAT WHERE idNSX = " + id);
            gvhangphutung.DataSource = dt_;
            gvhangphutung.DataBind();
            lbThongBao.Text = "Không còn sản phẩm !";
        }
    }
}