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
    
    public partial class informaciya_o_dissertaciyah
    {
        public int id { get; set; }
        public string fio { get; set; }
        public string work_place { get; set; }
        public string iht_shifr { get; set; }
        public string iht_nomi { get; set; }
        public string disser_name { get; set; }
        public string kengash_shifr { get; set; }
        public string kengash_email { get; set; }
        public Nullable<System.DateTime> date { get; set; }
        public Nullable<int> year { get; set; }
        public Nullable<int> id_university { get; set; }
    
        public virtual university university { get; set; }
    }
}