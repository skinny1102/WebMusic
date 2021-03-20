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
           
        }

        
       
        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void tbnthemchude_Click(object sender, EventArgs e)
        {
            Response.Redirect("chude.aspx");
        }
    }
}