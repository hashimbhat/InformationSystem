using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InformationSystem
{
    public partial class Login : Page
    {
        
            string conn = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            string userid = txtUserName.Text;
            string password = txtPassword.Text;
            using (SqlConnection conx=new SqlConnection (conn) )
            { conx.Open ();
                //string query = "select * from tbLogin where UserName=@UserName And Password=@Password";
                SqlCommand cmd = new SqlCommand("prLogin", conx);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Email", userid);
                cmd.Parameters.AddWithValue("@Password", password);
                SqlDataReader dr = cmd.ExecuteReader ();
                if (dr.Read ())
                {
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    Response.Write("<script> alert('hy kya Goam');</script>");
                }
                
            
            }

        }
    }
}