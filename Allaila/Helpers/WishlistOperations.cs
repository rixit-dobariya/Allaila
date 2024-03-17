using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Allaila.Helpers
{
    public class WishlistOperations
    {
        SqlConnection con;
        public WishlistOperations()
        {
            con = ConnectionHelper.getCon();
        }

        public void addToWishlist(int productId, int userId, int size)
        {
            string query = $"insert into Wishlist_Details_tbl values({productId},{userId},{size})";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
        }

        public void removeFromWishlist(int productId, int userId)
        {
            string query = $"delete from Wishlist_Details_tbl where Product_Id={productId} and User_Id={userId}";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
        }

        public DataSet getWishlistDataSet(int userId)
        {
            DataSet ds = new DataSet();
            string query = $"select s.Image, s.Name, w.Size, s.Price-(s.Price*s.Discount/100) as Price from Shoes_Details_tbl as s inner join Wishlist_Details_tbl as w on s.Shoe_Id = w.Product_Id where w.User_Id={userId}";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(ds);
            return ds;
        }
    }
}