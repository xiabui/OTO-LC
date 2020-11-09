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
                /* Lưu lại thông tin tên của người dùng để có thể kiểm tra
                 * quyền của người dùng. Chủ yếu để phân biệt giữa người mua
                 * và người bán. 
                 */

                //Lưu thông tin người dùng vào session
                Session["username"] = txtUsername.Text.ToString();

                //Đánh dấu người dùng đã đăng nhập.
                Session["signed_in"] = 1;

                //
                Session["user_role"] = dlLogin.GetRole(txtUsername.Text.ToString());

                //Chuyển hướng người dùng sang trang chủ.
                Response.Redirect("Home.aspx");
            }
            else
            {
                lbWrongFail.Text = "Failed! Username or password is wrong!";
            }
        }
    }
}