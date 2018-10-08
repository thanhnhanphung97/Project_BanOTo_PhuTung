using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UC_ucDangKy : System.Web.UI.UserControl
{
    xldl x = new xldl();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btndk_Click(object sender, EventArgs e)
    {
        try
        {
            string str1 = @"SELECT 1 FROM dbo.ACCOUNT WHERE TDN = N'" + txttdndk.Text + "'";
            if (x.GetData(str1).Rows.Count > 0)
            {
                lbDKThanhCong.Text = " Tên đăng nhập đã tồn tại. ";
                txttdndk.Focus();
            }
            else
            {
                SqlConnection con = new SqlConnection(x.strCon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                cmd.CommandText = @"INSERT INTO dbo.ACCOUNT ( TDN, MK ) VALUES  ( @TDN , @MK)";
                cmd.Parameters.Add("@TDN", SqlDbType.NVarChar, 20);
                cmd.Parameters["@TDN"].Value = txttdndk.Text;
                cmd.Parameters.Add("@MK", SqlDbType.NVarChar, 20);
                cmd.Parameters["@MK"].Value = txtmkdk.Text;
                cmd.ExecuteNonQuery();
                con.Close();

                // Lấy idAc vừa nhập 

                string s = "SELECT MAX(idAc) FROM dbo.ACCOUNT ";
                int idAc = int.Parse(x.GetData(s).Rows[0][0].ToString());

                //-------------------->//
                SqlConnection conn = new SqlConnection(x.strCon);
                conn.Open();
                SqlCommand cmd_ = new SqlCommand();
                cmd_.CommandType = CommandType.Text;
                cmd_.Connection = conn;
                cmd_.CommandText = @"INSERT INTO dbo.TTCN ( idAc, HoTen, SDT, DiaChi ) VALUES  ( "+ idAc +", @HoTen, @sdt, @Diachi)";
                cmd_.Parameters.Add("@HoTen", SqlDbType.NVarChar, 50);
                cmd_.Parameters["@HoTen"].Value = txthoten.Text;
                cmd_.Parameters.Add("@sdt", SqlDbType.NVarChar, 20);
                cmd_.Parameters["@sdt"].Value = txtsdt.Text;
                cmd_.Parameters.Add("@Diachi", SqlDbType.NVarChar, 100);
                cmd_.Parameters["@Diachi"].Value = txtdiachi.Text;
                cmd_.ExecuteNonQuery();
                conn.Close();

                Session["txtDN"] = txttdndk.Text;
                Response.Redirect("~/Dangnhap.aspx");
            }
        }
        catch
        {
            lbDKThanhCong.Text = "Thất bại!";
        }
        
    }
    

}