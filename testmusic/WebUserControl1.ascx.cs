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
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
            


        protected void btnresign_Click(object sender, EventArgs e)
        {

            string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            string userName = username.Text;
            string passWord = password.Text;
            string name = Name.Text;
            string email1 = email.Text;
            string ngaysinh1 = ngaysinh.Text;
            string gtinh = gtss.SelectedValue.ToString();
            using (SqlConnection con = new SqlConnection(strConnString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    con.Open();
                    cmd.Connection = con;
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.CommandText = "selectid";
                    cmd.Parameters.AddWithValue("@taikhoan", userName); 
                    using (SqlDataReader re = cmd.ExecuteReader())
                    {
                        if (re.HasRows == true)
                        {
                            Label1.Text = "Tên đăng nhập đã có người đăng ký";
                            username.Focus();

                        }
                        else
                        {
                            re.Close();
                            using (SqlCommand cmd1 = new SqlCommand())
                            {     
                                cmd1.Connection = con;
                            cmd1.CommandType = System.Data.CommandType.StoredProcedure;
                            cmd1.CommandText = "addacount";
                            cmd1.Parameters.AddWithValue("@id", userName);
                            cmd1.Parameters.AddWithValue("@pasword", passWord);
                            cmd1.Parameters.AddWithValue("@name", name);
                            cmd1.Parameters.AddWithValue("@email", email1);
                            cmd1.Parameters.AddWithValue("@ngaysinh", ngaysinh1);
                            cmd1.Parameters.AddWithValue("@gioitinh", gtinh);
                            using (SqlDataReader re1 = cmd.ExecuteReader())
                            {
                                if (re1.HasRows == true)
                                {
                                    Label1.Text = "Đăng Ký thành công";
                                }

                            }
                            }



                        }
                    }









                   
                    


                }
            }
        }


    }
}