using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AHMS1
{
    public partial class AppointmentPage : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("getQueueList", SqlCon);

            SqlDataReader dr = cmd.ExecuteReader();
            rptrQueueList.DataSource = dr;
            rptrQueueList.DataBind();
        }
        
    }

      
}