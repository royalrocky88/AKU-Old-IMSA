using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public static class Db
{
    private static string ConnectionString
    {
        get { return ConfigurationManager.ConnectionStrings["SSDMConnectionString"].ConnectionString; }
    }

    public static DataTable GetTable(string sql, params SqlParameter[] parameters)
    {
        DataTable dt = new DataTable();
        using (SqlConnection cn = new SqlConnection(ConnectionString))
        using (SqlCommand cmd = new SqlCommand(sql, cn))
        using (SqlDataAdapter da = new SqlDataAdapter(cmd))
        {
            if (parameters != null) cmd.Parameters.AddRange(parameters);
            da.Fill(dt);
        }
        return dt;
    }

    public static object Scalar(string sql, params SqlParameter[] parameters)
    {
        using (SqlConnection cn = new SqlConnection(ConnectionString))
        using (SqlCommand cmd = new SqlCommand(sql, cn))
        {
            if (parameters != null) cmd.Parameters.AddRange(parameters);
            cn.Open();
            return cmd.ExecuteScalar();
        }
    }
}
