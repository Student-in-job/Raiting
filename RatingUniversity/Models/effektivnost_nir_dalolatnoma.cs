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
    
    public partial class effektivnost_nir_dalolatnoma
    {
        public int id { get; set; }
        public string otm_name { get; set; }
        public string fio { get; set; }
        public string sertifikat_name { get; set; }
        public string sertifikat_date { get; set; }
        public string sertifikat_number { get; set; }
        public string filename { get; set; }
        public Nullable<int> id_university { get; set; }
        public Nullable<int> year { get; set; }
    
        public virtual university university { get; set; }
    }
}
