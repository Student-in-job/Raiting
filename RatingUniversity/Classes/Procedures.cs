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
            try
            {
                this.connection.Open();
                object result = command.ExecuteScalar();
                return Convert.ToInt32(result);
            }
            catch (Exception exp)
            {
                throw new Exception("Error executing procedure", exp);
            }
            finally
            {
                this.connection.Close();
            }
        }

        protected int execProc(int year)
        {
            command.Parameters.Clear();
            command.Parameters.Add(new SqlParameter("@year", SqlDbType.Int));
            command.Parameters["@year"].Value = year;
            try
            {
                this.connection.Open();
                object result = command.ExecuteScalar();
                return Convert.ToInt32(result);
            }
            catch (Exception exp)
            {
                throw new Exception("Error executing procedure", exp);
            }
            finally
            {
                this.connection.Close();
            }
        }

        public int Executeprocedure(string procName, int id_university, int year)
        {
            this.command.CommandText = procName;
            return this.execProc(id_university, year);
        }

        public int Executeprocedure(string procName, int year)
        {
            this.command.CommandText = procName;
            return this.execProc(year);
        }

        public int P1_1_kachestvo_uchebnoy_raboti(int id_university, int year)
        {
            this.command.CommandText = "P1_1_kachestvo_uchebnoy_raboti";
            return this.execProc(id_university, year);
        }

        public int P1_3_kolvo_uchebnikov_posobiy_umk(int id_university, int year)
        {
            this.command.CommandText = "P1_3_kolvo_uchebnikov_posobiy_umk";
            return this.execProc(id_university, year);
        }

        public int P1_4_dolya_inostrancev(int id_university, int year)
        {
            this.command.CommandText = "P1_4_dolya_inostrancev";
            return this.execProc(id_university, year);
        }

        public int P1_5_programmi_obmena(int id_university, int year)
        {
            this.command.CommandText = "P1_5_programmi_obmena";
            return this.execProc(id_university, year);
        }
        public int P1_6_inostranniye_kursi(int id_university, int year)
        {
            this.command.CommandText = "P1_6_inostranniye_kursi";
            return this.execProc(id_university, year);
        }

        public int P1_8_prepodavaniye_v_top_vuzah(int id_university, int year)
        {
            this.command.CommandText = "P1_8_prepodavaniye_v_top_vuzah";
            return this.execProc(id_university, year);
        }

        public int P1_9_prepodavaniye_v_sspo(int id_university, int year)
        {
            this.command.CommandText = "P1_9_prepodavaniye_v_sspo";
            return this.execProc(id_university, year);
        }

        public int P2_3_trudoustroystvo_vipusknikov(int id_university, int year)
        {
            this.command.CommandText = "P2_3_trudoustroystvo_vipusknikov";
            return this.execProc(id_university, year);
        }

        public int P2_4_nagradi_studentov(int id_university, int year)
        {
            this.command.CommandText = "P2_4_nagradi_studentov";
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