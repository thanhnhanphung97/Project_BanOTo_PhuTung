using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for xldl
/// </summary>
public class xldl
{
    public string strCon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString.ToString();

    public DataTable GetData(string lenhSQL)
    {
        SqlConnection sqlCon = new SqlConnection(strCon);
        try
        {
            SqlDataAdapter sqlDa = new SqlDataAdapter(lenhSQL, sqlCon);
            DataTable dt = new DataTable();
            sqlDa.Fill(dt);
            return dt;
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }


    public void Execute(string lenhSQL)
    {
        using (SqlConnection sqlCon = new SqlConnection(strCon))
        {
            sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand(lenhSQL, sqlCon);
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
        }
    }

    public string GetValue(string lenhSQL)
    {
        using (SqlConnection sqlCon = new SqlConnection(strCon))
        {
            sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand(lenhSQL, sqlCon);
            string value = sqlCmd.ExecuteScalar().ToString();
            sqlCon.Close();
            return (value);
        }
    }
}