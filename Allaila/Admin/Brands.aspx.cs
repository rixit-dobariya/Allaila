using Allaila.Helpers;
using System;
using System.Data;
using System.IO;
using System.Web.UI.WebControls;

namespace Allaila.Admin
{
    public partial class Brands : System.Web.UI.Page
    {
        BrandOperations obj;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.obj = new BrandOperations();
            if (!IsPostBack)
                fillData();
        }
        void fillData()
        {
            DataSet ds = obj.getBrandDataSet();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        public string uploadImage()
        {
            if (fuImage.HasFile)
            {
                string extension = Path.GetExtension(fuImage.FileName);
                if (extension == ".jpg" || extension == ".jpeg" || extension == ".png")
                {
                    string image = "../img/brands/" + fuImage.FileName;
                    fuImage.SaveAs(Server.MapPath(image));
                    return image;
                }
            }
            else
            {
                if (btnAddBrand.Text.Equals("Add Brand"))
                    lblError.Text = "Please upload an image";
                return null;
            }
            return null;
        }
        protected void btnAddBrand_Click(object sender, EventArgs e)
        {
            string image = uploadImage();
            if (btnAddBrand.Text.Equals("Add Brand") && image != null)
            {
                obj.addBrand(txtBrandName.Text, image);
                lblResponse.Text = "Brand Added Successfully!";
            }
            else if (btnAddBrand.Text.Equals("Update Brand"))
            {
                if (image == null)
                {
                    image = hfBrandImage.Value;
                }
                string brandId = hfBrandId.Value;
                obj.updateBrand(brandId, txtBrandName.Text, image);
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
            if (e.CommandName == "cmd_delete")
            {
                obj.deleteBrand(brandId);
                fillData();
            }
            else if (e.CommandName == "cmd_update")
            {
                obj.getBrandInfo(brandId);
                txtBrandName.Text = obj.brandName;
                hfBrandImage.Value = obj.brandImage;
                btnAddBrand.Text = "Update Brand";
                hfBrandId.Value = brandId;
            }
        }
    }
}