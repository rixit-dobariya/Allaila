using System;
using System.Data;
using System.Data.SqlClient;

namespace Allaila.Helpers
{
    public class UserOperations
    {
        SqlConnection con;

        public string userId;
        public string userRoleId;
        public string firstName;
        public string lastName;
        public string password;
        public string email;
        public string phoneNo;
        public UserOperations()
        {
            con = ConnectionHelper.getCon();
        }

        public void fetchUser(string userId)
        {
            string query = "select * from User_Details_tbl where User_Id='" + userId + "'";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            this.userId = userId;
            firstName = ds.Tables[0].Rows[0][1].ToString();
            lastName = ds.Tables[0].Rows[0][2].ToString();
            password = ds.Tables[0].Rows[0][3].ToString();
            email = ds.Tables[0].Rows[0][4].ToString();
            phoneNo = ds.Tables[0].Rows[0][5].ToString();
            userRoleId = ds.Tables[0].Rows[0][6].ToString();
        }
        public void updateUser(string userId, string firstName, string lastName, string email, string phoneNo, string userRoleId)
        {
            string query = "update User_Details_tbl set First_Name='" + firstName + "', Last_Name='" + lastName + "',Email='" + email + "', Mobile_No='" + phoneNo + "', User_Role_Id='" + userRoleId + "' where User_Id='" + userId + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
        }

        public DataSet getUsersDataSet()
        {
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter("select * from User_Details_tbl", con);
            da.Fill(ds);
            return ds;
        }

        public void addUser(string firstName, string lastName, string email, string phone, string password, string userRoleId)
        {
            string query = "insert into User_Details_tbl(First_Name, Last_Name, Email, Mobile_No, Password, User_Role_Id) values('" + firstName + "','" + lastName + "','" + email + "','" + phone + "','" + password + "','" + userRoleId + "')";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

        }

        public bool emailExists(string email)
        {
            string query = "select count(*) from User_Details_tbl where Email='" + email + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            if (cmd.ExecuteScalar() != null && Convert.ToInt32(cmd.ExecuteScalar()) > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public void deleteUser(string userId)
        {
            SqlCommand cmd = new SqlCommand("delete from User_Details_tbl where User_Id=" + userId, con);
            cmd.ExecuteNonQuery();
        }
    }
}