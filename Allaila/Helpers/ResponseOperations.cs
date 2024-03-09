using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Allaila.Helpers
{
    public class ResponseOperations
    {
        SqlConnection con;
        public ResponseOperations()
        {
            con = ConnectionHelper.getCon();
        }

        public void addResponse(string name, string email, string mobile, string subject, string message)
        {
            SqlCommand cmd = new SqlCommand($"insert into Responses_tbl(Name, Email, Mobile_No, Subject, Message) values('{name}','{email}','{mobile}','{subject}','{message}')", con);
            cmd.ExecuteNonQuery();
        }

        public DataSet getResponseDataSet()
        {
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter("select * from Responses_tbl", con);
            da.Fill(ds);
            return ds;
        }

        public void deleteResponse(string Response_Id)
        {
            SqlCommand cmd = new SqlCommand("delete from Responses_tbl where Response_Id=" + Response_Id, con);
            cmd.ExecuteNonQuery();
        }
    }
}