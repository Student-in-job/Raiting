using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using RatingUniversity.Classes;
using RatingUniversity.Models;

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

        public static int GetYear()
        {
            return DateTime.Now.Year;
        }
    }

    public enum ErrorCodes
    {
        NotExcel,
        NotPDF
    }

    public class Monitor
    {
        private int[] values;
        public int Table2
        {
            get { return this.values[0]; }
            set { this.values[0] = value; }
        }
        public int Table3
        {
            get { return this.values[1]; }
            set { this.values[1] = value; }
        }
        public int Table4
        {
            get { return this.values[2]; }
            set { this.values[2] = value; }
        }
        public int Table5
        {
            get { return this.values[3]; }
            set { this.values[3] = value; }
        }
        public int Table6
        {
            get { return this.values[4]; }
            set { this.values[4] = value; }
        }
        public int Table7
        {
            get { return this.values[5]; }
            set { this.values[5] = value; }
        }
        public int Table8
        {
            get { return this.values[6]; }
            set { this.values[6] = value; }
        }
        public int Table9
        {
            get { return this.values[7]; }
            set { this.values[7] = value; }
        }
        public int Table10
        {
            get { return this.values[8]; }
            set { this.values[8] = value; }
        }
        public int Table11
        {
            get { return this.values[9]; }
            set { this.values[9] = value; }
        }
        public int Table12
        {
            get { return this.values[10]; }
            set { this.values[10] = value; }
        }
        public int Table13
        {
            get { return this.values[11]; }
            set { this.values[11] = value; }
        }
        public int Table14
        {
            get { return this.values[12]; }
            set { this.values[12] = value; }
        }
        public int Table15
        {
            get { return this.values[13]; }
            set { this.values[13] = value; }
        }
        public int Table16
        {
            get { return this.values[14]; }
            set { this.values[14] = value; }
        }
        public int Table17
        {
            get { return this.values[15]; }
            set { this.values[15] = value; }
        }
        public int Table18
        {
            get { return this.values[16]; }
            set { this.values[16] = value; }
        }
        public int Table19
        {
            get { return this.values[17]; }
            set { this.values[17] = value; }
        }
        public int Table20
        {
            get { return this.values[18]; }
            set { this.values[18] = value; }
        }
        public int Table21
        {
            get { return this.values[19]; }
            set { this.values[19] = value; }
        }
        public int Table22
        {
            get { return this.values[20]; }
            set { this.values[20] = value; }
        }
        public int Table23
        {
            get { return this.values[21]; }
            set { this.values[21] = value; }
        }
        public int Table24
        {
            get { return this.values[22]; }
            set { this.values[22] = value; }
        }
        public int Table25
        {
            get { return this.values[23]; }
            set { this.values[23] = value; }
        }
        public int Table26
        {
            get { return this.values[24]; }
            set { this.values[24] = value; }
        }
        public int Table27
        {
            get { return this.values[25]; }
            set { this.values[25] = value; }
        }
        public int Table28
        {
            get { return this.values[26]; }
            set { this.values[26] = value; }
        }
        public int Table29
        {
            get { return this.values[27]; }
            set { this.values[27] = value; }
        }
        public int Table30
        {
            get { return this.values[28]; }
            set { this.values[28] = value; }
        }
        public int Table31
        {
            get { return this.values[29]; }
            set { this.values[29] = value; }
        }
        public int Id_university { get; set; }
        public string Name { get; set; }

        int ApprovedCount
        {
            get
            {
                int sum = 0;
                foreach (int counter in this.values)
                {
                    if (counter == 1)
                        sum++;
                }
                return sum;
            }
        }

        int UploadedCount
        {
            get
            {
                int sum = 0;
                foreach (int counter in this.values)
                {
                    if ((counter == 1) || (counter == 0))
                        sum++;
                }
                return sum;
            }
        }

        private void InitValues(int val)
        {
            for (int index = 0; index < this.values.Length; index++)
            {
                this.values[index] = val;
            }
        }

        public Monitor(int id_university, string name)
        {
            this.values = new int[30];
            this.InitValues(-1);
            this.Id_university = id_university;
            this.Name = name;
        }

        public void InitializeValues(Monitorings monitoring)
        {
            if (monitoring.J2 != null)
                this.values[0] = (int)monitoring.J2;
            if (monitoring.J3 != null)
                this.values[1] = (int)monitoring.J3;
            if (monitoring.J4 != null)
                this.values[2] = (int)monitoring.J4;
            if (monitoring.J5 != null)
                this.values[3] = (int)monitoring.J5;
            if (monitoring.J6 != null)
                this.values[4] = (int)monitoring.J6;
            if (monitoring.J7 != null)
                this.values[5] = (int)monitoring.J7;
            if (monitoring.J8 != null)
                this.values[6] = (int)monitoring.J8;
            if (monitoring.J9 != null)
                this.values[7] = (int)monitoring.J9;
            if (monitoring.J10 != null)
                this.values[8] = (int)monitoring.J10;
            if (monitoring.J11 != null)
                this.values[9] = (int)monitoring.J11;
            if (monitoring.J12 != null)
                this.values[10] = (int)monitoring.J12;
            if (monitoring.J13 != null)
                this.values[11] = (int)monitoring.J13;
            if (monitoring.J14 != null)
                this.values[12] = (int)monitoring.J14;
            if (monitoring.J15 != null)
                this.values[13] = (int)monitoring.J15;
            if (monitoring.J16 != null)
                this.values[14] = (int)monitoring.J16;
            if (monitoring.J17 != null)
                this.values[15] = (int)monitoring.J17;
            if (monitoring.J18 != null)
                this.values[16] = (int)monitoring.J18;
            if (monitoring.J19 != null)
                this.values[17] = (int)monitoring.J19;
            if (monitoring.J20 != null)
                this.values[18] = (int)monitoring.J20;
            if (monitoring.J21 != null)
                this.values[19] = (int)monitoring.J21;
            if (monitoring.J22 != null)
                this.values[20] = (int)monitoring.J22;
            if (monitoring.J23 != null)
                this.values[21] = (int)monitoring.J23;
            if (monitoring.J24 != null)
                this.values[22] = (int)monitoring.J24;
            if (monitoring.J25 != null)
                this.values[23] = (int)monitoring.J25;
            if (monitoring.J26 != null)
                this.values[24] = (int)monitoring.J26;
            if (monitoring.J27 != null)
                this.values[25] = (int)monitoring.J27;
            if (monitoring.J28 != null)
                this.values[26] = (int)monitoring.J28;
            if (monitoring.J29 != null)
                this.values[27] = (int)monitoring.J29;
            if (monitoring.J30 != null)
                this.values[28] = (int)monitoring.J30;
            if (monitoring.J31 != null)
                this.values[29] = (int)monitoring.J31;
        }

        public string GetReport()
        {
            return this.ApprovedCount.ToString() + "/" + this.UploadedCount.ToString() + "/30"; 
        }
    }
}