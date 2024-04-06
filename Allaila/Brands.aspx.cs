using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Allaila.Helpers;

namespace Allaila
{
    public partial class Brands : System.Web.UI.Page
    {
        BrandOperations obj;
        protected void Page_Load(object sender, EventArgs e)
        {
            obj = new BrandOperations();
            if (!IsPostBack)
            {
                fillDataList();
            }
        }

        void fillDataList()
        {
            DataList1.DataSource = obj.getBrandDataSet();
            DataList1.DataBind();
        }
    }
}