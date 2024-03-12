using Allaila.Helpers;
using System;

namespace Allaila.Admin
{
    public partial class AddUser : System.Web.UI.Page
    {
        UserOperations obj;
        protected void Page_Load(object sender, EventArgs e)
        {
            obj = new UserOperations();
        }

        protected void btnAddUser_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            if (!obj.emailExists(email))
            {
                obj.addUser(txtFirstName.Text, txtLastName.Text, email, txtMobileNo.Text, txtPassword.Text, ddlUserRole.SelectedValue);
                Response.Redirect("Users.aspx");
            }
            else
            {
                lblResponse.Text = "Email already exists!";
            }
        }
    }
}