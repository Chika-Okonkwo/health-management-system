using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AHMS1
{
    public partial class PatientRecord : System.Web.UI.Page
    {
        string myCon = System.Configuration.ConfigurationManager.ConnectionStrings["HMSConnect"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int r = Convert.ToInt32(Request.QueryString["row"]);

                if (r > 0)
                {
                    alrtSuccess.Visible = true;
                    
                }
                Bind();
            }
        }
        public void Bind()
        {
            SqlConnection SqlCon = new SqlConnection(myCon);
            SqlCon.Open();
            SqlCommand cmd = new SqlCommand("getPatientList", SqlCon);

            SqlDataReader dr = cmd.ExecuteReader();
            //if (dr.Read())
            //{
            //    if (dr.HasRows)
            //    {
            //        if (dr["status"].ToString() == "Active")
            //        {

            //            lbtnStat.CssClass = "btn btn-success  width-100";
            //        }
            //        else
            //        {
            //            lblstat.CssClass = "btn btn-danger  width-100";
            //        }

            //    }
            //}
            rptrPatientList.DataSource = dr;
            rptrPatientList.DataBind();
        }
    }
}