using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AllCar : System.Web.UI.Page
{
    xldl x = new xldl();
    protected void Page_Load(object sender, EventArgs e)
    {
        Xe();
    }

    private void Xe()
    {
        DataTable dt = x.GetData("SELECT idSP,TenSP,DonGia,HinhMinhHoa FROM dbo.SANPHAM WHERE Type = 1");
        if (dt.Rows.Count > 0)
        {
            dtlxefull.DataSource = dt;
            dtlxefull.DataBind();
        }
    }
}