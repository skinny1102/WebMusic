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
    public partial class WebForm14 : System.Web.UI.Page
    {
        string ten;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            int so = Convert.ToInt32(Request.QueryString["nametheloai"]);
            
           
            string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strConnString))
            {
              
                if (so == 1)
                {
                     ten = "Nhạc Việt";
                }
                if (so == 2)
                {
                     ten = "Nhạc Hàn";
                }
                if (so == 3)
                {
                    ten = "Nhạc Âu Mỹ";
                }
                if (so == 4)
                {
                     ten = "Nhạc Hoa";
                }
                if (so == 5)
                {
                    ten = "EDM";
                }
                if (so == 6)
                {
                     ten = "Rap";
                }
                if (so == 7)
                {
                    ten = "Indie";
                }
                if (so == 8)
                {
                    ten = "Jazz";
                }
                if (so == 9)
                {
                    ten = "R&B";
                }
                if (so == 10)
                {
                     ten = "Nhạc Phim";
                }
                using (SqlCommand cmd = new SqlCommand())
                {     
                    cmd.CommandText = " select top 20 *from tblMusic inner join chude  on tblMusic.idchude=chude.IDchude  where chude.theloai1=N'"+ten+ "' or  chude.theloai2=N'" + ten + "' or  chude.theloai3=N'" + ten + "'";
                cmd.Connection = con;
                con.Open();
                    rpp.DataSource = cmd.ExecuteReader();
                    rpp.DataBind();
                    
                con.Close();
                }
                tentheloai.Text = ten;
                Label1.Text = ten;
                //using (SqlCommand cmd = new SqlCommand())
                //{
                //    con.Open();
                //    cmd.Connection = con;
                //    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                //    cmd.CommandText = "theloainhac";
                //    cmd.Parameters.AddWithValue("@theloai1", ten);
                //    cmd.Parameters.AddWithValue("@theloai2", ten);
                //    cmd.Parameters.AddWithValue("@theloai3", ten);

                //    GridView1.DataSource = cmd.ExecuteReader();
                //    GridView1.DataBind();
                //    con.Close();

                //}
            }
        }
    }
}