using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Allaila.Helpers;
using System.Data;

namespace Allaila
{
    public partial class Products : System.Web.UI.Page
    {
        ProductOperations obj = new ProductOperations();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Request.QueryString["Brand_Id"].Equals(""))
            {
                if (!IsPostBack)
                {
                    fillDataList();
                }
            }

        }

        void fillDataList()
        {
            DataList1.DataSource = obj.getProductDataSet(Request.QueryString["Brand_Id"]);
            DataList1.DataBind();
        }
    }
}