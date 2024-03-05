using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Allaila.Helpers;

namespace Allaila.Admin
{
    public partial class Brands : System.Web.UI.Page
    {
        BrandOperations obj;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.obj = new BrandOperations();
            if(!IsPostBack)
                fillData();
        }
        void fillData()
        {
            DataSet ds = obj.getBrandDataSet();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void btnAddBrand_Click(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                obj.addBrand(txtBrandName.Text);
                lblResponse.Text = "Brand Added Successfully!";
                lblResponse.Visible = true;
            }
            fillData();
        }
    }
}