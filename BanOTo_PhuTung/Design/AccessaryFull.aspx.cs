using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AccessaryFull : System.Web.UI.Page
{
    xldl x = new xldl();
    protected void Page_Load(object sender, EventArgs e)
    {
        PhuTung();

    }

    private void PhuTung()
    {
        DataTable dt = x.GetData("SELECT idSP,TenSP,DonGia,HinhMinhHoa FROM dbo.SANPHAM WHERE Type = 2");
        if (dt.Rows.Count > 0)
        {
            dtlphutungfull.DataSource = dt;
            dtlphutungfull.DataBind();
        }
    }
}