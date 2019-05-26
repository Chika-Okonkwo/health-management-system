using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AHMS1
{
    public partial class AHMS1 : System.Web.UI.MasterPage
    {
        string myCon = System.Configuration.ConfigurationManager.ConnectionStrings["HMSConnect"].ToString();
        
        DataTable allMenuData = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadMenuData();
                LblSession.Text = Session["Username"].ToString();
                LblDate.Text = DateTime.Now.ToLongDateString();
               
            }
            
        }

        private void LoadMenuData()
        {
            using (SqlConnection connection = new SqlConnection(myCon))
            using (SqlCommand selectCommand = new SqlCommand("getMenuData", connection))
            {
                if (Session["userid"] == null)
                {
                    Response.Redirect("UserLogin.aspx");
                }
                else
                {
                    selectCommand.CommandType = CommandType.StoredProcedure;
                    selectCommand.Parameters.AddWithValue("@roleID", Session["roleid"].ToString());
                    DataTable dt = new DataTable();
                    try
                    {
                        connection.Open();
                        SqlDataReader reader = selectCommand.ExecuteReader();
                        if (reader.HasRows)
                        {
                            rptMenuData.DataSource = reader;
                            rptMenuData.DataBind();
                            using (SqlConnection SqlCon = new SqlConnection(myCon))
                            {
                                SqlCon.Open();
                                string com = "update hmsusers set flag = 1 where userid = " + Session["userid"];
                                SqlCommand cmd = new SqlCommand(com, SqlCon);
                                cmd.ExecuteNonQuery();
                                SqlCon.Close();
                                SqlCon.Dispose();
                            }
                        }
                        reader.Close();
                    }
                    catch (SqlException)
                    {
                        throw;
                    }
                    finally
                    {
                        connection.Close();
                    }
                }
            }
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            SqlConnection SqlCon = null;
            try
            {
                SqlCon = new SqlConnection(myCon);
                SqlCon.Open();
                string com = "update hmsusers set flag = 0 where userid = " + Session["userid"];
                SqlCommand cmd = new SqlCommand(com, SqlCon);
                cmd.ExecuteNonQuery();

                Response.Redirect("UserLogin.aspx");

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

        //public DataTable GetMenuData()
        //{
        //    using (SqlConnection connection = new SqlConnection(myCon))
        //    using (SqlCommand selectCommand = new SqlCommand("exec getAllMenuData", connection))
        //    {
        //        selectCommand.CommandType = CommandType.StoredProcedure;
        //        selectCommand.Parameters.AddWithValue("@roleID", Session["roleid"]);
        //        DataTable dt = new DataTable();
        //        try
        //        {
        //            connection.Open();
        //            SqlDataReader reader = selectCommand.ExecuteReader();
        //            if (reader.HasRows)
        //            {
        //                dt.Load(reader);
        //            }
        //            reader.Close();
        //        }
        //        catch (SqlException)
        //        {
        //            throw;
        //        }
        //        finally
        //        {
        //            connection.Close();
        //        }
        //    }
        //}

        //private SqlDataReader GetAllMenuData()
        //{
        //    SqlConnection connection = new SqlConnection(myCon);
        //    SqlCommand selectCommand = new SqlCommand("exec getAllMenuData", connection);
        //    selectCommand.CommandType = CommandType.StoredProcedure;
        //    selectCommand.Parameters.AddWithValue("@roleID", Session["roleid"]);
        //    DataTable dt = new DataTable();
        //    try
        //    {
        //        connection.Open();
        //        SqlDataReader reader = selectCommand.ExecuteReader();
        //        if (reader.HasRows)
        //        {
        //            dt.Load(reader);
        //        }
        //        reader.Close();
        //    }
        //    catch (SqlException)
        //    {
        //        throw;
        //    }
        //    finally
        //    {
        //        connection.Close();
        //    }
        //}
        //protected void rptMenuData_ItemDataBound(object sender, RepeaterItemEventArgs e)
        //{
        //    if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        //    {
        //        if (allMenuData != null)
        //        {
        //            DataRowView drv = e.Item.DataItem as DataRowView;
        //            string ID = drv["ID"].ToString();
        //            DataRow[] rows = allMenuData.Select("ParentID=" + ID, "Name");
        //            if (rows.Length > 0)
        //            {
        //                StringBuilder sb = new StringBuilder();
        //                sb.Append("<ul>");
        //                foreach (var item in rows)
        //                {
        //                    sb.Append("<li><a href='#'>" + item["MenuName"] + "</a></li>");
        //                }
        //                sb.Append("</ul>");
        //                (e.Item.FindControl("ltrlSubMenu") as Literal).Text = sb.ToString();
        //            }
        //        }
        //    }
        //}
        
    }
}