using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
namespace Assignment_3_TASK3
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) //this is my page load function 
        {
            head.InnerText = "WELCOME" + Session["userName"].ToString(); //this will assign username in the head id of webform2.aspx from the session id
        }
        [WebMethod]
        protected void Logout(object sender, EventArgs e) //this function is for logout
        {
            Session.Contents.Remove("userName"); //it will remove username and password on logout
            Session.Contents.Remove("userName");
            Response.Redirect("WebForm1.aspx"); //it will again open the login page 
        }
    }
}