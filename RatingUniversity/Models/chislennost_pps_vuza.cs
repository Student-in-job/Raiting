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
    
    public partial class chislennost_pps_vuza
    {
        public int id { get; set; }
        public Nullable<int> ass_shtat { get; set; }
        public Nullable<int> urindosh { get; set; }
        public Nullable<int> saotbay { get; set; }
        public Nullable<int> as_fan_nom { get; set; }
        public Nullable<int> as_fan_doc { get; set; }
        public Nullable<int> as_prof { get; set; }
        public Nullable<int> as_doz { get; set; }
        public Nullable<int> as_katta { get; set; }
        public Nullable<int> as_ass { get; set; }
        public Nullable<int> ur_prof { get; set; }
        public Nullable<int> ur_doc { get; set; }
        public Nullable<int> ur_katta { get; set; }
        public Nullable<int> ur_ass { get; set; }
        public Nullable<int> so_prof { get; set; }
        public Nullable<int> so_doc { get; set; }
        public Nullable<int> so_katta { get; set; }
        public Nullable<int> so_ass { get; set; }
        public Nullable<int> id_university { get; set; }
        public Nullable<int> year { get; set; }
    
        public virtual university university { get; set; }
    }
}
