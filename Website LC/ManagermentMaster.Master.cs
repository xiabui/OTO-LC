using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website_LC
{
    public partial class ManagermentMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
             * Dòng bool isLogin bên dưới dùng để kiểm tra người dùng đã đăng nhập chưa
             * nếu họ chưa đăng nhập thì sẽ đánh dấu isLogin = false.
             * 
             * Trong phần đầu có Session["signed_in"] (gọi tắt là 'ses'). Thì tại phần
             * ses?. (chấm hỏi rồi đến chấm), dùng để kiểm tra một đối tượng có tồn tại không.
             * Vì trang chủ sẽ load khi người dùng chưa vào trang đăng nhập nên signed_in
             * hiện tại không tồn tại session trong trình duyệt của người dùng nên nó sẽ
             * gây ra lỗi. '?.' sẽ kiểm tra - nếu không tồn tại thì nó sẽ gán giá trị là null.
             * Vì vậy, nếu null thì sẽ gán là người dùng chưa đăng nhập, tại đây chúng ta cũng
             * không cần kiểm tra signed_in là 1 hay 0 vì nếu signed_in tồn tại thì user đã đăng nhập
             * vào hệ thống, tuy nhiên chúng ta làm vậy để phát triển tính năng 'Vắng' hay
             * off tạm thời.
             */

            bool isLogin = Session["signed_in"]?.ToString() == null ? false
                           : Session["signed_in"].ToString() == "1" ? true : false;
            bool isGuess = Session["user_role"]?.ToString() == null ? true
                           : Session["user_role"].ToString() == "sller" || Session["user_role"].ToString() == "admin"
                           ? false : true;
            //Mặc định isLogin khi kiểm tra trong () nếu == true thì đúng.
            if (isLogin)
            {
                hplRegister.Visible = hplSignIn.Visible = false;
                hplProfile.Visible = hplSignOut.Visible = true;
            }
            else
            {
                hplRegister.Visible = hplSignIn.Visible = true;
                hplProfile.Visible = hplSignOut.Visible = false;
            }

            if (isGuess)
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                hplSellCar.Text = "BACK TO HOME";
            }
        }

        protected void SellCarClick(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}