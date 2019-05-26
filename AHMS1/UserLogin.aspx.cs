using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AHMS1
{
    public partial class UserLogin : System.Web.UI.Page
    {
        string myCon = System.Configuration.ConfigurationManager.ConnectionStrings["HMSConnect"].ToString();
        SqlConnection SqlCon = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCon = new SqlConnection(myCon);
                SqlCon.Open();
                string com = "select username, password from hmsusers where username = '" + txtUsername.Text.Trim() + "' and password = '" + txtPWord.Text.Trim() + "'";
                SqlCommand cmd = new SqlCommand(com, SqlCon);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    if (dr.HasRows == true)
                    {
                        SqlConnection SqlCon2 = new SqlConnection(myCon);
                        SqlCon2.Open();
                        string com2 = "select username, password, userid, status, roleid, flag from hmsusers where username = '" + txtUsername.Text.Trim() + "' and password = '" + txtPWord.Text.Trim() + "' and status = 'A' and flag = 0";
                        SqlCommand cmd2 = new SqlCommand(com2, SqlCon2);
                        SqlDataReader dr2 = cmd2.ExecuteReader();
                        if (dr2.Read())
                        {
                            if (dr2.HasRows == true)
                            {
                                Session["username"] = txtUsername.Text.Trim();
                                Session["userid"] = dr2["userid"].ToString();
                                Session["roleid"] = dr2["roleid"].ToString();

                                if (Convert.ToInt32(dr2["roleid"]) == 1) 
                                {
                                    Response.Redirect("DispensaryList.aspx");
                                }
                                else 
                                {
                                    Response.Redirect("Home.aspx");
                                }
                                
                            }
                        }
                        else
                        {
                            lblAlrtFail.Text = "Contact Admin!";
                            alrtFailure.Visible = true;
                        }
                    }
                }
                else
                {
                    lblAlrtFail.Text = "Incorrect Username or Password!";
                    alrtFailure.Visible = true;
                }
            }

            catch (SqlException)
            {
                throw;
            }
            finally
            {
                SqlCon.Close();
            }
        }
    }
}