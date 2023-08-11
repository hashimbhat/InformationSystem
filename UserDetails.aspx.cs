using System;
using System.Collections.Generic;
using System.Configuration;

using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace information_system
{
    public partial class UserDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                bindgrdUserDetails();
            }

        }
        string cs = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;
        void bindgrdUserDetails()
        {
            using (SqlConnection scon = new SqlConnection(cs))
            {
                try
                {
                    scon.Open();

                    using (SqlCommand sqlCommand = new SqlCommand("prUserFetchAll", scon))
                    {
                        sqlCommand.CommandType = CommandType.StoredProcedure;
                        using (SqlDataReader reader = sqlCommand.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                DataTable dt = new DataTable();
                                dt.Load(reader);
                                grdUserDetails.DataSource = dt;
                                grdUserDetails.DataBind();
                            }
                            else
                            {
                                grdUserDetails.DataSource = null;
                                grdUserDetails.DataBind();
                            
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    // Handle any exceptions that might occur during database operations.
                    // For example, you can log the exception, display an error message, etc.
                    // Remember to replace "YourErrorHandlingMethod" with your actual error handling code.
                  
                }
            }

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            bindgrdUserDetails();
        }

        protected void grdUserDetails_RowCommand(object sender, GridViewCommandEventArgs ex)
        {
            int Id = Convert.ToInt32(ex.CommandArgument);
            try
            {
                if (ex.CommandName == "View" || ex.CommandName == "Edit")
                {

                    using (SqlConnection conx = new SqlConnection(cs))
                    {
                        conx.Open();
                        //string query = "select * from tbLogin where UserName=@UserName And Password=@Password";
                        SqlCommand cmd = new SqlCommand("prUserFetchById", conx);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Id", Id);
                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.Read())
                        {
                            SetDetails(dr,ex.CommandName);
                        }
                        else
                        {
                            Response.Write("<script> alert('hy kya Goam');</script>");
                        }


                    }
                }
                //else if (ex.CommandName == "Edit")
                //{
                    

                //}
                if (ex.CommandName == "Delete")
                {

                }
            }

            catch (Exception exp)
            {
            }
        }


        public void SetDetails(SqlDataReader dr,string comName)
        {
            txtFirstName.Text = dr["FirstName"].ToString();
            txtLastName.Text = dr["LastName"].ToString();
            txtAddress.Text = dr["Address"].ToString();
            txtEmail.Text = dr["Email"].ToString();
            txtPhoneNo.Text = dr["PhoneNo"].ToString();
            rdGender.SelectedValue = dr["Gender"].ToString();
            chkIsMarried.Checked = Convert.ToBoolean(dr["IsMarried"]);
            drpCity.SelectedValue = dr["City"].ToString();
            drpState.SelectedValue = dr["State"].ToString();
            drpCountry.SelectedValue = dr["Country"].ToString();
            EnableDisableControls(true);
            if (comName=="View")
            {
                EnableDisableControls(false);
                
            }


        }

        public void EnableDisableControls(bool flag)
        {
            btnRegister.Enabled = flag;
            txtFirstName.Enabled = flag;
            txtLastName.Enabled = flag;
            txtAddress.Enabled = flag;
            txtEmail.Enabled = flag;
            txtPhoneNo.Enabled = flag;
            rdGender.Enabled = flag;
            chkIsMarried.Enabled = flag;
            drpCity.Enabled = flag;
            drpState.Enabled = flag;
            drpCountry.Enabled = flag;

        }

        protected void btnAddUser_Click(object sender, EventArgs e)
        {
            ResetControls();
        }

        protected void btnReSet_Click(object sender, EventArgs e)
        {
            ResetControls();
        }

        public void ResetControls()
        {
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtAddress.Text = "";
            txtEmail.Text = "";
            txtPhoneNo.Text= "";
            rdGender.Enabled = true;
            chkIsMarried.Enabled = true;
            drpCity.Enabled = true;
            drpState.Enabled = true;
            drpCountry.Enabled = true;

        }

        protected void grdUserDetails_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }
    }
}