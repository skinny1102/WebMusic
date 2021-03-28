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
    public partial class WebForm20 : System.Web.UI.Page
    {
        string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string namenhac = Request.QueryString["namenhac"];
            string idnhac = Request.QueryString["idnhac"];
            lb1.Text = namenhac.ToString();
            lb2.Text = idnhac.ToString();

        }

        protected void btnco_Click(object sender, EventArgs e)
        {
            string namenhac = Request.QueryString["namenhac"];
            int idnhac = Convert.ToInt32( Request.QueryString["idnhac"]);
            using (SqlConnection con = new SqlConnection(strConnString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = " delete from tblMusic where iDmusic="+idnhac+" ";
                    cmd.Connection = con;
                    con.Open();
                    int i = Convert.ToInt32(cmd.ExecuteNonQuery());
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
            if(Session["dangnhap"].ToString() == "admin")
            { 
            Response.Redirect("quanlynhac.aspx");
            }
            else if (Session["dangnhap"].ToString() != "admin")
            {

                Response.Redirect("danhsachnhacdonggop.aspx");
            }
        }
    }
}