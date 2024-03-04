using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Allaila.Helpers;

namespace Allaila
{
    public partial class MyProfile : System.Web.UI.Page
    {
        UserOperations userOps;
        protected void Page_Load(object sender, EventArgs e)
        {
            userOps = new UserOperations();
            if (!IsPostBack)
            { 
                fillData();
            }
        }
        void fillData()
        {
            String userId = Session["userId"].ToString();
            User user = userOps.fetchUser(userId);
            txtFirstName.Text = user.firstName;
            txtLastName.Text = user.lastName;
            txtEmail.Text = user.email;
            txtPhoneNo.Text = user.phoneNo;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String userId = Session["userId"].ToString();
            string firstName = txtFirstName.Text;
            string lastName = txtLastName.Text;
            string email = txtEmail.Text;
            string phoneNo = txtPhoneNo.Text;
            userOps.updateUser(userId, firstName, lastName, email, phoneNo);
            fillData();
        }
    }
}