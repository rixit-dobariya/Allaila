using Allaila.Helpers;
using System;
using System.Data;
using System.IO;
using System.Web.UI.WebControls;

namespace Allaila.Admin
{
    public partial class UpdateProduct : System.Web.UI.Page
    {
        ProductOperations obj;
        protected void Page_Load(object sender, EventArgs e)
        {
            obj = new ProductOperations();
            loadBrands();
            loadCategories();
            if (!IsPostBack)
                loadData();
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

        void loadData()
        {
            int productId = Convert.ToInt32(Request.QueryString["productId"]);
            obj.fetchProduct(productId);
            txtName.Text = obj.productName;
            txtDescription.Text = obj.description;
            txtDiscount.Text = obj.discount.ToString();
            txtPrice.Text = obj.price.ToString();
            txtSize6.Text = obj.stock1.ToString();
            txtSize7.Text = obj.stock2.ToString();
            txtSize8.Text = obj.stock3.ToString();
            txtSize9.Text = obj.stock4.ToString();
            txtSize10.Text = obj.stock5.ToString();

            hfImage.Value = obj.productImage;
            hfProductId.Value = productId.ToString();

            ddlBrandId.SelectedValue = obj.brandId.ToString();
            ddlCategoryId.SelectedValue = obj.categoryId.ToString();
        }

        protected void btnUpdateProduct_Click(object sender, EventArgs e)
        {
            if (fuImage.HasFile)
            {
                string extension = Path.GetExtension(fuImage.FileName);
                if (extension == ".jpg" || extension == ".jpeg" || extension == ".png")
                {
                    string img = "../img/products/shoes/" + fuImage.FileName;
                    fuImage.SaveAs(Server.MapPath(img));
                    obj.productImage = img;
                }
                else
                {
                    lblImageMessage.Text = "Please upload image only";
                }
            }
            else
            {
                obj.productImage = hfImage.Value;
            }

            obj.productId = hfProductId.Value;
            obj.brandId = Convert.ToInt32(ddlBrandId.SelectedValue);
            obj.categoryId = Convert.ToInt32(ddlCategoryId.SelectedValue);
            obj.productName = txtName.Text;
            obj.price = Convert.ToInt32(txtPrice.Text);
            obj.discount = Convert.ToInt32(txtDiscount.Text);
            obj.stock1 = Convert.ToInt32(txtSize6.Text);
            obj.stock2 = Convert.ToInt32(txtSize7.Text);
            obj.stock3 = Convert.ToInt32(txtSize8.Text);
            obj.stock4 = Convert.ToInt32(txtSize9.Text);
            obj.stock5 = Convert.ToInt32(txtSize10.Text);

            obj.updateProduct();

            Response.Redirect("Products.aspx");
        }
    }
}