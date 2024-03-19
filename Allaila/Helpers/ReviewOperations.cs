using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Allaila.Helpers
{
    public class ReviewOperations
    {
        SqlConnection con;
        public ReviewOperations()
        {
            con = ConnectionHelper.getCon();
        }

        public void addReview(int shoeId, int userId, int rating, string comment, string commentDate)
        {
            string query = $"insert into Reviews_tbl values({shoeId},{userId},{rating},'{comment}','{commentDate}')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
        }

        public void deleteReview(int shoeId, int UserId)
        {
            string query = $"delete from Reviews_tbl where Shoe_Id={shoeId} and User_Id={UserId}";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
        }

        public void updateReview(int shoeId, int userId, int rating, string comment)
        {
            string query = $"update Reviews_tbl set Rating={rating}, Comment='{comment}' where Shoe_Id={shoeId} and User_Id={userId}";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
        }

    }
}