using Allaila.Helpers;
using System;

namespace Allaila.Admin
{
    public partial class UpdateUser : System.Web.UI.Page
    {
        UserOperations obj;
        string userId;
        protected void Page_Load(object sender, EventArgs e)
        {
            obj = new UserOperations();
            if (!IsPostBack)
            {
                setData();
            }
        }

        void setData()
        {
            userId = Request.QueryString["userId"];
            obj.fetchUser(userId);

            txtFirstName.Text = obj.firstName;
            txtLastName.Text = obj.lastName;
            txtPassword.Text = obj.password;
            txtEmail.Text = obj.email;
            txtMobileNo.Text = obj.phoneNo;
            ddlUserRole.SelectedValue = obj.userRoleId;
        }

        protected void btnUpdateUser_Click(object sender, EventArgs e)
        {
            userId = Request.QueryString["userId"];
            obj.updateUser(userId, txtFirstName.Text, txtLastName.Text, txtEmail.Text, txtMobileNo.Text, ddlUserRole.SelectedValue);
            Response.Redirect("Users.aspx");
        }
    }
}