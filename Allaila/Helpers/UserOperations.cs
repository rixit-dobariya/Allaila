using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Allaila.Helpers
{
    public class UserOperations
    {
        SqlConnection con;
        public UserOperations()
        {
            startCon();
        }
        void startCon()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            con.Open();
        }

        public User fetchUser(string userId)
        {
            string query = "select First_Name, Last_Name, Email, Mobile_No from User_Details_tbl where User_Id='" + userId + "'";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            string firstName = ds.Tables[0].Rows[0][0].ToString();
            string lastName = ds.Tables[0].Rows[0][1].ToString();
            string email = ds.Tables[0].Rows[0][2].ToString();
            string phoneNo = ds.Tables[0].Rows[0][3].ToString();

            User user = new User(firstName, lastName, email, phoneNo);
            return user;
        }
        public void updateUser(string userId, string firstName, string lastName, string email, string phoneNo)
        {
            string query = "update User_Details_tbl set First_Name='" + firstName + "', Last_Name='" + lastName + "',Email='" + email + "', Mobile_No='" + phoneNo + "' where User_Id='" + userId+"'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
        }
    }
}