using Allaila.Helpers;
using System;
using System.Web.UI.WebControls;

namespace Allaila.Admin
{
    public partial class Users : System.Web.UI.Page
    {
        UserOperations obj = new UserOperations();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillGrid();
            }
        }
        void fillGrid()
        {
            GridView1.DataSource = obj.getUsersDataSet();
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string userId = e.CommandArgument.ToString();
            if (e.CommandName.Equals("cmd_update"))
            {
                Response.Redirect("UpdateUser.aspx?userId=" + userId);
            }
            else if (e.CommandName.Equals("cmd_delete"))
            {
                obj.deleteUser(userId);
                fillGrid();
            }
        }
    }
}