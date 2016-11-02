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
    
    public partial class university
    {
        public university()
        {
            this.chislennost_pps_vuza = new HashSet<chislennost_pps_vuza>();
            this.citiruemost_publikaciy_pps_vuza = new HashSet<citiruemost_publikaciy_pps_vuza>();
            this.darslik = new HashSet<darslik>();
            this.effektivnost_nir_dalolatnoma = new HashSet<effektivnost_nir_dalolatnoma>();
            this.effektivnost_nir_patent = new HashSet<effektivnost_nir_patent>();
            this.effektivnost_nir_sertifikat = new HashSet<effektivnost_nir_sertifikat>();
            this.granti_po_vidam_issledovaniy = new HashSet<granti_po_vidam_issledovaniy>();
            this.informaciya_o_dissertaciyah = new HashSet<informaciya_o_dissertaciyah>();
            this.kolichestvo_izdannih_mejdunarodnih_statey = new HashSet<kolichestvo_izdannih_mejdunarodnih_statey>();
            this.kolichestvo_izdannih_mestnih_statey = new HashSet<kolichestvo_izdannih_mestnih_statey>();
            this.majmua = new HashSet<majmua>();
            this.monografiya = new HashSet<monografiya>();
            this.nalichie_elektronnoy_literaturi = new HashSet<nalichie_elektronnoy_literaturi>();
            this.nalichie_informacii_o_vuze_v_internete = new HashSet<nalichie_informacii_o_vuze_v_internete>();
            this.nalichie_multimedia_v_auditorii = new HashSet<nalichie_multimedia_v_auditorii>();
            this.osnashennost_laboratoriy = new HashSet<osnashennost_laboratoriy>();
            this.qullanma = new HashSet<qullanma>();
            this.raiting = new HashSet<raiting>();
            this.raiting1 = new HashSet<raiting>();
            this.stepen_vnedreniya_ikt = new HashSet<stepen_vnedreniya_ikt>();
            this.summi_mejdunarodnih_grantov = new HashSet<summi_mejdunarodnih_grantov>();
            this.summi_respublikanskih_grantov = new HashSet<summi_respublikanskih_grantov>();
        }
    
        public int id { get; set; }
        public string name_RU { get; set; }
        public Nullable<int> id_region { get; set; }
        public Nullable<int> id_branch { get; set; }
        public string name_UZ { get; set; }
        public Nullable<int> branch_id { get; set; }
        public Nullable<int> region_id { get; set; }
    
        public virtual branch branch { get; set; }
        public virtual branch branch1 { get; set; }
        public virtual ICollection<chislennost_pps_vuza> chislennost_pps_vuza { get; set; }
        public virtual ICollection<citiruemost_publikaciy_pps_vuza> citiruemost_publikaciy_pps_vuza { get; set; }
        public virtual ICollection<darslik> darslik { get; set; }
        public virtual ICollection<effektivnost_nir_dalolatnoma> effektivnost_nir_dalolatnoma { get; set; }
        public virtual ICollection<effektivnost_nir_patent> effektivnost_nir_patent { get; set; }
        public virtual ICollection<effektivnost_nir_sertifikat> effektivnost_nir_sertifikat { get; set; }
        public virtual ICollection<granti_po_vidam_issledovaniy> granti_po_vidam_issledovaniy { get; set; }
        public virtual ICollection<informaciya_o_dissertaciyah> informaciya_o_dissertaciyah { get; set; }
        public virtual ICollection<kolichestvo_izdannih_mejdunarodnih_statey> kolichestvo_izdannih_mejdunarodnih_statey { get; set; }
        public virtual ICollection<kolichestvo_izdannih_mestnih_statey> kolichestvo_izdannih_mestnih_statey { get; set; }
        public virtual ICollection<majmua> majmua { get; set; }
        public virtual ICollection<monografiya> monografiya { get; set; }
        public virtual ICollection<nalichie_elektronnoy_literaturi> nalichie_elektronnoy_literaturi { get; set; }
        public virtual ICollection<nalichie_informacii_o_vuze_v_internete> nalichie_informacii_o_vuze_v_internete { get; set; }
        public virtual ICollection<nalichie_multimedia_v_auditorii> nalichie_multimedia_v_auditorii { get; set; }
        public virtual ICollection<osnashennost_laboratoriy> osnashennost_laboratoriy { get; set; }
        public virtual ICollection<qullanma> qullanma { get; set; }
        public virtual ICollection<raiting> raiting { get; set; }
        public virtual ICollection<raiting> raiting1 { get; set; }
        public virtual region region { get; set; }
        public virtual region region1 { get; set; }
        public virtual ICollection<stepen_vnedreniya_ikt> stepen_vnedreniya_ikt { get; set; }
        public virtual ICollection<summi_mejdunarodnih_grantov> summi_mejdunarodnih_grantov { get; set; }
        public virtual ICollection<summi_respublikanskih_grantov> summi_respublikanskih_grantov { get; set; }
    }
}
