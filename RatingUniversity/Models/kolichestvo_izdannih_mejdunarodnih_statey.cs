//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace RatingUniversity.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class kolichestvo_izdannih_mejdunarodnih_statey
    {
        public int id { get; set; }
        public string fio { get; set; }
        public string country { get; set; }
        public string journal { get; set; }
        public string paper { get; set; }
        public string paper_year { get; set; }
        public string link { get; set; }
        public Nullable<double> coauthor_count { get; set; }
        public string filename { get; set; }
        public Nullable<int> year { get; set; }
        public Nullable<int> id_university { get; set; }
        public Nullable<int> university_id { get; set; }
        public Nullable<int> university_id1 { get; set; }
    
        public virtual university university { get; set; }
        public virtual university university1 { get; set; }
    }
}
