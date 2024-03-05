using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Allaila.Helpers
{
    public class ProductOperations
    {
        SqlConnection con;
        public ProductOperations()
        {
            con = ConnectionHelper.getCon();
        }
        
        public DataSet getProductDataSet()
        {
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter("select Shoe_Id, Name from Shoes_Details_tbl", con);
            da.Fill(ds);
            return ds;
        }
        
    }
}