using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UC_ucCarList : System.Web.UI.UserControl
{
    xldl x = new xldl();
    xldl y = new xldl();
    xldl z = new xldl();
    xldl a = new xldl();
    xldl b = new xldl();
    protected void Page_Load(object sender, EventArgs e)
    {
        Load();
    }

    private void Load()
    {
        XeHonda();
        XeToyota();
        XeBMW();
        XeHyundai();
        XeMitsubishi();
    }

    private void XeHonda()
    {
        DataTable dt = x.GetData("SELECT TOP 4 idSP,TenSP,DonGia,HinhMinhHoa FROM dbo.SANPHAM WHERE idNSX = 1 AND Type = 1");
        if (dt.Rows.Count > 0)
        {
            dtlhonda.DataSource = dt;
            dtlhonda.DataBind();
        }
    }
    private void XeToyota()
    {
        DataTable dt = y.GetData("SELECT TOP 4 idSP,TenSP,DonGia,HinhMinhHoa FROM dbo.SANPHAM WHERE idNSX = 2 AND Type = 1");
        if (dt.Rows.Count > 0)
        {
            dtltoyota.DataSource = dt;
            dtltoyota.DataBind();
        }
    }
    private void XeBMW()
    {
        DataTable dt = z.GetData("SELECT TOP 4 idSP,TenSP,DonGia,HinhMinhHoa FROM dbo.SANPHAM WHERE idNSX = 3 AND Type = 1");
        if (dt.Rows.Count > 0)
        {
            dtlbmw.DataSource = dt;
            dtlbmw.DataBind();
        }
    }
    private void XeHyundai()
    {
        DataTable dt = a.GetData("SELECT TOP 4 idSP,TenSP,DonGia,HinhMinhHoa FROM dbo.SANPHAM WHERE idNSX = 4 AND Type = 1");
        if (dt.Rows.Count > 0)
        {
            dtlhyundai.DataSource = dt;
            dtlhyundai.DataBind();
        }
    }
    private void XeMitsubishi()
    {
        DataTable dt = b.GetData("SELECT TOP 4 idSP,TenSP,DonGia,HinhMinhHoa FROM dbo.SANPHAM WHERE idNSX = 5 AND Type = 1");
        if (dt.Rows.Count > 0)
        {
            dtlmitsu.DataSource = dt;
            dtlmitsu.DataBind();
        }
    }
    
}