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
    
    public partial class nalichie_multimedia_v_auditorii
    {
        public int id { get; set; }
        public Nullable<int> id_university { get; set; }
        public Nullable<int> year { get; set; }
        public string vuz_name { get; set; }
        public Nullable<int> rooms_total_count { get; set; }
        public Nullable<int> rooms_with_multimedia { get; set; }
        public Nullable<int> university_id { get; set; }
        public Nullable<int> university_id1 { get; set; }
    
        public virtual university university { get; set; }
        public virtual university university1 { get; set; }
    }
}
