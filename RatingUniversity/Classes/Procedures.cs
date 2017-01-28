using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace RatingUniversity.Classes
{
    public class Procedures
    {
        protected string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["TablesContext"].ConnectionString;

        protected SqlConnection connection;
        SqlCommand command = new SqlCommand();
        
        public Procedures(){
            this.connection = new SqlConnection(this.connectionString);
            this.command.Connection = this.connection;
            this.command.CommandType = CommandType.StoredProcedure;
            this.command.Parameters.Add(new SqlParameter("@id_university", SqlDbType.Int));
            this.command.Parameters.Add(new SqlParameter("@year", SqlDbType.Int));
        }

        protected int execProc(int id_university, int year)
        {
            command.Parameters["@id_university"].Value = id_university;
            command.Parameters["$year"].Value = year;
            this.connection.Open();
            object result = command.ExecuteScalar();
            this.connection.Close();
            return Convert.ToInt32(result);
        }

        public int P3_1_citiruemost_publikaciy_pps_vuza(int id_university, int year)
        {
            this.command.CommandText = "P3_1_citiruemost_publikaciy_pps_vuza";
            return this.execProc(id_university, year);
        }

        public int P3_3_kolichestvo_sotrudnikov_vuza(int id_university, int year)
        {
            this.command.CommandText = "P3_3_kolichestvo_sotrudnikov_vuza";
            return this.execProc(id_university, year);
        }
    }
}