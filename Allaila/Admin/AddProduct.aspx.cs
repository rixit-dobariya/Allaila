using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Allaila.Helpers;
using System.Data;
using System.IO;

namespace Allaila.Admin
{
    public partial class AddProduct : System.Web.UI.Page
    {
        ProductOperations obj;
        protected void Page_Load(object sender, EventArgs e)
        {
            obj = new ProductOperations();
            loadBrands();
            loadCategories();
            lblImageMessage.Visible = false;
            lblResponse.Visible = false;
        }
        void loadBrands()
        {
            BrandOperations obj = new BrandOperations();
            DataSet ds = obj.getBrandDataSet();
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                ListItem ls = new ListItem(dr[1].ToString(), dr[0].ToString());
                ddlBrandId.Items.Add(ls);
            }
        }
        void loadCategories()
        {
            CategoryOperations obj = new CategoryOperations();
            DataSet ds = obj.getCategoryDataSet();
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                ListItem ls = new ListItem(dr[1].ToString(), dr[0].ToString());
                ddlCategoryId.Items.Add(ls);
            }
        }

        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            //image validation
            string imgExtension = Path.GetExtension(fuImage.FileName);
            if(imgExtension == ".jpg" || imgExtension == ".png" || imgExtension == ".jpeg")
            {
                string img = "../img/products/shoes/" + fuImage.FileName;
                Server.MapPath(img);
                string shoeName = txtName.Text;
                int brandId = Convert.ToInt32(ddlBrandId.SelectedValue);
                int categoryId = Convert.ToInt32(ddlCategoryId.SelectedValue);
                string description = txtDescription.Text;
                int price = Convert.ToInt32(txtPrice.Text);
                int discount = Convert.ToInt32(txtDiscount.Text);

                string stock1 = txtSize6.Text;
                string stock2 = txtSize7.Text;
                string stock3 = txtSize8.Text;
                string stock4 = txtSize9.Text;
                string stock5 = txtSize10.Text;

                fuImage.SaveAs(Server.MapPath(img));
                obj.addProduct(shoeName, brandId, categoryId, description, price, discount, img, stock1, stock2, stock3, stock4, stock5);

                Response.Redirect("Products.aspx");
            }
            else
            {
                lblImageMessage.Text = "Please upload image";
                lblImageMessage.Visible = true;
            }
        }
        void clearForm()
        {
            txtName.Text = "";
            txtDescription.Text = "";
            txtPrice.Text = "";
            txtDiscount.Text = "";
        }

        
    }
}