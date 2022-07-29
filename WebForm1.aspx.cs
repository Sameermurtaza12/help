using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_4_Task1
{
    public class Student //this is student class here I am using get and set to get the values and set them according to their  variables
    {
        public int RollNo { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
    }
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected static List<Student> studentList;
        protected void Page_Load(object sender, EventArgs e)
        {
            //here i am hardcoding the student data for roll no, name and address accordingly
            var s1 = new Student() { RollNo = 0086, Name = "Sameer Murtaza", Address = "House No. 21, Light House Centre, Karachi" };
            var s2 = new Student() { RollNo = 0284, Name = "Zaryab Ali Rana", Address = "A-1/225, Wapda Town" };
            var s3 = new Student() { RollNo = 0275, Name = "Rao Usama Abid", Address = "35-Umer Electric Market, Lahore" };
            var s4 = new Student() { RollNo = 0281, Name = "Shahroz Shahzad", Address = "206-c, Iqbal Garden, Shobraj Chitumal Road" };
            var s5 = new Student() { RollNo = 0289, Name = "Hadeed Razzaq", Address = "Main Bilal Chowrangi, Sector No. 18, Karachi" };
            var s6 = new Student() { RollNo = 0204, Name = "Fahad Shakeel", Address = "Hakim & Hashmi Shopping Centre, Preedy Street, Karachi" };
            var s7 = new Student() { RollNo = 0238, Name = "Syed Ibtesam Hassan", Address = "5-K, Model Town, Lahore" };
            var s8 = new Student() { RollNo = 0288, Name = "Murtaza Ali", Address = "Hakim & Hashmi Shopping Centre, Preedy Street, Karachi" };
            var s9 = new Student() { RollNo = 0238, Name = "Syed Osajah Zaidi", Address = "5-K, faizbagh, Lahore" };
            var s10 = new Student() { RollNo = 0288, Name = "Syed Farhan Zaidi", Address = "Hussain chownk, kashmir lake , Gilgit" };
            //creating list to add the students in the list by making objects
            studentList = new List<Student>() { s1, s2, s3, s4, s5, s6, s7, s8, s9, s10 };
            //i am doing data binding with just two lines 
            StudentTable.DataSource = studentList;
            StudentTable.DataBind();
        }
    }
}