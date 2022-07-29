using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

namespace Assignment_3_TASK3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        protected void Login(object sender, EventArgs e) // this is my login function
        {
            Session["userName"] = value1.Text; //saving name in session
            Session["password"] = value2.Text; //saving password in session
            Response.Redirect("WebForm2.aspx"); //opening new page to display data 
        }
    }
}