using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testmusic
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                loadtheloai();
                loadchude();
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
        protected void loadchude()
        {
            string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

            using (SqlConnection cnn = new SqlConnection(strConnString))
            {
                using (SqlCommand cmd = new SqlCommand("select *from chude where idacc='"+ Session["dangnhap"].ToString() + "'", cnn))
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
      
        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void tbnthemchude_Click(object sender, EventArgs e)
        {
            string[] arrListStr = chude.Text.Split(',');
            string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strConnString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "INSERT INTO chude(theloai1, theloai2 , theloai3, idacc) VALUES (@theloai1, @theloai2,@theloai3,@idacc)";
                    cmd.Parameters.AddWithValue("@theloai1", arrListStr[0].ToString());
                    cmd.Parameters.AddWithValue("@theloai2", arrListStr[1].ToString());
                    cmd.Parameters.AddWithValue("@theloai3", arrListStr[2].ToString());
                    cmd.Parameters.AddWithValue("@idacc",Session["dangnhap"].ToString());
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            chude.Text = "";
            Response.Redirect("Uploadnhac.aspx");
            

        }

     
    }
}