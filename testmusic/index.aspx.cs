
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace testmusic
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            dataload();
        }

        void dataload()
        {
            string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strConnString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = " SELECT *FROM tblMusic ";
                    cmd.Connection = con;
                    con.Open();
                    Repeater1.DataSource = cmd.ExecuteReader();
                    Repeater1.DataBind();
                    con.Close();
                }
            }

        }

        }
    }