using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Allaila.Helpers
{
    public class CartOperations
    {
        SqlConnection con;
        public CartOperations()
        {
            con = ConnectionHelper.getCon();
        }

        public void addToCart(int productId, int quantity, int userId, int size)
        {
            string query = $"insert into Cart_Details_tbl values({productId},{quantity},{userId},{size})";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
        }

        public void removeFromCart(int productId, int userId)
        {
            string query = $"delete from Cart_Details_tbl where Product_Id={productId} and User_Id={userId}";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
        }

        public DataSet getCartDataSet(int userId)
        {
            DataSet ds = new DataSet();
            string query = $"select s.Image, s.Name, c.Size, c.Quantity, s.Price-(s.Price*s.Discount/100) as Price from Shoes_Details_tbl as s inner join Cart_Details_tbl as c on s.Shoe_Id = c.Product_Id where c.User_Id={userId}";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(ds);
            return ds;
        }

        public bool recordExits(string userId, string shoeId, string size)
        {
            string query = $"select count(*) from Cart_Details_tbl where User_Id={userId} and Product_Id={shoeId} and Size={size}";
            SqlCommand cmd = new SqlCommand(query, con);
            if(cmd.ExecuteScalar().ToString()!="0")
                return true;
            else
                return false;
        }
    }
}