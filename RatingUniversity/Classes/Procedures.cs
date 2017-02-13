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
            command.Parameters["@year"].Value = year;
            this.connection.Open();
            object result = command.ExecuteScalar();
            this.connection.Close();
            return Convert.ToInt32(result);
        }

        public int P1_3_rolvo_uchebnikov_posobiy_umk(int id_university, int year)
        {
            this.command.CommandText = "P1_3_rolvo_uchebnikov_posobiy_umk";
            return this.execProc(id_university, year);
        }
        public int P3_1_citiruemost_publikaciy_pps_vuza(int id_university, int year)
        {
            this.command.CommandText = "P3_1_citiruemost_publikaciy_pps_vuza";
            return this.execProc(id_university, year);
        }

        public int P3_2_kolichestvo_izdannih_statey(int id_university, int year)
        {
            this.command.CommandText = "P3_2_kolichestvo_izdannih_statey";
            return this.execProc(id_university, year);
        }

        public int P3_3_kolichestvo_sotrudnikov_vuza(int id_university, int year)
        {
            this.command.CommandText = "P3_3_kolichestvo_sotrudnikov_vuza";
            return this.execProc(id_university, year);
        }

        public int P3_4_summa_finansovih_sredstv_na_issledovaniya(int id_university, int year)
        {
            this.command.CommandText = "P3_4_summa_finansovih_sredstv_na_issledovaniya";
            return this.execProc(id_university, year);
        }

        public int P3_5_effektivnost_provodimih_nir(int id_university, int year)
        {
            this.command.CommandText = "P3_5_effektivnost_provodimih_nir";
            return this.execProc(id_university, year);
        }

        public int P4_1_osnashennost_irc_literaturoy(int id_university, int year)
        {
            this.command.CommandText = "P4_1_osnashennost_irc_literaturoy";
            return this.execProc(id_university, year);
        }

        public int P4_2_stepen_vnedreniya_ikt(int id_university, int year)
        {
            this.command.CommandText = "P4_2_stepen_vnedreniya_ikt";
            return this.execProc(id_university, year);
        }

        public int P4_3_dostupnost_info_o_vuze_v_internete(int id_university, int year)
        {
            this.command.CommandText = "P4_3_dostupnost_info_o_vuze_v_internete";
            return this.execProc(id_university, year);
        }

        public int P4_4_stepen_osnashennosti_laboratoriy(int id_university, int year)
        {
            this.command.CommandText = "P4_4_stepen_osnashennosti_laboratoriy";
            return this.execProc(id_university, year);
        }
    }
}