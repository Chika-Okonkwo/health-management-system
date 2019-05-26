using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AHMS1
{
    public partial class ConsultationPage : System.Web.UI.Page
    {
        string myCon = System.Configuration.ConfigurationManager.ConnectionStrings["HMSConnect"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                //show Patient Details
                SqlConnection SqlCon = new SqlConnection(myCon);
                SqlCon.Open();
                SqlCommand cmd = new SqlCommand("select * from patientdetails where patientid="+id, SqlCon);

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    txtAddress.Text = dr["Address"].ToString();
                    txtDOB.Text = dr["DOB"].ToString();
                    txtFName.Text = dr["FirstName"].ToString();
                    txtLName.Text = dr["LastName"].ToString();
                    txtMName.Text = dr["Middlename"].ToString();
                    txtOccupation.Text = dr["Occupation"].ToString();
                    txtPatientNo.Text = dr["PatientNo"].ToString();
                    
                    ddlMStatus.SelectedValue = dr["MaritalStatus"].ToString();
                    ddlReligion.SelectedValue = dr["Religion"].ToString();
                    ddlSex.SelectedValue = dr["Sex"].ToString();
                    txtAge.Text = dr["Age"].ToString();
                }
                dr.Close();
                SqlCon.Close();
                txtAddress.Enabled = false;
                txtAge.Enabled = false;
                txtDOB.Enabled = false;
                txtFName.Enabled = false;
                txtLName.Enabled = false;
                txtMName.Enabled = false;
                txtOccupation.Enabled = false;
                txtPatientNo.Enabled = false;
                txtPhoneNo.Enabled = false;
                ddlMStatus.Enabled = false;
                ddlReligion.Enabled = false;
                ddlSex.Enabled = false;
     
                //Show vitals
                SqlConnection SqlCon1 = new SqlConnection(myCon);
                SqlCon1.Open();
                SqlCommand cmd1 = new SqlCommand("select BloodPressure, BodyTemp, Weight from Consultation where patientid="+id, SqlCon1);

                SqlDataReader dr1 = cmd1.ExecuteReader();
                if (dr1.Read())
                {
                    txtBP.Text = dr1["BloodPressure"].ToString();
                    txtTemp.Text = dr1["BodyTemp"].ToString();
                    txtWeight.Text = dr1["Weight"].ToString();
                    
                }
                dr1.Close();
                SqlCon1.Close();
                txtBP.Enabled = false;
                txtTemp.Enabled = false;
                txtWeight.Enabled = false;

                //show background
                SqlConnection SqlCon2 = new SqlConnection(myCon);
                SqlCon2.Open();
                SqlCommand cmd2 = new SqlCommand("select * from PatientHistory where patientid="+id, SqlCon2);
                SqlDataReader dr2 = cmd2.ExecuteReader();
                if (dr2.Read())
                {
                    txtComHistory.Text = dr2["ComplaintHistory"].ToString();
                    txtComplaint.Text = dr2["PatientComplaint"].ToString();
                    txtDHistory.Text = dr2["DrugHistory"].ToString();
                    txtFsocHistory.Text = dr2["FamSocHistory"].ToString();
                }
                dr2.Close();
                SqlCon2.Close();
            }

        }
    }
}