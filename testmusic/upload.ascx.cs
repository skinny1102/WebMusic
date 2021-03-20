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
    public partial class upload : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                loadchude();

            }
            

        }

        protected void loadchude()
        {
            string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

            using (SqlConnection cnn = new SqlConnection(strConnString))
            {
                using (SqlCommand cmd = new SqlCommand("select *from chude where idacc='" + Session["dangnhap"].ToString() + "'", cnn))
                {
                    cmd.CommandType = CommandType.Text;
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {

                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        if (dt.Rows.Count > 0)
                        {
                            dt.Columns.Add(new DataColumn("chude", System.Type.GetType("System.String"), "theloai1 + ' , ' + theloai2 + ' , ' + theloai3 "));
                            chudeamnhac.DataSource = dt;
                            chudeamnhac.DataValueField = "Idchude";
                            chudeamnhac.DataTextField = "chude";
                            chudeamnhac.DataBind();
                        }
                    }
                }
            }
        }
        protected void btnUpload_Click(object sender, EventArgs e)
        {


            string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strConnString))
            {
                con.Open();
                string patchmusic;
                string patchimage;
                string strPath = Server.MapPath("~/music/" + Fileupload.FileName);
                Fileupload.SaveAs(strPath);
                patchmusic = "music/" + Fileupload.FileName.ToString();
                string strPathimage = Server.MapPath("~/image/" + Fileupload2.FileName);
                Fileupload2.SaveAs(strPathimage);
                patchimage = "/image/" + Fileupload2.FileName.ToString();
                {


                    using (SqlCommand cmd3 = new SqlCommand())
                    {
                        cmd3.CommandText = "INSERT INTO tblMusic(iDacc, DisplayName , Image , Data ,Cotenttype ,casi , idchude) VALUES (@idacc, @DisplayName,@Image,@Data,@Cotenttype, @casi ,@idchude)";
                        cmd3.Parameters.AddWithValue("@idacc", Session["dangnhap"].ToString());
                        cmd3.Parameters.AddWithValue("@DisplayName", txtTennhac.Text);
                        cmd3.Parameters.AddWithValue("@Image", patchimage);
                        cmd3.Parameters.AddWithValue("@Data", patchmusic);
                        cmd3.Parameters.AddWithValue("@Cotenttype ", txtcontent.Text);
                        cmd3.Parameters.AddWithValue("@casi ", txtcasi.Text);
                        cmd3.Parameters.AddWithValue("@idchude", chudeamnhac.SelectedValue);
                        cmd3.Connection = con;
                        cmd3.ExecuteNonQuery();
                        con.Close();
                    }
                    Response.Redirect(Request.Url.AbsoluteUri);

                }
            }

        }


    }
}