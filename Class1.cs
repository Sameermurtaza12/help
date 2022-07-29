using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Assignment_4_Task2
{
    public class StaffList
    {   
        //I am making list in main class 
        List<StaffList> StaffListRecord = new List<StaffList>();
        //these are my getter setter functions to set the values of the variables
        public int staffId { get; set; }
        public string Name { get; set; }
        public string Role { get; set; }
        public string address { get; set; }
        public int salary { get; set; }

        // this is the function to fill the list
        public List<StaffList> SetStaffList()
        {
            //to generate random number 
            int randomNumber;
            Random random = new Random();
            randomNumber = random.Next(10, 50);
            //this loop is for generating random data 
            for (int i = 1; i <= 1000; i++)
            {
                //basic salary is 20000 initially
                int sal = 20000;
                //this will generate new randon number each time
                string newRandomNumber = i.ToString() + randomNumber.ToString();
                //the new random data will be added into list i had try to concatenate newrandom number with strings to create new data
                StaffListRecord.Add(new StaffList { staffId = Convert.ToInt32(newRandomNumber), Name = "SAMEER"+Convert.ToInt32(newRandomNumber), Role = "Associate Software Engineer" , address="Lahore"+Convert.ToInt32(newRandomNumber), salary=sal+Convert.ToInt32(newRandomNumber)});
            }
            return StaffListRecord;
        }

    }
}