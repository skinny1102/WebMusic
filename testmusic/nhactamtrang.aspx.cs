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
    public partial class WebForm21 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dataload();
        }
        void dataload()
        {
            int k = Convert.ToInt32(Request.QueryString["idtt"]);
            if (k == 1)
            {
                imgg.Text += "<img class='imgwward' src='/image/877eb506f1c9cb315ebb307c9db12b40.jpg' />";

            }

            else if  (k == 2)
            {
                imgg.Text += "<img class='imgwward' src='/image/3b9a2890dd6262033a56614bcf22c227.jpg' />";

            }
            else if (k == 3)
            {
                imgg.Text += "<img class='imgwward' src='/image/25ba89a65c8067be5be34166f045b99e.jpg' />";

            }
            else if(k == 4)
            {
                imgg.Text += "<img class='imgwward' src='/image/3eaa1bb8b1750cf10c39d568cc061c8e.jpg' />";

            }
            string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strConnString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = " select top 14 *from tblMusic inner join nhactt on tblMusic.iDmusic=nhactt.idnhac  where  nhactt.tamtrang=" + k + " ";
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