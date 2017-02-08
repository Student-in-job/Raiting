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
				if (UniverId==0)
				{
					//dlya vsex unuiverov dobavit stroku
					TablesContext udb = new TablesContext();
					var list = udb.Database.SqlQuery<university>(@"select u.id, u.name_UZ, u.name_RU, u.id_branch, u.id_region from university u ORDER BY u.name_UZ");
					foreach (var l in list)
					{
						int cc = db.Monitorings.Where(x => x.Year == yil && x.UniverId == UniverId).Count();
						if (cc == 0)
						{
							string sql = "insert Monitorings(Year, UniverId) Values(" + yil.ToString() + ", " + l.id.ToString() + ") ";
							db.Database.ExecuteSqlCommand(sql);
							db.SaveChanges();
						}
					}
				}
				
				if (c == 0 && UniverId!=0)
				{
                    string sql = "insert Monitorings(Year, UniverId, " + fld_name + ") Values(" + yil.ToString() + ", " + UniverId.ToString() + ", " + status + ") ";
					db.Database.ExecuteSqlCommand(sql);
					db.SaveChanges();

				}
				else
				{
					string sql="";
					if (UniverId != 0) sql = "update Monitorings set " + fld_name + "=" + status.ToString() + " where Year=" + yil.ToString() + " and UniverId=" + UniverId.ToString();
					if (UniverId == 0) sql="update Monitorings set " + fld_name + "=" + status.ToString() + " where Year=" + yil.ToString();
					db.Database.ExecuteSqlCommand(sql);
					db.SaveChanges();

				}
			}

		}

        public static int GetStatus(int? idUniversity, string tableName, int year)
        {
            //if ((idUniversity == null) || (idUniversity == 0))
            //    return -1;
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["TablesContext"].ConnectionString);
            string query = "select " + tableName + " FROM Monitorings WHERE UniverId = @id AND Year = @year";
            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandText = query;
            command.Parameters.Add(new SqlParameter("@id", idUniversity));
            command.Parameters.Add(new SqlParameter("@year", year));
            connection.Open();
            object status = command.ExecuteScalar();
            connection.Close();
            if ((status == null) || (status == DBNull.Value))
                return -1;
            else    
                return (int)status;
        }
	}
}