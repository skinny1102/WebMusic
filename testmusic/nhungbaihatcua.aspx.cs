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
    public partial class WebForm23 : System.Web.UI.Page
    {
        string k;
        protected void Page_Load(object sender, EventArgs e)
        {


            int so = Convert.ToInt32(Request.QueryString["namecasi"]);


            string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strConnString))
            {

                if (so == 1)
                {
                    k = "Bích Phương";

                    imgg.Text += "<img class='imgwward' src='/image/landscape-avatar-copy-4-15912036198111330174400-crop-15912037063321439019614.jpg' />";
                }
                if (so == 2)
                {
                    k = "Đen Vâu";
                    imgg.Text += "<img class='imgwward' src='/image/123.jpg' />";
                }
                if (so == 3)
                {
                    k = "Vũ.";
                    imgg.Text += "<img class='imgwward' src='/image/1333.jpg' />";
                }
                if (so == 4)
                {
                    k = "Hoàng Dũng";
                    imgg.Text += "<img class='imgwward' src='/image/a9ts.jpg' />";
                }
                if (so == 5)
                {
                    k = "Đức Phúc";
                    imgg.Text += "<img class='af901b4457bbf85a9e7e6754bdb71c44.jpg' />";
                }
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = " select top 20 *from tblMusic  where casi=N'"+k+"'";
                    cmd.Connection = con;
                    con.Open();
                    rpp.DataSource = cmd.ExecuteReader();
                    rpp.DataBind();
                    con.Close();
                }
                lb1.Text += k;
                Label1.Text += k;

            }
        }
    }
}