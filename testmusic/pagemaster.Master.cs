using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testmusic
{
    public partial class pagemaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lb1.Text = Session["dangnhap"].ToString();
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            string namesearch = searchname.Text;
            Response.Redirect("timkiem.aspx?search="+namesearch.ToString()+"");
        }
    }
}