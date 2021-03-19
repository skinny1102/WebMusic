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
    public partial class WebForm8 : System.Web.UI.Page
    { 
        protected void Page_Load(object sender, EventArgs e)
        {

            int idmusic = Convert.ToInt32(Request.QueryString["iDmusic"]);
            string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strConnString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT *FROM xemnhac where iDmusic= " + idmusic + " ";
                    cmd.Connection = con;
                    con.Open();
                    rpp.DataSource = cmd.ExecuteReader();
                    rpp.DataBind();
                    con.Close();
                }
            }
        }

        protected void rpp_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            int idmusic = Convert.ToInt32(Request.QueryString["iDmusic"]);
            string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            
            using (SqlConnection con = new SqlConnection(strConnString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    con.Open();
                    cmd.Connection = con;
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.CommandText = "updatenhac";
                    cmd.Parameters.AddWithValue("@namenhac", Tennhac.Text);
                    cmd.Parameters.AddWithValue("@namecasi", txtcasi.Text);
                    cmd.Parameters.AddWithValue("@content", txtcontent.Text);
                    cmd.Parameters.AddWithValue("@idnhac", idmusic);
                    using (SqlDataReader re = cmd.ExecuteReader())
                    {
                        if (re.HasRows == true)
                        {
                            Label1.Text = "Thay Đổi Thành Công";
                         
                        }
                        else
                        {
                            Label1.Text = "Thay Đổi  Không Thành Công";
                        }
                    }

                }
            }

        }
    }
}