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

        
    }
}