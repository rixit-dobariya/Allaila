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
        RegisterLoginOperations obj;
        protected void Page_Load(object sender, EventArgs e)
        {
            obj = new RegisterLoginOperations();
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

            obj.getUser(email, password);
            if (obj.userId == "-1")
            {
                lblLoginResult.Text = "Invalid email or password";
                lblLoginResult.Visible = true;
            }
            else
            {
                Session["userId"] = obj.userId;
                string userRoleId = obj.userRoleId;
                if (userRoleId == "0")
                {
                    Response.Redirect("index.aspx");
                }
                else
                {
                    Response.Redirect("Admin/index.aspx");
                }
            }
        }
    }
}