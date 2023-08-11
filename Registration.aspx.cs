using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq.Expressions;

namespace InformationSystem
{
    public partial class Registration : Page
    {
        
            string conn = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnRegister_Click(object sender, EventArgs e)
        {

            try

            {
                //[prUserSave]
                using (SqlConnection con = new SqlConnection(conn))
                {
                    con.Open();

                    SqlCommand cmd = new SqlCommand("prUserSave", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
                    cmd.Parameters.AddWithValue("@LastName", txtLastName.Text);
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
                    cmd.Parameters.AddWithValue("@PhoneNo", txtPhoneNo.Text);
                    cmd.Parameters.AddWithValue("@Gender", rdGender.SelectedValue);
                    cmd.Parameters.AddWithValue("@IsMarried", chkIsMarried.Checked);
                    cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
                    cmd.Parameters.AddWithValue("@City", drpCity.SelectedValue);
                    cmd.Parameters.AddWithValue("@State", drpState.SelectedValue);
                    cmd.Parameters.AddWithValue("@Country", drpCountry.SelectedValue);
                    cmd.Parameters.AddWithValue("@CreatedBy", "1");
                    cmd.ExecuteNonQuery();
                    Response.Write("<script> alert('Registration SuccessFull');</script>");

                }
            }
                catch( Exception ex){
                Response.Write("<script> alert('"+ex.Message+"');</script>");
            }

            }
        }
    }
