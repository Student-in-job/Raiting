using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RatingUniversity.Classes
{
    public static class Functions
    {
        public static int GetLeftTime(string date)
        {
            DateTime endDate;
            int leftPeriod = 0;
            if (DateTime.TryParse(date, out endDate))
            {
                leftPeriod = (int)endDate.Subtract(DateTime.Now).TotalSeconds;
            }
            if (leftPeriod != 0)
            {
                return leftPeriod;
            }
            else
            {
                return 0;
            }
        }

    }
}