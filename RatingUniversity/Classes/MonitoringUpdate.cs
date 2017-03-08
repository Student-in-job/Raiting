using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Entity;
using RatingUniversity.Models;
using System.Data.SqlClient;
using System.Configuration;

namespace RatingUniversity.Classes
{
	public class MonitoringUpdate
	{
		public static void Update(int UniverId, string fld_name, int status, int yil)
		{
			using (TablesContext db = new TablesContext())
			{
				int c = db.Monitorings.Where(x => x.Year == yil && x.UniverId == UniverId).Count();

                if (c == 0 && UniverId != 0)
                {
                    string sql = "insert Monitorings(Year, UniverId, " + fld_name + ") Values(" + yil.ToString() + ", " + UniverId.ToString() + ", " + status + ") ";
                    db.Database.ExecuteSqlCommand(sql);
                    db.SaveChanges();
                }
                else
                {
                    string sql = "";
                    if (UniverId != 0) sql = "update Monitorings set " + fld_name + "=" + status.ToString() + " where Year=" + yil.ToString() + " and UniverId=" + UniverId.ToString();
                    db.Database.ExecuteSqlCommand(sql);
                    db.SaveChanges();
                }
			}

		}

        public static void Update(string tableName, int status, int year)
        {
            using (TablesContext db = new TablesContext())
            {
                IEnumerable<university> universities = db.university.ToList();
                foreach(university university in universities)
                {
                    IEnumerable<Monitorings> record = db.Monitorings.Where(model => model.UniverId == university.id && model.Year == year).ToList();
                    if (record.Count() == 0)
                    {
                        Monitorings newRecord = new Monitorings();
                        newRecord.Year = year;
                        newRecord.UniverId = university.id;
                        db.Monitorings.Add(newRecord);
                    }
                }
                db.SaveChanges();
                string query = "UPDATE Monitorings SET " + tableName + " = " + status.ToString() + " WHERE Year = " + year.ToString();
                db.Database.ExecuteSqlCommand(query);
            }
        }

        public static int GetStatus(int? idUniversity, string tableName, int year)
        {
            //if ((idUniversity == null) || (idUniversity == 0))
            //    return -1;
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["TablesContext"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            string query;
            object status = null;
            if (idUniversity != null)
            {
                query = "SELECT " + tableName + " FROM Monitorings WHERE UniverId = @id AND Year = @year";
                command.CommandText = query;
                command.Parameters.Add(new SqlParameter("@id", idUniversity));
                command.Parameters.Add(new SqlParameter("@year", year));
                connection.Open();
                status = command.ExecuteScalar();
            }
            else
            {
                query = "SELECT " + tableName + " FROM Monitorings WHERE Year = @year";
                command.CommandText = query;
                command.Parameters.Add(new SqlParameter("@year", year));
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows)
                {
                    reader.Read();
                    status = reader[0];
                }
            }
            connection.Close();
            if ((status == null) || (status == DBNull.Value))
                return -1;
            else    
                return (int)status;
        }
	}
}