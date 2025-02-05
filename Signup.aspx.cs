using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class Signup : System.Web.UI.Page
    {
        dbcon dbcon = new dbcon();
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        public void btnLogin_Click(object sender , EventArgs e)
        {
            Response.Redirect("Login.aspx");

        }

        public void btnSignup_Click(object sender , EventArgs e)
        {
            string name = txtUserName.Text.Trim();
            string password = txtPassword.Text.Trim();
            int access = int.Parse(ddlAccessLevel.SelectedValue);
            int activestatus = int.Parse(ddlStatus.SelectedValue);
            bool signup = dbcon.Signup(name, password, access, activestatus);
            if (signup)
            {
                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Signup Successfull";
            }
            else
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Signup Failed";
            }
        }
    }
}