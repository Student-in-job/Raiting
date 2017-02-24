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

    public class Monitor
    {
        internal struct MonitorSite
        {
            string name;
            string value;
        }

        Monitor J2;
        Monitor J3;
        Monitor J4;
        Monitor J5;
        Monitor J6;
        Monitor J7;
        Monitor J8;
        Monitor J9;
        Monitor J10;
        Monitor J11;
        Monitor J12;
        Monitor J13;
        Monitor J14;
        Monitor J15;
        Monitor J16;
        Monitor J17;
        Monitor J18;
        Monitor J19;
        Monitor J20;
        Monitor J21;
        Monitor J22;
        Monitor J23;
        Monitor J24;
        Monitor J25;
        Monitor J26;
        Monitor J27;
        Monitor J28;
        Monitor J29;
        Monitor J30;
        Monitor J31;
    }
}