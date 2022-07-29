using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_4_Task2
{

    public partial class WebForm1 : System.Web.UI.Page
    {
        StaffList staffMemer = new StaffList();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if the page is not post back then the data will be saved in a session 
            if (!IsPostBack)
            {
                Session["StoreList"] = staffMemer.SetStaffList();
                //data binding by session
                StaffTable.DataSource = Session["StoreList"];
                StaffTable.DataBind();
            }

        }


     

        protected void StaffTableRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //this function is called when update button is pressed
            //this function will input new data and replace it with the old one
            GridViewRow row = StaffTable.Rows[e.RowIndex];
            int vare = e.RowIndex;
            Label t1 = (Label)row.FindControl("Label1");
            TextBox t2 = (TextBox)row.FindControl("TextBox1");
            TextBox t3 = (TextBox)row.FindControl("TextBox3");
            TextBox t4 = (TextBox)row.FindControl("TextBox4");
            TextBox t5 = (TextBox)row.FindControl("TextBox5");
            int CatchedID = Convert.ToInt32(t1.Text);
            List<StaffList> tempList = Session["StoreList"] as List<StaffList>;
            foreach (StaffList item in tempList)
            {
                if (item.staffId == CatchedID)
                {
                    item.Name = t2.Text;
                    item.Role = t3.Text;
                    item.address = t4.Text;
                    item.salary = Convert.ToInt32(t5.Text);
                    break;
                }
            }
            //the new data will be bind here 
            StaffTable.EditIndex = -1;
            StaffTable.DataSource = Session["StoreList"];
            StaffTable.DataBind();
        }
        protected void StaffTablePageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //this is a function for the pagination control
            StaffTable.PageIndex = e.NewPageIndex;
            StaffTable.DataSource = Session["StoreList"];
            StaffTable.DataBind();
        }

        protected void StaffTableRowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //This function will end the editing
            StaffTable.EditIndex = -1;
            StaffTable.DataSource = Session["StoreList"];
            StaffTable.DataBind();
        }

        protected void StaffTableRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //this function will simply find the row and delete it in the list
            int rowIndex = e.RowIndex;
            List<StaffList> tempList = Session["StoreList"] as List<StaffList>;
            if (rowIndex >= 0)
            {
                tempList.RemoveAt(rowIndex);
            }
            StaffTable.DataSource = Session["StoreList"];
            StaffTable.DataBind();

        }
        protected void StaffTableRowEditing(object sender, GridViewEditEventArgs e)
        {
            //this function will be used to edit the row data and bind it
            StaffTable.EditIndex = e.NewEditIndex;
            StaffTable.DataSource = Session["StoreList"];
            StaffTable.DataBind();
        }

        
    }
}