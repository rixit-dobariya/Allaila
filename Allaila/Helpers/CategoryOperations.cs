using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Allaila.Helpers
{
    public class CategoryOperations
    {
        SqlConnection con;
        public CategoryOperations()
        {
            con = ConnectionHelper.getCon();
        }
        public void addCateogry(string categoryName)
        {
            SqlCommand cmd = new SqlCommand("insert into Category_Details_tbl(Category_Name) values('" + categoryName + "')", con);
            cmd.ExecuteNonQuery();
        }
        public DataSet getCategoryDataSet()
        {
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter("select * from Category_Details_tbl", con);
            da.Fill(ds);
            return ds;
        }
        public void deleteCategory(string categoryId)
        {
            SqlCommand cmd = new SqlCommand("delete from Category_Details_tbl where Category_Id='" + categoryId + "'", con);
            cmd.ExecuteNonQuery();
        }
        public string getCategoryName(string categoryId)
        {
            SqlCommand cmd = new SqlCommand("select Category_Name from Category_Details_tbl where Category_Id='" + categoryId   + "'", con);
            return cmd.ExecuteScalar().ToString();
        }

        public void updateCategory(string categoryId, string categoryName)
        {
            SqlCommand cmd = new SqlCommand("update Category_Details_tbl set Category_Name='" + categoryName+ "' where Category_Id='" + categoryId + "'", con);
            cmd.ExecuteNonQuery();
        }
    }
}