using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class Login : System.Web.UI.Page
    {
        dbcon dbcon = new dbcon();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void btnLogin_Click(object sender , EventArgs e)
        {

            string name = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();
            DataTable dt  = dbcon.Login(name, password);
            if (dt != null && dt.Rows.Count > 0)
            {
                int accesslevel = Convert.ToInt32(dt.Rows[0]["usr_access_level"]);
                Session["name"] = name;
                Session["accesslevel"] = accesslevel;

                switch (accesslevel)
                {
                    case 0:
                        Response.Redirect("~/Admin.aspx");
                        break;
                    case 1:
                        Response.Redirect("~/HOD.aspx");
                        break;
                    case 2:
                        Response.Redirect("~/Teacher.aspx");
                        break;
                    case 3:
                        Response.Redirect("~/Rector.aspx");
                        break;
                    case 4:
                        Response.Redirect("~/Student.aspx");
                        break;

                }
            }

        }

    }
    }
