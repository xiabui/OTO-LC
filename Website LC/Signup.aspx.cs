using Models;
using MVC_DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website_LC
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private bool isValidToRegister()
        {
            if(txtPassword.Text != "" && txtReEnterPassword.Text != "")
            {
                if(txtPassword.Text.Trim() == txtReEnterPassword.Text.Trim())
                {
                    return true;
                }
                else
                {
                    Response.Write("<script>alert('Your password is not match! Please try again.');</script>");
                    txtPassword.Focus();
                    return false;
                }
            }

            return false;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (isValidToRegister())
            {
                string password = txtPassword.Text,
                       email = txtEmail.Text,
                       username = txtUsername.Text;

                User user = new User();
                user.Password = password;
                user.Email = email;
                user.UserName = username;

                try
                {
                    DL_User userDL = new DL_User();
                    userDL.SignupAccount(user);
                    Response.Write("<script>alert('Sign up sucessfully!');</script>");
                    Response.Redirect("Login.aspx");
                }
                catch(Exception ex)
                {
                    Response.Write("<script>alert('"+ ex + "');</script>");
                }
            }
        }
    }
}