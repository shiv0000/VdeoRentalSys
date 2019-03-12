﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VdeoRentalSys
{
    class Rental
    {
        //calculate the Rental Price of the Video which is given for rent 
        //this method is used with the help of agrument and then calculate the price of the Video 
        public int rentalCost(int Price,String issue,String retrn) {
            //get the current Date

            DateTime Current_date = DateTime.Now;

            //convert the old date from string to Date fromat
            DateTime Old_date = Convert.ToDateTime(issue.ToString());


            //get the difference in the days fromat
            String diff = (Current_date - Old_date).TotalDays.ToString();


            // calculate the round off value 
            Double Days = Math.Round(Convert.ToDouble(diff));

//            MessageBox.Show("" + Days);
            // return the total cost of the Video
            return  Price*Convert.ToInt32(Days);
        }

    }
}
