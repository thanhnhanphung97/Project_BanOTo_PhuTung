using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UC_ucTTXe : System.Web.UI.UserControl
{
    xldl x = new xldl();
    protected void Page_Load(object sender, EventArgs e)
    {
        Load();
    }

    private void Load()
    {
        string idsp = Request.QueryString["idSP"];
        int id = Convert.ToInt32(idsp.ToString());
        DataTable dt = x.GetData("SELECT TenNSX,TenSP,DonGia,b.HinhMinhHoa,c.kieudongco,c.hopso,c.dungtichxilanh,c.congsuat,c.momenxoan,c.tocdo,c.thoigiantangtoc,c.dungtichthungnhienlieu,c.hethongnhienlieu FROM dbo.NHASANXUAT a,dbo.SANPHAM b,dbo.TSKT c WHERE b.idNSX = a.idNSX AND c.id = b.idTSKT AND b.idSP = " + id);
        if (dt.Rows.Count > 0)
        {
            dlhinh.DataSource = dt;
            dltskt.DataSource = dt;
            dltskt.DataBind();
            dlhinh.DataBind();
        }
    }
}