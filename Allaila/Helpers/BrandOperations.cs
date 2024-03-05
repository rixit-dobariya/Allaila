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
        public void deleteBrand(string brandId)
        {
            SqlCommand cmd = new SqlCommand("delete from Brand_Details_tbl where Brand_Id='" + brandId + "'", con);
            cmd.ExecuteNonQuery();
        }
        public string getBrandName(string brandId)
        {
            SqlCommand cmd = new SqlCommand("select Brand_Name from Brand_Details_tbl where Brand_Id='" + brandId + "'", con);
            return cmd.ExecuteScalar().ToString();
        }
        
        public void updateBrand(string brandId, string brandName)
        {
            SqlCommand cmd = new SqlCommand("update Brand_Details_tbl set Brand_Name='" + brandName + "' where Brand_Id='" + brandId + "'", con);
            cmd.ExecuteNonQuery();
        }
    }
}