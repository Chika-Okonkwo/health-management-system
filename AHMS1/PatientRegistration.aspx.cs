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
    public partial class PatientRegistration : System.Web.UI.Page
    {
        string myCon=System.Configuration.ConfigurationManager.ConnectionStrings["HMSConnect"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //On save button click
        protected void btnSave_Click(object sender, EventArgs e)
        {
              SqlConnection connection = new SqlConnection(myCon);
              try
              {
                  //check if patient number exists
                  SqlCommand sqlcom = new SqlCommand("select patientno from patientdetails where patientno = @patno", connection);
                  sqlcom.CommandType = CommandType.Text;
                  sqlcom.Parameters.AddWithValue("@patno", txtPatientNo.Text);
                  sqlcom.Connection = connection;
                  connection.Open();
                  SqlDataReader dr = sqlcom.ExecuteReader();
                  //if exists print out error msg
                  if (dr.Read())
                  {
                      lblMsg.Visible = true;
                      lblMsg.Text = "patient number already exists!";
                      dr.Close();

                  }
                  else
                  {
                      //if not exists use stored procedure to insert new details
                      using (SqlConnection sqlcon = new SqlConnection(myCon))
                      using (SqlCommand cmd = new SqlCommand("setPatientRegistration", sqlcon))
                      {
                          cmd.CommandType = CommandType.StoredProcedure;
                          cmd.Parameters.AddWithValue("@a", txtPatientNo.Text);
                          cmd.Parameters.AddWithValue("@b", txtFName.Text);
                          cmd.Parameters.AddWithValue("@c", txtLName.Text);
                          cmd.Parameters.AddWithValue("@d", txtMName.Text);
                          cmd.Parameters.AddWithValue("@e", ddlSex.SelectedValue);
                          cmd.Parameters.AddWithValue("@f", txtAddress.Text);
                          cmd.Parameters.AddWithValue("@g", ddlReligion.SelectedValue);
                          cmd.Parameters.AddWithValue("@h", txtOccupation.Text);
                          cmd.Parameters.AddWithValue("@i", ddlMStatus.SelectedValue);
                          cmd.Parameters.AddWithValue("@j", txtComplaint.Text);
                          cmd.Parameters.AddWithValue("@k", txtComHistory.Text);
                          cmd.Parameters.AddWithValue("@l", txtMedHistory.Text);
                          cmd.Parameters.AddWithValue("@m", txtFsocHistory.Text);
                          cmd.Parameters.AddWithValue("@n", txtDHistory.Text);
                          cmd.Parameters.AddWithValue("@o", txtDOB.Text);
                          
                          cmd.Connection = sqlcon;
                          //open connection to database
                          sqlcon.Open();
                          //execute stored procedure command
                          int r = cmd.ExecuteNonQuery();
                          if (r > 0)
                          {
                              Response.Redirect("PatientRecord.aspx?row = "+r);
                          }
                          else
                          {
                              
                              lblMsg.Visible = true;
                              lblMsg.Text = "complete all fields!";
                          }
                          sqlcon.Close();


                      }
                  }
              }
              finally
              {
                  //close connection to database
                  connection.Close();
                  connection.Dispose();
              }
        }
    }
}