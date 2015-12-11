using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace RatingUniversity.Models
{
    public class Jadval_AKTdaraja_1_7
    {
        public Int32 Id { get; set; }
        public Int32 P { get; set; }//obshiy kolichenstvo
        public Int32 P7 { get; set; }//inostranniy sdavshiy udavletvоritelno
        public Int32 P8 { get; set; }//akt sdavshiy udоvletvоritelno
        public Int16 Year { get; set; }
        public Int32 UniversityId { get; set; }
    }

    public class Jadval_bitiruvchi_2_2
    {
        public Int32 Id { get; set; }
        public Int32 R { get; set; }//Obshiy
        public Int32 R1 { get; set; }//Udovletvоritelniy
        public Int32 UniversityId { get; set; }
        public Int16 Year { get; set; }
    }

    public class Jadval_talababilim_2_1
    {
        public Int32 Id { get; set; }
        public Int32 T_All { get; set; }//obsiy kolichenstvo studentov
        public Int32 T_Qualified { get; set; }//Kol. studentov puluchevshiy xoroshiy otsenki
        public Int32 UniversityId { get; set; }
        public Int16 Year { get; set; }
    }

    public class Jadval_talimsifati_1_2
    {
        public Int32 Id { get; set; }
        public Int32? T { get; set; }
        public Int32? N1 { get; set; }
        public Int32? N2 { get; set; }
        public Int32? N3 { get; set; }
        public Int32? N41 { get; set; }
        public Int32? N51 { get; set; }
        public Int32? N42 { get; set; }
        public Int32? N52 { get; set; }
        public Int32? N43 { get; set; }
        public Int32? N53 { get; set; }
        public Int32? I2 { get; set; }
        public Int32 UniversityId { get; set; }
        public Int16 Year { get; set; }
    }

    public class Jadval1
    {
        public Int32 Id { get; set; }
        [Display(Name = "Название")]
        public String OtmName { get; set; }
        [Display(Name = "Страна")]
        public String State { get; set; }
        [Display(Name = "Рейтинг")]
        public Int32 Reyting { get; set; }
        [Display(Name = "Год")]
        public Int16 Year { get; set; }
        public Int32? UniversityId { get; set; }
    }

    public class Jadval10
    {
        public Int32 Id { get; set; }
        public String DirectionCode { get; set; }
        public String DirectionName { get; set; }
        public String SubjectName { get; set; }
        public String ForeignLanguage { get; set; }
        public Int32 EducationCourse { get; set; }
        public Int32 StudentCount { get; set; }
        public String Asos { get; set; }
        public String AsosFile { get; set; }
        public Int16 Year { get; set; }
        public Int32 UniversityId { get; set; }
    }
    public class Jadval11
    {
        public Int32 Id { get; set; }
        public String FullName { get; set; }
        public String Speciality { get; set; }
        public String MonographName { get; set; }
        public Int32 MongographYear { get; set; }
        public String DarslikName { get; set; }
        public String DarslikCertificate { get; set; }
        public String OquvqullanmaName { get; set; }
        public String OquvqullanmaCertificate { get; set; }
        public String OquvmajmuaName { get; set; }
        public String OquvmajmuaCertificate { get; set; }
        public int? Status { get; set; }
        public String AsosFile { get; set; }
        public Int16 Year { get; set; }
        public Int32 UniversityId { get; set; }
    }
    public class Jadval18
    {
        public Int32 Id { get; set; }
        public String FullName { get; set; }
        public String Khk_ak_Name { get; set; }
        public String Post { get; set; }
        public String Subject { get; set; }
        public String Orindosh { get; set; }//turini String yo Int32 qilish kere???
        public String Soatbay { get; set; }//turini String yo Int32 qilish kere???
        public String Asos { get; set; }
        public String AsosFile { get; set; }
        public Int16 Year { get; set; }
        public Int32 UniversityId { get; set; }
    }
    public class Jadval19
    {
        public Int32 Id { get; set; }
        public String FullName { get; set; }
        public String TanlovName { get; set; }
        public String Tanlov_joy_date { get; set; }
        public String SubjectName { get; set; }
        public String EgallaganPosition { get; set; }
        public String DiplomSeria { get; set; }
        public String DiplomNumber { get; set; }
        public String SovrinName { get; set; }
        public String Description { get; set; }
        public int? Status { get; set; }
        public String AsosFile { get; set; }
        public Int16 Year { get; set; }
        public Int32 UniversityId { get; set; }
        public Int32 TanlovTuri { get; set; }//1-OTM yo'nalishiga mos xalqaro,2 - OTM yo'nalishiga mos resp,3 - OTM yo'nalishiga mosmas xalqaro, 4 - OTM yo'nalishiga mosmas resp
    }
    public class Jadval2
    {
        public Int32 Id { get; set; }
        public String FullName { get; set; }
        public String Davlat { get; set; }
        public Int32 Jadval1_Id { get; set; }
        public String Phd_seriya { get; set; }
        public String Phd_nomer { get; set; }
        public String Mag_seriya { get; set; }
        public String Mag_nomer { get; set; }
        public String Speciality { get; set; }
        public String Ishga_qabul_buyruq { get; set; }
        public int? Status { get; set; }
        public Int16 Year { get; set; }
        public Int32 UniversityId { get; set; }
        public String AsosFile { get; set; }
    }
    public class Jadval20
    {
        public Int32 Id { get; set; }
        public String FullName { get; set; }
        public String Talim_yonalish_shifri { get; set; }
        public String Talim_yonalish_nomi { get; set; }
        public String Ish_nomi { get; set; }
        public String Ish_lavozimi { get; set; }
        public String Asos_fayl { get; set; }
        public String Mag_otm { get; set; }
        public Int16 Year { get; set; }
        public Int32 UniversityId { get; set; }
    }
    public class Jadval21
    {
        public Int32 Id { get; set; }
        public String fio { get; set; }
        public String Mutaxassislik_shifr { get; set; }
        public String Mutaxassislik_nomi { get; set; }
        public String Ish_nomi { get; set; }
        public String Ish_lavozimi { get; set; }
        public String Asos_fayl { get; set; }
        public Int16 Year { get; set; }
        public Int32 UniversityId { get; set; }
    }
    public class Jadval32
    {
        public Int32 Id { get; set; }
        public String FullName { get; set; }
        public DateTime? BirthDate { get; set; }
        public String Post { get; set; }
        public Double stavka { get; set; }
        public String GraduatedOtm { get; set; }
        public String Diplom_ixtisoslik { get; set; }
        public String Diplom_mutaxassislik { get; set; }
        public String Ilmiy_daraja { get; set; }
        public String Ilmiy_unvon { get; set; }
        public Int32 Qaysi_yildan_kafedrada_ishlaydi { get; set; }
        public Int32 Oxirgi_malaka_oshirgan_yili { get; set; }
        public String Subjects { get; set; }
        public Int16 Year { get; set; }
        public Int32 UniversityId { get; set; }
        public Int32 Turi { get; set; }/*1 - asosiy, 2-o'rindosh, 3-soatbay*/
    }
    public class Jadval5
    {
        public Int32 Id { get; set; }
        public String FullName { get; set; }
        public String Davlat_ishjoy { get; set; }
        public String Speciality { get; set; }
        public String Subject { get; set; }
        public int? Status { get; set; }
        public String Asos { get; set; }
        public String Asos_fayl { get; set; }
        public Int16 Year { get; set; }
        public Int32 UniversityId { get; set; }
    }
    public class Jadval6
    {
        public Int32 Id { get; set; }
        public String FullName { get; set; }
        public String State { get; set; }
        public String Yonalish { get; set; }
        public String Mag_mutaxassislik { get; set; }
        public int? Status { get; set; }
        public String Asos { get; set; }
        public String Asos_fayl { get; set; }
        public Int16 Year { get; set; }
        public Int32 UniversityId { get; set; }
    }
    public class Jadval7
    {
        public Int32 Id { get; set; }
        public String FullName_uzb { get; set; }
        public String State_uzb { get; set; }
        public String Mutaxassislik_uzb { get; set; }
        public String FullName_xorij { get; set; }
        public String State_xorij { get; set; }
        public String Mutaxassislik_xorij { get; set; }
        public String Asos { get; set; }
        public String Asos_fayl { get; set; }
        public Int32 Bak_mag { get; set; }
        public Int16 Year { get; set; }
        public Int32 UniversityId { get; set; }
    }
    public class Jadval8
    {
        public Int32 Id { get; set; }
        public String FullName { get; set; }
        public String State_otm_nomi { get; set; }
        public String Talim_yonalish { get; set; }
        public String Loyiha_nomi { get; set; }
        public String Konferensiya_nomi { get; set; }
        public Int32 Student_oqituvchi { get; set; }
        public String Asos { get; set; }
        public String Asos_fayl { get; set; }
        public Int16 Year { get; set; }
        public Int32 UniversityId { get; set; }
    }
    public class Jadval9
    {
        public Int32 Id { get; set; }
        public String FullName { get; set; }
        public String State_otm { get; set; }
        public String Speciality { get; set; }
        public String Subject { get; set; }
        public String Asos { get; set; }
        public String Asos_fayl { get; set; }
        public Int16 Year { get; set; }
        public Int32 UniversityId { get; set; }
    }

    public class Monitoring
    {
        public Int32 Id { get; set; }
        public Int32? J1 { get; set; }
        public Int32? J2 { get; set; }
        public Int32? J3 { get; set; }
        public Int32? J4 { get; set; }
        public Int32? J5 { get; set; }
        public Int32? J6 { get; set; }
        public Int32? J7 { get; set; }
        public Int32? J8 { get; set; }
        public Int32? J9 { get; set; }
        public Int32? J10 { get; set; }
        public Int32? J11 { get; set; }
        public Int32? J12 { get; set; }
        public Int32? J13 { get; set; }
        public Int32? J14 { get; set; }
        public Int32? J15 { get; set; }
        public Int32? J16 { get; set; }
        public Int32? J17 { get; set; }
        public Int32? J18 { get; set; }
        public Int32? J19 { get; set; }
        public Int32? J20 { get; set; }
        public Int32? J21 { get; set; }
        public Int32? J22 { get; set; }
        public Int32? J23 { get; set; }
        public Int32? J24 { get; set; }
        public Int32? J25 { get; set; }
        public Int32? J26 { get; set; }
        public Int32? J27 { get; set; }
        public Int32? J28 { get; set; }
        public Int32? J29 { get; set; }
        public Int32? J30 { get; set; }
        public Int32? J31 { get; set; }
        public Int32? J32 { get; set; }
        public Int32? J1_2 { get; set; }
        public Int32? J1_7 { get; set; }
        public Int32? J2_1 { get; set; }
        public Int32? J2_2 { get; set; }
        public Int32 Year { get; set; }
        public Int32 UniverId { get; set; }
        public DateTime? Srok { get; set; }
    }

    public class Table11
    {
        public List<monografiya> monografiya { get; set; }
        public List<darslik> darslik { get; set; }
        public List<qullanma> qullanma { get; set; }
        public List<majmua> majmua { get; set; }
    }

    public class Table15
    {
        public List<effektivnost_nir_sertifikat> sertificat { get; set; }
        public List<effektivnost_nir_patent> patent { get; set; }
        public List<effektivnost_nir_dalolatnoma> dalolatnoma { get; set; }
    }
}