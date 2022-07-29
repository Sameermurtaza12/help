using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

namespace Task1_student_data
{
    public class Student
    {
        public int RollNo { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
    }
    public partial class Student_data : System.Web.UI.Page
    {
        protected static List<Student> studentList;
        protected void Page_Load(object sender, EventArgs e)
        {
            var s1 = new Student() { RollNo = 0086, Name = "Sameer Murtaza", Address = "House No. 21, Light House Centre, Karachi" };
            var s2 = new Student() { RollNo = 0284, Name = "Zaryab Ali Rana", Address = "A-1/225, Wapda Town" };
            var s3 = new Student() { RollNo = 0275, Name = "Rao Usama Abid", Address = "35-Umer Electric Market, Lahore" };
            var s4 = new Student() { RollNo = 0281, Name = "Shahroz Shahzad", Address = "206-c, Iqbal Garden, Shobraj Chitumal Road" };
            var s5 = new Student() { RollNo = 0289, Name = "Hadeed Razzaq", Address = "Main Bilal Chowrangi, Sector No. 18, Karachi" };
            var s6 = new Student() { RollNo = 0204, Name = "Fahad Shakeel", Address = "Hakim & Hashmi Shopping Centre, Preedy Street, Karachi" };
            var s7 = new Student() { RollNo = 0238, Name = "Syed Ibtesam Hassan", Address = "5-K, Model Town, Lahore" };
            var s8 = new Student() { RollNo = 0288, Name = "Murtaza Ali", Address = "Hakim & Hashmi Shopping Centre, Preedy Street, Karachi" };

            studentList = new List<Student>() { s1, s2, s3, s4, s5, s6, s7, s8 };
            listDropDown.DataSource = studentList;
            listDropDown.DataTextField = "Name";
            listDropDown.DataValueField = "Name";
            listDropDown.DataBind();

        }
        [WebMethod]
        public static Student GetStudentData(string name)
        {
            foreach (var student in studentList)
            {
                if (student.Name == name)
                {
                    return student;
                }
            }
            return new Student();
        }
    }
}