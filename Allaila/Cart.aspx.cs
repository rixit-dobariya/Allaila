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
            if(shoeId != null && quantity != null && size != null)
            {
                if (!cartObj.recordExits(userId, shoeId, size))
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
            setData(ds);
            ViewState["subtotal"] = lblSubtotal.Text;
        }
        void setData(DataSet ds)
        {
            double subtotal = 0, shipping = 50, total;
            for(int i=0; i<ds.Tables[0].Rows.Count; i++)
            {
                subtotal += Convert.ToDouble(ds.Tables[0].Rows[i]["Price"])*Convert.ToInt32(ds.Tables[0].Rows[i]["Quantity"]); 
            }
            lblSubtotal.Text = subtotal.ToString();
            lblShipping.Text = shipping.ToString();
            total = shipping + subtotal;
            lblTotal.Text = total.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Checkout.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string commandName = e.CommandName;
            string[] arguments = e.CommandArgument.ToString().Split(';');
            int productId = Convert.ToInt32(arguments[0]);
            int clickedIndex = Convert.ToInt32(arguments[1]);
            TextBox txtQuantity = (TextBox)GridView1.Rows[clickedIndex].FindControl("txtQuantity");
            string quantity = txtQuantity.Text;
            if (commandName.Equals("update"))
            {
                cartObj.updateRecord(Convert.ToInt32(userId), Convert.ToInt32(productId), Convert.ToInt32(quantity));
                fillGrid();
            }
            else if (commandName.Equals("delete"))
            {
                cartObj.deleteRecord(Convert.ToInt32(userId), Convert.ToInt32(productId));
                fillGrid();
            }
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
    }
}