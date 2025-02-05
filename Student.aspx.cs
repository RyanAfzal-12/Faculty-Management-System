using System;
using System.Web.UI;

namespace WebApp
{
    public partial class Student : System.Web.UI.Page
    {
        protected void ViewCourses(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void CheckGrades(object sender, EventArgs e)
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
