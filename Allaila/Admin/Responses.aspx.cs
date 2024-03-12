using Allaila.Helpers;
using System;
using System.Web.UI.WebControls;

namespace Allaila.Admin
{
    public partial class Responses : System.Web.UI.Page
    {
        ResponseOperations obj;
        protected void Page_Load(object sender, EventArgs e)
        {
            obj = new ResponseOperations();
            if (!IsPostBack)
                fillData();
        }

        void fillData()
        {
            GridView1.DataSource = obj.getResponseDataSet();
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("cmd_delete"))
            {
                obj.deleteResponse(e.CommandArgument.ToString());
                fillData();
            }
        }
    }
}