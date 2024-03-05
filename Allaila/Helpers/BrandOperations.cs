using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Allaila.Helpers
{
    public class BrandOperations
    {
        SqlConnection con;
        public BrandOperations()
        {
            con = ConnectionHelper.getCon();
        }
        public void addBrand(string brandName)
        {
            SqlCommand cmd = new SqlCommand("insert into Brand_Details_tbl(Brand_Name) values('" + brandName + "')", con);
            cmd.ExecuteNonQuery();
        }
        public DataSet getBrandDataSet()
        {
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter("select * from Brand_Details_tbl", con);
            da.Fill(ds);
            return ds;
        }
    }
}