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
        //int phut = 0, giay = 0;
        //timeLeft = 40000;

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label1.Text = "Current Time =: " + DateTime.Now.ToString("T");
            ////int phut=0,giay=0;
            //giay++;
            //if(giay==59)
            //{
            //    giay = 0;
            //    phut++;
            //}
            //LoadTime(phut,giay);

        }
        //private void LoadTime(int _phut, int _giay)
        //{
        //    string strTime = "";
        //    if (_phut < 10)
        //    {
        //        strTime = "0" + _phut.ToString();
        //    }
        //    else
        //    {
        //        strTime = _phut.ToString();
        //    }
        //    strTime = strTime + ":";
        //    if (_giay < 10)
        //    {
        //        Literal1.Text = strTime.ToString() + "0" + _giay.ToString();
        //    }
        //    else
        //    {
        //        Literal1.Text = strTime + _giay.ToString();
        //    }

        //}
    }
}