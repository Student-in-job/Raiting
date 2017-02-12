using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using RatingUniversity.Classes;

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

        public static List<string> CreateActive(int Position)
        {
            return Functions.CreateActive(Position, 23);
        }

        public static List<string> CreateActive(int Position, int maxValue)
        {
            List<string> active = new List<string>();
            for (int index = 0; index < maxValue; index++)
            {
                string value = (index == Position) ? "class=active" : string.Empty;
                active.Add(value);
            }
            return active;
        }

        public static string Translate(string source, string lang, string alfabet)
        {
            string result;
            if (lang == "RU")
            {
                result = Transliteration.ToKiril(source);
            }
            else if (alfabet == "CY")
            {
                result = Transliteration.ToKiril(source);
            }
            else
            {
                result = Transliteration.ToLatin(source);
            }
            return result;
        }

        public static string CreateURl(string url)
        {
            string result = "";
            if ((url != null) && (url != ""))
            {
                result = "http://" + url.Replace("http://", "").TrimStart(' ');
            }
            return result;
        }
    }

    public enum ErrorCodes
    {
        NotExcel,
        NotPDF
    }
}