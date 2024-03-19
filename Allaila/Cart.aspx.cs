using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Allaila.Helpers;

namespace Allaila
{
    public partial class Cart : System.Web.UI.Page
    {
        CartOperations cartObj;
        string userId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userId"] == null)
            {
                Response.Redirect("RegisterSignIn.aspx");
            }
            else
            {
                userId = Session["userId"].ToString();
            }
            
            cartObj = new CartOperations();

            string size = Request.QueryString["Size"];
            string quantity = Request.QueryString["Quantity"];
            string shoeId = Request.QueryString["Shoe_Id"];

            if (!IsPostBack)
            {
                fillGrid();
            }
            if(!cartObj.recordExits(userId, shoeId, size))
            {
                if (shoeId != null && quantity != null && size != null)
                {
                    cartObj.addToCart(Convert.ToInt32(shoeId), Convert.ToInt32(quantity), Convert.ToInt32(userId), Convert.ToInt32(size));
                    fillGrid();
                }
            }
        }

        void fillGrid()
        {
            DataSet ds = cartObj.getCartDataSet(Convert.ToInt32(userId));
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}