using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Allaila
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["userId"]!=null)
            {
                string userId = Session["userId"].ToString();
                MyProfile.InnerHtml= @"<ul>
                    <li><a href='MyProfile.aspx' ><i class='ti-user'></i>My Profile</a></li>
                    <li><a href='account.html' ><i class='ti-package'></i>My Orders</a></li>
                    <a href='account.html' class='btn_1'>Sign Out</a>
                    </ul>
                    ";
            }
        }
    }
}