using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UC_ucGiohang : System.Web.UI.UserControl
{
    xldl x = new xldl();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["idSP"] != null)
            {
                int idSP = int.Parse(Request.QueryString["idSP"]);
                DataTable dt = x.GetData("SELECT TenSP,DonGia FROM dbo.SANPHAM WHERE Type = 2 AND idSP = " + idSP);
                String TenSP = dt.Rows[0][0].ToString();
                float DonGia = float.Parse(dt.Rows[0][1].ToString());
                int SoLuong = 1;
                ThemVaoGioHang(idSP, TenSP, DonGia, SoLuong);

            }

            if(Session["Giohang"] != null)
            {
                DataTable dt = new DataTable();
                dt = (DataTable)Session["Giohang"];
                System.Decimal TongThanhTien = 0;
                foreach (DataRow r in dt.Rows)
                {
                    r["ThanhTien"] = Convert.ToInt32(r["SoLuong"])*Convert.ToDecimal(r["DonGia"]);
                    TongThanhTien += Convert.ToDecimal(r["Thanhtien"]);
                    lbTongThanhTien.Text = TongThanhTien.ToString();
                }
                gvgiohang.DataSource = dt;
                gvgiohang.DataBind();
            }
        }
    }


    public static int SPDaCoTrongGH(int idSP, DataTable dt)
    {
        int dong = -1;
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            if (int.Parse(dt.Rows[i]["idSP"].ToString()) == idSP)
            {
                dong = i;
                break;
            }
        }
        return dong;
    }

    public void ThemVaoGioHang(int idSP, string TenSP, float DonGia, int SoLuong)
    {
        DataTable dt;
        if (Session["Giohang"] == null)
        {
            dt = new DataTable();
            dt.Columns.Add("idSP");
            dt.Columns.Add("TenSP");
            dt.Columns.Add("DonGia");
            dt.Columns.Add("SoLuong");
            dt.Columns.Add("ThanhTien");
        }
        else dt = (DataTable)Session["Giohang"];
        int dong = SPDaCoTrongGH(idSP,dt);
        if (dong != -1)
        {
            dt.Rows[dong]["SoLuong"] = Convert.ToInt32(dt.Rows[dong]["SoLuong"]) + SoLuong;
        }
        else
        {
            DataRow dr = dt.NewRow();
            dr["idSP"] = idSP;
            dr["TenSP"] = TenSP;
            dr["DonGia"] = DonGia;
            dr["SoLuong"] = SoLuong;
            dr["ThanhTien"] = DonGia * SoLuong;
            dt.Rows.Add(dr);
        }
        Session["Giohang"] = dt;   
    }

    protected void btnttmua_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Trangchu.aspx");
    }
    protected void btnxoagh_Click(object sender, EventArgs e)
    {
        Session["Giohang"] = null;
        Response.Redirect("~/Trangchu.aspx");
    }
    protected void btncapnhat_Click(object sender, EventArgs e)
    {
        DataTable dt = (DataTable)Session["GioHang"];
        foreach (GridViewRow r in gvgiohang.Rows)
        {
            foreach (DataRow dr in dt.Rows)
            {
                if (Convert.ToString(gvgiohang.DataKeys[r.DataItemIndex].Value) == dr["idSP"].ToString())
                {
                    TextBox t = (TextBox)r.Cells[2].FindControl("txtSoLuong");
                    if (Convert.ToInt32(t.Text) <= 0) dt.Rows.Remove(dr);
                    else dr["SoLuong"] = t.Text;
                    break;
                }
            }
        }

        Session["Giohang"] = dt;
        Response.Redirect("~/Giohang.aspx");

    }
    protected void btndathang_Click(object sender, EventArgs e)
    {
        if (Session["TDN"] == null)
        {
            lbThongBao.Text = "Bạn chưa đăng nhập.";
            Response.Redirect("~/Dangnhap.aspx");
        }
        else Response.Redirect("~/ThanhToan.aspx");

    }
    protected void gvgiohang_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Xoa")
        {
            int chiso = int.Parse(e.CommandArgument.ToString());
            try
            {
                DataTable dt = (DataTable)Session["GioHang"];
                dt.Rows.RemoveAt(chiso);
                Session["Giohang"] = dt;
                Response.Redirect("~/Giohang.aspx");
            }
            catch 
            {
                Response.Redirect("~/Giohang.aspx");
            }
        }
    }
}