using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MVC_DataAccessLayer;

namespace Website_LC
{
    public partial class Login : System.Web.UI.Page
    {
        DL_Login dlLogin = new DL_Login();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            if(dlLogin.Login(txtUsername.Text.Trim(), txtPassword.Text.Trim()))
            {
                //Session["username"] = txtUsername.Text.ToString();
                Response.Redirect("Homepage.aspx");
            }
            else
            {
                lbWrongFail.Text = "Failed! Username or password is wrong!";
            }
        }
    }
}