using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Allaila.Helpers;
using System.Data;

namespace Allaila
{
    
    public partial class Checkout : System.Web.UI.Page
    {
        AddressOperations addressObj;
        string userId;
        double subtotal = 0, shipping = 50, total;
        CartOperations cartObj;
        OrderOpeations ordersObj;
        protected void Page_Load(object sender, EventArgs e)
        {
            addressObj = new AddressOperations();
            cartObj = new CartOperations();
            ordersObj = new OrderOpeations();
            userId = Session["userId"].ToString();
            if(!IsPostBack)
            {
                lblShipping.Text = "50";
            }
            getData();
            fillData();
        }

        void getData()
        {
            DataSet ds = cartObj.getCartDataSet(Convert.ToInt32(Session["userId"].ToString()));
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                subtotal += Convert.ToDouble(ds.Tables[0].Rows[0]["Price"]);
            }
        }

        void fillData()
        {
            lblShipping.Text = rbExpress.Checked ? "70" : "50";
            lblSubtotal.Text = subtotal.ToString();
            total = subtotal + Convert.ToDouble(lblShipping.Text);
            lblTotal.Text = total.ToString();

            userId = Session["userId"].ToString();
            DataList1.DataSource = cartObj.getDataSet(userId);
            DataList1.DataBind();
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            string shippingAddressId = addressObj.addAddress(userId, txtName.Text, txtAddress.Text, txtCity.Text, txtState.Text, txtPinCode.Text, txtPhone.Text);
            string billingAddressId = shippingAddressId;
            if (CheckBox1.Checked)
            {
                billingAddressId = addressObj.addAddress(userId, txtName1.Text, txtAddress1.Text, txtCity1.Text, txtState1.Text, txtPinCode1.Text, txtPhone1.Text);
            }

            string orderId = ordersObj.getOrderId(userId,billingAddressId,shippingAddressId,Convert.ToInt32(shipping),total);
            DataSet ds = new DataSet();
            ds = cartObj.getCartDataSet(Convert.ToInt32(userId));
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                string productId = ds.Tables[0].Rows[0][5].ToString();
                string size = ds.Tables[0].Rows[0][2].ToString();
                string quantity = ds.Tables[0].Rows[0][3].ToString();
                string price = ds.Tables[0].Rows[0][4].ToString();
                ordersObj.addOrderDetails(orderId, productId, size, quantity, price);
            }
            Response.Redirect("Confirm.aspx");
        }

        protected void rbStandard_CheckedChanged(object sender, EventArgs e)
        {
            shipping = 50;
            lblShipping.Text = "50";
        }

        protected void rbExpress_CheckedChanged(object sender, EventArgs e)
        {
            shipping = 70;
            lblShipping.Text = "70";
        }
    }
}