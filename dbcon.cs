using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApp
{
    public class dbcon
    {
        private string ConnectionString = "Data Source=DESKTOP-ESORQ5C\\SQLEXPRESS;Initial Catalog=NewDB;Integrated Security=True;Encrypt=True;TrustServerCertificate=True";

        public DataTable Login(string name, string password)
        {

            DataTable dt = new DataTable();
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM Users WHERE usr_name = @usr_name AND usr_password = @usr_password", con))
                {
                    cmd.Parameters.AddWithValue("@usr_name ", name);
                    cmd.Parameters.AddWithValue("@usr_password ", password);
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    try
                    {
                        con.Open();
                        adapter.Fill(dt);

                    }
                    catch (SqlException ex)
                    {
                        Console.WriteLine(ex.Message);
                    }

                }
                return dt;
            }


        }

        public bool Signup(string name, string password, int accesslevel, int activestatus)
        {
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO Users  (usr_name,usr_password, usr_access_level,usr_active_status) VALUES(@usr_name ,@usr_password , @usr_access_level , @usr_active_status)", con))
                {
                    cmd.Parameters.AddWithValue("@usr_name ", name);
                    cmd.Parameters.AddWithValue("@usr_password ", password);
                    cmd.Parameters.AddWithValue("@usr_access_level ", accesslevel);
                    cmd.Parameters.AddWithValue("@usr_active_status ", activestatus);
                    con.Open();
                    int rowsinserted = cmd.ExecuteNonQuery();
                    return rowsinserted > 0;
                }
            }
        }
    }
}