using Allaila.Helpers;
using System;
using System.Data;
using System.IO;
using System.Web.UI.WebControls;

namespace Allaila.Admin
{
    public partial class Categories : System.Web.UI.Page
    {
        CategoryOperations obj;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.obj = new CategoryOperations();
            if (!IsPostBack)
                fillData();
        }

        void fillData()
        {
            DataSet ds = obj.getCategoryDataSet();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        string uploadImage()
        {
            if (fuImage.HasFile)
            {
                string extension = Path.GetExtension(fuImage.FileName);
                if (extension == ".jpg" || extension == ".jpeg" || extension == ".png")
                {
                    string image = "../img/categories/" + fuImage.FileName;
                    fuImage.SaveAs(Server.MapPath(image));
                    return image;
                }
            }
            else
            {
                if (btnAddCategory.Text.Equals("Add Category"))
                    lblError.Text = "Please upload an image";
                return null;
            }
            return null;
        }

        protected void btnAddCategory_Click(object sender, EventArgs e)
        {
            string image = uploadImage();
            if (btnAddCategory.Text.Equals("Add Category") && image != null)
            {
                obj.addCateogry(txtCategoryName.Text, image);
                lblResponse.Text = "Category Added Successfully!";
                txtCategoryName.Text = "";
                lblResponse.Visible = true;
                fillData();
            }
            if (btnAddCategory.Text.Equals("Update Category"))
            {
                if (image == null)
                {
                    image = hfImage.Value;
                }
                string categoryId = hfCategoryId.Value;
                obj.updateCategory(categoryId, txtCategoryName.Text, image);
                lblResponse.Text = "Category Updated Successfully!";
                btnAddCategory.Text = "Add Category";
                txtCategoryName.Text = "";
                lblResponse.Visible = true;
                fillData();
            }


        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string categoryId = e.CommandArgument.ToString();
            if (e.CommandName == "cmd_delete")
            {
                obj.deleteCategory(categoryId);
                fillData();
            }
            else if (e.CommandName == "cmd_update")
            {
                obj.getCategoryInfo(categoryId);
                txtCategoryName.Text = obj.categoryName;
                hfCategoryId.Value = categoryId;
                hfImage.Value = obj.categoryImage;
                btnAddCategory.Text = "Update Category";
            }
        }
    }
}