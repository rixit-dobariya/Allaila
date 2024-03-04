using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Allaila.Helpers;

namespace Allaila
{
    public partial class RegisterSignIn : System.Web.UI.Page
    {
        RegisterLogin obj;
        protected void Page_Load(object sender, EventArgs e)
        {
            obj = new RegisterLogin();
            lblLoginResult.Visible = false;
            lblRegisterError.Visible = false;
            lblRegisterResponse.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string firstName = txtFirstName.Text;
            string lastName = txtLastName.Text;
            string email = txtEmail.Text;
            string password = txtPassword1.Text;
            string phone = txtPhoneNo.Text;

            if (obj.emailExists(email))
            {
                lblRegisterError.Text = "Email Already exists!";
                lblRegisterError.Visible = true;
            }
            else
            {
                obj.registerUser(firstName, lastName, email, phone, password);
                clearRegisterForm();
                lblRegisterResponse.Text = "Registration successful!";
                lblRegisterResponse.Visible = true;
            }
        }
        void clearRegisterForm()
        {
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtEmail.Text = "";
            txtPassword1.Text = "";
            txtPassword2.Text = "";
            txtEmail.Text = "";
            txtPhoneNo.Text = "";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtLoginEmail.Text;
            string password = txtLoginPassword.Text;

            int userId = obj.getUserId(email, password);
            if (userId == -1)
            {
                lblLoginResult.Text = "Invalid email or password";
                lblLoginResult.Visible = true;
            }
            else
            {
                Session["userId"] = userId;
                int userRoleId = obj.getUserRoleId(email);
                if(userRoleId == 0)
                {
                    Response.Redirect("index.aspx?userId="+userId);
                }
                else
                {
                    Response.Redirect("Admin/index.aspx?userId=" + userId);
                }
            }
        }
    }
}