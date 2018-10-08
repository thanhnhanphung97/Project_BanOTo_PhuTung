using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class XeTheoNSX : System.Web.UI.Page
{
    xldl x = new xldl();
    xldl y = new xldl();
    protected void Page_Load(object sender, EventArgs e)
    {
        Xe();
    }
    private void Xe()
    {
        string idNSX = Request.QueryString["idNSX"];
        int id = Convert.ToInt32(idNSX.ToString());
        DataTable dt = x.GetData("SELECT a.TenNSX,sp.idSP,sp.TenSP,sp.DonGia,sp.HinhMinhHoa FROM dbo.SANPHAM sp,dbo.NHASANXUAT a WHERE sp.idNSX = "+id+" AND Type = 1 AND sp.idNSX = a.idNSX");
        if (dt.Rows.Count > 0)
        {
            dtlxe.DataSource = dt;
            dtlxe.DataBind();
            lbThongBao.Text = "";
            DataTable dt_ = y.GetData("SELECT TenNSX FROM dbo.NHASANXUAT WHERE idNSX = "+ id);
            gvhangxe.DataSource = dt_;
            gvhangxe.DataBind();
        }
        else
        {
            DataTable dt_ = y.GetData("SELECT TenNSX FROM dbo.NHASANXUAT WHERE idNSX = " + id);
            gvhangxe.DataSource = dt_;
            gvhangxe.DataBind();
            lbThongBao.Text = "Không còn sản phẩm !";
        }
        
    }
}