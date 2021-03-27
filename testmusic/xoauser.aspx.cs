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
    public partial class WebForm19 : System.Web.UI.Page
    {
        string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string iduser = Request.QueryString["iduser"];
            lb1.Text = iduser.ToString();


        }

        protected void btnco_Click(object sender, EventArgs e)
        {
            string iduser = Request.QueryString["iduser"];
            using (SqlConnection con = new SqlConnection(strConnString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = " delete from tblAccount where IDacount=N'"+ iduser.ToString() + "' ";
                    cmd.Connection = con;
                    con.Open();
                    int i = Convert.ToInt32( cmd.ExecuteNonQuery());
                    if (i > 0)
                    {
                        Response.Redirect("quanlynhac.aspx");
                    }
                    else
                    {

                        Response.Redirect("index.aspx");
                    }


                }
            }
        }

        protected void btnkhong_Click(object sender, EventArgs e)
        {

            Response.Redirect("quanlynhac.aspx");
        }
    }
}
