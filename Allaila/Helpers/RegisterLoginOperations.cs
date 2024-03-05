using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Allaila.Helpers
{
    public class RegisterLoginOperations
    {
        SqlConnection con;
        public RegisterLoginOperations()
        {
            con = ConnectionHelper.getCon();
        }

        public void registerUser(string firstName, string lastName, string email, string phone, string password)
        {
            string query = "insert into User_Details_tbl(First_Name, Last_Name, Email, Mobile_No, Password, User_Role_Id) values('" + firstName + "','" + lastName + "','" + email + "','" + phone + "','" + password + "','0')";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
        }

        public User getUser(string email, string password)
        {
            string query = "select User_Id, User_Role_Id from User_Details_tbl where Email='"+email+"' and Password='"+password+"'";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            string userId = "-1";
            string userRoleId = "";
            if (ds.Tables[0].Rows.Count > 0)
            {
                userId = ds.Tables[0].Rows[0][0].ToString();
                userRoleId = ds.Tables[0].Rows[0][1].ToString();
            }
            return new User(userId, userRoleId);
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