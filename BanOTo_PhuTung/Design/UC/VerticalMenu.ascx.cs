using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UC_VerticalMenu : System.Web.UI.UserControl
{
    xldl x = new xldl();
    xldl y = new xldl();
    xldl z = new xldl();
    protected void Page_Load(object sender, EventArgs e)
    {
        HangXe();
        PhuTungXe();
        XeMoiVe();
        lblLuotTruyCap.Text = Application["Luot_truy_cap"].ToString();
        lblOnline.Text = Application["So_nguoi_online"].ToString();
    }

    private void HangXe()
    {
        DataTable dt = x.GetData("SELECT idNSX,TenNSX FROM dbo.NHASANXUAT");
        if (dt.Rows.Count > 0)
        {
            gvxetheonsx.DataSource = dt;
            gvxetheonsx.DataBind();
        }
    }
    private void PhuTungXe()
    {
        DataTable dt_ = y.GetData("SELECT idNSX,TenNSX FROM dbo.NHASANXUAT");
        if (dt_.Rows.Count > 0)
        {
            gvphutung.DataSource = dt_;
            gvphutung.DataBind();
        }
    }
    private void XeMoiVe()
    {
        DataTable dt_ = z.GetData("SELECT TOP 4 idSP,TenSP,DonGia,HinhMinhHoa FROM dbo.SANPHAM ORDER BY NgayCapNhat DESC");
        if (dt_.Rows.Count > 0)
        {
            gvnewcar.DataSource = dt_;
            gvnewcar.DataBind();
        }
    }
}