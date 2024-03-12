using System.Data;
using System.Data.SqlClient;

namespace Allaila.Helpers
{
    public class CategoryOperations
    {
        SqlConnection con;
        public string categoryName;
        public string categoryImage;

        public CategoryOperations()
        {
            con = ConnectionHelper.getCon();
        }
        public void addCateogry(string categoryName, string image)
        {
            SqlCommand cmd = new SqlCommand("insert into Category_Details_tbl(Category_Name, Category_Image) values('" + categoryName + "','" + image + "')", con);
            cmd.ExecuteNonQuery();
        }
        public DataSet getCategoryDataSet()
        {
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter("select c.Category_Id, c.Category_Name, c.Category_Image, count(s.Shoe_Id) as Products from Category_Details_tbl as c left join shoes_details_tbl as s on c.Category_Id=s.Category_Id group by c.Category_Id, c.Category_Name, c.Category_Image", con);
            da.Fill(ds);
            return ds;
        }
        public void deleteCategory(string categoryId)
        {
            SqlCommand cmd = new SqlCommand("delete from Category_Details_tbl where Category_Id='" + categoryId + "'", con);
            cmd.ExecuteNonQuery();
        }
        public void getCategoryInfo(string categoryId)
        {
            SqlDataAdapter da = new SqlDataAdapter("select Category_Name, Category_Image from Category_Details_tbl where Category_Id='" + categoryId + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            categoryName = ds.Tables[0].Rows[0][0].ToString();
            categoryImage = ds.Tables[0].Rows[0][1].ToString();
        }

        public void updateCategory(string categoryId, string categoryName, string image)
        {
            SqlCommand cmd = new SqlCommand("update Category_Details_tbl set Category_Name='" + categoryName + "', Category_Image='" + image + "' where Category_Id='" + categoryId + "'", con);
            cmd.ExecuteNonQuery();
        }
    }
}