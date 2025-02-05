using System;
using System.Web.UI;

namespace WebApp
{
    public partial class Rector : System.Web.UI.Page
    {

        protected void HomeRedirect(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void ContactRedirect(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Logout(object sender, EventArgs e)
        {
            Session.Clear(); 
            Response.Redirect("Login.aspx"); 
        }
    }
}
