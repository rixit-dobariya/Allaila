using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Allaila.Helpers
{
    public class ConnectionHelper
    {
        public static SqlConnection getCon()
        {
            SqlConnection con;
            string s = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            con = new SqlConnection(s);
            con.Open();
            return con;
        }
    }
}