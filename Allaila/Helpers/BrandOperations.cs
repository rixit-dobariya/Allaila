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
        public string brandName;
        public string brandImage;
        public BrandOperations()
        {
            con = ConnectionHelper.getCon();
        }
        public void addBrand(string brandName, string image)
        {
            SqlCommand cmd = new SqlCommand("insert into Brand_Details_tbl(Brand_Name, Brand_Image) values('" + brandName + "','"+image+"')", con);
            cmd.ExecuteNonQuery();
        }
        public DataSet getBrandDataSet()
        {
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter("select b.Brand_Id, b.Brand_Name, b.Brand_Image, count(s.Shoe_Id) as Products from Brand_Details_tbl as b left join shoes_details_tbl as s on b.Brand_Id=s.Brand_Id group by b.Brand_Id, b.Brand_Name, b.Brand_Image", con);
            da.Fill(ds);
            return ds;
        }
        public void deleteBrand(string brandId)
        {
            SqlCommand cmd = new SqlCommand("delete from Brand_Details_tbl where Brand_Id='" + brandId + "'", con);
            cmd.ExecuteNonQuery();
        }
        public void getBrandInfo(string brandId)
        {
            SqlDataAdapter da = new SqlDataAdapter("select Brand_Name, Brand_Image from Brand_Details_tbl where Brand_Id='" + brandId + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            brandName = ds.Tables[0].Rows[0][0].ToString();
            brandImage = ds.Tables[0].Rows[0][1].ToString();
        }
        
        public void updateBrand(string brandId, string brandName, string brandImage)
        {
            SqlCommand cmd = new SqlCommand("update Brand_Details_tbl set Brand_Name='" + brandName + "', Brand_Image='"+brandImage+"' where Brand_Id='" + brandId + "'", con);
            cmd.ExecuteNonQuery();
        }
    }
}