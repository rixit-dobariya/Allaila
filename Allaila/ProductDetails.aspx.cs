using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Allaila.Helpers;

namespace Allaila
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        ProductOperations obj;
        CartOperations cartObj;
        protected void Page_Load(object sender, EventArgs e)
        {
            obj = new ProductOperations();
            cartObj = new CartOperations();
            if (!IsPostBack)
            {
                fillData();
            }
        }
        
        void fillData()
        {
            hfShoeId.Value = Request.QueryString["Shoe_Id"];
            string shoeId = Request.QueryString["Shoe_Id"];
            obj.fetchProduct(Convert.ToInt32(shoeId));
            lblBrand.Text = obj.brandName;
            Image1.ImageUrl = obj.productImage.Substring(2);
            Image2.ImageUrl = obj.productImage.Substring(2);
            lblCategory.Text = obj.categoryName;
            lblDescription.Text = obj.description;
            lblName.Text = obj.productName;
            lblName2.Text = obj.productName;
            lblNewPrice.Text = (obj.price - (obj.price * obj.discount / 100)).ToString();
            lblOldPrice.Text = obj.price.ToString();
            lblPercentage.Text = obj.discount.ToString();
            lblSize.Text = getSizeString();

            ListItem li1 = new ListItem("6");
            if(obj.stock1 == 0)
                li1.Enabled = false;
            ddlSize.Items.Add(li1);

            ListItem li2 = new ListItem("7");
            if (obj.stock2 == 0)
                li2.Enabled = false;
            ddlSize.Items.Add(li2);

            ListItem li3 = new ListItem("8");
            if (obj.stock3 == 0)
                li3.Enabled = false;
            ddlSize.Items.Add(li3);

            ListItem li4 = new ListItem("9");
            if (obj.stock4 == 0)
                li4.Enabled = false;
            ddlSize.Items.Add(li4);

            ListItem li5 = new ListItem("10");
            if (obj.stock5 == 0)
                li5.Enabled = false;
            ddlSize.Items.Add(li5);
        }
        string getSizeString()
        {
            string sizeString="";
            int[] size = new int[5];
            if (obj.stock1 != 0)
                sizeString += "6, ";
            if (obj.stock2 != 0)
                sizeString += "7, ";
            if (obj.stock3 != 0)
                sizeString +="8, ";
            if (obj.stock4 != 0)
                sizeString += "9, ";
            if (obj.stock5 != 0)
                sizeString += "10, ";
            if (sizeString.Length != 0)
                return sizeString.Substring(0, sizeString.Length - 1);
            else
                return "";
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            Response.Redirect($"Cart.aspx?Shoe_Id={hfShoeId.Value}&Quantity={quantity_1.Text}&Size={ddlSize.SelectedValue}");
        }
    }
}