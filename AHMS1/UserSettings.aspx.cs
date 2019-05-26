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
    public partial class UserSettings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string myCon = System.Configuration.ConfigurationManager.ConnectionStrings["HMSConnect"].ToString();
            using (SqlConnection connection = new SqlConnection (myCon))
            using (SqlCommand cmd = new SqlCommand("getPword", connection))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@uid", Session["userid"]);
                cmd.Parameters.AddWithValue("@pword", txtOldPword.Text);
                cmd.Connection = connection;
                connection.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    SqlConnection SqlCon = new SqlConnection(myCon);
                    try
                    {
                        SqlCon.Open();
                        //SqlCommand sqlcom = new SqlCommand("UpdatePword" +Session[""]+", '"+txtNewPword.Text+"'", SqlCon);
                        SqlCommand sqlcom = new SqlCommand("UpdatePword", SqlCon);
                        sqlcom.CommandType = CommandType.StoredProcedure;
                        sqlcom.Parameters.AddWithValue("@uid", Session["userid"]);
                        sqlcom.Parameters.AddWithValue("@new", txtNewPword.Text.Trim());
                        sqlcom.ExecuteNonQuery();

                        // Alert success
                        alrtSuccess.Visible = true;

                        // Empty textboxes
                        txtConPword.Text = null;
                        txtNewPword.Text = null;
                        txtOldPword.Text = null;
                    }
                    finally
                    {
                        dr.Close();
                        dr.Dispose();
                        SqlCon.Close();
                        SqlCon.Dispose();
                    }
                    
                }
                else
                {
                    lblMsg.Text = "Password Incorrect!";
                }


            }
        }
    }
}