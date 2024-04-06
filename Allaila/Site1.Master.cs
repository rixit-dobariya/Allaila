using System;

namespace Allaila
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userId"] != null)
            {
                string userId = Session["userId"].ToString();
                MyProfile.InnerHtml = @"<ul>
                    <li><a href='MyProfile.aspx' ><i class='ti-user'></i>My Profile</a></li>
                    <li><a href='Orders.aspx' ><i class='ti-package'></i>My Orders</a></li>
                    <a href='SignOut.aspx' class='btn_1'>Sign Out</a>
                    </ul>
                    ";
            }
        }
    }
}