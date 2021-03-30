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
            if (!IsPostBack)
            {
                i = 0; //Init data
            }
            lb1.Text = Session["dangnhap"].ToString();
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            string namesearch = searchname.Text;
            Response.Redirect("timkiem.aspx?search="+namesearch.ToString()+"");
        }
        
       
        public static int i;
        public static int k=0;

        public static int phut=0;
        public static int giay = 0;
        //protected void Timer1_Tick(object sender, EventArgs e)
        //{

        //    //Literal2.Text = i.ToString()+"giây";
        //    //i++;
        //    //if(i==59)
        //    //{
        //    //    k++;
        //    //    Literal.Text = k.ToString()+ "phút" +":";
        //    //    i = 0;
        //    //}

        //    //Label1.Text = "Current Time =: " + DateTime.Now.ToString("T");

        //    giay++;
        //    if(giay==59)
        //    {
        //        giay = 0;
        //        phut++;
        //    }
        //    LoadTime(phut, giay);
        //}
      

        //private void LoadTime(int _phut,int _giay)
        //{

        //    String strTime = "";
        //    if(_phut<10)
        //    {
        //        strTime = "0" + _phut.ToString();

        //    }    
        //    else
        //    {
        //        strTime = _phut.ToString();
        //    }
        //    strTime = _phut.ToString() +":";
        //    if(_giay<10)
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