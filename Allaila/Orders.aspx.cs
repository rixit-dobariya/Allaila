using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Allaila.Helpers;

namespace Allaila
{
    public partial class Orders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userId"] != null)
            {
                if (!IsPostBack)
                {
                    setOrderData();
                }
            }
            else
            {
                Response.Redirect("RegisterSignIn.aspx");
            }
            
        }
        void setOrderData()
        {
            DataSet ds = new OrderOpeations().getOrderHeaderDataSet(Session["userId"].ToString());
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}