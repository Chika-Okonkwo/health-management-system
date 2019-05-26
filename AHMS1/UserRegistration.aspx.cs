using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AHMS1
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        string myCon = System.Configuration.ConfigurationManager.ConnectionStrings["HMSConnect"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnCreate_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(myCon);
            try
            {
                SqlCommand sqlcom = new SqlCommand("select username from hmsusers where username = @uname", connection);
                sqlcom.CommandType = CommandType.Text;
                sqlcom.Parameters.AddWithValue("@uname", txtUname.Text);
                sqlcom.Connection = connection;
                connection.Open();
                SqlDataReader dr = sqlcom.ExecuteReader();
                if (dr.Read())
                {
                    alrtFail.Visible = true;
                    lblAlrtFail.Text = "Username already exists!";
                    dr.Close();
                   
                }

                else
                {
                    SqlConnection connection2 = new SqlConnection(myCon);
                    SqlCommand sqlcom2 = new SqlCommand("select email from hmsusers where email = @email", connection2);
                    sqlcom2.CommandType = CommandType.Text;
                    sqlcom2.Parameters.AddWithValue("@email", txtEmail.Text);
                    sqlcom2.Connection = connection2;
                    connection2.Open();
                    SqlDataReader dr2 = sqlcom2.ExecuteReader();
                    if (dr2.Read())
                    {
                        alrtFail.Visible = true;
                        lblAlrtFail.Text = "Email already exists!";
                        dr2.Close();
                    }
                    else
                    {
                        using (SqlConnection sqlcon = new SqlConnection(myCon))
                        using (SqlCommand cmd = new SqlCommand("setUserRegistration", sqlcon))
                        {
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@a", txtUname.Text);
                            cmd.Parameters.AddWithValue("@b", txtEmail.Text);
                            cmd.Parameters.AddWithValue("@c", txtPword.Text);
                            cmd.Parameters.AddWithValue("@d", txtFname.Text);
                            cmd.Parameters.AddWithValue("@e", txtLname.Text);
                            cmd.Parameters.AddWithValue("@f", ddlGender.SelectedValue);
                            cmd.Connection = sqlcon;
                            sqlcon.Open();
                            int r = cmd.ExecuteNonQuery();
                            if (r > 0)
                            {
                                alrtFail.Visible = false;
                                alrtSuccess.Visible = true;
                                clear();
                            }
                            else
                            {
                                alrtSuccess.Visible = false;
                                alrtFail.Visible = true;
                                lblAlrtFail.Text = "Complete all fields!";
                            }

                        }
                    }
                    
                    dr2.Close();
                }
                dr.Close();
            }
            finally
            {

                connection.Close();
                connection.Dispose();
            }
            
        }
        public void clear()
        {
            txtUname.Text = null;
            txtEmail.Text = null;
            txtPword.Text = null;
            txtConPword.Text = null;
            txtFname.Text = null;
            txtLname.Text = null;
            ddlGender.SelectedIndex = 0;
        }
    }
}