using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarNameSearch
{
    public partial class CarNameSearch : System.Web.UI.Page
    {
        public static List<string> carList = new List<string>() { "Corolla", "Honda", "Supra","G-WAGON", "Suzuki","hayundai","Ferrari","Ford","Mustaang","GTR","Nissan","MG-morris-garage","KIA","Toyota" };
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static List<string> SuggesstionsGenerator(string name)
        {
            var suggestedList = new List<string>();
            foreach (var car in carList)
            {
                if (car.ToLower().Contains(name))
                {
                    suggestedList.Add(car);

                }
            }

            return suggestedList;
        }

    }
}