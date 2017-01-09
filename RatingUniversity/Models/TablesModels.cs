﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity.ModelConfiguration.Conventions;


namespace RatingUniversity.Models
{
	public class TablesContext : DbContext
	{		
		public DbSet<Jadval1> Jadval1 { get; set; }
		public DbSet<Jadval2> Jadval2 { get; set; }
		public DbSet<Jadval5> Jadval5 { get; set; }
		public DbSet<Jadval6> Jadval6 { get; set; }
		public DbSet<Jadval7> Jadval7 { get; set; }
		public DbSet<Jadval8> Jadval8 { get; set; }
		public DbSet<Jadval9> Jadval9 { get; set; }
		public DbSet<Jadval10> Jadval10 { get; set; }
		public DbSet<Jadval11> Jadval11 { get; set; }
		public DbSet<Jadval18> Jadval18 { get; set; }
		public DbSet<Jadval19> Jadval19 { get; set; }
		public DbSet<Jadval20> Jadval20 { get; set; }
		public DbSet<Jadval21> Jadval21 { get; set; }
		public DbSet<Jadval32> Jadval32 { get; set; }
		public DbSet<Jadval_AKTdaraja_1_7> Jadval_AKTdaraja_1_7 { get; set; }
		public DbSet<Jadval_bitiruvchi_2_2> Jadval_bitiruvchi_2_2 { get; set; }
		public DbSet<Jadval_talababilim_2_1> Jadval_talababilim_2_1 { get; set; }
		public DbSet<Jadval_talimsifati_1_2> Jadvaltalimsifati_1_2 { get; set; }
		public DbSet<Monitorings> Monitorings { get; set; }

