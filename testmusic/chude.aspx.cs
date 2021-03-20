using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testmusic
{
    public partial class WebForm17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                loadtheloai();

            }
        }

        protected void tbnthemchude_Click(object sender, EventArgs e)
        {
            string[] arrListStr = chude.Text.Split(',');
            if (arrListStr[0] == "")
            {
                Label1.Text = "Không được để trống";
                return;
            }
            else
            {
                string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                using (SqlConnection con = new SqlConnection(strConnString))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandText = "INSERT INTO chude(theloai1, theloai2 , theloai3, idacc) VALUES (@theloai1, @theloai2,@theloai3,@idacc)";
                        cmd.Parameters.AddWithValue("@theloai1", arrListStr[0].ToString());
                        cmd.Parameters.AddWithValue("@theloai2", arrListStr[1].ToString());
                        cmd.Parameters.AddWithValue("@theloai3", arrListStr[2].ToString());
                        cmd.Parameters.AddWithValue("@idacc", Session["dangnhap"].ToString());
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
            chude.Text = "";
            Response.Redirect("chude.aspx");


        }
        protected void loadtheloai()
        {
            string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

            using (SqlConnection cnn = new SqlConnection(strConnString))
            {
                using (SqlCommand cmd = new SqlCommand("select *from Theloai", cnn))
                {
                    cmd.CommandType = CommandType.Text;
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {

                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        if (dt.Rows.Count > 0)
                        {

                            Dropdownlisttheloai.DataSource = dt;
                            Dropdownlisttheloai.DataValueField = "IDtheloai";
                            Dropdownlisttheloai.DataTextField = "Tentheloai";
                            Dropdownlisttheloai.DataBind();

                        }
                    }
                }
            }
        }
    }
}