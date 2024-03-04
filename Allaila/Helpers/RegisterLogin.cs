using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Allaila.Helpers
{
    public class RegisterLogin
    {
        SqlConnection con;
        public RegisterLogin()
        {
            startCon();
        }
        void startCon()
        {
            string s = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            con = new SqlConnection(s);
            con.Open();
        }

        public void registerUser(string firstName, string lastName, string email, string phone, string password)
        {
            string query = "insert into User_Details_tbl(First_Name, Last_Name, Email, Mobile_No, Password, User_Role_Id) values('" + firstName + "','" + lastName + "','" + email + "','" + phone + "','" + password + "','0')";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
        }

        public int getUserId(string email, string password)
        {
            string query = "select User_Id from User_Details_tbl where Email='"+email+"' and Password='"+password+"'";
            SqlCommand cmd = new SqlCommand(query, con);
            int userId = -1;
            if(cmd.ExecuteScalar()!=null)
            {
                userId = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            }
            return userId;
        }

        public int getUserRoleId(string email)
        {
            string query = "select User_Role_Id from User_Details_tbl where Email='"+email+"'";
            SqlCommand cmd = new SqlCommand(query, con);

            return Convert.ToInt32(cmd.ExecuteScalar().ToString());
        }

        public bool emailExists(string email)
        {
            string query = "select count(*) from User_Details_tbl where Email='" + email + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            if(cmd.ExecuteScalar()!=null && Convert.ToInt32(cmd.ExecuteScalar()) > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

    }


}