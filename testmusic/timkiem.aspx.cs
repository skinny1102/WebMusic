using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testmusic
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string search = Request.QueryString["search"];
            string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strConnString))
            {

                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = " select top 20 *from tblMusic where DisplayName like N'%" + search.ToString() + "%' ";
                    cmd.Connection = con;
                    con.Open();
                    rpp.DataSource = cmd.ExecuteReader();
                    rpp.DataBind();

                    con.Close();
                }

            }
        }
    }
}