        public virtual DbSet<branch> branch { get; set; }
        public virtual DbSet<chislennost_pps_vuza> chislennost_pps_vuza { get; set; }
        public virtual DbSet<citiruemost_publikaciy_pps_vuza> citiruemost_publikaciy_pps_vuza { get; set; }
        public virtual DbSet<darslik> darslik { get; set; }
        public virtual DbSet<effektivnost_nir_dalolatnoma> effektivnost_nir_dalolatnoma { get; set; }
        public virtual DbSet<effektivnost_nir_patent> effektivnost_nir_patent { get; set; }
        public virtual DbSet<effektivnost_nir_sertifikat> effektivnost_nir_sertifikat { get; set; }
        public virtual DbSet<granti_po_vidam_issledovaniy> granti_po_vidam_issledovaniy { get; set; }
        public virtual DbSet<majmua> majmua { get; set; }
        public virtual DbSet<monografiya> monografiya { get; set; }
        public virtual DbSet<nalichie_elektronnoy_literaturi> nalichie_elektronnoy_literaturi { get; set; }
        public virtual DbSet<nalichie_informacii_o_vuze_v_internete> nalichie_informacii_o_vuze_v_internete { get; set; }
        public virtual DbSet<nalichie_multimedia_v_auditorii> nalichie_multimedia_v_auditorii { get; set; }
        public virtual DbSet<osnashennost_laboratoriy> osnashennost_laboratoriy { get; set; }
        public virtual DbSet<qullanma> qullanma { get; set; }
        public virtual DbSet<raiting> raiting { get; set; }
        public virtual DbSet<region> region { get; set; }
        public virtual DbSet<stepen_vnedreniya_ikt> stepen_vnedreniya_ikt { get; set; }
        public virtual DbSet<summi_mejdunarodnih_grantov> summi_mejdunarodnih_grantov { get; set; }
        public virtual DbSet<summi_respublikanskih_grantov> summi_respublikanskih_grantov { get; set; }
        public virtual DbSet<university> university { get; set; }
        public virtual DbSet<I1> I1 { get; set; }
        public virtual DbSet<I1_dolya_pps_s_uchenoy_stepenyu> I1_dolya_pps_s_uchenoy_stepenyu { get; set; }
        public virtual DbSet<I1_TOTAL> I1_TOTAL { get; set; }
        public virtual DbSet<I10> I10 { get; set; }
        public virtual DbSet<I10_rezultati_attestacii_u_studentov> I10_rezultati_attestacii_u_studentov { get; set; }
        public virtual DbSet<I11> I11 { get; set; }
        public virtual DbSet<I11_ocenka_kvalifikacii_vipusknikov_rabotodatelyami> I11_ocenka_kvalifikacii_vipusknikov_rabotodatelyami { get; set; }
        public virtual DbSet<I12> I12 { get; set; }
        public virtual DbSet<I12_dolya_trudoustroennih_vipusknikov> I12_dolya_trudoustroennih_vipusknikov { get; set; }
        public virtual DbSet<I13> I13 { get; set; }
        public virtual DbSet<I13_kolichestvo_studentov_udostoennih_nagrad> I13_kolichestvo_studentov_udostoennih_nagrad { get; set; }
        public virtual DbSet<I14> I14 { get; set; }
        public virtual DbSet<I14_citiruemost_publikaciy_pps> I14_citiruemost_publikaciy_pps { get; set; }
        public virtual DbSet<I15> I15 { get; set; }
        public virtual DbSet<I15_kolichestvo_izdannih_statey> I15_kolichestvo_izdannih_statey { get; set; }
        public virtual DbSet<I16> I16 { get; set; }
        public virtual DbSet<I16_kolichestvo_sotrudnikov_utverjdennih_vak> I16_kolichestvo_sotrudnikov_utverjdennih_vak { get; set; }
        public virtual DbSet<I17> I17 { get; set; }
        public virtual DbSet<I17_summa_finansovih_sredstv_poluchennih_na_nauchnuyu_deyatelnost> I17_summa_finansovih_sredstv_poluchennih_na_nauchnuyu_deyatelnost { get; set; }
        public virtual DbSet<I18> I18 { get; set; }
        public virtual DbSet<I18_effektivnost_provodimih_nauchnih_rabot> I18_effektivnost_provodimih_nauchnih_rabot { get; set; }
        public virtual DbSet<I19> I19 { get; set; }
        public virtual DbSet<I19_stepen_osnashennosti_laboratoriy_oborudovaniem> I19_stepen_osnashennosti_laboratoriy_oborudovaniem { get; set; }
        public virtual DbSet<I2> I2 { get; set; }
        public virtual DbSet<I2_1> I2_1 { get; set; }
        public virtual DbSet<I2_1_uroven_kachestva_prepodavaniya> I2_1_uroven_kachestva_prepodavaniya { get; set; }
        public virtual DbSet<I2_TOTAL> I2_TOTAL { get; set; }
        public virtual DbSet<I2_uroven_kachestva_prepodavaniya> I2_uroven_kachestva_prepodavaniya { get; set; }
        public virtual DbSet<I20> I20 { get; set; }
        public virtual DbSet<I20_obespechennost_irc_uchebnoy_literaturoy> I20_obespechennost_irc_uchebnoy_literaturoy { get; set; }
        public virtual DbSet<I21> I21 { get; set; }
        public virtual DbSet<I21_stepen_vnedreniya_ikt_v_uchebniy_process> I21_stepen_vnedreniya_ikt_v_uchebniy_process { get; set; }
        public virtual DbSet<I22> I22 { get; set; }
        public virtual DbSet<I22_dostupnost_informacii_o_vuze_v_internete> I22_dostupnost_informacii_o_vuze_v_internete { get; set; }
        public virtual DbSet<I23> I23 { get; set; }
        public virtual DbSet<I23_osnashennost_laboratornim_oborudovaniem> I23_osnashennost_laboratornim_oborudovaniem { get; set; }
        public virtual DbSet<I3> I3 { get; set; }
        public virtual DbSet<I3_kolichestvo_uchebnikov_i_posobiy> I3_kolichestvo_uchebnikov_i_posobiy { get; set; }
        public virtual DbSet<I3_TOTAL> I3_TOTAL { get; set; }
        public virtual DbSet<I4> I4 { get; set; }
        public virtual DbSet<I4_dolya_inostrannih_prepodavateley_i_studentov> I4_dolya_inostrannih_prepodavateley_i_studentov { get; set; }
        public virtual DbSet<I4_TOTAL> I4_TOTAL { get; set; }
        public virtual DbSet<I5> I5 { get; set; }
        public virtual DbSet<I5_uchastie_v_programme_obmena> I5_uchastie_v_programme_obmena { get; set; }
        public virtual DbSet<I6> I6 { get; set; }
        public virtual DbSet<I6_kolichestvo_uchebnih_kursov_na_inostrannom> I6_kolichestvo_uchebnih_kursov_na_inostrannom { get; set; }
        public virtual DbSet<I7> I7 { get; set; }
        public virtual DbSet<I7_uroven_angliyskogo_i_ikt_u_pps> I7_uroven_angliyskogo_i_ikt_u_pps { get; set; }
        public virtual DbSet<I8> I8 { get; set; }
        public virtual DbSet<I8_dolya_pps_prepodayushih_v_zarubejnih_vuzah> I8_dolya_pps_prepodayushih_v_zarubejnih_vuzah { get; set; }
        public virtual DbSet<I9> I9 { get; set; }
        public virtual DbSet<I9_dolya_pps_prepodayushego_v_sspo> I9_dolya_pps_prepodayushego_v_sspo { get; set; }
        public virtual DbSet<RAITING_TOTAL> RAITING_TOTAL { get; set; }
        public virtual DbSet<kolichestvo_izdannih_mejdunarodnih_statey> kolichestvo_izdannih_mejdunarodnih_statey { get; set; }
        public virtual DbSet<kolichestvo_izdannih_mestnih_statey> kolichestvo_izdannih_mestnih_statey { get; set; }
        public virtual DbSet<informaciya_o_dissertaciyah> informaciya_o_dissertaciyah { get; set; }
        public virtual DbSet<osnashennost_laboratornim_oborudovaniem> osnashennost_laboratornim_oborudovaniem { get; set; }
        public virtual DbSet<osnashennost_irc_literaturoy> osnashennost_irc_literaturoy { get; set; }
        public TablesContext()
            : base("name=TablesContext")
        { }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
            base.OnModelCreating(modelBuilder);
        }
	}
}