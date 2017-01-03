-- SQL Manager for SQL Server 4.3.0.47914
-- ---------------------------------------
-- Host      : (local)
-- Database  : URaiting
-- Version   : Microsoft SQL Server 2012 (SP3 11.0.6248.0


--
-- Dropping table branch : 
--

DROP TABLE IF EXISTS dbo.branch
GO

--
-- Dropping table chislennost_pps_vuza : 
--

DROP TABLE IF EXISTS dbo.chislennost_pps_vuza
GO

--
-- Dropping table university : 
--

DROP TABLE IF EXISTS dbo.university
GO

--
-- Dropping table region : 
--

DROP TABLE IF EXISTS dbo.region
GO

--
-- Dropping table citiruemost_publikaciy_pps_vuza : 
--

DROP TABLE IF EXISTS dbo.citiruemost_publikaciy_pps_vuza
GO

--
-- Dropping table darslik : 
--

DROP TABLE IF EXISTS dbo.darslik
GO

--
-- Dropping table effektivnost_nir_dalolatnoma : 
--

DROP TABLE IF EXISTS dbo.effektivnost_nir_dalolatnoma
GO

--
-- Dropping table effektivnost_nir_patent : 
--

DROP TABLE IF EXISTS dbo.effektivnost_nir_patent
GO

--
-- Dropping table effektivnost_nir_sertifikat : 
--

DROP TABLE IF EXISTS dbo.effektivnost_nir_sertifikat
GO

--
-- Dropping table granti_po_vidam_issledovaniy : 
--

DROP TABLE IF EXISTS dbo.granti_po_vidam_issledovaniy
GO

--
-- Dropping table informaciya_o_dissertaciyah : 
--

DROP TABLE IF EXISTS dbo.informaciya_o_dissertaciyah
GO

--
-- Dropping table Jadval_AKTdaraja_1_7 : 
--

DROP TABLE IF EXISTS dbo.Jadval_AKTdaraja_1_7
GO

--
-- Dropping table Jadval_bitiruvchi_2_2 : 
--

DROP TABLE IF EXISTS dbo.Jadval_bitiruvchi_2_2
GO

--
-- Dropping table Jadval_talababilim_2_1 : 
--

DROP TABLE IF EXISTS dbo.Jadval_talababilim_2_1
GO

--
-- Dropping table Jadval_talimsifati_1_2 : 
--

DROP TABLE IF EXISTS dbo.Jadval_talimsifati_1_2
GO

--
-- Dropping table Jadval1 : 
--

DROP TABLE IF EXISTS dbo.Jadval1
GO

--
-- Dropping table Jadval10 : 
--

DROP TABLE IF EXISTS dbo.Jadval10
GO

--
-- Dropping table Jadval11 : 
--

DROP TABLE IF EXISTS dbo.Jadval11
GO

--
-- Dropping table Jadval18 : 
--

DROP TABLE IF EXISTS dbo.Jadval18
GO

--
-- Dropping table Jadval19 : 
--

DROP TABLE IF EXISTS dbo.Jadval19
GO

--
-- Dropping table Jadval2 : 
--

DROP TABLE IF EXISTS dbo.Jadval2
GO

--
-- Dropping table Jadval20 : 
--

DROP TABLE IF EXISTS dbo.Jadval20
GO

--
-- Dropping table Jadval21 : 
--

DROP TABLE IF EXISTS dbo.Jadval21
GO

--
-- Dropping table Jadval32 : 
--

DROP TABLE IF EXISTS dbo.Jadval32
GO

--
-- Dropping table Jadval5 : 
--

DROP TABLE IF EXISTS dbo.Jadval5
GO

--
-- Dropping table Jadval6 : 
--

DROP TABLE IF EXISTS dbo.Jadval6
GO

--
-- Dropping table Jadval7 : 
--

DROP TABLE IF EXISTS dbo.Jadval7
GO

--
-- Dropping table Jadval8 : 
--

DROP TABLE IF EXISTS dbo.Jadval8
GO

--
-- Dropping table Jadval9 : 
--

DROP TABLE IF EXISTS dbo.Jadval9
GO

--
-- Dropping table kolichestvo_izdannih_mejdunarodnih_statey : 
--

DROP TABLE IF EXISTS dbo.kolichestvo_izdannih_mejdunarodnih_statey
GO

--
-- Dropping table kolichestvo_izdannih_mestnih_statey : 
--

DROP TABLE IF EXISTS dbo.kolichestvo_izdannih_mestnih_statey
GO

--
-- Dropping table majmua : 
--

DROP TABLE IF EXISTS dbo.majmua
GO

--
-- Dropping table Monitorings : 
--

DROP TABLE IF EXISTS dbo.Monitorings
GO

--
-- Dropping table monografiya : 
--

DROP TABLE IF EXISTS dbo.monografiya
GO

--
-- Dropping table nalichie_elektronnoy_literaturi : 
--

DROP TABLE IF EXISTS dbo.nalichie_elektronnoy_literaturi
GO

--
-- Dropping table nalichie_informacii_o_vuze_v_internete : 
--

DROP TABLE IF EXISTS dbo.nalichie_informacii_o_vuze_v_internete
GO

--
-- Dropping table nalichie_multimedia_v_auditorii : 
--

DROP TABLE IF EXISTS dbo.nalichie_multimedia_v_auditorii
GO

--
-- Dropping table osnashennost_laboratoriy : 
--

DROP TABLE IF EXISTS dbo.osnashennost_laboratoriy
GO

--
-- Dropping table qullanma : 
--

DROP TABLE IF EXISTS dbo.qullanma
GO

--
-- Dropping table raiting : 
--

DROP TABLE IF EXISTS dbo.raiting
GO

--
-- Dropping table stepen_vnedreniya_ikt : 
--

DROP TABLE IF EXISTS dbo.stepen_vnedreniya_ikt
GO

--
-- Dropping table summi_mejdunarodnih_grantov : 
--

DROP TABLE IF EXISTS dbo.summi_mejdunarodnih_grantov
GO

--
-- Dropping table summi_respublikanskih_grantov : 
--

DROP TABLE IF EXISTS dbo.summi_respublikanskih_grantov
GO

--
-- Dropping view I1 : 
--

DROP VIEW IF EXISTS dbo.I1
GO

--
-- Dropping view I1_dolya_pps_s_uchenoy_stepenyu : 
--

DROP VIEW IF EXISTS dbo.I1_dolya_pps_s_uchenoy_stepenyu
GO

--
-- Dropping view I6_kolichestvo_uchebnih_kursov_na_inostrannom : 
--

DROP VIEW IF EXISTS dbo.I6_kolichestvo_uchebnih_kursov_na_inostrannom
GO

--
-- Dropping view I6 : 
--

DROP VIEW IF EXISTS dbo.I6
GO

--
-- Dropping view I7 : 
--

DROP VIEW IF EXISTS dbo.I7
GO

--
-- Dropping view I7_uroven_angliyskogo_i_ikt_u_pps : 
--

DROP VIEW IF EXISTS dbo.I7_uroven_angliyskogo_i_ikt_u_pps
GO

--
-- Dropping view I8 : 
--

DROP VIEW IF EXISTS dbo.I8
GO

--
-- Dropping view I8_dolya_pps_prepodayushih_v_zarubejnih_vuzah : 
--

DROP VIEW IF EXISTS dbo.I8_dolya_pps_prepodayushih_v_zarubejnih_vuzah
GO

--
-- Dropping view I9 : 
--

DROP VIEW IF EXISTS dbo.I9
GO

--
-- Dropping view I9_dolya_pps_prepodayushego_v_sspo : 
--

DROP VIEW IF EXISTS dbo.I9_dolya_pps_prepodayushego_v_sspo
GO

--
-- Dropping view I2 : 
--

DROP VIEW IF EXISTS dbo.I2
GO

--
-- Dropping view I2_uroven_kachestva_prepodavaniya : 
--

DROP VIEW IF EXISTS dbo.I2_uroven_kachestva_prepodavaniya
GO

--
-- Dropping view I3 : 
--

DROP VIEW IF EXISTS dbo.I3
GO

--
-- Dropping view I3_kolichestvo_uchebnikov_i_posobiy : 
--

DROP VIEW IF EXISTS dbo.I3_kolichestvo_uchebnikov_i_posobiy
GO

--
-- Dropping view I4 : 
--

DROP VIEW IF EXISTS dbo.I4
GO

--
-- Dropping view I4_dolya_inostrannih_prepodavateley_i_studentov : 
--

DROP VIEW IF EXISTS dbo.I4_dolya_inostrannih_prepodavateley_i_studentov
GO

--
-- Dropping view I5 : 
--

DROP VIEW IF EXISTS dbo.I5
GO

--
-- Dropping view I5_uchastie_v_programme_obmena : 
--

DROP VIEW IF EXISTS dbo.I5_uchastie_v_programme_obmena
GO

--
-- Dropping view I1_TOTAL : 
--

DROP VIEW IF EXISTS dbo.I1_TOTAL
GO

--
-- Dropping view I10 : 
--

DROP VIEW IF EXISTS dbo.I10
GO

--
-- Dropping view I10_rezultati_attestacii_u_studentov : 
--

DROP VIEW IF EXISTS dbo.I10_rezultati_attestacii_u_studentov
GO

--
-- Dropping view I11 : 
--

DROP VIEW IF EXISTS dbo.I11
GO

--
-- Dropping view I11_ocenka_kvalifikacii_vipusknikov_rabotodatelyami : 
--

DROP VIEW IF EXISTS dbo.I11_ocenka_kvalifikacii_vipusknikov_rabotodatelyami
GO

--
-- Dropping view I12 : 
--

DROP VIEW IF EXISTS dbo.I12
GO

--
-- Dropping view I12_dolya_trudoustroennih_vipusknikov : 
--

DROP VIEW IF EXISTS dbo.I12_dolya_trudoustroennih_vipusknikov
GO

--
-- Dropping view I13 : 
--

DROP VIEW IF EXISTS dbo.I13
GO

--
-- Dropping view I13_kolichestvo_studentov_udostoennih_nagrad : 
--

DROP VIEW IF EXISTS dbo.I13_kolichestvo_studentov_udostoennih_nagrad
GO

--
-- Dropping view I14 : 
--

DROP VIEW IF EXISTS dbo.I14
GO

--
-- Dropping view I14_citiruemost_publikaciy_pps : 
--

DROP VIEW IF EXISTS dbo.I14_citiruemost_publikaciy_pps
GO

--
-- Dropping view I15 : 
--

DROP VIEW IF EXISTS dbo.I15
GO

--
-- Dropping view I15_kolichestvo_izdannih_statey : 
--

DROP VIEW IF EXISTS dbo.I15_kolichestvo_izdannih_statey
GO

--
-- Dropping view I16 : 
--

DROP VIEW IF EXISTS dbo.I16
GO

--
-- Dropping view I16_kolichestvo_sotrudnikov_utverjdennih_vak : 
--

DROP VIEW IF EXISTS dbo.I16_kolichestvo_sotrudnikov_utverjdennih_vak
GO

--
-- Dropping view I17 : 
--

DROP VIEW IF EXISTS dbo.I17
GO

--
-- Dropping view I17_summa_finansovih_sredstv_poluchennih_na_nauchnuyu_deyatelnost : 
--

DROP VIEW IF EXISTS dbo.I17_summa_finansovih_sredstv_poluchennih_na_nauchnuyu_deyatelnost
GO

--
-- Dropping view I18 : 
--

DROP VIEW IF EXISTS dbo.I18
GO

--
-- Dropping view I18_effektivnost_provodimih_nauchnih_rabot : 
--

DROP VIEW IF EXISTS dbo.I18_effektivnost_provodimih_nauchnih_rabot
GO

--
-- Dropping view I19 : 
--

DROP VIEW IF EXISTS dbo.I19
GO

--
-- Dropping view I19_stepen_osnashennosti_laboratoriy_oborudovaniem : 
--

DROP VIEW IF EXISTS dbo.I19_stepen_osnashennosti_laboratoriy_oborudovaniem
GO

--
-- Dropping view I2_1 : 
--

DROP VIEW IF EXISTS dbo.I2_1
GO

--
-- Dropping view I2_1_uroven_kachestva_prepodavaniya : 
--

DROP VIEW IF EXISTS dbo.I2_1_uroven_kachestva_prepodavaniya
GO

--
-- Dropping view I2_TOTAL : 
--

DROP VIEW IF EXISTS dbo.I2_TOTAL
GO

--
-- Dropping view I20 : 
--

DROP VIEW IF EXISTS dbo.I20
GO

--
-- Dropping view I20_obespechennost_irc_uchebnoy_literaturoy : 
--

DROP VIEW IF EXISTS dbo.I20_obespechennost_irc_uchebnoy_literaturoy
GO

--
-- Dropping view I21 : 
--

DROP VIEW IF EXISTS dbo.I21
GO

--
-- Dropping view I21_stepen_vnedreniya_ikt_v_uchebniy_process : 
--

DROP VIEW IF EXISTS dbo.I21_stepen_vnedreniya_ikt_v_uchebniy_process
GO

--
-- Dropping view I22 : 
--

DROP VIEW IF EXISTS dbo.I22
GO

--
-- Dropping view I22_dostupnost_informacii_o_vuze_v_internete : 
--

DROP VIEW IF EXISTS dbo.I22_dostupnost_informacii_o_vuze_v_internete
GO

--
-- Dropping view I23 : 
--

DROP VIEW IF EXISTS dbo.I23
GO

--
-- Dropping view I23_osnashennost_laboratornim_oborudovaniem : 
--

DROP VIEW IF EXISTS dbo.I23_osnashennost_laboratornim_oborudovaniem
GO

--
-- Dropping view I3_TOTAL : 
--

DROP VIEW IF EXISTS dbo.I3_TOTAL
GO

--
-- Dropping view I4_TOTAL : 
--

DROP VIEW IF EXISTS dbo.I4_TOTAL
GO

--
-- Dropping view RAITING_TOTAL : 
--

DROP VIEW IF EXISTS dbo.RAITING_TOTAL
GO

--
-- Dropping stored procedure P3_2_kolichestvo_izdannih_statey : 
--

DROP PROCEDURE IF EXISTS dbo.P3_2_kolichestvo_izdannih_statey
GO

--
-- Definition for table branch : 
--

CREATE TABLE dbo.branch (
  id int IDENTITY(1, 1) NOT NULL,
  name nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  CONSTRAINT [PK_dbo.branch] PRIMARY KEY CLUSTERED (id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table region : 
--

CREATE TABLE dbo.region (
  id int IDENTITY(1, 1) NOT NULL,
  name_RU nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  name_UZ nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  CONSTRAINT [PK_dbo.region] PRIMARY KEY CLUSTERED (id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table university : 
--

CREATE TABLE dbo.university (
  id int IDENTITY(1, 1) NOT NULL,
  name_RU nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  id_region int NULL,
  id_branch int NULL,
  name_UZ nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  CONSTRAINT [PK_dbo.university] PRIMARY KEY CLUSTERED (id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table chislennost_pps_vuza : 
--

CREATE TABLE dbo.chislennost_pps_vuza (
  id int IDENTITY(1, 1) NOT NULL,
  ass_shtat int NULL,
  urindosh int NULL,
  saotbay int NULL,
  as_fan_nom int NULL,
  as_fan_doc int NULL,
  as_prof int NULL,
  as_doz int NULL,
  as_katta int NULL,
  as_ass int NULL,
  ur_prof int NULL,
  ur_doc int NULL,
  ur_katta int NULL,
  ur_ass int NULL,
  so_prof int NULL,
  so_doc int NULL,
  so_katta int NULL,
  so_ass int NULL,
  id_university int NULL,
  year int NULL,
  PRIMARY KEY CLUSTERED (id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table citiruemost_publikaciy_pps_vuza : 
--

CREATE TABLE dbo.citiruemost_publikaciy_pps_vuza (
  id int IDENTITY(1, 1) NOT NULL,
  fio varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  source varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  info varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  link varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  usage int NULL,
  year int NULL,
  id_university int NULL,
  PRIMARY KEY CLUSTERED (id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table darslik : 
--

CREATE TABLE dbo.darslik (
  id int IDENTITY(1, 1) NOT NULL,
  fio varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  kod_spec varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  ucheb_name varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  ucheb_number varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  filename varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  year int NULL,
  id_university int NULL,
  PRIMARY KEY CLUSTERED (id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table effektivnost_nir_dalolatnoma : 
--

CREATE TABLE dbo.effektivnost_nir_dalolatnoma (
  id int IDENTITY(1, 1) NOT NULL,
  otm_name varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  fio varchar(300) COLLATE Cyrillic_General_CI_AS NULL,
  sertifikat_name varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  sertifikat_date varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  sertifikat_number varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  filename varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  id_university int NULL,
  year int NULL,
  PRIMARY KEY CLUSTERED (id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table effektivnost_nir_patent : 
--

CREATE TABLE dbo.effektivnost_nir_patent (
  id int IDENTITY(1, 1) NOT NULL,
  otm_name varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  fio varchar(300) COLLATE Cyrillic_General_CI_AS NULL,
  sertifikat_name varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  sertifikat_date varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  sertifikat_number varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  filename varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  id_university int NULL,
  year int NULL,
  PRIMARY KEY CLUSTERED (id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table effektivnost_nir_sertifikat : 
--

CREATE TABLE dbo.effektivnost_nir_sertifikat (
  id int IDENTITY(1, 1) NOT NULL,
  otm_name varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  fio varchar(300) COLLATE Cyrillic_General_CI_AS NULL,
  sertifikat_name varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  sertifikat_date varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  sertifikat_number varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  filename varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  id_university int NULL,
  year int NULL,
  PRIMARY KEY CLUSTERED (id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table granti_po_vidam_issledovaniy : 
--

CREATE TABLE dbo.granti_po_vidam_issledovaniy (
  id int IDENTITY(1, 1) NOT NULL,
  tormog_name varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  buyurtma_name varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  fundamental bit NULL,
  amaliy bit NULL,
  innovatsion bit NULL,
  lizenziya bit NULL,
  yarmarka bit NULL,
  summa float NULL,
  id_university int NULL,
  year int NULL,
  filename varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  PRIMARY KEY CLUSTERED (id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table informaciya_o_dissertaciyah : 
--

CREATE TABLE dbo.informaciya_o_dissertaciyah (
  id int IDENTITY(1, 1) NOT NULL,
  fio varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  work_place varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  iht_shifr varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  iht_nomi varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  disser_name varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  kengash_shifr varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  kengash_email varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  date varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  year int NULL,
  id_university int NULL,
  PRIMARY KEY CLUSTERED (id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval_AKTdaraja_1_7 : 
--

CREATE TABLE dbo.Jadval_AKTdaraja_1_7 (
  Id int IDENTITY(1, 1) NOT NULL,
  P int NOT NULL,
  P7 int NOT NULL,
  P8 int NOT NULL,
  Year smallint NOT NULL,
  UniversityId int NOT NULL,
  CONSTRAINT [PK_dbo.Jadval_AKTdaraja_1_7] PRIMARY KEY CLUSTERED (Id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval_bitiruvchi_2_2 : 
--

CREATE TABLE dbo.Jadval_bitiruvchi_2_2 (
  Id int IDENTITY(1, 1) NOT NULL,
  R int NOT NULL,
  R1 int NOT NULL,
  UniversityId int NOT NULL,
  Year smallint NOT NULL,
  CONSTRAINT [PK_dbo.Jadval_bitiruvchi_2_2] PRIMARY KEY CLUSTERED (Id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval_talababilim_2_1 : 
--

CREATE TABLE dbo.Jadval_talababilim_2_1 (
  Id int IDENTITY(1, 1) NOT NULL,
  T_All int NOT NULL,
  T_Qualified int NOT NULL,
  UniversityId int NOT NULL,
  Year smallint NOT NULL,
  CONSTRAINT [PK_dbo.Jadval_talababilim_2_1] PRIMARY KEY CLUSTERED (Id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval_talimsifati_1_2 : 
--

CREATE TABLE dbo.Jadval_talimsifati_1_2 (
  Id int IDENTITY(1, 1) NOT NULL,
  T int NULL,
  N1 int NULL,
  N2 int NULL,
  N3 int NULL,
  N41 int NULL,
  N51 int NULL,
  N42 int NULL,
  N52 int NULL,
  N43 int NULL,
  N53 int NULL,
  I2 int NULL,
  UniversityId int NOT NULL,
  Year smallint NOT NULL,
  CONSTRAINT [PK_dbo.Jadval_talimsifati_1_2] PRIMARY KEY CLUSTERED (Id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval1 : 
--

CREATE TABLE dbo.Jadval1 (
  Id int IDENTITY(1, 1) NOT NULL,
  OtmName nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  State nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Reyting int NOT NULL,
  Year smallint NOT NULL,
  UniversityId int NULL,
  CONSTRAINT [PK_dbo.Jadval1] PRIMARY KEY CLUSTERED (Id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval10 : 
--

CREATE TABLE dbo.Jadval10 (
  Id int IDENTITY(1, 1) NOT NULL,
  DirectionCode nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  DirectionName nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  SubjectName nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  ForeignLanguage nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  EducationCourse int NOT NULL,
  StudentCount int NOT NULL,
  Asos nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  AsosFile nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Year smallint NOT NULL,
  UniversityId int NOT NULL,
  Status int NULL,
  CONSTRAINT [PK_dbo.Jadval10] PRIMARY KEY CLUSTERED (Id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval11 : 
--

CREATE TABLE dbo.Jadval11 (
  Id int IDENTITY(1, 1) NOT NULL,
  FullName nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Speciality nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  MonographName nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  MongographYear int NOT NULL,
  DarslikName nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  DarslikCertificate nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  OquvqullanmaName nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  OquvqullanmaCertificate nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  OquvmajmuaName nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  OquvmajmuaCertificate nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Status int NULL,
  AsosFile nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Year smallint NOT NULL,
  UniversityId int NOT NULL,
  CONSTRAINT [PK_dbo.Jadval11] PRIMARY KEY CLUSTERED (Id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval18 : 
--

CREATE TABLE dbo.Jadval18 (
  Id int IDENTITY(1, 1) NOT NULL,
  FullName nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Khk_ak_Name nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Post nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Subject nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Orindosh nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Soatbay nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Asos nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  AsosFile nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Year smallint NOT NULL,
  UniversityId int NOT NULL,
  Status int NULL,
  CONSTRAINT [PK_dbo.Jadval18] PRIMARY KEY CLUSTERED (Id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval19 : 
--

CREATE TABLE dbo.Jadval19 (
  Id int IDENTITY(1, 1) NOT NULL,
  FullName nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  TanlovName nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Tanlov_joy_date nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  SubjectName nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  EgallaganPosition nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  DiplomSeria nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  DiplomNumber nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  SovrinName nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Description nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Status int NULL,
  AsosFile nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Year smallint NOT NULL,
  UniversityId int NOT NULL,
  TanlovTuri int NOT NULL,
  CONSTRAINT [PK_dbo.Jadval19] PRIMARY KEY CLUSTERED (Id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval2 : 
--

CREATE TABLE dbo.Jadval2 (
  Id int IDENTITY(1, 1) NOT NULL,
  FullName nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Davlat nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Jadval1_Id int NOT NULL,
  Phd_seriya nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Phd_nomer nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Mag_seriya nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Mag_nomer nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Speciality nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Ishga_qabul_buyruq nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Status int NULL,
  Year smallint NOT NULL,
  UniversityId int NOT NULL,
  AsosFile nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  CONSTRAINT [PK_dbo.Jadval2] PRIMARY KEY CLUSTERED (Id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval20 : 
--

CREATE TABLE dbo.Jadval20 (
  Id int IDENTITY(1, 1) NOT NULL,
  FullName nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Talim_yonalish_shifri nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Talim_yonalish_nomi nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Ish_nomi nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Ish_lavozimi nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Asos_fayl nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Mag_otm nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Year smallint NOT NULL,
  UniversityId int NOT NULL,
  Status int NULL,
  CONSTRAINT [PK_dbo.Jadval20] PRIMARY KEY CLUSTERED (Id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval21 : 
--

CREATE TABLE dbo.Jadval21 (
  Id int IDENTITY(1, 1) NOT NULL,
  fio nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Mutaxassislik_shifr nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Mutaxassislik_nomi nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Ish_nomi nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Ish_lavozimi nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Asos_fayl nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Year smallint NOT NULL,
  UniversityId int NOT NULL,
  Status int NULL,
  CONSTRAINT [PK_dbo.Jadval21] PRIMARY KEY CLUSTERED (Id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval32 : 
--

CREATE TABLE dbo.Jadval32 (
  Id int IDENTITY(1, 1) NOT NULL,
  FullName nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  BirthDate datetime NULL,
  Post nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  stavka float NOT NULL,
  GraduatedOtm nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Diplom_ixtisoslik nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Diplom_mutaxassislik nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Ilmiy_daraja nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Ilmiy_unvon nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Qaysi_yildan_kafedrada_ishlaydi int NOT NULL,
  Oxirgi_malaka_oshirgan_yili int NOT NULL,
  Subjects nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Year smallint NOT NULL,
  UniversityId int NOT NULL,
  Turi int NOT NULL,
  Status int NULL,
  CONSTRAINT [PK_dbo.Jadval32] PRIMARY KEY CLUSTERED (Id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval5 : 
--

CREATE TABLE dbo.Jadval5 (
  Id int IDENTITY(1, 1) NOT NULL,
  FullName nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Davlat_ishjoy nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Speciality nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Subject nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Status int NULL,
  Asos nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Asos_fayl nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Year smallint NOT NULL,
  UniversityId int NOT NULL,
  CONSTRAINT [PK_dbo.Jadval5] PRIMARY KEY CLUSTERED (Id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval6 : 
--

CREATE TABLE dbo.Jadval6 (
  Id int IDENTITY(1, 1) NOT NULL,
  FullName nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  State nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Yonalish nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Mag_mutaxassislik nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Status int NULL,
  Asos nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Asos_fayl nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Year smallint NOT NULL,
  UniversityId int NOT NULL,
  CONSTRAINT [PK_dbo.Jadval6] PRIMARY KEY CLUSTERED (Id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval7 : 
--

CREATE TABLE dbo.Jadval7 (
  Id int IDENTITY(1, 1) NOT NULL,
  FullName_uzb nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  State_uzb nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Mutaxassislik_uzb nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  FullName_xorij nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  State_xorij nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Mutaxassislik_xorij nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Asos nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Asos_fayl nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Bak_mag int NOT NULL,
  Year smallint NOT NULL,
  UniversityId int NOT NULL,
  Status int NULL,
  CONSTRAINT [PK_dbo.Jadval7] PRIMARY KEY CLUSTERED (Id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval8 : 
--

CREATE TABLE dbo.Jadval8 (
  Id int IDENTITY(1, 1) NOT NULL,
  FullName nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  State_otm_nomi nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Talim_yonalish nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Loyiha_nomi nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Konferensiya_nomi nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Student_oqituvchi int NOT NULL,
  Asos nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Asos_fayl nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Year smallint NOT NULL,
  UniversityId int NOT NULL,
  Status int NULL,
  CONSTRAINT [PK_dbo.Jadval8] PRIMARY KEY CLUSTERED (Id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval9 : 
--

CREATE TABLE dbo.Jadval9 (
  Id int IDENTITY(1, 1) NOT NULL,
  FullName nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  State_otm nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Speciality nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Subject nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Asos nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Asos_fayl nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  Year smallint NOT NULL,
  UniversityId int NOT NULL,
  Status int NULL,
  CONSTRAINT [PK_dbo.Jadval9] PRIMARY KEY CLUSTERED (Id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table kolichestvo_izdannih_mejdunarodnih_statey : 
--

CREATE TABLE dbo.kolichestvo_izdannih_mejdunarodnih_statey (
  id int IDENTITY(1, 1) NOT NULL,
  fio varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  country varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  journal varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  paper varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  paper_year varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  link varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  coauthor_count float NULL,
  filename varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  year int NULL,
  id_university int NULL,
  PRIMARY KEY CLUSTERED (id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table kolichestvo_izdannih_mestnih_statey : 
--

CREATE TABLE dbo.kolichestvo_izdannih_mestnih_statey (
  id int IDENTITY(1, 1) NOT NULL,
  fio varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  journal varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  paper varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  paper_year varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  link varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  coauthor_count float NULL,
  filename varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  year int NULL,
  id_university int NULL,
  PRIMARY KEY CLUSTERED (id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table majmua : 
--

CREATE TABLE dbo.majmua (
  id int IDENTITY(1, 1) NOT NULL,
  fio varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  kod_spec varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  metodich_name varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  metodich_number varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  filename varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  year int NULL,
  id_university int NULL,
  PRIMARY KEY CLUSTERED (id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table Monitorings : 
--

CREATE TABLE dbo.Monitorings (
  Id int IDENTITY(1, 1) NOT NULL,
  J1 int NULL,
  J2 int NULL,
  J3 int NULL,
  J4 int NULL,
  J5 int NULL,
  J6 int NULL,
  J7 int NULL,
  J8 int NULL,
  J9 int NULL,
  J10 int NULL,
  J11 int NULL,
  J12 int NULL,
  J13 int NULL,
  J14 int NULL,
  J15 int NULL,
  J16 int NULL,
  J17 int NULL,
  J18 int NULL,
  J19 int NULL,
  J20 int NULL,
  J21 int NULL,
  J22 int NULL,
  J23 int NULL,
  J24 int NULL,
  J25 int NULL,
  J26 int NULL,
  J27 int NULL,
  J28 int NULL,
  J29 int NULL,
  J30 int NULL,
  J31 int NULL,
  J32 int NULL,
  J1_2 int NULL,
  J1_7 int NULL,
  J2_1 int NULL,
  J2_2 int NULL,
  Year int NOT NULL,
  UniverId int NOT NULL,
  Srok datetime NULL,
  CONSTRAINT [PK_dbo.Monitorings] PRIMARY KEY CLUSTERED (Id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table monografiya : 
--

CREATE TABLE dbo.monografiya (
  id int IDENTITY(1, 1) NOT NULL,
  fio varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  kod_spec varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  monograf_name varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  monograf_year varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  filename varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  year int NULL,
  id_university int NULL,
  PRIMARY KEY CLUSTERED (id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table nalichie_elektronnoy_literaturi : 
--

CREATE TABLE dbo.nalichie_elektronnoy_literaturi (
  id int IDENTITY(1, 1) NOT NULL,
  id_university int NULL,
  year int NULL,
  napravlenie varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  nazvaniya_predmetov varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  osn_literatura varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  nalichie_uzb bit NULL,
  nalichie_rus bit NULL,
  nalichie_angl bit NULL,
  PRIMARY KEY CLUSTERED (id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table nalichie_informacii_o_vuze_v_internete : 
--

CREATE TABLE dbo.nalichie_informacii_o_vuze_v_internete (
  id int IDENTITY(1, 1) NOT NULL,
  id_university int NULL,
  year int NULL,
  vuz_name varchar(200) COLLATE Cyrillic_General_CI_AS NULL,
  vuz_web float NULL,
  vuz_int_rate float NULL,
  vuz_uz_rate float NULL,
  PRIMARY KEY CLUSTERED (id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table nalichie_multimedia_v_auditorii : 
--

CREATE TABLE dbo.nalichie_multimedia_v_auditorii (
  id int IDENTITY(1, 1) NOT NULL,
  id_university int NULL,
  year int NULL,
  vuz_name varchar(150) COLLATE Cyrillic_General_CI_AS NULL,
  rooms_total_count int NULL,
  rooms_with_multimedia int NULL,
  PRIMARY KEY CLUSTERED (id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table osnashennost_laboratoriy : 
--

CREATE TABLE dbo.osnashennost_laboratoriy (
  id int IDENTITY(1, 1) NOT NULL,
  id_university int NULL,
  year int NULL,
  fan_name varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  lab_asbob_name varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  lab_holat varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  yordam_asbob_name varchar(500) COLLATE Cyrillic_General_CI_AS NULL,
  yordam_holat varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  PRIMARY KEY CLUSTERED (id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table qullanma : 
--

CREATE TABLE dbo.qullanma (
  id int IDENTITY(1, 1) NOT NULL,
  fio varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  kod_spec varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  posobie_name varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  posobie_number varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  filename varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  year int NULL,
  id_university int NULL,
  PRIMARY KEY CLUSTERED (id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table raiting : 
--

CREATE TABLE dbo.raiting (
  id int IDENTITY(1, 1) NOT NULL,
  id_university int NULL,
  year int NULL,
  p float CONSTRAINT DF_raiting_p DEFAULT 0 NULL,
  px float CONSTRAINT DF_raiting_px DEFAULT 0 NULL,
  py float CONSTRAINT DF_raiting_py DEFAULT 0 NULL,
  n1 float CONSTRAINT DF_raiting_n1 DEFAULT 0 NULL,
  n2 float CONSTRAINT DF_raiting_n2 DEFAULT 0 NULL,
  n3 float CONSTRAINT DF_raiting_n3 DEFAULT 0 NULL,
  n41 float CONSTRAINT DF_raiting_n41 DEFAULT 0 NULL,
  n51 float CONSTRAINT DF_raiting_n51 DEFAULT 0 NULL,
  n42 float NULL,
  n52 float CONSTRAINT DF_raiting_n52 DEFAULT 0 NULL,
  n43 float CONSTRAINT DF_raiting_n43 DEFAULT 0 NULL,
  n53 float CONSTRAINT DF_raiting_n53 DEFAULT 0 NULL,
  i2 float CONSTRAINT DF_raiting_i2 DEFAULT 0 NULL,
  t float CONSTRAINT DF_raiting_t DEFAULT 0 NULL,
  s1 float CONSTRAINT DF_raiting_s1 DEFAULT 0 NULL,
  s2 float CONSTRAINT DF_raiting_s2 DEFAULT 0 NULL,
  s3 float CONSTRAINT DF_raiting_s3 DEFAULT 0 NULL,
  p1 float CONSTRAINT DF_raiting_p1 DEFAULT 0 NULL,
  p2 float CONSTRAINT DF_raiting_p2 DEFAULT 0 NULL,
  p3 float CONSTRAINT DF_raiting_p3 DEFAULT 0 NULL,
  p4 float CONSTRAINT DF_raiting_p4 DEFAULT 0 NULL,
  p5 float CONSTRAINT DF_raiting_p5 DEFAULT 0 NULL,
  p5_1 float CONSTRAINT DF_raiting_p5_1 DEFAULT 0 NULL,
  p6 float CONSTRAINT DF_raiting_p6 DEFAULT 0 NULL,
  p6_1 float CONSTRAINT DF_raiting_p6_1 DEFAULT 0 NULL,
  k1 float CONSTRAINT DF_raiting_k1 DEFAULT 0 NULL,
  k float CONSTRAINT DF_raiting_k DEFAULT 0 NULL,
  ty float CONSTRAINT DF_raiting_ty DEFAULT 0 NULL,
  p7 float CONSTRAINT DF_raiting_p7 DEFAULT 0 NULL,
  p8 float CONSTRAINT DF_raiting_p8 DEFAULT 0 NULL,
  pz float CONSTRAINT DF_raiting_pz DEFAULT 0 NULL,
  p9 float CONSTRAINT DF_raiting_p9 DEFAULT 0 NULL,
  tsi float CONSTRAINT DF_raiting_tsi DEFAULT 0 NULL,
  tsti float CONSTRAINT DF_raiting_tsti DEFAULT 0 NULL,
  r1 float CONSTRAINT DF_raiting_r1 DEFAULT 0 NULL,
  r float CONSTRAINT DF_raiting_r DEFAULT 0 NULL,
  p10 float CONSTRAINT DF_raiting_p10 DEFAULT 0 NULL,
  p11 float CONSTRAINT DF_raiting_p11 DEFAULT 0 NULL,
  p1_2 float CONSTRAINT DF_raiting_p1_2 DEFAULT 0 NULL,
  p1_3 float CONSTRAINT DF_raiting_p1_3 DEFAULT 0 NULL,
  p1_4 float CONSTRAINT DF_raiting_p1_4 DEFAULT 0 NULL,
  p1_5 float CONSTRAINT DF_raiting_p1_5 DEFAULT 0 NULL,
  s4 float CONSTRAINT DF_raiting_s4 DEFAULT 0 NULL,
  s5 float CONSTRAINT DF_raiting_s5 DEFAULT 0 NULL,
  s7 float CONSTRAINT DF_raiting_s7 DEFAULT 0 NULL,
  s8 float CONSTRAINT DF_raiting_s8 DEFAULT 0 NULL,
  s9 float CONSTRAINT DF_raiting_s9 DEFAULT 0 NULL,
  d float CONSTRAINT DF_raiting_d DEFAULT 0 NULL,
  z float CONSTRAINT DF_raiting_z DEFAULT 0 NULL,
  v float CONSTRAINT DF_raiting_v DEFAULT 0 NULL,
  t4 float CONSTRAINT DF_raiting_t4 DEFAULT 0 NULL,
  t5 float CONSTRAINT DF_raiting_t5 DEFAULT 0 NULL,
  t6 float CONSTRAINT DF_raiting_t6 DEFAULT 0 NULL,
  tL float CONSTRAINT DF_raiting_tL DEFAULT 0 NULL,
  i float CONSTRAINT DF_raiting_i DEFAULT 0 NULL,
  t7 float CONSTRAINT DF_raiting_t7 DEFAULT 0 NULL,
  t8 float CONSTRAINT DF_raiting_t8 DEFAULT 0 NULL,
  ya float CONSTRAINT DF_raiting_ya DEFAULT 0 NULL,
  kL float CONSTRAINT DF_raiting_kL DEFAULT 0 NULL,
  a1 float CONSTRAINT DF_raiting_a1 DEFAULT 0 NULL,
  a2 float CONSTRAINT DF_raiting_a2 DEFAULT 0 NULL,
  a3 float CONSTRAINT DF_raiting_a3 DEFAULT 0 NULL,
  a4 float CONSTRAINT DF_raiting_a4 DEFAULT 0 NULL,
  a5 float CONSTRAINT DF_raiting_a5 DEFAULT 0 NULL,
  k2 float CONSTRAINT DF_raiting_k2 DEFAULT 0 NULL,
  m float CONSTRAINT DF_raiting_m DEFAULT 0 NULL,
  L float CONSTRAINT DF_raiting_L DEFAULT 0 NULL,
  x1 float CONSTRAINT DF_raiting_x1 DEFAULT 0 NULL,
  x2 float CONSTRAINT DF_raiting_x2 DEFAULT 0 NULL,
  x3 float CONSTRAINT DF_raiting_x3 DEFAULT 0 NULL,
  x4 float CONSTRAINT DF_raiting_x4 DEFAULT 0 NULL,
  x5 float CONSTRAINT DF_raiting_x5 DEFAULT 0 NULL,
  x6 float CONSTRAINT DF_raiting_x6 DEFAULT 0 NULL,
  x7 float CONSTRAINT DF_raiting_x7 DEFAULT 0 NULL,
  x8 float CONSTRAINT DF_raiting_x8 DEFAULT 0 NULL,
  x9 float CONSTRAINT DF_raiting_x9 DEFAULT 0 NULL,
  x10 float CONSTRAINT DF_raiting_x10 DEFAULT 0 NULL,
  x11 float CONSTRAINT DF_raiting_x11 DEFAULT 0 NULL,
  x12 float CONSTRAINT DF_raiting_x12 DEFAULT 0 NULL,
  x13 float CONSTRAINT DF_raiting_x13 DEFAULT 0 NULL,
  x14 float CONSTRAINT DF_raiting_x14 DEFAULT 0 NULL,
  x15 float CONSTRAINT DF_raiting_x15 DEFAULT 0 NULL,
  x16 float CONSTRAINT DF_raiting_x16 DEFAULT 0 NULL,
  ra float CONSTRAINT DF_raiting_ra DEFAULT 0 NULL,
  u float CONSTRAINT DF_raiting_u DEFAULT 0 NULL,
  s float CONSTRAINT DF_raiting_s DEFAULT 0 NULL,
  p17 float CONSTRAINT DF_raiting_p17 DEFAULT 0 NULL,
  p18 float CONSTRAINT DF_raiting_p18 DEFAULT 0 NULL,
  p19 float CONSTRAINT DF_raiting_p19 DEFAULT 0 NULL,
  p20 float CONSTRAINT DF_raiting_p20 DEFAULT 0 NULL,
  CONSTRAINT [PK_dbo.raiting] PRIMARY KEY CLUSTERED (id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table stepen_vnedreniya_ikt : 
--

CREATE TABLE dbo.stepen_vnedreniya_ikt (
  id int IDENTITY(1, 1) NOT NULL,
  id_university int NULL,
  year int NULL,
  pc_count int NULL,
  pc_in_local_netw_count int NULL,
  pc_with_intenet_count int NULL,
  last_years_pc_count int NULL,
  internet_speed float NULL,
  admin_emails_count int NULL,
  pps_emails_count int NULL,
  web_service_types float NULL,
  study_monitoring float NULL,
  research_monitoring float NULL,
  pps_baza float NULL,
  student_baza float NULL,
  finance float NULL,
  admins_count int NULL,
  pps_count int NULL,
  students_count int NULL,
  PRIMARY KEY CLUSTERED (id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table summi_mejdunarodnih_grantov : 
--

CREATE TABLE dbo.summi_mejdunarodnih_grantov (
  id int IDENTITY(1, 1) NOT NULL,
  grant_name varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  grant_summa float NULL,
  buyurtma_name varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  buyurtma_summa float NULL,
  id_university int NULL,
  year int NULL,
  filename varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  PRIMARY KEY CLUSTERED (id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table summi_respublikanskih_grantov : 
--

CREATE TABLE dbo.summi_respublikanskih_grantov (
  id int IDENTITY(1, 1) NOT NULL,
  iqtisodiyot_tarmogi varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  buyurtma_name varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  buyurtma_summa float NULL,
  grant_name varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  grant_summa float NULL,
  id_university int NULL,
  year int NULL,
  filename varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  PRIMARY KEY CLUSTERED (id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for view I1 : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I1 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ, 
(raiting.px/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END)*100 as I11, 
(raiting.py/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END)*100 as I12,
(3*raiting.px+raiting.py)*100/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END as I1,
YEAR
FROM raiting inner join university
	ON raiting.id_university = university.id;
GO

--
-- Definition for view I1_dolya_pps_s_uchenoy_stepenyu : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I1_dolya_pps_s_uchenoy_stepenyu AS 
SELECT ID, name_RU, name_UZ, I11, I12, I1, 4*I1/(SELECT MAX(I1) FROM I1 WHERE I1.YEAR = YEAR) AS mark, YEAR
FROM I1;
GO

--
-- Definition for view I6 : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I6 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ, 
(raiting.k1/CASE raiting.k WHEN 0 THEN 1 ELSE raiting.k END)*100 as I6,
YEAR 
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

--
-- Definition for view I6_kolichestvo_uchebnih_kursov_na_inostrannom : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I6_kolichestvo_uchebnih_kursov_na_inostrannom AS 
SELECT ID, name_RU, name_UZ, I6, 3*I6/(SELECT MAX(I6) FROM I6 WHERE I6.YEAR = YEAR) AS mark, YEAR
FROM I6;
GO

--
-- Definition for view I7 : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I7 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ, 
(3*raiting.p7+2*raiting.p8)/(2*CASE raiting.ty WHEN 0 THEN 1 ELSE raiting.ty END) AS I7,
raiting.p7/CASE raiting.ty WHEN 0 THEN 1 ELSE raiting.ty END AS I71,
raiting.p8/CASE raiting.ty WHEN 0 THEN 1 ELSE raiting.ty END AS I72,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

--
-- Definition for view I7_uroven_angliyskogo_i_ikt_u_pps : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I7_uroven_angliyskogo_i_ikt_u_pps AS 
SELECT ID, name_RU, name_UZ, I71, I72, I7, 5*I7/(SELECT MAX(I7) FROM I7 WHERE I7.YEAR = YEAR) AS mark, YEAR
FROM I7;
GO

--
-- Definition for view I8 : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I8 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ, 
(raiting.pz/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END)*100 AS I8,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

--
-- Definition for view I8_dolya_pps_prepodayushih_v_zarubejnih_vuzah : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I8_dolya_pps_prepodayushih_v_zarubejnih_vuzah AS 
SELECT ID, name_RU, name_UZ, I8, 3*I8/(SELECT MAX(I8) FROM I8 WHERE I8.YEAR = YEAR) AS mark, YEAR
FROM I8;
GO

--
-- Definition for view I9 : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I9 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ, 
(raiting.p9/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END) AS I9,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

--
-- Definition for view I9_dolya_pps_prepodayushego_v_sspo : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I9_dolya_pps_prepodayushego_v_sspo AS 
SELECT ID, name_RU, name_UZ, I9, I9/(SELECT MAX(I9) FROM I9 WHERE I9.YEAR = YEAR) AS mark, YEAR
FROM I9;
GO

--
-- Definition for view I2 : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I2 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ, 
p1, t, I2,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

--
-- Definition for view I2_uroven_kachestva_prepodavaniya : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I2_uroven_kachestva_prepodavaniya AS 
SELECT ID, name_RU, name_UZ, p1, t, i2, 7*I2/(SELECT MAX(I2) FROM I2 WHERE I2.YEAR = YEAR) AS mark, YEAR
FROM I2;
GO

--
-- Definition for view I3 : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I3 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ, 
(raiting.s1/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END)*100 as I31, 
(raiting.s2/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END)*100 as I32,
(raiting.s3/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END)*100 as I33,
(3*raiting.s1+raiting.s2+raiting.s3)*100/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END as I3,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

--
-- Definition for view I3_kolichestvo_uchebnikov_i_posobiy : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I3_kolichestvo_uchebnikov_i_posobiy AS 
SELECT ID, name_RU, name_UZ, I31, I32, I33, I3, 5*I3/(SELECT MAX(I3) FROM I3 WHERE I3.YEAR = YEAR) AS mark, YEAR
FROM I3;
GO

--
-- Definition for view I4 : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I4 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ,  
(raiting.p2/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END)*100 as I41,
(raiting.p3/CASE raiting.p1 WHEN 0 THEN 1 ELSE raiting.p1 END)*100 as I42,
((2*raiting.p2/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END)+(raiting.p3/CASE raiting.p1 WHEN 0 THEN 1 ELSE raiting.p1 END))*100 as I4,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

--
-- Definition for view I4_dolya_inostrannih_prepodavateley_i_studentov : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I4_dolya_inostrannih_prepodavateley_i_studentov AS
SELECT ID, name_RU, name_UZ, I41, I42, I4, 3*I4/(SELECT MAX(I4) FROM I4 WHERE I4.YEAR = YEAR) AS mark, YEAR
FROM I4;
GO

--
-- Definition for view I5 : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I5 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ, 
(((raiting.p4+2*raiting.p5_1+raiting.p6_1)/CASE raiting.p1 WHEN 0 THEN 1 ELSE raiting.p1 END)+(2*raiting.p5+raiting.p6)/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END) as I5, 
(raiting.p4/CASE raiting.p1 WHEN 0 THEN 1 ELSE raiting.p1 END) as I51,
(raiting.p5_1/CASE raiting.p1 WHEN 0 THEN 1 ELSE raiting.p1 END) as I52_1,
(raiting.p5/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END) as I52_2,
(raiting.p6_1/CASE raiting.p1 WHEN 0 THEN 1 ELSE raiting.p1 END) as I53_1,
(raiting.p6/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END) as I53_2,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

--
-- Definition for view I5_uchastie_v_programme_obmena : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I5_uchastie_v_programme_obmena AS 
SELECT ID, name_RU, name_UZ, I51, I52_1, I52_2, I53_1, I53_2, I5, 4*I5/(SELECT MAX(I5) FROM I5 WHERE I5.YEAR = YEAR) AS mark, YEAR
FROM I5;
GO

--
-- Definition for view I1_TOTAL : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I1_TOTAL AS
SELECT u.id as ID, u.name_RU as name_RU, u.name_UZ as name_UZ,
I1.mark as I11, I2.mark as I12, I3.mark as I13, I4.mark as I14, I5.mark as I15, I6.mark as I16, I7.mark as I17, I8.mark as I18, I9.mark as I19,
I1.mark+I2.mark+I3.mark+I4.mark+I5.mark+I6.mark+I7.mark+I8.mark+I9.mark as mark, r.YEAR
FROM
	university u
		INNER JOIN raiting r ON r.id_university = u.id
		LEFT JOIN I1_dolya_pps_s_uchenoy_stepenyu I1 ON u.id = I1.id
		LEFT JOIN I2_uroven_kachestva_prepodavaniya I2 ON u.id = I2.id
		LEFT JOIN I3_kolichestvo_uchebnikov_i_posobiy I3 ON u.id = I3.id
		LEFT JOIN I4_dolya_inostrannih_prepodavateley_i_studentov I4 ON u.id = I4.id
		LEFT JOIN I5_uchastie_v_programme_obmena I5 ON u.id = I5.id
		LEFT JOIN I6_kolichestvo_uchebnih_kursov_na_inostrannom I6 ON u.id = I6.id
		LEFT JOIN I7_uroven_angliyskogo_i_ikt_u_pps I7 ON u.id = I7.id
		LEFT JOIN I8_dolya_pps_prepodayushih_v_zarubejnih_vuzah I8 ON u.id = I8.id
		LEFT JOIN I9_dolya_pps_prepodayushego_v_sspo I9 ON u.id = I9.id
WHERE
	I1.YEAR = I2.YEAR
		AND I1.YEAR = I2.YEAR
		AND I2.YEAR = I3.YEAR
		AND I3.YEAR = I4.YEAR
		AND I4.YEAR = I5.YEAR
		AND I5.YEAR = I6.YEAR
		AND I6.YEAR = I7.YEAR
		AND I7.YEAR = I8.YEAR
		AND I8.YEAR = I9.YEAR;
GO

--
-- Definition for view I10 : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I10 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ, tsi, tsti,
(raiting.tsi/CASE raiting.tsti WHEN 0 THEN 1 ELSE raiting.tsti END)*100 AS I10,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

--
-- Definition for view I10_rezultati_attestacii_u_studentov : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I10_rezultati_attestacii_u_studentov AS 
SELECT ID, name_RU, name_UZ, tsi, tsti, I10, 8*I10/CASE (SELECT MAX(I10) FROM I10 WHERE I10.YEAR = YEAR) WHEN 0 THEN 1 ELSE (SELECT MAX(I10) FROM I10 WHERE I10.YEAR = YEAR) END AS mark, YEAR
FROM I10;
GO

--
-- Definition for view I11 : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I11 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ,
(raiting.r1/CASE raiting.r WHEN 0 THEN 1 ELSE raiting.r END)*100 AS I11,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

--
-- Definition for view I11_ocenka_kvalifikacii_vipusknikov_rabotodatelyami : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I11_ocenka_kvalifikacii_vipusknikov_rabotodatelyami AS 
SELECT ID, name_RU, name_UZ, I11, 3*I11/(SELECT MAX(I11) FROM I11 WHERE I11.YEAR = YEAR) AS mark, YEAR
FROM I11;
GO

--
-- Definition for view I12 : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I12 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ,
5*raiting.p10/CASE raiting.p11 WHEN 0 THEN 1 ELSE raiting.p11 END AS I12,
raiting.p10/CASE raiting.p11 WHEN 0 THEN 1 ELSE raiting.p11 END AS I12_1,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

--
-- Definition for view I12_dolya_trudoustroennih_vipusknikov : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I12_dolya_trudoustroennih_vipusknikov AS 
SELECT ID, name_RU, name_UZ, I12_1, I12, 6*I12/(SELECT MAX(I12) FROM I12 WHERE I12.YEAR = YEAR) AS mark, YEAR
FROM I12;
GO

--
-- Definition for view I13 : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I13 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ, 
(1.6*raiting.p1_2+0.8*raiting.p1_3+0.4*raiting.p1_4+0.2*raiting.p1_5)/CASE raiting.p1 WHEN 0 THEN 1 ELSE raiting.p1 END AS I13,
raiting.p1_2/CASE raiting.p1 WHEN 0 THEN 1 ELSE raiting.p1 END AS I131,
raiting.p1_3/CASE raiting.p1 WHEN 0 THEN 1 ELSE raiting.p1 END AS I132,
raiting.p1_4/CASE raiting.p1 WHEN 0 THEN 1 ELSE raiting.p1 END AS I133,
raiting.p1_5/CASE raiting.p1 WHEN 0 THEN 1 ELSE raiting.p1 END AS I134,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

--
-- Definition for view I13_kolichestvo_studentov_udostoennih_nagrad : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I13_kolichestvo_studentov_udostoennih_nagrad AS 
SELECT ID, name_RU, name_UZ, I131, I132, I133, I134, I13, 3*I13/(SELECT MAX(I13) FROM I13 WHERE I13.YEAR = YEAR) AS mark, YEAR
FROM I13;
GO

--
-- Definition for view I14 : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I14 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ,
(2*raiting.s4+5*raiting.s5)/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END AS I14,
raiting.s4/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END AS I141,
raiting.s5/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END AS I142,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

--
-- Definition for view I14_citiruemost_publikaciy_pps : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I14_citiruemost_publikaciy_pps AS 
SELECT ID, name_RU, name_UZ, I141, I142, I14, 7*I14/(SELECT MAX(I14) FROM I14 WHERE I14.YEAR = YEAR) AS mark, YEAR
FROM I14;
GO

--
-- Definition for view I15 : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I15 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ,
(2*raiting.s7+raiting.s8+raiting.s9)/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END AS I15,
raiting.s7/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END AS I151,
raiting.s8/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END AS I152,
raiting.s9/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END AS I153,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

--
-- Definition for view I15_kolichestvo_izdannih_statey : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I15_kolichestvo_izdannih_statey AS 
SELECT ID, name_RU, name_UZ, I151, I152, I153, I15, 5*I15/(SELECT MAX(I15) FROM I15 WHERE I15.YEAR = YEAR) AS mark, YEAR
FROM I15;
GO

--
-- Definition for view I16 : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I16 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ,
((2*raiting.d/(CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END - CASE raiting.z WHEN 0 THEN 1 ELSE raiting.z END - CASE raiting.v WHEN 0 THEN 1 ELSE raiting.v END))+(2*raiting.z+2*raiting.v)/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END)*100 AS I16,
(raiting.d/(CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END-CASE raiting.z WHEN 0 THEN 1 ELSE raiting.z END-CASE raiting.v WHEN 0 THEN 1 ELSE raiting.v END))*100 AS I161,
((raiting.z+raiting.v)/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END)*100 AS I162,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

--
-- Definition for view I16_kolichestvo_sotrudnikov_utverjdennih_vak : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I16_kolichestvo_sotrudnikov_utverjdennih_vak AS 
SELECT ID, name_RU, name_UZ, I161, I162, I16, 5*I16/(SELECT MAX(I16) FROM I16 WHERE I16.YEAR = YEAR) AS mark, YEAR
FROM I16;
GO

--
-- Definition for view I17 : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I17 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ,
(3*raiting.t4+2*raiting.t5+2*raiting.t6+raiting.tl)/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END AS I17,
raiting.t4/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END AS I171,
raiting.t5/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END AS I172,
raiting.t6/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END AS I173,
raiting.tl/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END AS I174,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

--
-- Definition for view I17_summa_finansovih_sredstv_poluchennih_na_nauchnuyu_deyatelnost : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I17_summa_finansovih_sredstv_poluchennih_na_nauchnuyu_deyatelnost AS 
SELECT ID, name_RU, name_UZ, I171, I172, I173, I174, I17, 10*I17/(SELECT MAX(I17) FROM I17 WHERE I17.YEAR = YEAR) AS mark, YEAR
FROM I17;
GO

--
-- Definition for view I18 : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I18 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ,
(raiting.i+raiting.t7+raiting.t8+raiting.ya+raiting.kl)/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END AS I18,
raiting.i/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END AS I181,
raiting.t7/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END AS I182,
raiting.t8/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END AS I183,
raiting.ya/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END AS I184,
raiting.kl/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END AS I185,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

--
-- Definition for view I18_effektivnost_provodimih_nauchnih_rabot : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I18_effektivnost_provodimih_nauchnih_rabot AS 
SELECT ID, name_RU, name_UZ, I181, I182, I183, I184, I185, I18, 6*I18/(SELECT MAX(I18) FROM I18 WHERE I18.YEAR = YEAR) AS mark, YEAR
FROM I18;
GO

--
-- Definition for view I19 : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I19 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ,
raiting.a1 AS Z1,
0.75*raiting.a2 AS Z2,
0.5*raiting.a3 AS Z3,
0.25*raiting.a4 AS Z4,
0*raiting.a5 AS Z5,
(raiting.a1+0.75*raiting.a2+0.5*raiting.a3+0.25*raiting.a4)/(CASE raiting.a1 WHEN 0 THEN 1 ELSE raiting.a1 END+raiting.a2+raiting.a3+raiting.a4+raiting.a5) AS Z,
(2*(raiting.a1+0.75*raiting.a2+0.5*raiting.a3+0.25*raiting.a4)/(CASE raiting.a1 WHEN 0 THEN 1 ELSE raiting.a1 END+raiting.a2+raiting.a3+raiting.a4+raiting.a5)) AS I19,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

--
-- Definition for view I19_stepen_osnashennosti_laboratoriy_oborudovaniem : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I19_stepen_osnashennosti_laboratoriy_oborudovaniem AS 
SELECT ID, name_RU, name_UZ, Z1, Z2, Z3, Z4, Z5, Z, I19, 2*I19/CASE (SELECT MAX(I19) FROM I19 WHERE I19.YEAR = YEAR) WHEN 0 THEN 1 ELSE (SELECT MAX(I19) FROM I19 WHERE I19.YEAR = YEAR) END AS mark, YEAR
FROM I19;
GO

--
-- Definition for view I2_1 : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I2_1 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ, 
(raiting.n51+raiting.n41)/CASE raiting.n1 WHEN 0 THEN 1 ELSE raiting.n1 END AS T1,
(raiting.n52+raiting.n42)/CASE raiting.n2 WHEN 0 THEN 1 ELSE raiting.n2 END AS T2,
(raiting.n53+raiting.n43)/CASE raiting.n3 WHEN 0 THEN 1 ELSE raiting.n3 END AS T3,
(raiting.n51+raiting.n41)/CASE WHEN(raiting.n1*raiting.t)=0 THEN 1 ELSE (raiting.n1*raiting.t) END AS I21,
(raiting.n52+raiting.n42)/CASE WHEN(raiting.n2*raiting.t)=0 THEN 1 ELSE (raiting.n2*raiting.t) END AS I22,
(raiting.n53+raiting.n43)/CASE WHEN(raiting.n3*raiting.t)=0 THEN 1 ELSE (raiting.n3*raiting.t) END AS I23,
(((raiting.n51+raiting.n41)*3/CASE raiting.n1 WHEN 0 THEN 1 ELSE raiting.n1 END)+((raiting.n52+raiting.n42)*2/CASE raiting.n2 WHEN 0 THEN 1 ELSE raiting.n2 END)+((raiting.n53+raiting.n43)*2/CASE raiting.n3 WHEN 0 THEN 1 ELSE raiting.n3 END))/CASE raiting.t WHEN 0 THEN 1 ELSE raiting.t END AS I2,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

--
-- Definition for view I2_1_uroven_kachestva_prepodavaniya : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I2_1_uroven_kachestva_prepodavaniya AS 
SELECT ID, name_RU, name_UZ, T1, T2, T3, I21, I22, I23, I2, 7*I2/(SELECT MAX(I2) FROM I2 WHERE I2.YEAR = YEAR) AS mark, YEAR
FROM I2_1;
GO

--
-- Definition for view I2_TOTAL : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I2_TOTAL AS
SELECT u.id as ID, u.name_RU as name_RU, u.name_UZ as name_UZ,
I10.mark as I10, I11.mark as I11, I12.mark as I12, I13.mark as I13,
I10.mark + I11.mark + I12.mark + I13.mark as mark, r.YEAR
FROM
	university u
		INNER JOIN raiting r ON r.id_university = u.id
		LEFT JOIN I10_rezultati_attestacii_u_studentov I10 ON u.id = I10.id
		LEFT JOIN I11_ocenka_kvalifikacii_vipusknikov_rabotodatelyami I11 ON u.id = I11.id
		LEFT JOIN I12_dolya_trudoustroennih_vipusknikov I12 ON u.id = I12.id
		LEFT JOIN I13_kolichestvo_studentov_udostoennih_nagrad I13 ON u.id = I13.id
WHERE
	I10.YEAR = I11.YEAR
		AND I11.YEAR = I12.YEAR
		AND I12.YEAR = I13.YEAR;
GO

--
-- Definition for view I20 : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I20 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ,
(2*raiting.k2+raiting.m)/(CASE raiting.l WHEN 0 THEN 1 ELSE raiting.l END) AS I20,
raiting.k2/CASE raiting.l WHEN 0 THEN 1 ELSE raiting.l END AS I201,
raiting.m/CASE raiting.l WHEN 0 THEN 1 ELSE raiting.l END AS I202,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

--
-- Definition for view I20_obespechennost_irc_uchebnoy_literaturoy : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I20_obespechennost_irc_uchebnoy_literaturoy AS 
SELECT ID, name_RU, name_UZ, I201, I202, I20, 3*I20/(SELECT MAX(I20) FROM I20 WHERE I20.YEAR = YEAR) AS mark, YEAR
FROM I20;
GO

--
-- Definition for view I21 : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I21 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ,
(raiting.x1/CASE raiting.x2 WHEN 0 THEN 1 ELSE raiting.x2 END)+((raiting.x3+raiting.x4+raiting.x5)/3*CASE raiting.x1 WHEN 0 THEN 1 ELSE raiting.x1 END)
+raiting.x6+(raiting.x7/CASE raiting.x9 WHEN 0 THEN 1 ELSE raiting.x9 END)+(raiting.x8/CASE raiting.x10 WHEN 0 THEN 1 ELSE raiting.x10 END)+raiting.x11+raiting.x12+raiting.x13+raiting.x14+raiting.x15+raiting.x16 AS I21,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

--
-- Definition for view I21_stepen_vnedreniya_ikt_v_uchebniy_process : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I21_stepen_vnedreniya_ikt_v_uchebniy_process AS 
SELECT ID, name_RU, name_UZ, I21, 6*I21/(SELECT MAX(I21) FROM I21 WHERE I21.YEAR = YEAR) AS mark, YEAR
FROM I21;
GO

--
-- Definition for view I22 : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I22 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ,
(1-raiting.ra/(Select count(id) from university))+(1-raiting.u/(Select count(id) from university))+raiting.s AS I22,
1-raiting.ra/(Select count(id) from university) AS I221,
1-raiting.u/(Select count(id) from university) AS I222,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

--
-- Definition for view I22_dostupnost_informacii_o_vuze_v_internete : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I22_dostupnost_informacii_o_vuze_v_internete AS 
SELECT ID, name_RU, name_UZ, I22, I221, I222, 3*I22/(SELECT MAX(I22) FROM I22 WHERE I22.YEAR = YEAR) AS mark, YEAR
FROM I22;
GO

--
-- Definition for view I23 : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I23 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ,
(2*raiting.p17/CASE raiting.p18 WHEN 0 THEN 1 ELSE raiting.p18 END)+raiting.p19/CASE raiting.p20 WHEN 0 THEN 1 ELSE raiting.p20 END AS I23,
raiting.p17/CASE raiting.p18 WHEN 0 THEN 1 ELSE raiting.p18 END AS I231,
raiting.p19/CASE raiting.p20 WHEN 0 THEN 1 ELSE raiting.p20 END AS I232,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

--
-- Definition for view I23_osnashennost_laboratornim_oborudovaniem : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I23_osnashennost_laboratornim_oborudovaniem AS 
SELECT ID, name_RU, name_UZ, I23, I231, I232, 3*I23/(SELECT MAX(I23) FROM I23 WHERE I23.YEAR = YEAR) AS mark, YEAR
FROM I23;
GO

--
-- Definition for view I3_TOTAL : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I3_TOTAL AS
SELECT u.id as ID, u.name_RU as name_RU, u.name_UZ as name_UZ,
I14.mark as I14, I15.mark as I15, I16.mark as I16, I17.mark as I17, I18.mark as I18, I19.mark as I19,
I14.mark + I15.mark + I16.mark + I17.mark + I18.mark + I19.mark as mark, r.YEAR
FROM
	university u
		INNER JOIN raiting r ON r.id_university = u.id
		LEFT JOIN I14_citiruemost_publikaciy_pps I14 ON u.id = I14.id
		LEFT JOIN I15_kolichestvo_izdannih_statey I15 ON u.id = I15.id
		LEFT JOIN I16_kolichestvo_sotrudnikov_utverjdennih_vak I16 ON u.id = I16.id
		LEFT JOIN I17_summa_finansovih_sredstv_poluchennih_na_nauchnuyu_deyatelnost I17 ON u.id = I17.id
		LEFT JOIN I18_effektivnost_provodimih_nauchnih_rabot I18 ON u.id = I18.id
		LEFT JOIN I19_stepen_osnashennosti_laboratoriy_oborudovaniem I19 ON u.id = I19.id
WHERE
	I14.YEAR = I15.YEAR
		AND I15.YEAR = I16.YEAR
		AND I16.YEAR = I17.YEAR
		AND I17.YEAR = I18.YEAR
		AND I18.YEAR = I19.YEAR;
GO

--
-- Definition for view I4_TOTAL : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].I4_TOTAL AS
SELECT u.id as ID, u.name_RU as name_RU, u.name_UZ as name_UZ,
I20.mark as I20, I21.mark as I21, I22.mark as I22, I23.mark as I23,
I20.mark + I21.mark + I22.mark + I23.mark as mark, r.YEAR
FROM
	university u
		INNER JOIN raiting r ON r.id_university = u.id
		LEFT JOIN I20_obespechennost_irc_uchebnoy_literaturoy I20 ON u.id = I20.id
		LEFT JOIN I21_stepen_vnedreniya_ikt_v_uchebniy_process I21 ON u.id = I21.id
		LEFT JOIN I22_dostupnost_informacii_o_vuze_v_internete I22 ON u.id = I22.id
		LEFT JOIN I23_osnashennost_laboratornim_oborudovaniem I23 ON u.id = I23.id
WHERE
	I20.YEAR = I21.YEAR
		AND I21.YEAR = I22.YEAR
		AND I22.YEAR = I23.YEAR
GO

--
-- Definition for view RAITING_TOTAL : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].RAITING_TOTAL AS
SELECT u.id as ID, u.name_RU as name_RU, u.name_UZ as name_UZ,
I1.mark as I1, I2.mark as I2, I3.mark as I3, I4.mark as I4,
I1.mark + I2.mark + I3.mark + I4.mark as mark, r.YEAR
FROM
	university u
		INNER JOIN raiting r ON r.id_university = u.id
		LEFT JOIN I1_TOTAL I1 ON u.id = I1.id
		LEFT JOIN I2_TOTAL I2 ON u.id = I2.id
		LEFT JOIN I3_TOTAL I3 ON u.id = I3.id
		LEFT JOIN I4_TOTAL I4 ON u.id = I4.id
WHERE
	I1.YEAR = I2.YEAR
		AND I2.YEAR = I3.YEAR
		AND I3.YEAR = I4.YEAR
GO

--
-- Definition for stored procedure P3_2_kolichestvo_izdannih_statey : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE dbo.P3_2_kolichestvo_izdannih_statey
@id_university int,
@year int
AS
DECLARE  @count int, @id int, @count_mono int, @count_inpaper int, @count_uzpaper int
begin 
SET @count_mono=(SELECT count(id) FROM monografiya
	WHERE id_university=@id_university AND year=@year)
SET @count_inpaper=(SELECT count(id) FROM kolichestvo_izdannih_mejdunarodnih_statey
	WHERE id_university=@id_university AND year=@year)
SET @count_uzpaper=(SELECT count(id) FROM kolichestvo_izdannih_mestnih_statey
	WHERE id_university=@id_university AND year=@year)
SET @id=(SELECT id FROM raiting
	WHERE id_university=@id_university AND year=@year)
SET @count=(SELECT count(id) FROM raiting
	WHERE id_university=@id_university AND year=@year)
if (@count=0)
INSERT INTO raiting(s7, s8, s9, year, id_university) VALUES (@count_inpaper, @count_mono, @count_uzpaper, @year, @id_university)
else UPDATE raiting set s7=@count_inpaper, s8=@count_mono, s9=@count_uzpaper WHERE id=@id
end
GO

--
-- Data for table dbo.Jadval10  (LIMIT 0,500)
--

SET IDENTITY_INSERT dbo.Jadval10 ON
GO

INSERT INTO dbo.Jadval10 (Id, DirectionCode, DirectionName, SubjectName, ForeignLanguage, EducationCourse, StudentCount, Asos, AsosFile, Year, UniversityId, Status)
VALUES 
  (1, N'5610200', N'Меҳмонхона хўжалигини ташкил этиш ва бошқариш', N'Меҳмонхона хўжалиги менежменти', N'инглиз тили', 4, 23, N'БухДУ ректорининг
 2014 йил 22 сентябрдаги
 294-У(01)сонли буйруғи', N'1_2004_10.7BBAD6EFC6554E8791CCBF730A438BA8_2015_11_30__04_46_36.pdf', 2015, 24, NULL)
GO

INSERT INTO dbo.Jadval10 (Id, DirectionCode, DirectionName, SubjectName, ForeignLanguage, EducationCourse, StudentCount, Asos, AsosFile, Year, UniversityId, Status)
VALUES 
  (2, N'5610200', N'Меҳмонхона хўжалигини ташкил этиш ва бошқариш', N'Сервис тизими фаолияти асослари', N'инглиз тили', 4, 23, N'БухДУ ректорининг
 2014 йил 22 сентябрдаги
 294-У(01)сонли буйруғи', N'#', 2015, 24, NULL)
GO

INSERT INTO dbo.Jadval10 (Id, DirectionCode, DirectionName, SubjectName, ForeignLanguage, EducationCourse, StudentCount, Asos, AsosFile, Year, UniversityId, Status)
VALUES 
  (3, N'5610200', N'Меҳмонхона хўжалигини ташкил этиш ва бошқариш', N'Жахон иқтисодиёти ва халқаро иқтисодий муносабатлар', N'инглиз тили', 3, 25, N'БухДУ ректорининг
 2014 йил 22 сентябрдаги
 294-У(01)сонли буйруғи', N'#', 2015, 24, NULL)
GO

INSERT INTO dbo.Jadval10 (Id, DirectionCode, DirectionName, SubjectName, ForeignLanguage, EducationCourse, StudentCount, Asos, AsosFile, Year, UniversityId, Status)
VALUES 
  (4, N'5610200', N'Меҳмонхона хўжалигини ташкил этиш ва бошқариш', N'Олий математика', N'инглиз тили', 1, 25, N'БухДУ ректорининг
 2014 йил 22 сентябрдаги
 294-У(01)сонли буйруғи', N'#', 2015, 24, NULL)
GO

INSERT INTO dbo.Jadval10 (Id, DirectionCode, DirectionName, SubjectName, ForeignLanguage, EducationCourse, StudentCount, Asos, AsosFile, Year, UniversityId, Status)
VALUES 
  (5, N'5610200', N'Меҳмонхона хўжалигини ташкил этиш ва бошқариш', N'Сиёсатшунослик', N'инглиз тили', 4, 23, N'БухДУ ректорининг
 2014 йил 22 сентябрдаги
 294-У(01)сонли буйруғи', N'#', 2015, 24, NULL)
GO

INSERT INTO dbo.Jadval10 (Id, DirectionCode, DirectionName, SubjectName, ForeignLanguage, EducationCourse, StudentCount, Asos, AsosFile, Year, UniversityId, Status)
VALUES 
  (6, N'5230100', N'Иктисодиёт (тармоклар ва сохалар)', N'Микроиқтисодиёт', N'инглиз тили', 2, 19, N'БухДУ ректорининг
 2014 йил 22 сентябрдаги
 294-У(01)сонли буйруғи', N'#', 2015, 24, NULL)
GO

INSERT INTO dbo.Jadval10 (Id, DirectionCode, DirectionName, SubjectName, ForeignLanguage, EducationCourse, StudentCount, Asos, AsosFile, Year, UniversityId, Status)
VALUES 
  (7, N'5230100', N'Иктисодиёт (тармоклар ва сохалар)', N'Менеджмент', N'инглиз тили', 2, 19, N'БухДУ ректорининг
 2014 йил 22 сентябрдаги
 294-У(01)сонли буйруғи', N'#', 2015, 24, NULL)
GO

SET IDENTITY_INSERT dbo.Jadval10 OFF
GO

--
-- Data for table dbo.Jadval11  (LIMIT 0,500)
--

SET IDENTITY_INSERT dbo.Jadval11 ON
GO

INSERT INTO dbo.Jadval11 (Id, FullName, Speciality, MonographName, MongographYear, DarslikName, DarslikCertificate, OquvqullanmaName, OquvqullanmaCertificate, OquvmajmuaName, OquvmajmuaCertificate, Status, AsosFile, Year, UniversityId)
VALUES 
  (1, N'Ихтиярова Гулнора Акмаловна', N'05.19.03', N'Многофункциональные смешанные загустители для печатания ткани”', 2014, N'', N'', N'', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval11 (Id, FullName, Speciality, MonographName, MongographYear, DarslikName, DarslikCertificate, OquvqullanmaName, OquvqullanmaCertificate, OquvmajmuaName, OquvmajmuaCertificate, Status, AsosFile, Year, UniversityId)
VALUES 
  (2, N'Ёдгоров Нодир Джалолович', N'13.00.02', N'Чизмачиликда фазовий алмаштиришларни ўқитиш жараёнида ўқувчиларнинг билиш фаолиятини ривожлантириш', 2014, N'', N'', N'', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval11 (Id, FullName, Speciality, MonographName, MongographYear, DarslikName, DarslikCertificate, OquvqullanmaName, OquvqullanmaCertificate, OquvmajmuaName, OquvmajmuaCertificate, Status, AsosFile, Year, UniversityId)
VALUES 
  (3, N'Чориев Таваккал Равшанович', N'10.00.02', N'Забон ва услуби асарҳои публитсистии Садриддин Айнй', 2014, N'', N'', N'', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval11 (Id, FullName, Speciality, MonographName, MongographYear, DarslikName, DarslikCertificate, OquvqullanmaName, OquvqullanmaCertificate, OquvmajmuaName, OquvmajmuaCertificate, Status, AsosFile, Year, UniversityId)
VALUES 
  (4, N'Қаххарова Дилдора Сиддиковна', N'10.00.07', N'Инклюзив таълим технологияси', 2014, N'', N'', N'', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval11 (Id, FullName, Speciality, MonographName, MongographYear, DarslikName, DarslikCertificate, OquvqullanmaName, OquvqullanmaCertificate, OquvmajmuaName, OquvmajmuaCertificate, Status, AsosFile, Year, UniversityId)
VALUES 
  (5, N'Қувватова Дилрабо Хабибовна', N'10.00.02', N'ХХ аср иккинчи ярмида ўзбек поэмаси', 2014, N'', N'', N'', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval11 (Id, FullName, Speciality, MonographName, MongographYear, DarslikName, DarslikCertificate, OquvqullanmaName, OquvqullanmaCertificate, OquvmajmuaName, OquvmajmuaCertificate, Status, AsosFile, Year, UniversityId)
VALUES 
  (6, N'Жўраева Малоҳат Мухаммадиевна', N'10.00.07', N'Француз ва ўзбек эртаклари матнида модаллик категориясининг лингвокогнитив тадқиқи', 2014, N'', N'', N'', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval11 (Id, FullName, Speciality, MonographName, MongographYear, DarslikName, DarslikCertificate, OquvqullanmaName, OquvqullanmaCertificate, OquvmajmuaName, OquvmajmuaCertificate, Status, AsosFile, Year, UniversityId)
VALUES 
  (7, N'Назаров Ўткир Ўктамович', N'10.00.02', N'Романда бадиий хронотопнинг ўзига хослиги', 2014, N'', N'', N'', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval11 (Id, FullName, Speciality, MonographName, MongographYear, DarslikName, DarslikCertificate, OquvqullanmaName, OquvqullanmaCertificate, OquvmajmuaName, OquvmajmuaCertificate, Status, AsosFile, Year, UniversityId)
VALUES 
  (8, N'Музаффаров Фируз Давронович', N'09.00.03', N'Ғаззолий инсонга оид таълимотининг илмий-фалсафий асослари', 2014, N'', N'', N'', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval11 (Id, FullName, Speciality, MonographName, MongographYear, DarslikName, DarslikCertificate, OquvqullanmaName, OquvqullanmaCertificate, OquvmajmuaName, OquvmajmuaCertificate, Status, AsosFile, Year, UniversityId)
VALUES 
  (9, N'Қаҳҳоров Сиддик Қаҳҳорович, Самиев Камолиддин Аъзамович, Жўраев Ҳусниддин Олтинбойевич', N'15.06.04.', N'Қуёш қурилмаларидаги жараёнларни моделлаштириш', 2014, N'', N'', N'', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval11 (Id, FullName, Speciality, MonographName, MongographYear, DarslikName, DarslikCertificate, OquvqullanmaName, OquvqullanmaCertificate, OquvmajmuaName, OquvmajmuaCertificate, Status, AsosFile, Year, UniversityId)
VALUES 
  (10, N'Абдукабил Абдунабиевич Тўлаганогв', N'ББК 38.39', N'', 0, N'', N'', N'Местная Сырьевая база строительных материалов', N'2014 йил', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval11 (Id, FullName, Speciality, MonographName, MongographYear, DarslikName, DarslikCertificate, OquvqullanmaName, OquvqullanmaCertificate, OquvmajmuaName, OquvmajmuaCertificate, Status, AsosFile, Year, UniversityId)
VALUES 
  (11, N'Мавлонов А, Қодиров А', N'', N'Ўлкашунослик атласи Бухоро вилояти', 2014, N'', N'', N'', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval11 (Id, FullName, Speciality, MonographName, MongographYear, DarslikName, DarslikCertificate, OquvqullanmaName, OquvqullanmaCertificate, OquvmajmuaName, OquvmajmuaCertificate, Status, AsosFile, Year, UniversityId)
VALUES 
  (12, N'Таваккал Чориев', N'', N'', 0, N'Забони модари 3', N'', N'', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval11 (Id, FullName, Speciality, MonographName, MongographYear, DarslikName, DarslikCertificate, OquvqullanmaName, OquvqullanmaCertificate, OquvmajmuaName, OquvmajmuaCertificate, Status, AsosFile, Year, UniversityId)
VALUES 
  (13, N'Таваккал Чориев', N'', N'', 0, N'Забони модари 2', N'', N'', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval11 (Id, FullName, Speciality, MonographName, MongographYear, DarslikName, DarslikCertificate, OquvqullanmaName, OquvqullanmaCertificate, OquvmajmuaName, OquvmajmuaCertificate, Status, AsosFile, Year, UniversityId)
VALUES 
  (14, N'Таваккал Чориев', N'', N'', 0, N'Забони тожики 8', N'', N'', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval11 (Id, FullName, Speciality, MonographName, MongographYear, DarslikName, DarslikCertificate, OquvqullanmaName, OquvqullanmaCertificate, OquvmajmuaName, OquvmajmuaCertificate, Status, AsosFile, Year, UniversityId)
VALUES 
  (15, N'Абдуллаев Сухроб Саайфуллаевич', N'5110800- Тасвирий санъат ва мухандислик графикаси', N'', 0, N'', N'', N'Инклюзивтаълим технологияси', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval11 (Id, FullName, Speciality, MonographName, MongographYear, DarslikName, DarslikCertificate, OquvqullanmaName, OquvqullanmaCertificate, OquvmajmuaName, OquvmajmuaCertificate, Status, AsosFile, Year, UniversityId)
VALUES 
  (16, N'Л.Олимов, Эшонов Э. Махмудова З.', N'5110800- тасвирий санъат ва мухандислик графикаси', N'', 0, N'', N'', N'Тасвирий санъат ўқитиш методика', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval11 (Id, FullName, Speciality, MonographName, MongographYear, DarslikName, DarslikCertificate, OquvqullanmaName, OquvqullanmaCertificate, OquvmajmuaName, OquvmajmuaCertificate, Status, AsosFile, Year, UniversityId)
VALUES 
  (17, N'Қобилов Шавкат Рашидович', N'психология, педагогика ва психология', N'', 0, N'', N'', N'Психодиагностика', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval11 (Id, FullName, Speciality, MonographName, MongographYear, DarslikName, DarslikCertificate, OquvqullanmaName, OquvqullanmaCertificate, OquvmajmuaName, OquvmajmuaCertificate, Status, AsosFile, Year, UniversityId)
VALUES 
  (18, N'Ғанижон Худоев', N'Мусиқий таълим', N'', 0, N'', N'', N'Ғижжак чолғуси ижрочилик анъаналари', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval11 (Id, FullName, Speciality, MonographName, MongographYear, DarslikName, DarslikCertificate, OquvqullanmaName, OquvqullanmaCertificate, OquvmajmuaName, OquvmajmuaCertificate, Status, AsosFile, Year, UniversityId)
VALUES 
  (19, N'Тулаганов Абдукабил Абдунабиевич', N'', N'', 0, N'', N'', N'Воздействие  сульфатов на бетон(Й.Штарк,Ф.Беллман,П. Нобест,Б.Вихт)', N'220-085', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval11 (Id, FullName, Speciality, MonographName, MongographYear, DarslikName, DarslikCertificate, OquvqullanmaName, OquvqullanmaCertificate, OquvmajmuaName, OquvmajmuaCertificate, Status, AsosFile, Year, UniversityId)
VALUES 
  (20, N'Тулаганов Абдукабил Абдунабиевич', N'511000,5340200, 52 30 200,5340 400,5341000', N'', 0, N'', N'', N'"Немисча-ўзбекча-русча" қурилиш луғати', N'312-077', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval11 (Id, FullName, Speciality, MonographName, MongographYear, DarslikName, DarslikCertificate, OquvqullanmaName, OquvqullanmaCertificate, OquvmajmuaName, OquvmajmuaCertificate, Status, AsosFile, Year, UniversityId)
VALUES 
  (21, N'Тулаганов Абдукабил Абдунабиевич', N'архитектура ва қурилиш йўналиш бакалавр ва магистратура', N'', 0, N'', N'', N'Замонавий қурилиш материаллари,буюмлари ва технологиялари', N'220-082', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval11 (Id, FullName, Speciality, MonographName, MongographYear, DarslikName, DarslikCertificate, OquvqullanmaName, OquvqullanmaCertificate, OquvmajmuaName, OquvmajmuaCertificate, Status, AsosFile, Year, UniversityId)
VALUES 
  (22, N'Маъмуров Баходир Бахшуллаевич', N'5111700-БТСТТ,511800-МТ', N'', 0, N'', N'', N'Оилада соғлом бола тарбияси', N'335-022', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval11 (Id, FullName, Speciality, MonographName, MongographYear, DarslikName, DarslikCertificate, OquvqullanmaName, OquvqullanmaCertificate, OquvmajmuaName, OquvmajmuaCertificate, Status, AsosFile, Year, UniversityId)
VALUES 
  (23, N'Маъмуров Баходир Бахшуллаевич', N'5111700-БТСТТ,511800-МТ', N'', 0, N'', N'', N'Болалар ривожланишида жисмоний тарбия назарияси ва методикаси', N'335-015', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval11 (Id, FullName, Speciality, MonographName, MongographYear, DarslikName, DarslikCertificate, OquvqullanmaName, OquvqullanmaCertificate, OquvmajmuaName, OquvmajmuaCertificate, Status, AsosFile, Year, UniversityId)
VALUES 
  (24, N'Ибрагимов Алишер Каромативич', N'5 111 200-Жисмоний маданият', N'', 0, N'', N'', N'Ёш қўл тўпичиларни тайёрлаш методикаси', N'335-017', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval11 (Id, FullName, Speciality, MonographName, MongographYear, DarslikName, DarslikCertificate, OquvqullanmaName, OquvqullanmaCertificate, OquvmajmuaName, OquvmajmuaCertificate, Status, AsosFile, Year, UniversityId)
VALUES 
  (25, N'Мехриддин Абдуллаев,Л.Смургина', N'5 111 200-Жисмоний маданият', N'', 0, N'', N'', N'Организация физкультурно оздоровительных и спортивных мероприятий общеобразовательной школе', N'335-025', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval11 (Id, FullName, Speciality, MonographName, MongographYear, DarslikName, DarslikCertificate, OquvqullanmaName, OquvqullanmaCertificate, OquvmajmuaName, OquvmajmuaCertificate, Status, AsosFile, Year, UniversityId)
VALUES 
  (26, N'Мехридин Абдуллаев', N'5 111 200-Жисмоний маданият', N'', 0, N'', N'', N'Енгил атлетика', N'335- 019', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval11 (Id, FullName, Speciality, MonographName, MongographYear, DarslikName, DarslikCertificate, OquvqullanmaName, OquvqullanmaCertificate, OquvmajmuaName, OquvmajmuaCertificate, Status, AsosFile, Year, UniversityId)
VALUES 
  (27, N'Жўраева Зулхумор Ражабовна', N'512 0100- Филология ва тил ўргатиш', N'', 0, N'', N'', N'Основы филологического анализа художественного текста', N'', N'', N'', NULL, N'#', 2015, 24)
GO

SET IDENTITY_INSERT dbo.Jadval11 OFF
GO

--
-- Data for table dbo.Jadval5  (LIMIT 0,500)
--

SET IDENTITY_INSERT dbo.Jadval5 ON
GO

INSERT INTO dbo.Jadval5 (Id, FullName, Davlat_ishjoy, Speciality, Subject, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (1007, N'Ли Чул Су (Lee Chul Soo)', N'Жанубий Корея', N'Компьютер технологиялари', N'Электрон хукумат тизими ташкил этиш Ахборот коммуникация технологиялари бўйича маслаҳатчи', NULL, N'28.02.2014й.,131-02 сон –буйруқ 2ИГ, 20.02.2014й.-Шартнома 20.02.2014-18.02.2015', N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval5 (Id, FullName, Davlat_ishjoy, Speciality, Subject, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (1008, N'Юн Ран-Хи (Yoon Ranhee)', N'Жанубий Корея', N'Санъатшунослик', N'Корейс тили', NULL, N'28.01.2014й.60 сон –буйруқ 22.01.2014-25.11.2015й.', N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval5 (Id, FullName, Davlat_ishjoy, Speciality, Subject, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (1009, N'Шин Жонгжин (Shin Jongjin)', N'Жанубий Корея', N'Компьютер технологиялари', N'Ахборот технологиялари', NULL, N'20.11.2014й.60 сон –буйруқ 20.11.2014-08.08.2015й.', N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval5 (Id, FullName, Davlat_ishjoy, Speciality, Subject, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (1010, N'Ли Чул Су (Lee Chul Soo)', N'Жанубий Корея', N'Компьютер технологиялари', N'Электрон хукумат тизими ташкил этиш Ахборот коммуникация технологиялари бўйича маслаҳатчи', 1, N'28.02.2014й.,131-02 сон –буйруқ 2ИГ, 20.02.2014й.-Шартнома 20.02.2014-18.02.2015', N'#', 2016, 46)
GO

INSERT INTO dbo.Jadval5 (Id, FullName, Davlat_ishjoy, Speciality, Subject, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (1011, N'Юн Ран-Хи (Yoon Ranhee)', N'Жанубий Корея', N'Санъатшунослик', N'Корейс тили', 1, N'28.01.2014й.60 сон –буйруқ 22.01.2014-25.11.2015й.', N'#', 2016, 46)
GO

INSERT INTO dbo.Jadval5 (Id, FullName, Davlat_ishjoy, Speciality, Subject, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (1012, N'Шин Жонгжин (Shin Jongjin)', N'Жанубий Корея', N'Компьютер технологиялари', N'Ахборот технологиялари', 1, N'20.11.2014й.60 сон –буйруқ 20.11.2014-08.08.2015й.', N'#', 2016, 46)
GO

SET IDENTITY_INSERT dbo.Jadval5 OFF
GO

--
-- Data for table dbo.Jadval6  (LIMIT 0,500)
--

SET IDENTITY_INSERT dbo.Jadval6 ON
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (1, N'Jumakulyyeva Umidahan Beshimovna', N'Туркманисто?', N'Биология', N'-', NULL, N'№359-У', N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (2, N'Allakulov  Zakir Yusupovich', N'Туркманистон', N'Амалий математика ва информатика', N'-', NULL, N'№391-У', N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (3, N'Choyanova Mahrijemal Yolbarsovna', N'Туркманистон', N'Амалий математика ва информатика', N'-', NULL, N'№391-У', N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (4, N'Jumayeva Rana Shamuradovna', N'Туркманистон', N'Рус тили', N'-', NULL, N'№391-У', N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (5, N'Sattarov Murat Zakirdjanovich', N'Туркманистон', N'Инглиз тили', N'-', NULL, N'№391-У', N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (6, N'Annashova Jemal Reyimbayevna', N'Туркманистон', N'Инглиз тили', N'-', NULL, N'№391-У', N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (7, N'Bayramova Nurana Bayramovna', N'Туркманистон', N'Инглиз тили', N'-', NULL, N'№391-У', N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (8, N'Baltayeva Guller Berdimuradovna', N'Туркманистон', N'Инглиз тили', N'-', NULL, N'№391-У', N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (9, N'Yakshiyeva Gulustan Babaxanovna', N'Туркманистон', N'Инглиз тили', N'-', NULL, N'№340-У(01)', N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (10, N'Sobirova Inobat Ilxambayevna', N'Туркманистон', N'Инглиз тили', N'-', NULL, N'№340-У(01)', N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (11, N'Seyidov Mansur Shakirjanovich', N'Туркманистон', N'Инглиз тили', N'-', NULL, N'№340-У(01)', N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (12, N'Charyyeva Gozel Chariyevna', N'Туркманистон', N'Инглиз тили', N'-', NULL, N'№374-У', N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (13, N'Matnazarova Hilala Narmatovna', N'Туркманистон', N'Бошланғич таълим ва спорт-тарбиявий иш', N'-', NULL, N'№317-У', N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (14, N'Kaharova Zilola Usmanovna', N'Туркманистон', N'Бошланғич таълим ва спорт-тарбиявий иш', N'-', NULL, N'№317-У', N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (15, N'Azymov Ikram Agadjanovich', N'Туркманистон', N'Экология ва атроф-муҳит муҳофазаси', N'-', NULL, N'№374-У', N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (16, N'Bernayeva Aziza Aymuradovna', N'Туркманистон', N'Иқтисодиёт', N'-', NULL, N'№374-У', N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (17, N'Rahimbayeva Adolat Ilhomboyevna', N'Туркманистон', N'Инглиз тили', N'-', NULL, N'№288-У(01)', N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (18, N'Hurchyna Oksana', N'Украина', N'Инглиз тили', N'-', NULL, N'№317-У', N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (19, N'Salomov Firdavs Maxmadovich', N'Тожикистон', N'Чет тили ва адабиёти (инглиз тили)', N'-', NULL, N'№288-У(01)', N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (20, N'Solieva Nigora Gufronovna', N'Тожикистон', N'Иқтисодиёт', N'-', NULL, N'№288-У(01)', N'#', 2015, 24)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (21, N'Тян Станислав Николаевич', N'Қозоғистон фуқароси', N'Информатика ва АТ йўналиши', N'', 1, N'12.10.2012даги 1063-сонли буйруқ, 3 курс', N'#', 2016, 46)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (22, N'Нажметдинов Ашурбай', N'Қозоғистон фуқароси', N'Информатика ва АТ йўналиши', N'', 1, N'12.10.2012даги 1063-сонли буйруқ, 3 курс', N'#', 2016, 46)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (23, N'Ким Руслан Витальевич', N'Россия Федерацияси', N'Махсус ёритиш технологиялари йўналиши', N'', 1, N'12.10.2012даги 1063-сонли буйруқ, 3 курс', N'#', 2016, 46)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (24, N'Ким Кристина Руслановна', N'Россия Федерацияси', N'Телекоммуникация технологиялари', N'', 1, N'12.10.2012даги 1063-сонли буйруқ, 3 курс', N'#', 2016, 46)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (25, N'Бредихин Никита', N'Туркманистон', N'Компьютер графикаси ва дизайн', N'', 1, N'12.10.2012даги 1063-сонли буйруқ, 3 курс', N'#', 2016, 46)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (26, N'Асламов Шадаб Хожи Мохаммад', N'Афғонистон', N'АКТ соҳасида иқтисодиёт ва менежмент', N'', 1, N'26.09.2013даги 1011-сонли буйруқ, 2 курс', N'#', 2016, 46)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (27, N'Цой Юрий Станиславович', N'Россия', N'АКТ соҳасида иқтисодиёт ва менежмент', N'', 1, N'26.09.2013даги 1011-сонли буйруқ, 2 курс', N'#', 2016, 46)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (28, N'Ролдугина Карина Андреевна', N'Россия', N'Почта алоқаси технологияси', N'', 1, N'26.09.2013даги 1011-сонли буйруқ, 2 курс', N'#', 2016, 46)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (29, N'Ширинов Джахангир Каримжонович', N'Қозоғистон', N'Компьютер инжиниринги', N'', 1, N'26.09.2013даги 1011-сонли буйруқ, 2 курс', N'#', 2016, 46)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (30, N'Абаев Аслан Муратович', N'Россия', N'Дастурий инжиниринг', N'', 1, N'26.09.2013даги 1011-сонли буйруқ, 2 курс', N'#', 2016, 46)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (31, N'Абламитов Абдухамид', N'Қозоғистон', N'Телекоммуникация технологиялари', N'', 1, N'26.09.2013даги 1011-сонли буйруқ, 2 курс', N'#', 2016, 46)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (32, N'Махмадов Далер Хандуллоевич', N'Тожикистон', N'АКТ соҳасида иқтисодиёт ва менежмент', N'', 1, N'08.10.2014даги 1153-сонли буйруқ, 1 курс', N'#', 2016, 46)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (33, N'Мун Игорь Владимирович', N'Туркманистон', N'Дастурий инжиниринг', N'', 1, N'08.10.2014даги 1153-сонли буйруқ, 1 курс', N'#', 2016, 46)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (34, N'Югай Владислав Сергеевич', N'Қозоғистон', N'АКТ соҳасида иқтисодиёт ва менежмент', N'', 1, N'08.10.2014даги 1153-сонли буйруқ, 1 курс', N'#', 2016, 46)
GO

INSERT INTO dbo.Jadval6 (Id, FullName, State, Yonalish, Mag_mutaxassislik, Status, Asos, Asos_fayl, Year, UniversityId)
VALUES 
  (35, N'Абдусаломова Барно Камилжан кизи', N'Россия Федерацияси', N'АКТ соҳасида иқтисодиёт ва менежмент', N'', 1, N'08.10.2014даги 1153-сонли буйруқ, 1 курс', N'#', 2016, 46)
GO

SET IDENTITY_INSERT dbo.Jadval6 OFF
GO

--
-- Data for table dbo.Jadval7  (LIMIT 0,500)
--

SET IDENTITY_INSERT dbo.Jadval7 ON
GO

INSERT INTO dbo.Jadval7 (Id, FullName_uzb, State_uzb, Mutaxassislik_uzb, FullName_xorij, State_xorij, Mutaxassislik_xorij, Asos, Asos_fayl, Bak_mag, Year, UniversityId, Status)
VALUES 
  (1, N'Давронхўжа Истамов Олимович', N'Руминия, Иоан Куза номли университет', N'Меҳмонхона хўжалигини ташкил этиш ва бошқариш', N'-', N'-', N'-', N'Эрасмус Мундус дастури СИЛКРОУТ лойиҳаси грант келишуви,01.05.2014', N'#', 0, 2015, 24, NULL)
GO

INSERT INTO dbo.Jadval7 (Id, FullName_uzb, State_uzb, Mutaxassislik_uzb, FullName_xorij, State_xorij, Mutaxassislik_xorij, Asos, Asos_fayl, Bak_mag, Year, UniversityId, Status)
VALUES 
  (2, N'Миршод Нарзуллаев Акмалович', N'Руминия, Иоан Куза номли университет', N'Иқтисодиёт', N'-', N'-', N'-', N'Эрасмус Мундус дастури СИЛКРОУТ лойиҳаси грант келишуви,01.05.2014', N'#', 0, 2015, 24, NULL)
GO

INSERT INTO dbo.Jadval7 (Id, FullName_uzb, State_uzb, Mutaxassislik_uzb, FullName_xorij, State_xorij, Mutaxassislik_xorij, Asos, Asos_fayl, Bak_mag, Year, UniversityId, Status)
VALUES 
  (3, N'Умиджон Ғафуров Шарипович', N'Италия, Болония университети', N'Туроператорлик хизматларини ташкил этиш', N'-', N'-', N'-', N'Эрасмус Мундус дастури СИЛКРОУТ лойиҳаси грант келишуви,01.05.2014', N'#', 1, 2015, 24, NULL)
GO

SET IDENTITY_INSERT dbo.Jadval7 OFF
GO

--
-- Data for table dbo.Monitorings  (LIMIT 0,500)
--

SET IDENTITY_INSERT dbo.Monitorings ON
GO

INSERT INTO dbo.Monitorings (Id, J1, J2, J3, J4, J5, J6, J7, J8, J9, J10, J11, J12, J13, J14, J15, J16, J17, J18, J19, J20, J21, J22, J23, J24, J25, J26, J27, J28, J29, J30, J31, J32, J1_2, J1_7, J2_1, J2_2, Year, UniverId, Srok)
VALUES 
  (1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2016, 46, NULL)
GO

SET IDENTITY_INSERT dbo.Monitorings OFF
GO

--
-- Data for table dbo.raiting  (LIMIT 0,500)
--

SET IDENTITY_INSERT dbo.raiting ON
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (1, 1, 2013, 623, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 119, 1, 0, 0, 6994, 0, 6, 2, 3, 0, 2, 0, 0, 223, 510, 150, 310, 0, 16, 0, 1, 60.8, 63, 1321, 1488, 0, 3, 10, 0, 10, 64, 18, 3, 124, 0, 190, 6, 0, 0, 129.52, 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 2990, 633, 3171, 405, 6588, 160, 50, 121, 0.5, 0.8, 6, 432, 66, 508, 0.5, 0.5, 0.5, 0.5, 0, 43, 14, 0.65, 576, 788, 25, 218)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (2, 2, 2013, 232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 115, 0, 0, 0, 2384, 0, 1, 0, 0, 0, 0, 0, 0, 165, 187, 30, 130, 0, 4, 0, 1, 42.9, 13, 182, 561, 0, 1, 0, 0, 2, 1, 1, 1, 24, 0, 66, 0, 30.95, 3.4, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 1872, 473, 1927, 325, 2684, 232, 232, 107, 1, 0.6, 28, 20, 28, 214, 0.5, 0.5, 0.5, 0.5, 0, 49, 43, 0.7, 594, 612, 16, 96)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (3, 3, 2013, 493, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92.7, 125, 1, 3, 0, 3043, 0, 6, 0, 0, 0, 0, 0, 0, 126, 471, 145, 307, 0, 8, 0, 1, 53.3, 67, 491, 522, 0, 0, 0, 0, 86, 0, 28, 1, 126, 0, 194, 0, 0, 272.57, 51, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1019, 987, 1195, 457, 3010, 87, 87, 120, 0.5, 0.6, 6, 0, 24, 480, 0.5, 0.5, 1, 1, 0, 22, 31, 0.7, 85, 97, 65, 286)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (4, 4, 2013, 240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.9, 84, 1, 0, 0, 2827, 0, 0, 1, 6, 0, 10, 0, 0, 245, 225, 42, 130, 0, 12, 0, 1, 54.3, 5, 268, 353, 0, 2, 0, 0, 0, 0, 4, 0, 14, 0, 81, 0, 0, 41.13, 93, 0, 1, 0, 0, 6, 0, 0, 0, 0, 0, 0, 1315, 1315, 1486, 211, 2694, 90, 90, 50, 0.5, 0.2, 10, 22, 21, 243, 0.5, 0.5, 0.5, 0.5, 0, 7, 30, 0.74, 785, 829, 9, 127)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (5, 5, 2013, 620, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91.9, 79, 0, 9, 0, 5640, 0, 9, 15, 16, 7, 0, 0, 0, 284, 407, 137, 259, 1, 12, 0, 1, 58.7, 9, 1137, 1468, 0, 9, 0, 0, 0, 1, 8, 3, 188, 3, 147, 0, 0, 4.76, 120, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 1592, 736, 2172, 625, 6245, 424, 226, 95, 0.5, 0.4, 36, 1, 36, 470, 1, 0.5, 1, 1, 0, 42, 44, 0.6, 1116, 1305, 42, 331)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (6, 6, 2013, 520, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89.7, 93, 0, 0, 0, 5183, 0, 0, 2, 8, 0, 8, 0, 0, 407, 386, 101, 254, 3, 20, 0, 1, 63.5, 5, 1087, 1139, 0, 4, 0, 2, 4, 16, 20, 4, 27, 3, 148, 3, 0, 24.2, 201.5, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2582, 494, 2967, 395, 5241, 340, 310, 65, 1, 0.2, 10, 17, 52, 338, 1, 0.5, 1, 1, 0, 49, 38, 0.54, 1452, 1474, 20, 132)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (7, 7, 2013, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95.7, 90, 1, 1, 0, 1603, 0, 12, 2, 2, 0, 0, 0, 0, 161, 190, 39, 123, 0, 2, 0, 1, 56.7, 8, 375, 389, 0, 6, 0, 0, 0, 0, 31, 0, 42, 0, 101, 0, 0, 0, 75, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 982, 698, 1080, 246, 1487, 132, 90, 60, 0.2, 0.6, 26, 24, 26, 230, 0.5, 0.5, 0.5, 0.5, 0, 27, 21, 0.76, 69, 69, 24, 233)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (8, 8, 2013, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88.6, 37, 0, 0, 0, 188, 0, 0, 0, 0, 0, 0, 0, 0, 54, 25, 0, 5, 0, 1, 0, 1, 59.5, 2, 28, 36, 4, 1, 0, 0, 0, 0, 0, 0, 11, 0, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 156, 19, 176, 61, 197, 54, 48, 19, 1, 0.4, 1, 0, 24, 52, 0.5, 0.5, 0.5, 0.5, 0, 49, 44, 0.34, 0, 0, 3, 16)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (9, 9, 2013, 299, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95.5, 75, 0, 1, 0, 1435, 0, 14, 8, 0, 1, 9, 1, 0, 176, 225, 37, 134, 0, 89, 0, 1, 57.5, 10, 234, 334, 6, 0, 0, 0, 14, 2, 0, 0, 5, 0, 48, 79, 0, 30.81, 25, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 851, 763, 1583, 142, 1457, 52, 52, 61, 0.2, 0.2, 10, 3, 37, 368, 0, 0, 0.5, 0.5, 0, 30, 44, 0.35, 1313, 1313, 20, 185)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (10, 10, 2013, 392, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91.8, 72, 0, 2, 0, 3617, 0, 1, 3, 0, 0, 3, 0, 0, 444, 274, 55, 135, 0, 16, 0, 1, 54, 126, 699, 864, 0, 2, 1, 3, 36, 79, 33, 4, 22, 1, 66, 0, 0, 5, 339.1, 0, 3, 0, 0, 4, 0, 0, 0, 0, 0, 0, 1528, 1534, 1681, 805, 3641, 497, 497, 121, 1, 0.6, 37, 48, 37, 309, 0.5, 0.5, 1, 1, 0, 26, 28, 0.65, 847, 952, 73, 171)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (11, 11, 2013, 454, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88.4, 150, 13, 0, 0, 6506, 0, 0, 0, 1, 0, 1, 0, 0, 467, 354, 34, 190, 0, 4, 0, 1, 48.4, 72, 1379, 1418, 0, 5, 0, 0, 12, 1, 32, 3, 101, 0, 119, 2, 0, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1114, 915, 2247, 564, 6598, 478, 478, 146, 0.5, 0.8, 9, 8, 50, 380, 1, 1, 1, 1, 0, 34, 44, 0.65, 1228, 1308, 50, 203)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (12, 12, 2013, 268, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.4, 61, 0, 0, 0, 2606, 0, 1, 1, 7, 0, 1, 0, 3, 435, 202, 12, 110, 0, 15, 0, 1, 52, 35, 379, 570, 0, 1, 0, 1, 0, 0, 3, 1, 25, 0, 56, 0, 0, 40.71, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1610, 734, 2010, 425, 2944, 200, 180, 390, 0.5, 0.2, 2, 0, 29, 249, 1, 1, 1, 1, 0, 41, 27, 0.59, 919, 1417, 40, 100)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (13, 13, 2013, 204, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88.2, 78, 1, 1, 0, 1096, 0, 7, 3, 0, 0, 17, 0, 0, 166, 156, 5, 44, 0, 7, 0, 1, 66.7, 4, 178, 266, 0, 0, 0, 0, 0, 0, 1, 1, 11, 0, 15, 39, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 806, 352, 1560, 177, 1088, 70, 52, 11, 0.5, 0.4, 0, 0, 29, 175, 1, 1, 1, 1, 0, 39, 23, 0.58, 0, 0, 11, 84)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (14, 14, 2013, 722, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 85.1, 141, 0, 0, 0, 7213, 0, 32, 5, 3, 0, 7, 1, 0, 1140, 563, 176, 355, 0, 0, 0, 1, 53.9, 120, 1262, 1725, 0, 2, 0, 1, 34, 272, 24, 0, 147, 0, 220, 2, 0, 0, 272, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 3902, 2312, 4760, 477, 6976, 400, 400, 61, 1, 0.4, 33, 320, 33, 631, 0.5, 0.5, 0.5, 0.5, 0, 8, 22, 0.61, 922, 1248, 52, 227)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (15, 15, 2013, 519, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.2, 97, 0, 2, 0, 5302, 0, 6, 0, 0, 0, 0, 0, 0, 544, 437, 149, 216, 0, 20, 0, 1, 43.5, 60, 1081, 1231, 0, 3, 0, 0, 16, 7, 23, 4, 19, 0, 172, 0, 0, 8.47, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1604, 756, 2160, 316, 5361, 140, 72, 85, 0.5, 0.6, 2, 486, 43, 486, 1, 1, 0.5, 1, 0, 31, 39, 0.45, 1367, 1456, 38, 169)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (16, 16, 2013, 483, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91.2, 103, 0, 1, 0, 5358, 0, 0, 4, 4, 2, 1, 2, 0, 490, 286, 83, 182, 0, 2, 0, 1, 54.7, 21, 1044, 1093, 0, 5, 0, 0, 32, 0, 16, 4, 37, 0, 114, 0, 0, 22.73, 220.6, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1855, 1266, 2574, 566, 5580, 386, 385, 192, 1, 1, 33, 283, 33, 341, 1, 1, 1, 1, 0, 49, 19, 0.82, 1434, 1563, 48, 170)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (17, 17, 2013, 535, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.5, 175, 0, 1, 0, 5511, 0, 1, 0, 0, 0, 0, 0, 0, 407, 420, 45, 198, 0, 9, 0, 1, 61.3, 14, 890, 1340, 0, 6, 0, 0, 4, 37, 10, 2, 27, 0, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1080, 370, 1728, 488, 5345, 149, 149, 155, 0.5, 0.8, 6, 29, 43, 416, 1, 1, 1, 1, 0, 4, 36, 0.41, 1091, 1112, 21, 269)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (18, 18, 2013, 283, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97.6, 119, 0, 1, 0, 3165, 0, 2, 5, 1, 0, 0, 0, 0, 260, 199, 49, 141, 0, 3, 0, 1, 53.7, 27, 654, 841, 0, 3, 0, 0, 4, 12, 7, 2, 76, 0, 82, 0, 0, 110, 418.05, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1227, 401, 1659, 664, 2985, 468, 468, 425, 1, 0.6, 12, 10, 47, 221, 0.5, 0, 1, 1, 0, 47, 32, 0.62, 847, 1499, 34, 134)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (19, 19, 2013, 506, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88.7, 188, 1, 1, 0, 5885, 0, 0, 0, 0, 0, 0, 0, 0, 510, 332, 104, 205, 0, 9, 0, 1, 57.2, 100, 1144, 2475, 0, 5, 0, 28, 4, 0, 11, 2, 5, 1, 88, 0, 0, 60, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1120, 380, 1615, 470, 5882, 338, 338, 104, 0.2, 0.2, 4, 4, 47, 384, 0.5, 0.5, 1, 1, 0, 40, 37, 0.62, 674, 804, 54, 196)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (20, 20, 2013, 55, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99.6, 29, 0, 0, 0, 335, 0, 0, 0, 0, 0, 0, 0, 0, 64, 24, 13, 24, 0, 0, 0, 1, 76.2, 3, 93, 94, 0, 0, 0, 0, 2, 3, 5, 2, 10, 0, 13, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 614, 310, 929, 185, 336, 137, 137, 57, 1, 0.8, 21, 27, 21, 45, 1, 1, 1, 1, 0, 32, 44, 0.45, 0, 0, 16, 18)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (21, 21, 2013, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94.2, 91, 0, 1, 0, 5313, 2, 0, 1, 3, 0, 6, 13, 0, 419, 361, 128, 219, 1, 13, 0, 1, 49.4, 75, 845, 1132, 0, 6, 2, 3, 0, 13, 22, 3, 48, 1, 123, 6, 0, 2.68, 153.45, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2604, 2014, 3380, 501, 5114, 301, 301, 280, 0.5, 0.4, 2, 1, 27, 434, 0.5, 1, 1, 0.5, 0, 33, 33, 0.87, 935, 1128, 28, 233)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (22, 22, 2013, 377, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 80, 1, 0, 0, 4030, 0, 0, 3, 4, 0, 4, 0, 0, 385, 270, 50, 181, 0, 12, 0, 1, 49.4, 51, 763, 936, 0, 4, 0, 0, 35, 55, 7, 2, 30, 0, 129, 0, 0, 0.68, 80, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1642, 1070, 1965, 620, 3785, 580, 580, 260, 0.5, 0.6, 54, 66, 55, 280, 0.5, 0.5, 1, 0.5, 0, 35, 12, 0.64, 1123, 1143, 76, 151)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (23, 23, 2013, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.1, 67, 0, 0, 0, 1886, 0, 0, 11, 14, 0, 0, 0, 0, 103, 124, 10, 79, 3, 10, 0, 1, 54.5, 27, 200, 400, 0, 4, 0, 0, 12, 26, 7, 2, 17, 0, 74, 0, 0, 5, 255.58, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 838, 572, 859, 225, 1886, 180, 180, 55, 0.5, 0.6, 2, 0, 46, 146, 0.5, 0.5, 0.5, 0.5, 0, 46, 26, 0.72, 1540, 1540, 27, 70)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (24, 24, 2013, 885, 25, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.3, 98, 8, 6, 0, 8383, 6, 36, 20, 24, 20, 24, 15, 0, 835, 728, 201, 485, 14, 19, 0, 1, 56.2, 41, 1404, 2329, 0, 14, 0, 0, 607, 1521, 73, 18, 412, 8, 530, 3, 0, 994, 1857.87, 0, 10, 7, 3, 4, 0, 0, 0, 0, 0, 0, 3716, 663, 3912, 1223, 7681, 815, 815, 250, 1, 0.8, 56, 15, 68, 1091, 1, 1, 1, 1, 0, 1, 2, 0.86, 1403, 1448, 59, 242)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (25, 25, 2013, 517, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92.7, 157, 0, 0, 0, 5138, 0, 6, 1, 1, 0, 0, 3, 0, 598, 424, 86, 207, 0, 2, 0, 1, 50.8, 62, 1003, 1371, 0, 6, 0, 2, 4, 67, 19, 0, 74, 1, 153, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2024, 1474, 2657, 645, 4989, 391, 382, 403, 1, 0.4, 7, 482, 38, 482, 0.5, 0.5, 0.5, 0.5, 0, 23, 17, 0.76, 1103, 1107, 28, 171)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (26, 26, 2013, 341, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 128, 0, 1, 0, 3266, 0, 0, 2, 5, 0, 0, 0, 0, 317, 304, 47, 195, 0, 15, 0, 1, 47.6, 7, 371, 546, 0, 5, 0, 2, 8, 22, 6, 4, 47, 0, 129, 5, 0, 26.72, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 782, 779, 917, 293, 3405, 154, 154, 76, 0.5, 0.6, 2, 0, 31, 401, 0.5, 0.5, 0.5, 0.5, 0, 28, 35, 0.78, 375, 380, 11, 182)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (27, 27, 2013, 246, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88.1, 100, 0, 1, 0, 2121, 16, 5, 21, 0, 0, 15, 16, 0, 123, 243, 123, 165, 10, 17, 0, 1, 42.4, 7, 474, 511, 0, 4, 0, 1, 77, 0, 4, 3, 41, 0, 70, 1, 0, 0, 15.4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1448, 514, 1616, 256, 2067, 210, 210, 127, 0.5, 0.6, 46, 216, 46, 225, 1, 0.5, 0.5, 1, 0, 24, 24, 0.75, 0, 0, 12, 127)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (28, 28, 2013, 703, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94.7, 111, 0, 6, 0, 6262, 0, 1, 2, 2, 0, 17, 1, 0, 453, 529, 162, 374, 16, 26, 0, 1, 62.2, 65, 1625, 1825, 0, 11, 0, 0, 122, 2030, 40, 11, 154, 3, 400, 7, 80.76, 5.2, 466.6, 0, 2, 0, 5, 1, 0, 0, 0, 0, 0, 0, 3150, 1764, 3270, 917, 7565, 512, 551, 174, 0.5, 1, 53, 751, 53, 763, 1, 1, 1, 1, 0, 11, 10, 0.71, 1367, 1385, 62, 334)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (29, 29, 2013, 184, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87.4, 88, 1, 0, 0, 1966, 0, 0, 3, 5, 0, 5, 0, 0, 257, 179, 64, 148, 0, 13, 0, 1, 60.1, 16, 414, 488, 0, 4, 0, 1, 19, 10, 2, 6, 18, 1, 96, 0, 0, 9.05, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1064, 1064, 1130, 326, 1937, 280, 280, 104, 0.5, 0.8, 35, 143, 35, 234, 0.5, 0.5, 0.5, 0.5, 0, 20, 25, 0.57, 66, 67, 15, 52)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (30, 30, 2013, 529, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95.4, 101, 1, 1, 0, 3396, 0, 0, 5, 9, 1, 11, 1, 8, 219, 467, 20, 240, 0, 26, 0, 1, 63.3, 33, 406, 452, 0, 2, 0, 2, 135, 0, 30, 0, 191, 2, 215, 0, 0, 20, 70, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 1809, 952, 1809, 478, 3394, 130, 230, 277, 0.5, 1, 40, 523, 40, 523, 1, 1, 1, 1, 0, 36, 18, 0.77, 86, 86, 66, 207)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (31, 31, 2013, 327, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.5, 101, 1, 1, 0, 4081, 0, 0, 44, 11, 0, 8, 0, 0, 304, 273, 39, 187, 0, 1, 0, 1, 54.7, 29, 705, 795, 0, 4, 0, 5, 34, 80, 7, 6, 48, 1, 150, 0, 0, 95.7, 475.37, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1297, 1138, 1315, 468, 4139, 180, 180, 149, 0.5, 1, 2, 278, 37, 298, 1, 1, 1, 1, 0, 3, 44, 0.62, 1707, 1835, 35, 176)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (32, 32, 2013, 1013, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.2, 136, 5, 3, 0, 6446, 0, 39, 18, 30, 0, 30, 0, 46, 139, 841, 92, 482, 0, 14, 0, 1, 54.3, 91, 1279, 1417, 0, 5, 0, 0, 229, 1932, 87, 1, 207, 10, 537, 0, 0, 108.47, 962.98, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1226, 1157, 1324, 1120, 4820, 815, 786, 223, 0.5, 0.4, 30, 58, 32, 796, 0.5, 0.5, 0.5, 0.5, 0, 16, 3, 0.89, 298, 306, 411, 694)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (33, 33, 2013, 347, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91.7, 187, 0, 1, 0, 3372, 0, 6, 2, 7, 0, 2, 0, 0, 307, 292, 31, 176, 0, 27, 0, 1, 56.7, 8, 790, 964, 0, 6, 3, 1, 6, 24, 8, 6, 37, 2, 128, 0, 0, 179.14, 471.7, 0, 2, 6, 0, 3, 0, 0, 0, 0, 0, 0, 1170, 86, 1521, 389, 3050, 371, 239, 11, 0.5, 0.6, 12, 23, 46, 399, 1, 1, 1, 1, 0, 5, 15, 0.61, 974, 1076, 21, 128)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (34, 34, 2013, 388, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89.7, 123, 8, 48, 0, 3525, 0, 10, 13, 3, 0, 16, 8, 0, 316, 285, 14, 153, 0, 10, 0, 1, 54.6, 7, 620, 771, 0, 7, 1, 3, 28, 50, 3, 3, 44, 0, 116, 5, 0, 132.89, 337.1, 0, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 983, 420, 1140, 284, 3525, 155, 155, 279, 0.2, 0.2, 35, 240, 40, 490, 0.5, 0.5, 1, 1, 0, 37, 16, 0.74, 155, 158, 16, 120)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (35, 35, 2013, 535, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 86.2, 161, 3, 2, 0, 7560, 0, 0, 56, 9, 0, 5, 0, 0, 508, 456, 26, 269, 0, 24, 0, 1, 53.6, 24, 886, 1531, 0, 3, 0, 2, 41, 51, 3, 7, 93, 0, 174, 1, 0, 15, 536.62, 0, 6, 5, 0, 4, 0, 0, 0, 0, 0, 0, 1375, 478, 2459, 714, 5967, 130, 126, 370, 1, 0.2, 0, 0, 63, 514, 0.5, 0.5, 0.5, 0.5, 0, 49, 44, 0.49, 2736, 2936, 95, 288)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (36, 36, 2013, 264, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89.7, 186, 0, 0, 0, 2065, 15, 32, 83, 8, 1, 18, 0, 3, 323, 221, 41, 119, 0, 9, 0, 1, 60.8, 6, 375, 591, 4, 3, 0, 0, 110, 30, 22, 7, 98, 0, 64, 4, 43.81, 1, 183.8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1008, 840, 1069, 348, 2100, 187, 158, 80, 1, 0.8, 24, 40, 31, 320, 1, 1, 1, 1, 0, 15, 8, 0.72, 0, 0, 19, 112)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (37, 37, 2013, 844, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 175, 12, 16, 0, 7009, 3, 19, 5, 16, 0, 9, 0, 3, 854, 696, 28, 305, 0, 24, 0, 1, 56.7, 85, 1851, 2197, 0, 9, 1, 2, 42, 106, 67, 7, 122, 4, 303, 5, 0, 0, 758.1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2480, 2110, 2561, 720, 8064, 513, 513, 616, 0.5, 1, 6, 0, 56, 740, 0.5, 0.5, 0.5, 0.5, 0, 19, 40, 0.85, 1706, 1816, 41, 208)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (38, 38, 2013, 1092, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88.2, 141, 5, 6, 0, 11549, 0, 10, 19, 10, 0, 8, 0, 0, 924, 710, 29, 379, 4, 7, 0, 1, 49.6, 34, 1758, 2390, 0, 9, 0, 0, 479, 517, 47, 6, 291, 4, 346, 0, 10.09, 1143.91, 812.06, 0, 11, 11, 15, 19, 1, 0, 0, 0, 0, 0, 2905, 691, 3412, 1962, 10783, 1270, 978, 1380, 0.5, 0.4, 67, 157, 71, 873, 0, 1, 0.5, 1, 0, 29, 44, 0.63, 1632, 1843, 31, 316)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (39, 39, 2013, 534, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88.5, 132, 5, 15, 0, 5661, 5, 24, 28, 12, 15, 0, 0, 6, 329, 510, 152, 313, 0, 26, 0, 1, 62.7, 60, 1303, 1737, 0, 2, 0, 0, 55, 0, 52, 3, 246, 4, 194, 0, 27.48, 73.76, 412.6, 0, 3, 0, 0, 8, 0, 0, 0, 0, 0, 0, 2838, 2017, 3114, 1080, 5486, 840, 840, 569, 1, 0.8, 48, 611, 48, 611, 1, 1, 1, 1, 0, 48, 29, 0.73, 0, 0, 197, 210)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (40, 40, 2013, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89.9, 47, 11, 4, 0, 2047, 2, 2, 11, 0, 0, 5, 6, 0, 117, 184, 32, 139, 0, 5, 0, 1, 61.1, 6, 607, 668, 0, 2, 0, 0, 14, 0, 27, 13, 84, 2, 130, 0, 0, 0, 311.38, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 575, 150, 752, 732, 1993, 470, 470, 175, 1, 0.2, 30, 22, 35, 163, 0.5, 0.5, 0.5, 0.5, 0, 18, 11, 0.54, 0, 0, 41, 52)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (41, 41, 2013, 349, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 79, 0, 0, 0, 4082, 0, 2, 11, 0, 0, 3, 0, 0, 435, 311, 20, 217, 0, 6, 0, 1, 37.9, 51, 887, 950, 0, 7, 7, 0, 29, 80, 19, 1, 36, 1, 154, 0, 0, 293, 366.8, 0, 0, 5, 1, 2, 0, 0, 0, 0, 0, 0, 1491, 888, 1591, 968, 4082, 801, 801, 145, 1, 0.6, 9, 302, 9, 302, 0.5, 1, 1, 1, 0, 49, 44, 0.49, 848, 848, 35, 281)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (42, 42, 2013, 430, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99.2, 111, 0, 0, 0, 5562, 0, 2, 15, 0, 0, 14, 0, 4, 478, 392, 108, 302, 0, 8, 0, 1, 61.8, 15, 571, 1151, 1, 6, 0, 0, 65, 105, 18, 4, 75, 0, 162, 0, 0, 518, 615.66, 0, 3, 15, 0, 0, 0, 0, 0, 0, 0, 0, 1031, 310, 1118, 479, 5179, 287, 287, 348, 0.5, 0.2, 9, 30, 32, 345, 0.5, 0.5, 0.5, 1, 0, 6, 13, 0.78, 1128, 1128, 98, 193)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (43, 43, 2013, 364, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89.6, 126, 1, 1, 0, 3612, 0, 9, 8, 9, 4, 9, 4, 0, 663, 257, 17, 177, 0, 9, 0, 1, 60.2, 18, 336, 828, 0, 1, 0, 1, 58, 120, 26, 3, 110, 1, 160, 0, 30.95, 93.86, 933.85, 0, 5, 23, 15, 5, 0, 0, 0, 0, 0, 0, 1780, 827, 1839, 610, 3612, 478, 92, 135, 0.5, 0.2, 40, 60, 42, 369, 0.5, 0.5, 1, 1, 0, 21, 4, 0.61, 2220, 2220, 37, 234)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (44, 44, 2013, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92.6, 62, 0, 0, 0, 471, 1, 0, 0, 0, 0, 0, 0, 3, 231, 45, 9, 30, 0, 4, 0, 1, 42.2, 5, 109, 120, 0, 3, 0, 3, 9, 0, 4, 3, 20, 0, 20, 0, 0, 0, 175, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590, 158, 621, 265, 509, 199, 199, 265, 0.5, 0.4, 32, 57, 32, 119, 1, 1, 1, 1, 0, 10, 5, 0.79, 19, 49, 22, 53)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (45, 45, 2013, 696, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94.3, 147, 1, 0, 0, 5011, 0, 42, 31, 6, 4, 6, 6, 30, 170, 591, 77, 286, 0, 6, 0, 1, 50.6, 36, 698, 790, 0, 6, 0, 0, 103, 85, 49, 3, 169, 4, 306, 1, 0, 0, 579.93, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 956, 956, 983, 478, 3139, 290, 290, 444, 1, 0.4, 42, 436, 72, 507, 0.5, 0.5, 1, 1, 0, 13, 9, 0.68, 59, 59, 245, 427)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (46, 46, 2013, 953, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 206, 7, 5, 0, 10345, 0, 15, 30, 8, 6, 4, 0, 0, 343, 551, 61, 426, 0, 4, 0, 1, 55.7, 43, 1511, 2389, 0, 3, 0, 0, 82, 302, 24, 0, 86, 0, 164, 0, 0, 470.26, 1171.31, 0, 6, 28, 5, 1, 0, 0, 0, 0, 0, 0, 1279, 1186, 1489, 1480, 6150, 1320, 1320, 312, 1, 1, 74, 22, 74, 464, 1, 1, 0.5, 1, 0, 2, 1, 0.96, 669, 1027, 76, 190)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (47, 47, 2013, 219, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97.7, 94, 4, 3, 0, 1510, 0, 4, 4, 0, 0, 8, 1, 0, 72, 178, 45, 120, 0, 3, 0, 1, 60.7, 4, 385, 449, 0, 1, 0, 1, 102, 130, 5, 1, 115, 0, 113, 0, 0, 36.74, 275.87, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 479, 184, 479, 415, 1530, 250, 250, 365, 0.5, 0.8, 1, 7, 23, 181, 1, 1, 1, 1, 0, 17, 7, 0.54, 1627, 1627, 16, 95)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (48, 48, 2013, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92.4, 155, 4, 1, 0, 6043, 1, 10, 5, 0, 0, 19, 28, 9, 237, 451, 95, 301, 0, 1, 0, 1, 64.8, 91, 1637, 1753, 0, 8, 0, 3, 2, 46, 3, 5, 127, 0, 235, 0, 0, 0, 164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1123, 667, 1367, 607, 5975, 607, 607, 312, 1, 0.8, 40, 244, 45, 460, 1, 0.5, 1, 1, 0, 9, 44, 0.77, 0, 0, 61, 217)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (49, 49, 2013, 351, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90.9, 126, 0, 0, 0, 3922, 0, 5, 8, 1, 0, 1, 0, 0, 194, 243, 41, 134, 0, 9, 0, 1, 47.6, 28, 523, 1014, 0, 3, 0, 1, 16, 41, 8, 1, 74, 0, 122, 0, 37.51, 163.91, 1224.89, 0, 10, 7, 0, 2, 1, 0, 0, 0, 0, 0, 1728, 868, 1931, 454, 3537, 410, 410, 331, 0.5, 0.4, 12, 150, 42, 342, 1, 0.5, 1, 1, 0, 44, 44, 0.55, 1081, 1257, 52, 118)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (50, 50, 2013, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96.6, 104, 0, 0, 0, 6485, 0, 1, 7, 3, 0, 1, 0, 0, 232, 424, 164, 273, 0, 25, 0, 1, 44.4, 5, 1308, 1504, 0, 1, 0, 0, 15, 2, 5, 1, 23, 0, 75, 0, 0, 7, 139.04, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2067, 1104, 3930, 616, 6513, 228, 228, 321, 0.5, 0.4, 3, 2, 50, 399, 1, 1, 0.5, 0.5, 0, 38, 44, 0.52, 893, 910, 35, 295)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (51, 51, 2013, 371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92.6, 97, 0, 2, 0, 1921, 0, 3, 1, 0, 0, 0, 0, 0, 54, 206, 29, 133, 0, 10, 0, 1, 57.4, 21, 393, 509, 0, 1, 1, 1, 0, 18, 12, 0, 35, 1, 46, 29, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1426, 1026, 1656, 158, 1809, 143, 143, 68, 0.5, 0.4, 10, 0, 25, 228, 0.5, 0.5, 0.5, 0.5, 0, 45, 41, 0.44, 689, 836, 35, 52)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (52, 52, 2013, 428, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92.8, 105, 0, 0, 0, 4130, 1, 4, 5, 0, 0, 5, 0, 0, 118, 260, 13, 105, 0, 1, 0, 1, 52.8, 17, 733, 878, 13, 44, 0, 0, 0, 0, 23, 0, 40, 0, 52, 12, 0, 19.4, 22, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 547, 244, 728, 248, 4130, 90, 90, 40, 1, 0.2, 22, 37, 22, 318, 0.5, 0.5, 0.5, 0.5, 0, 49, 44, 0.74, 158, 158, 21, 72)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (53, 53, 2013, 738, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 82.5, 336, 4, 11, 0, 5933, 16, 32, 46, 18, 0, 12, 1, 5, 135, 490, 255, 361, 2, 9, 0, 1, 54.2, 23, 1401, 1474, 0, 9, 0, 0, 30, 374, 30, 7, 47, 3, 98, 4, 0, 0, 284.6, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 656, 291, 1780, 717, 5860, 200, 200, 93, 1, 0.2, 25, 0, 36, 477, 0.5, 0, 1, 1, 0, 49, 44, 0.59, 0, 0, 23, 400)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (54, 54, 2013, 181, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92.3, 136, 0, 0, 0, 1171, 9, 2, 24, 0, 0, 16, 23, 14, 162, 127, 64, 81, 3, 0, 0, 1, 50, 4, 160, 276, 1, 7, 0, 0, 53, 137, 17, 15, 9, 0, 65, 1, 0, 54, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1425, 962, 1618, 500, 1187, 300, 300, 60, 1, 0.2, 31, 197, 31, 197, 0.5, 0.5, 1, 0.5, 0, 14, 6, 0.55, 0, 0, 31, 104)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (55, 55, 2013, 678, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95.3, 76, 0, 1, 0, 6638, 1, 69, 11, 12, 7, 0, 0, 0, 830, 411, 100, 266, 1, 12, 0, 1, 50.4, 80, 1332, 1633, 0, 9, 0, 0, 0, 96, 19, 11, 108, 1, 138, 1, 53.57, 111.77, 302.71, 0, 4, 6, 12, 15, 0, 0, 0, 0, 0, 0, 2302, 2302, 2552, 1033, 6694, 717, 717, 213, 1, 1, 39, 443, 39, 443, 1, 1, 1, 1, 0, 49, 34, 0.55, 1537, 1993, 76, 227)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (56, 56, 2013, 611, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.5, 113, 0, 1, 0, 5502, 0, 6, 0, 0, 0, 1, 0, 0, 576, 397, 34, 172, 0, 7, 0, 1, 64.4, 93, 1051, 1412, 0, 4, 0, 0, 80, 228, 14, 3, 39, 0, 161, 1, 0, 13, 73.45, 0, 1, 0, 0, 4, 0, 0, 0, 0, 0, 0, 1782, 1163, 2104, 640, 6280, 270, 270, 320, 0.5, 0.8, 21, 300, 44, 456, 0.5, 0.5, 1, 1, 0, 25, 44, 0.57, 775, 817, 34, 275)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (57, 57, 2013, 480, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89.5, 103, 1, 2, 0, 5141, 0, 0, 0, 13, 4, 2, 0, 0, 454, 181, 1, 106, 0, 8, 0, 1, 52.2, 30, 832, 1126, 0, 0, 0, 0, 22, 101, 16, 1, 38, 0, 120, 0, 0, 49.75, 127.14, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2010, 1756, 2260, 404, 5116, 310, 296, 63, 1, 0.2, 28, 215, 38, 385, 0.5, 0.5, 1, 1, 0, 12, 20, 0.49, 1372, 1753, 24, 309)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20)
VALUES 
  (60, 7, 2016, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO

SET IDENTITY_INSERT dbo.raiting OFF
GO

--
-- Data for table dbo.region  (LIMIT 0,500)
--

SET IDENTITY_INSERT dbo.region ON
GO

INSERT INTO dbo.region (id, name_RU, name_UZ)
VALUES 
  (1, N'Ташкент', N'Toshkent')
GO

INSERT INTO dbo.region (id, name_RU, name_UZ)
VALUES 
  (2, N'Республика Каракалпакстан', N'Qoraqalpog’iston Respublikasi')
GO

INSERT INTO dbo.region (id, name_RU, name_UZ)
VALUES 
  (3, N'Андижанская область', N'Andijon viloyati')
GO

INSERT INTO dbo.region (id, name_RU, name_UZ)
VALUES 
  (4, N'Бухарская область', N'Buxoro viloyati')
GO

INSERT INTO dbo.region (id, name_RU, name_UZ)
VALUES 
  (5, N'Джизакская область', N'Jizzah viloyati')
GO

INSERT INTO dbo.region (id, name_RU, name_UZ)
VALUES 
  (6, N'Кашкадарьинская область', N'Qashqadaryo viloyati')
GO

INSERT INTO dbo.region (id, name_RU, name_UZ)
VALUES 
  (7, N'Навоийская область', N'Navoiy viloyati')
GO

INSERT INTO dbo.region (id, name_RU, name_UZ)
VALUES 
  (8, N'Наманганская область', N'Namangan viloyati')
GO

INSERT INTO dbo.region (id, name_RU, name_UZ)
VALUES 
  (9, N'Самаркандская область', N'Samarqand viloyati')
GO

INSERT INTO dbo.region (id, name_RU, name_UZ)
VALUES 
  (10, N'Сурхандарьинская область', N'Surxondaryo viloyati')
GO

INSERT INTO dbo.region (id, name_RU, name_UZ)
VALUES 
  (11, N'Сырдарьинская область', N'Sirdaryo viloyati')
GO

INSERT INTO dbo.region (id, name_RU, name_UZ)
VALUES 
  (12, N'Ташкентская область', N'Toshkent viloyati')
GO

INSERT INTO dbo.region (id, name_RU, name_UZ)
VALUES 
  (13, N'Ферганская область', N'Farg’ona viloyati')
GO

INSERT INTO dbo.region (id, name_RU, name_UZ)
VALUES 
  (14, N'Хорезмская область', N'Xorazm viloyati')
GO

SET IDENTITY_INSERT dbo.region OFF
GO

--
-- Data for table dbo.university  (LIMIT 0,500)
--

SET IDENTITY_INSERT dbo.university ON
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (1, N'Андижанский государственный университет', 3, NULL, N'Andijon davlat universiteti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (2, N'Андижанский машиностроительный институт', 3, NULL, N'Andijon mashinasozlik instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (3, N'Андижанский медицинский институт', 3, NULL, N'Andijon davlat tibbiyot instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (4, N'Андижанский сельскохозяйственный институт', 3, NULL, N'Andijon qishloq xo`jaligi instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (5, N'Бухарский государственный университет', 4, NULL, N'Buxoro davlat universiteti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (6, N'Бухарский инженерно-технологический институт', 4, NULL, N'Buxoro muhandislik-texnologiya instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (7, N'Бухарский медицинский институт', 4, NULL, N'Buxoro davlat tibbiyot instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (8, N'Высшая школа национального танца и хареографии', 1, NULL, N'Milliy raqs va xoreografiya oliy maktabi')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (9, N'Государственная консерватория Узбекистана', 1, NULL, N'O`zbekiston Davlat Konservatoriyasi')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (10, N'Гулистанский государственный университет', 11, NULL, N'Guliston davlat universiteti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (11, N'Джизакский государственный педагогический институт', 5, NULL, N'Jizzax davlat pedagogika instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (12, N'Джизакский политехнический институт', 5, NULL, N'Jizzax politexnika instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (13, N'Институт национального художества и дизайна', 1, NULL, N'Kamoliddin Behzod Nomidagi Milliy Rassomlik va Dizayn Instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (14, N'Каракалпакский государственный университет', 2, NULL, N'Qoraqalpoq davlat universiteti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (15, N'Каршинский государственный университет', 6, NULL, N'Qarshi davlat universiteti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (16, N'Каршинский инженерно-экономический институт', 6, NULL, N'Qarshi muhandislik - iqtisodiyot instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (17, N'Кокандский государственный педагогический институт', 6, NULL, N'Qo`qon davlat pedagogika instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (18, N'Навоинский государственный горный институт', 7, NULL, N'Navoiy davlat konchilik instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (19, N'Навоинский государственный педагогический институт', 7, NULL, N'Navoiy davlat pedagogika instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (20, N'Налоговая академия', 1, NULL, N'Soliq akademiyasi')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (21, N'Наманганский государственный университет', 8, NULL, N'Namangan davlat universiteti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (22, N'Наманганский инженерно-педагогический институт', 8, NULL, N'Namangan muhandislik-pedagogika instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (23, N'Наманганский инженерно-технологический институт', 8, NULL, N'Namangan muhandislik-texnologiya instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (24, N'Национальный университет Узбекистана', 1, NULL, N'Mirzo Ulug''bek nomidagi O''zbekiston Milliy universiteti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (25, N'Нукусский государственный педагогический институт', 2, NULL, N'Nukus davlat pedagogika instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (26, N'Самаркандский государственный архитектурно-строительный институт', 9, NULL, N'Samarqand davlat arxitektura-qurilish instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (27, N'Самаркандский государственный институт иностранных языков', 9, NULL, N'Samarqand davlat chet tillar instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (28, N'Самаркандский государственный университет', 9, NULL, N'Samarqand davlat universiteti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (29, N'Самаркандский институт экономики и сервиса', 9, NULL, N'Samarqand iqtisodiyot va servis instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (30, N'Самаркандский медицинский институт', 9, NULL, N'Samarqand davlat tibbiyot instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (31, N'Самаркандский сельскохозяйственный институт', 9, NULL, N'Samarqand qishloq xo`jalik instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (32, N'Ташкентская медицинская академия', 1, NULL, N'Toshkent tibbiyot akademiyasi')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (33, N'Ташкентский автомобильно-дорожный институт', 1, NULL, N'Toshkent avtomobil-yo`llari instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (34, N'Ташкентский архитектурно-строительный институт', 1, NULL, N'Toshkent arxitektura-qurilish instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (35, N'Ташкентский государственный аграрный университет', 1, NULL, N'Toshkent davlat agrar universiteti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (36, N'Ташкентский государственный институт востоковедения', 1, NULL, N'Toshkent davlat sharqshunoslik instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (37, N'Ташкентский государственный педагогический университет', 1, NULL, N'Toshkent Davlat pedagogika universiteti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (38, N'Ташкентский государственный технический университет', 1, NULL, N'Toshkent davlat texnika universiteti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (39, N'Ташкентский государственный экономический университет', 1, NULL, N'Toshkent Davlat Iqtisodiyot Universiteti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (40, N'Ташкентский государственный юридический университет', 1, NULL, N'Toshkent davlat yuridik universiteti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (41, N'Ташкентский институт инженеров железнодорожного транспорта', 1, NULL, N'Toshkent temir yo`l transporti muhandislari instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (42, N'Ташкентский институт ирригации и мелиорации', 1, NULL, N'Toshkent irrigatsiya va melioratsiya instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (43, N'Ташкентский институт текстильной и легкой промышленности', 1, NULL, N'Toshkent to''qimachilik va yengil sanoat instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (44, N'Ташкентский исламский университет', 1, NULL, N'Toshkent islom universiteti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (45, N'Ташкентский медицинский педиатрический институт', 1, NULL, N'Toshkent pediatriya tibbiyot instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (46, N'Ташкентский университет информационных технологий', NULL, NULL, N'Toshkent axborot texnologiyalari universiteti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (47, N'Ташкентский фармацевтический институт', 1, NULL, N'Toshkent farmatsevtika instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (48, N'Ташкентский финансовый институт', 1, NULL, N'Toshkent Moliya instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (49, N'Ташкентский химико-технологический институт', 1, NULL, N'Toshkent kimyo-texnologiya instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (50, N'Термезский государственный университет', 1, NULL, N'Termiz Davlat Universiteti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (51, N'Узбекский государственный институт искусства и культуры', 1, NULL, N'O`zbekiston davlat san`at va madaniyat instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (52, N'Узбекский государственный институт физической культуры', 1, NULL, N'O`zbekiston davlat jismoniy tarbiya instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (53, N'Узбекский государственный университет мировых языков', 1, NULL, N'O`zbekiston davlat jahon tillari universiteti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (54, N'Университет мировой экономики и дипломатии', 1, NULL, N'Jahon iqtisodiyoti va diplomatiya universiteti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (55, N'Ургенчский государственный университет', 14, NULL, N'Urganch davlat universiteti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (56, N'Ферганский государственный университет', 13, NULL, N'Farg`ona davlat universiteti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (57, N'Ферганский политехнический институт', 13, NULL, N'Farg`ona politexnika instituti')
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ)
VALUES 
  (58, N'Ташкентский государственный стоматологический институт', 1, NULL, N'Toshkent Davlat Stomatologiya Instituti')
GO

SET IDENTITY_INSERT dbo.university OFF
GO

--
-- Definition for indices : 
--

ALTER TABLE dbo.raiting
ADD CONSTRAINT unique_comulms 
UNIQUE NONCLUSTERED (year, id_university)
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

--
-- Definition for foreign keys : 
--

ALTER TABLE dbo.university
ADD FOREIGN KEY (id_branch) 
  REFERENCES dbo.branch (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.university
ADD FOREIGN KEY (id_region) 
  REFERENCES dbo.region (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.chislennost_pps_vuza
ADD FOREIGN KEY (id_university) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.citiruemost_publikaciy_pps_vuza
ADD FOREIGN KEY (id_university) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.darslik
ADD FOREIGN KEY (id_university) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.effektivnost_nir_dalolatnoma
ADD FOREIGN KEY (id_university) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.effektivnost_nir_patent
ADD FOREIGN KEY (id_university) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.effektivnost_nir_sertifikat
ADD FOREIGN KEY (id_university) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.granti_po_vidam_issledovaniy
ADD FOREIGN KEY (id_university) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.informaciya_o_dissertaciyah
ADD FOREIGN KEY (id_university) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.kolichestvo_izdannih_mejdunarodnih_statey
ADD FOREIGN KEY (id_university) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.kolichestvo_izdannih_mestnih_statey
ADD FOREIGN KEY (id_university) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.majmua
ADD FOREIGN KEY (id_university) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.monografiya
ADD FOREIGN KEY (id_university) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.nalichie_elektronnoy_literaturi
ADD FOREIGN KEY (id_university) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.nalichie_informacii_o_vuze_v_internete
ADD FOREIGN KEY (id_university) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.nalichie_multimedia_v_auditorii
ADD FOREIGN KEY (id_university) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.osnashennost_laboratoriy
ADD FOREIGN KEY (id_university) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.qullanma
ADD FOREIGN KEY (id_university) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.raiting
ADD FOREIGN KEY (id_university) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.stepen_vnedreniya_ikt
ADD FOREIGN KEY (id_university) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.summi_mejdunarodnih_grantov
ADD FOREIGN KEY (id_university) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.summi_respublikanskih_grantov
ADD FOREIGN KEY (id_university) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

