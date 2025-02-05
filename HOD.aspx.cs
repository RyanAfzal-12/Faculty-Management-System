using System;
using System.Web.UI;

namespace WebApp
{
    public partial class HOD : System.Web.UI.Page
    {
        protected void ManageFaculty(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void ViewReports(object sender, EventArgs e)
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
