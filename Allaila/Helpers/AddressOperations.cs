using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Allaila.Helpers
{
    public class AddressOperations
    {
        SqlConnection con;
        public AddressOperations()
        {
            con = ConnectionHelper.getCon();
        }

        public void addAddress(string userId, string name, string address, string city, string state, string pincode, string phone)
        {
            string query = $"insert into Address_Details_tbl(User_Id, Name, Address, City, State, Pincode, Phone) values('{userId}','{name}','{address}','{city}','{state}','{pincode}','{phone}')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
        }

    }
}