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
    public partial class Contact : System.Web.UI.Page
    {
        DL_User dL_User = new DL_User();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            ContactModel contact = new ContactModel();
            contact.Fullname = txtFullname.Text;
            contact.Email = txtEmail.Text;
            contact.Phone = txtPhone.Text;
            contact.Content = txtContent.Text;

            try
            {
                dL_User.AddContact(contact);
                Response.Write("<script>alert('Successfully');</script>");
                Response.Redirect("ThankYou.aspx");
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('An error was happened! Please try again');</script>");
            }
            
        }
    }
}