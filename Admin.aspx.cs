using System;
using System.Web.UI;

namespace WebApp
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void ManageUsers(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void OpenSettings(object sender, EventArgs e)
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
