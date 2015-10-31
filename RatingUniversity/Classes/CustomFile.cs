using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace RatingUniversity.Classes
{
    public class CustomFile
    {
        protected string fileName;

        protected virtual DataTable ReadProvider(string listName)
        {
            DataTable table = new DataTable();
            return table;
        }

        public string FileName { get { return this.fileName; } }

        public CustomFile()
        { }

        public CustomFile(string fileName)
        {
            this.fileName = fileName;
        }

        public DataTable ReadData(string listName)
        {
            return this.ReadProvider(listName);
        }

        
    }
}