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
    public partial class AddVitals : System.Web.UI.Page
    {
        string myCon = System.Configuration.ConfigurationManager.ConnectionStrings["HMSConnect"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(myCon);
            try
            {
                using (SqlConnection sqlcon = new SqlConnection(myCon))
                using (SqlCommand cmd = new SqlCommand("setVitalsList", sqlcon))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@a", txtPatientNo.Text);
                    cmd.Parameters.AddWithValue("@b", txtTemp.Text);
                    cmd.Parameters.AddWithValue("@c", txtWeight.Text);
                    cmd.Parameters.AddWithValue("@d", txtBP.Text);
                    cmd.Parameters.AddWithValue("@dt", Convert.ToDateTime(DateTime.Now.ToShortDateString()));

                    cmd.Connection = sqlcon;
                    sqlcon.Open();
                    int r = cmd.ExecuteNonQuery();
                    if (r > 0)
                    {
                        Response.Redirect("PatientVitals.aspx?row = " + r);
                    }
                    else
                    {

                        lblMsg.Visible = true;
                        lblMsg.Text = "complete all fields!";
                    }
                    sqlcon.Close();


                }
            }
            finally
            {
                connection.Close();
                connection.Dispose();
            }
        }

    }
}