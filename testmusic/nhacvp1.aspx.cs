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
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dataload();
        }
        void dataload()
        {
            int k = Convert.ToInt32(Request.QueryString["sut"]);
            if (k == 2)
            {
                imgg.Text += "<img class='imgwward' src='/image/b9df30e091836ebcb4dea2bb40c34c5e.jpg' />";

            }

            if ( k==3)
            {
                imgg.Text+= "<img class='imgwward' src='/image/6de39ea5c9b5e0b38801acb27c3fc15b.jpg' />";

            }
            if (k == 4)
            {
                imgg.Text += "<img class='imgwward' src='/image/39349a90229b3f4ca9eafa69f9106932.jpg' />";

            }
            string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strConnString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = " select top14 *from tblMusic inner join bxh on tblMusic.iDmusic=bxh.idnhac  where  bxh.sut="+k+" ";
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