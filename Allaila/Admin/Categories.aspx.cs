using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Allaila.Helpers;
using System.Data;
using System.Data.SqlClient;

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

        protected void btnAddCategory_Click(object sender, EventArgs e)
        {
            if (btnAddCategory.Text.Equals("Add Category"))
            {
                obj.addCateogry(txtCategoryName.Text);
                lblResponse.Text = "Category Added Successfully!";
            }
            else
            {
                string categoryId = hfCategoryId.Value;
                obj.updateCategory(categoryId, txtCategoryName.Text);
                lblResponse.Text = "Category Updated Successfully!";
                btnAddCategory.Text = "Add Category";
            }
            txtCategoryName.Text = "";
            lblResponse.Visible = true;
            fillData();
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
                string categoryName = obj.getCategoryName(categoryId);
                txtCategoryName.Text = categoryName;
                btnAddCategory.Text = "Update Category";
                hfCategoryId.Value = categoryId;
            }
        }
    }
}