using System;
using System.Web.UI;

namespace WebApp
{
    public partial class Teacher : System.Web.UI.Page
    {
    protected void ManageCourses(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void ViewSchedule(object sender, EventArgs e)
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
