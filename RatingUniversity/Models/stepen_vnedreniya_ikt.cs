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
    
    public partial class stepen_vnedreniya_ikt
    {
        public int id { get; set; }
        public Nullable<int> id_university { get; set; }
        public Nullable<int> year { get; set; }
        public Nullable<int> pc_count { get; set; }
        public Nullable<int> pc_in_local_netw_count { get; set; }
        public Nullable<int> pc_with_intenet_count { get; set; }
        public Nullable<int> last_years_pc_count { get; set; }
        public Nullable<double> internet_speed { get; set; }
        public Nullable<int> admin_emails_count { get; set; }
        public Nullable<int> pps_emails_count { get; set; }
        public Nullable<double> web_service_types { get; set; }
        public Nullable<double> study_monitoring { get; set; }
        public Nullable<double> research_monitoring { get; set; }
        public Nullable<double> pps_baza { get; set; }
        public Nullable<double> student_baza { get; set; }
        public Nullable<double> finance { get; set; }
        public Nullable<int> admins_count { get; set; }
        public Nullable<int> pps_count { get; set; }
        public Nullable<int> students_count { get; set; }
    
        public virtual university university { get; set; }
    }
}
