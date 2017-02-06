using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Entity;
using RatingUniversity.Models;

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

        public static int GetStatus(int idUniversity, string tableName, int year)
        {
            using (TablesContext db = new TablesContext())
            {
                var list = db.Monitorings.Where(model => model.Year == year && model.UniverId == idUniversity);
                if (list.Count() == 0)
                {
                    return 0;
                }
                else
                {
                    return 1;
                }
            }
        }
	}
}