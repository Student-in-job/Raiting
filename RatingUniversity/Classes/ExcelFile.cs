using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;


namespace RatingUniversity.Classes
{
    public class ExcelFile: CustomFile
    {
        public ExcelFile() : base() { }

        public ExcelFile(string fileName) : base(fileName) { }
        
        protected override DataTable ReadProvider(string listName)
        {
            var connectionString = string.Format("Provider=Microsoft.ACE.OLEDB.12.0;Data Source={0};Extended Properties=Excel 12.0;", this.fileName);
            var adapter = new OleDbDataAdapter("SELECT * FROM [" + listName + "$]", connectionString);
            DataSet ds = new DataSet();
            adapter.Fill(ds, "T1");
            return ds.Tables["T1"];
        }
    }
}