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
            if(btnAddBrand.Text.Equals("Add Brand"))
            {
                obj.addBrand(txtBrandName.Text);
                lblResponse.Text = "Brand Added Successfully!";
            }
            else
            {
                string brandId = hfBrandId.Value;
                obj.updateBrand(brandId, txtBrandName.Text);
                lblResponse.Text = "Brand Updated Successfully!";
                btnAddBrand.Text = "Add Brand";
            }
            txtBrandName.Text = "";
            lblResponse.Visible = true;
            fillData();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string brandId = e.CommandArgument.ToString();
            if(e.CommandName == "cmd_delete")
            {
                obj.deleteBrand(brandId);
                fillData();
            }
            else if(e.CommandName == "cmd_update")
            {
                string brandName = obj.getBrandName(brandId);
                txtBrandName.Text = brandName;
                btnAddBrand.Text = "Update Brand";
                hfBrandId.Value = brandId;
            }
        }
    }
}