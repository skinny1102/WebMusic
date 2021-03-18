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
    public partial class Login : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            string userName = username.Text;
            string passWord = password.Text;
            using(SqlConnection con = new SqlConnection(strConnString))


            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    con.Open();
                    cmd.Connection = con;
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.CommandText = "selectAcount";
                    cmd.Parameters.AddWithValue("@taikhoan", userName);
                    cmd.Parameters.AddWithValue("@matkhau", passWord);
                    using (SqlDataReader re = cmd.ExecuteReader())
                    {
                        if (re.HasRows == true)
                        {

                            Session["dangnhap"] = username.Text;
                            Response.Redirect("index.aspx");
                        }
                        else
                        {
                            Label1.Text = "Sai tên tài khoản hoặc mật khẩu";
                        }
                    }
                }
            }
        }
    }
}