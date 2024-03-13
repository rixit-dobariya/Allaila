using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Allaila.Helpers;

namespace Allaila
{
    public partial class Shop : System.Web.UI.Page
    {
        ProductOperations obj;
        protected void Page_Load(object sender, EventArgs e)
        {
            obj = new ProductOperations();
            if (!IsPostBack)
            {
                fillDataList();
            }
        }

        void fillDataList()
        {
            DataList1.DataSource =obj.getProductData();
            DataList1.DataBind();
        }
    }
}