-- SQL Manager for SQL Server 4.3.0.47914
-- ---------------------------------------
-- Host      : (local)
-- Database  : URaiting
-- Version   : Microsoft SQL Server 2012 (SP3 11.0.6248.0


CREATE DATABASE URaiting
ON PRIMARY
  ( NAME = URaiting,
    FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\URaiting.mdf',
    SIZE = 4160 KB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 1 MB )
LOG ON
  ( NAME = URaiting_log,
    FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\URaiting_log.ldf',
    SIZE = 2880 KB,
    MAXSIZE = 2097152 MB,
    FILEGROWTH = 10 % )
COLLATE Cyrillic_General_CI_AS
GO

USE URaiting
GO

--
-- Definition for table __MigrationHistory : 
--

CREATE TABLE dbo.__MigrationHistory (
  MigrationId nvarchar(150) COLLATE Cyrillic_General_CI_AS NOT NULL,
  ContextKey nvarchar(300) COLLATE Cyrillic_General_CI_AS NOT NULL,
  Model varbinary(max) NOT NULL,
  ProductVersion nvarchar(32) COLLATE Cyrillic_General_CI_AS NOT NULL,
  CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED (MigrationId, ContextKey)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
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
  branch_id int NULL,
  region_id int NULL,
  branch_id1 int NULL,
  region_id1 int NULL,
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
  university_id int NULL,
  university_id1 int NULL,
  CONSTRAINT [PK_dbo.chislennost_pps_vuza] PRIMARY KEY CLUSTERED (id)
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
  fio nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  source nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  info nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  link nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  usage int NULL,
  year int NULL,
  id_university int NULL,
  university_id int NULL,
  university_id1 int NULL,
  CONSTRAINT [PK_dbo.citiruemost_publikaciy_pps_vuza] PRIMARY KEY CLUSTERED (id)
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
  fio nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  kod_spec nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  ucheb_name nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  ucheb_number nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  filename nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  year int NULL,
  id_university int NULL,
  university_id int NULL,
  university_id1 int NULL,
  CONSTRAINT [PK_dbo.darslik] PRIMARY KEY CLUSTERED (id)
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
  otm_name nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  fio nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  sertifikat_name nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  sertifikat_date nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  sertifikat_number nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  filename nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  id_university int NULL,
  year int NULL,
  university_id int NULL,
  university_id1 int NULL,
  CONSTRAINT [PK_dbo.effektivnost_nir_dalolatnoma] PRIMARY KEY CLUSTERED (id)
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
  otm_name nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  fio nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  sertifikat_name nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  sertifikat_date nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  sertifikat_number nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  filename nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  id_university int NULL,
  year int NULL,
  university_id int NULL,
  university_id1 int NULL,
  CONSTRAINT [PK_dbo.effektivnost_nir_patent] PRIMARY KEY CLUSTERED (id)
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
  otm_name nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  fio nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  sertifikat_name nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  sertifikat_date nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  sertifikat_number nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  filename nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  id_university int NULL,
  year int NULL,
  university_id int NULL,
  university_id1 int NULL,
  CONSTRAINT [PK_dbo.effektivnost_nir_sertifikat] PRIMARY KEY CLUSTERED (id)
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
  tormog_name nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  buyurtma_name nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  fundamental bit NULL,
  amaliy bit NULL,
  innovatsion bit NULL,
  lizenziya bit NULL,
  yarmarka bit NULL,
  summa float NULL,
  id_university int NULL,
  year int NULL,
  filename nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  university_id int NULL,
  university_id1 int NULL,
  CONSTRAINT [PK_dbo.granti_po_vidam_issledovaniy] PRIMARY KEY CLUSTERED (id)
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
  fio nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  work_place nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  iht_shifr nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  iht_nomi nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  disser_name nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  kengash_shifr nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  kengash_email nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  date nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  year int NULL,
  id_university int NULL,
  university_id int NULL,
  university_id1 int NULL,
  CONSTRAINT [PK_dbo.informaciya_o_dissertaciyah] PRIMARY KEY CLUSTERED (id)
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
  fio nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  country nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  journal nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  paper nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  paper_year nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  link nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  coauthor_count float NULL,
  filename nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  year int NULL,
  id_university int NULL,
  university_id int NULL,
  university_id1 int NULL,
  CONSTRAINT [PK_dbo.kolichestvo_izdannih_mejdunarodnih_statey] PRIMARY KEY CLUSTERED (id)
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
  fio nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  journal nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  paper nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  paper_year nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  link nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  coauthor_count float NULL,
  filename nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  year int NULL,
  id_university int NULL,
  university_id int NULL,
  university_id1 int NULL,
  CONSTRAINT [PK_dbo.kolichestvo_izdannih_mestnih_statey] PRIMARY KEY CLUSTERED (id)
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
  fio nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  kod_spec nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  metodich_name nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  metodich_number nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  filename nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  year int NULL,
  id_university int NULL,
  university_id int NULL,
  university_id1 int NULL,
  CONSTRAINT [PK_dbo.majmua] PRIMARY KEY CLUSTERED (id)
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
  fio nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  kod_spec nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  monograf_name nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  monograf_year nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  filename nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  year int NULL,
  id_university int NULL,
  university_id int NULL,
  university_id1 int NULL,
  CONSTRAINT [PK_dbo.monografiya] PRIMARY KEY CLUSTERED (id)
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
  napravlenie nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  nazvaniya_predmetov nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  osn_literatura nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  nalichie_uzb bit NULL,
  nalichie_rus bit NULL,
  nalichie_angl bit NULL,
  university_id int NULL,
  university_id1 int NULL,
  CONSTRAINT [PK_dbo.nalichie_elektronnoy_literaturi] PRIMARY KEY CLUSTERED (id)
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
  vuz_name nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  vuz_web nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  vuz_int_rate float NULL,
  vuz_uz_rate float NULL,
  university_id int NULL,
  university_id1 int NULL,
  CONSTRAINT [PK_dbo.nalichie_informacii_o_vuze_v_internete] PRIMARY KEY CLUSTERED (id)
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
  vuz_name nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  rooms_total_count int NULL,
  rooms_with_multimedia int NULL,
  university_id int NULL,
  university_id1 int NULL,
  CONSTRAINT [PK_dbo.nalichie_multimedia_v_auditorii] PRIMARY KEY CLUSTERED (id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table osnashennost_irc_literaturoy : 
--

CREATE TABLE dbo.osnashennost_irc_literaturoy (
  id int IDENTITY(1, 1) NOT NULL,
  id_university int NULL,
  year int NULL,
  napravlenie nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  nazvaniya_predmetov nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  osn_literatura nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  nalichie_uzb bit NULL,
  nalichie_rus bit NULL,
  nalichie_angl bit NULL,
  university_id int NULL,
  university_id1 int NULL,
  CONSTRAINT [PK_dbo.osnashennost_irc_literaturoy] PRIMARY KEY CLUSTERED (id)
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
  fan_name nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  lab_asbob_name nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  lab_holat nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  yordam_asbob_name nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  yordam_holat nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  university_id int NULL,
  university_id1 int NULL,
  CONSTRAINT [PK_dbo.osnashennost_laboratoriy] PRIMARY KEY CLUSTERED (id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table osnashennost_laboratornim_oborudovaniem : 
--

CREATE TABLE dbo.osnashennost_laboratornim_oborudovaniem (
  id int IDENTITY(1, 1) NOT NULL,
  id_university int NULL,
  year int NULL,
  nazvaniya_predmetov_s_lab nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  kolichestvo_lab_zanyatiy int NULL,
  kolichestvo_polnostyu_osnashennih_lab int NULL,
  university_id int NULL,
  napravlenie nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  university_id1 int NULL,
  CONSTRAINT [PK_dbo.osnashennost_laboratornim_oborudovaniem] PRIMARY KEY CLUSTERED (id)
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
  fio nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  kod_spec nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  posobie_name nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  posobie_number nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  filename nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  year int NULL,
  id_university int NULL,
  university_id int NULL,
  university_id1 int NULL,
  CONSTRAINT [PK_dbo.qullanma] PRIMARY KEY CLUSTERED (id)
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
  p float NULL,
  px float NULL,
  py float NULL,
  n1 float NULL,
  n2 float NULL,
  n3 float NULL,
  n41 float NULL,
  n51 float NULL,
  n42 float NULL,
  n52 float NULL,
  n43 float NULL,
  n53 float NULL,
  i2 float NULL,
  t float NULL,
  s1 float NULL,
  s2 float NULL,
  s3 float NULL,
  p1 float NULL,
  p2 float NULL,
  p3 float NULL,
  p4 float NULL,
  p5 float NULL,
  p5_1 float NULL,
  p6 float NULL,
  p6_1 float NULL,
  k1 float NULL,
  k float NULL,
  ty float NULL,
  p7 float NULL,
  p8 float NULL,
  pz float NULL,
  p9 float NULL,
  tsi float NULL,
  tsti float NULL,
  r1 float NULL,
  r float NULL,
  p10 float NULL,
  p11 float NULL,
  p1_2 float NULL,
  p1_3 float NULL,
  p1_4 float NULL,
  p1_5 float NULL,
  s4 float NULL,
  s5 float NULL,
  s7 float NULL,
  s8 float NULL,
  s9 float NULL,
  d float NULL,
  z float NULL,
  v float NULL,
  t4 float NULL,
  t5 float NULL,
  t6 float NULL,
  tL float NULL,
  i float NULL,
  t7 float NULL,
  t8 float NULL,
  ya float NULL,
  kL float NULL,
  a1 float NULL,
  a2 float NULL,
  a3 float NULL,
  a4 float NULL,
  a5 float NULL,
  k2 float NULL,
  m float NULL,
  L float NULL,
  x1 float NULL,
  x2 float NULL,
  x3 float NULL,
  x4 float NULL,
  x5 float NULL,
  x6 float NULL,
  x7 float NULL,
  x8 float NULL,
  x9 float NULL,
  x10 float NULL,
  x11 float NULL,
  x12 float NULL,
  x13 float NULL,
  x14 float NULL,
  x15 float NULL,
  x16 float NULL,
  ra float NULL,
  u float NULL,
  s float NULL,
  p17 float NULL,
  p18 float NULL,
  p19 float NULL,
  p20 float NULL,
  university_id int NULL,
  university_id1 int NULL,
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
  university_id int NULL,
  university_id1 int NULL,
  CONSTRAINT [PK_dbo.stepen_vnedreniya_ikt] PRIMARY KEY CLUSTERED (id)
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
  grant_name nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  grant_summa float NULL,
  buyurtma_name nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  buyurtma_summa float NULL,
  id_university int NULL,
  year int NULL,
  filename nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  university_id int NULL,
  university_id1 int NULL,
  CONSTRAINT [PK_dbo.summi_mejdunarodnih_grantov] PRIMARY KEY CLUSTERED (id)
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
  iqtisodiyot_tarmogi nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  buyurtma_name nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  buyurtma_summa float NULL,
  grant_name nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  grant_summa float NULL,
  id_university int NULL,
  year int NULL,
  filename nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  university_id int NULL,
  university_id1 int NULL,
  CONSTRAINT [PK_dbo.summi_respublikanskih_grantov] PRIMARY KEY CLUSTERED (id)
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
-- Definition for stored procedure P3_1_citiruemost_publikaciy_pps_vuza : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

--EXEC P3_11 @year = 2014, @id_university=1


--3.1 or i14
CREATE PROCEDURE dbo.P3_1_citiruemost_publikaciy_pps_vuza

--входные параметры
@id_university int,
@year int
AS

--count для проверки, есть ли в таблице raiting записи для 
--данного университета за данный год, если есть, то сохранить его id

DECLARE  @count int, @id int, @count_uz_rus int, @count_angl int

begin 
--SET @count_uz_rus=(SELECT sum(usage) FROM citiruemost_publikaciy_pps_vuza WHERE id_university=@id_university AND year=@year)
--SET @count_ang=(SELECT sum(usage) FROM citiruemost_publikaciy_pps_vuza WHERE id_university=@id_university AND year=@year)

SET @id=(SELECT id FROM raiting
	WHERE id_university=@id_university AND year=@year)
SET @count=(SELECT count(id) FROM raiting
	WHERE id_university=@id_university AND year=@year)
if (@count=0)
INSERT INTO raiting(s4, s5, year, id_university) VALUES (@count_uz_rus, @count_angl, @year, @id_university)
else UPDATE raiting set s4=@count_uz_rus, s5=@count_angl WHERE id=@id
end
GO

--
-- Definition for stored procedure P3_2_kolichestvo_izdannih_statey : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

--3.2 or i15
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
-- Definition for stored procedure P3_3_kolichestvo_sotrudnikov_vuza : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

--3.3 or i16
CREATE PROCEDURE dbo.P3_3_kolichestvo_sotrudnikov_vuza
@id_university int,
@year int
AS
DECLARE  @count int, @id int, @count_dis int, @count_uch int, @count_neuch int
begin 
SET @count_dis=(SELECT count(disser_name) FROM informaciya_o_dissertaciyah
	WHERE id_university=@id_university AND year=@year)
SET @count_uch=(SELECT as_fan_doc+as_fan_nom FROM chislennost_pps_vuza
	WHERE id_university=@id_university AND year=@year)
SET @count_neuch=(SELECT as_doz+as_prof FROM chislennost_pps_vuza
	WHERE id_university=@id_university AND year=@year)
SET @id=(SELECT id FROM raiting
	WHERE id_university=@id_university AND year=@year)
SET @count=(SELECT count(id) FROM raiting
	WHERE id_university=@id_university AND year=@year)
if (@count=0)
INSERT INTO raiting(d, z, v, year, id_university) VALUES (@count_dis, @count_uch, @count_neuch, @year, @id_university)
else UPDATE raiting set d=@count_dis, z=@count_uch, v=@count_neuch WHERE id=@id
end
GO

--
-- Definition for stored procedure P3_4_summa_finansovih_sredstv_na_issledovaniya : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

--3.4 or i17
CREATE PROCEDURE dbo.P3_4_summa_finansovih_sredstv_na_issledovaniya
@id_university int,
@year int
AS
DECLARE  @count int, @id int, @sum_in_gr float, @sum_in_zak float, @sum_gos_gr float, @sum_liz float
begin 
SET @sum_in_gr=(SELECT sum(grant_summa) FROM summi_mejdunarodnih_grantov
	WHERE id_university=@id_university AND year=@year)
SET @sum_in_zak=(SELECT sum(buyurtma_summa) FROM summi_mejdunarodnih_grantov
	WHERE id_university=@id_university AND year=@year)
SET @sum_gos_gr=(SELECT sum(grant_summa) FROM summi_respublikanskih_grantov
	WHERE id_university=@id_university AND year=@year)
SET @sum_liz=(SELECT sum(buyurtma_summa) FROM summi_respublikanskih_grantov
	WHERE id_university=@id_university AND year=@year)
SET @id=(SELECT id FROM raiting
	WHERE id_university=@id_university AND year=@year)
SET @count=(SELECT count(id) FROM raiting
	WHERE id_university=@id_university AND year=@year)
if (@count=0)
INSERT INTO raiting(t4, t5, t6, tL, year, id_university) VALUES (@sum_in_gr, @sum_in_zak, @sum_gos_gr, @sum_liz, @year, @id_university)
else UPDATE raiting set t4=@sum_in_gr, t5=@sum_in_zak, t6=@sum_gos_gr, tL=@sum_liz WHERE id=@id
end
GO

--
-- Definition for stored procedure P3_5_effektivnost_provodimih_nir : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

--3.5 or i18
CREATE PROCEDURE dbo.P3_5_effektivnost_provodimih_nir
@id_university int,
@year int
AS
DECLARE  @count int, @id int, @count_inov int, @count_pat int, @count_raz int, @count_yar int, @count_lic int
begin 
SET @count_inov=(SELECT count(id) FROM granti_po_vidam_issledovaniy
	WHERE id_university=@id_university AND year=@year AND innovatsion=1)
SET @count_pat=(SELECT count(id) FROM effektivnost_nir_patent
	WHERE id_university=@id_university AND year=@year)
SET @count_raz=(SELECT count(id) FROM effektivnost_nir_dalolatnoma
	WHERE id_university=@id_university AND year=@year)
SET @count_yar=(SELECT count(id) FROM granti_po_vidam_issledovaniy
	WHERE id_university=@id_university AND year=@year AND yarmarka=1)
SET @count_lic=(SELECT count(id) FROM granti_po_vidam_issledovaniy
	WHERE id_university=@id_university AND year=@year AND lizenziya=1)
SET @id=(SELECT id FROM raiting
	WHERE id_university=@id_university AND year=@year)
SET @count=(SELECT count(id) FROM raiting
	WHERE id_university=@id_university AND year=@year)
if (@count=0)
INSERT INTO raiting(i, t7, t8, ya, kL, year, id_university) VALUES (@count_inov, @count_pat, @count_raz, @count_yar, @count_lic, @year, @id_university)
else UPDATE raiting set i=@count_inov, t7=@count_pat, t8=@count_raz, ya=@count_yar, kL=@count_lic WHERE id=@id
end
GO

--
-- Definition for stored procedure P4_1_osnashennost_irc_literaturoy : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

--4.1 or i20
CREATE PROCEDURE dbo.P4_1_osnashennost_irc_literaturoy
@id_university int,
@year int
AS
DECLARE  @count int, @id int, @count_need int, @count_book int, @count_el int
begin 
SET @count_need=(SELECT count(osn_literatura) FROM osnashennost_irc_literaturoy
	WHERE id_university=@id_university AND year=@year)
SET @count_book=(SELECT count(nalichie_uzb) FROM osnashennost_irc_literaturoy WHERE id_university=@id_university AND year=@year AND nalichie_uzb=1)+
				(SELECT count(nalichie_rus) FROM osnashennost_irc_literaturoy WHERE id_university=@id_university AND year=@year AND nalichie_rus=1)+
				(SELECT count(nalichie_angl) FROM osnashennost_irc_literaturoy WHERE id_university=@id_university AND year=@year AND nalichie_angl=1)
SET @count_el=(SELECT count(nalichie_uzb) FROM nalichie_elektronnoy_literaturi WHERE id_university=@id_university AND year=@year AND nalichie_uzb=1)+
			  (SELECT count(nalichie_rus) FROM nalichie_elektronnoy_literaturi WHERE id_university=@id_university AND year=@year AND nalichie_rus=1)+
			  (SELECT count(nalichie_angl) FROM nalichie_elektronnoy_literaturi WHERE id_university=@id_university AND year=@year AND nalichie_angl=1)
SET @id=(SELECT id FROM raiting
	WHERE id_university=@id_university AND year=@year)
SET @count=(SELECT count(id) FROM raiting
	WHERE id_university=@id_university AND year=@year)
if (@count=0)
INSERT INTO raiting(L, k2, m, year, id_university) VALUES (@count_need, @count_book, @count_el, @year, @id_university)
else UPDATE raiting set L=@count_need, k2=@count_book, m=@count_el WHERE id=@id
end
GO

--
-- Definition for stored procedure P4_2_stepen_vnedreniya_ikt : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

--4.2 or i21
CREATE PROCEDURE dbo.P4_2_stepen_vnedreniya_ikt
@id_university int,
@year int
AS
DECLARE  @count int, @id int, @x1 float,@x2 float,@x3 float,@x4 float,@x5 float,@x6 float,@x7 float,@x8 float,@x9 float,@x10 float,@x11 float,@x12 float,@x13 float,@x14 float,@x15 float,@x16 float
SET @x1=(SELECT pc_count FROM stepen_vnedreniya_ikt WHERE id_university=@id_university AND year=@year)
SET @x2=(SELECT students_count FROM stepen_vnedreniya_ikt WHERE id_university=@id_university AND year=@year)
SET @x3=(SELECT pc_in_local_netw_count FROM stepen_vnedreniya_ikt WHERE id_university=@id_university AND year=@year)
SET @x4=(SELECT pc_with_intenet_count FROM stepen_vnedreniya_ikt WHERE id_university=@id_university AND year=@year)
SET @x5=(SELECT last_years_pc_count FROM stepen_vnedreniya_ikt WHERE id_university=@id_university AND year=@year)
SET @x6=(SELECT internet_speed FROM stepen_vnedreniya_ikt WHERE id_university=@id_university AND year=@year)
SET @x7=(SELECT admin_emails_count FROM stepen_vnedreniya_ikt WHERE id_university=@id_university AND year=@year)
SET @x8=(SELECT pps_emails_count FROM stepen_vnedreniya_ikt WHERE id_university=@id_university AND year=@year)
SET @x9=(SELECT admins_count FROM stepen_vnedreniya_ikt WHERE id_university=@id_university AND year=@year)
SET @x10=(SELECT pps_count FROM stepen_vnedreniya_ikt WHERE id_university=@id_university AND year=@year)
SET @x11=(SELECT web_service_types FROM stepen_vnedreniya_ikt WHERE id_university=@id_university AND year=@year)
SET @x12=(SELECT study_monitoring FROM stepen_vnedreniya_ikt WHERE id_university=@id_university AND year=@year)
SET @x13=(SELECT research_monitoring FROM stepen_vnedreniya_ikt WHERE id_university=@id_university AND year=@year)
SET @x14=(SELECT pps_baza FROM stepen_vnedreniya_ikt WHERE id_university=@id_university AND year=@year)
SET @x15=(SELECT student_baza FROM stepen_vnedreniya_ikt WHERE id_university=@id_university AND year=@year)
SET @x16=(SELECT finance FROM stepen_vnedreniya_ikt WHERE id_university=@id_university AND year=@year)
begin 
SET @id=(SELECT id FROM raiting
	WHERE id_university=@id_university AND year=@year)
SET @count=(SELECT count(id) FROM raiting
	WHERE id_university=@id_university AND year=@year)
if (@count=0)
INSERT INTO raiting(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,year,id_university) 
VALUES (@x1,@x2,@x3,@x4,@x5,@x6,@x7,@x8,@x9,@x10,@x11,@x12,@x13,@x14,@x15,@x16, @year, @id_university)
else UPDATE raiting set x1=@x1, x2=@x2, x3=@x3, x4=@x4, x5=@x5, x6=@x6, x7=@x7, x8=@x8, x9=@x9,
x10=@x10, x11=@x11, x12=@x12, x13=@x13, x14=@x14, x15=@x15, x16=@x16 WHERE id=@id
end
GO

--
-- Definition for stored procedure P4_3_dostupnost_info_o_vuze_v_internete : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

--4.3 or i22
CREATE PROCEDURE dbo.P4_3_dostupnost_info_o_vuze_v_internete
@id_university int,
@year int
AS
DECLARE  @count int, @id int, @in_rate int, @uz_rate int, @quality float
begin 
SET @in_rate=(SELECT vuz_int_rate FROM nalichie_informacii_o_vuze_v_internete
	WHERE id_university=@id_university AND year=@year)
SET @uz_rate=(SELECT vuz_uz_rate FROM nalichie_informacii_o_vuze_v_internete
	WHERE id_university=@id_university AND year=@year)
--SET @quality
SET @id=(SELECT id FROM raiting
	WHERE id_university=@id_university AND year=@year)
SET @count=(SELECT count(id) FROM raiting
	WHERE id_university=@id_university AND year=@year)
if (@count=0)
INSERT INTO raiting(ra, u, s, year, id_university) VALUES (@in_rate, @uz_rate, @quality, @year, @id_university)
else UPDATE raiting set ra=@in_rate, u=@uz_rate, s=@quality WHERE id=@id
end
GO

--
-- Definition for stored procedure P4_4_stepen_osnashennosti_laboratoriy : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

--4.4 or i23
CREATE PROCEDURE dbo.P4_4_stepen_osnashennosti_laboratoriy
@id_university int,
@year int
AS
DECLARE  @count int, @id int, @count_osn_lab int, @count_subj_lab int, @count_auditorii int, @count_audit_fond int
begin 
SET @count_osn_lab=(SELECT sum(kolichestvo_polnostyu_osnashennih_lab) FROM osnashennost_laboratornim_oborudovaniem
	WHERE id_university=@id_university AND year=@year)
SET @count_subj_lab=(SELECT count(nazvaniya_predmetov_s_lab) FROM osnashennost_laboratornim_oborudovaniem
	WHERE id_university=@id_university AND year=@year)
SET @count_auditorii=(SELECT rooms_with_multimedia FROM nalichie_multimedia_v_auditorii
	WHERE id_university=@id_university AND year=@year)
SET @count_audit_fond=(SELECT rooms_total_count FROM nalichie_multimedia_v_auditorii
	WHERE id_university=@id_university AND year=@year)
SET @id=(SELECT id FROM raiting
	WHERE id_university=@id_university AND year=@year)
SET @count=(SELECT count(id) FROM raiting
	WHERE id_university=@id_university AND year=@year)
if (@count=0)
INSERT INTO raiting(p17, p18, p19, p20, year, id_university) VALUES (@count_osn_lab, @count_subj_lab, @count_auditorii, @count_audit_fond, @year, @id_university)
else UPDATE raiting set p17=@count_osn_lab, p18=@count_subj_lab, p19=@count_auditorii, p20=@count_audit_fond WHERE id=@id
end
GO

--
-- Data for table dbo.__MigrationHistory  (LIMIT 0,500)
--

INSERT INTO dbo.__MigrationHistory (MigrationId, ContextKey, Model, ProductVersion)
VALUES 
  (N'201701081959024_AutomaticMigration', N'RatingUniversity.Models.TablesContext', 0x1F8B0800000000000400EDBDDD92E336F22F78BF11FB0E1D7DB5FB8F39AE96AAAAABDA619F133D6EDB5165BBEDE9AE39B1D33708488424B448424D9072A94EEC93EDC53ED2BEC20224259120482209E89B311DE312814C2412BF4C7C27FEBFFFE7FFFDE17F3C07FEAB25893865E18FAF07DFBD79FD8A8463E6D170FAE3EB249EFCB7FBD7FFE3BFFFEFFFDB0F3F7BC1F3ABFFB9CE772DF309CA90FFF87A16C78BEFAFAEF8784602CCBF0BE838629C4DE2EFC62CB8C21EBB1ABE79F3EE6A30B82282C56BC1EBD5AB1F3E25614C0392FE103F7F62E1982CE204FB7F308FF83CFF2E523EA75C5F7DC401E10B3C263FBEFE846321DBBF439A0A1DAFBECB485EBF7AEF532CC4F94CFCC9EB57380C592C72B2F0FB7F73F2398E5838FDBC101FB0FFB45A10916F827D4EF24A7CBFCD6E5A9F3743599FAB2DE19AD538E1310B800C07D7B982AE54F24E6A7EBD51A050E1CF42D5F14AD63A55E38FAF47110EC7B3D7AFD4A2BEFFC98F64B65A1D7F9751FEE3959AFE8F0D320480E4FFFEF1EAA7C48F9388FC1892248EB0FF8F577F25239F8E7F23AB273627E18F61E2FB453185A022ADF4417CFA2B620B12C5AB4F64920B4FBDD7AFAECA74572AE186AC409355EC218CAF87AF5F7D1485E3914F36282828E173CC22F22B09498463E2FD85E39844A2111F3C92EAB152BA525628FE7F5D9A809D50D3EB577FE0E7DF49388D673FBE167FBE7EF50B7D26DEFA4B2E8150A6B03A41144709A914F2112FE934954F292ED9B4C1EB579F889F66E133BAC8ECE0BB6D325AB7FA2F110B3E31BF449B27A2271C4D492CC46775393EB3241A2BF2FD70B5855823F08AC2C2C19714E0D603B01180E8D3BFDD63B05227149169EAA14A556BA55A03114095D6E9DF5FF668576B21ED6D6A6D31F536B5B63A53D9C633CA7D2200C363B45870B44C5EB056525D465434C2ADDC2D592B9EA12DBFCE4F34D689C654345090F293863AC763BA6AA95E334D5D4D8DA9AA95362785D6DFC31117FCB4F5CCD36AEA534DADC8ADC902958F4C26641ED365DAE0218D90877D26240D850FD70ADD4450531343924AF54CE9ACEB2CC68FC2079B5537CB6B5AD34AEEF64A5649ACEBC745229D08541BD6719BDFB49E5A8AF6BAEAC9A0F59D0A771B53B46068493D1C20CA850BF3D81287543F7A6A22A8A9B12149A5CAA674D03AD370C2A240BA298C18F2045B9198FED4776E0DF96B6A6C4651A9B02119B4BE7326C67833C2E32543F4C513C32A3A4301F9EA25218E98277F7131CE22FA0637A6AED14517FA8A663A3171A4271E77D350910EA69B1A4A53ADD49143F511E0AF41A2EFC9B2A49A5A55122B8257738065632113FE61226C432FE036BD4E4A6D8EAAA8FA6C5079432C9B8A12447CE1C6232646892BE4D3584E6892886AEBD04253532F73AA4A5D01A49DEBBFF17154B8383142246829BEC9E91C8949B31A1A49DBB4614A5CAF14630E9D751388E9390D8847B1608D138F8A592F6DC1869EA64D1BAD54F56A682785D69FF110F3593E71A2D1780B39A677B84D0435353724A954DB94CEAACE3E1E31C153E8D1A0BE85CC2675D5676FAE670D8D9B3A8634404CFC9D6423391200AA5CA10569A089DA50218D2CA0FAF92617BCC29AB9E23AB1A6869AE44A157479A0324698C6E9BA9246C43CAD46C26A6A45404D16B07CF9729B4EBC34A94E3A35B12A5C250754361E930509D132245E44423980A073FD2C529BB346F2B6BC958AB41280EB9504015546DFE95C8D2DF5B5ABCF5F5747238A6A4DCDC8BAD537223C5FDF0AF9DCA8C635148D756EA7A9A9B501A1D53E857E8115BE63A1E3D3EF5D34948539477C16CBF527C0EE8018AE871EE3B02D058E593CC22B100DE668824314B2A00B99C7C650B245C426501A8FBD4049E6A29D309448B415B095E0D5113450AD091278750411B43A9CC1AB2368A0D51124F0EA08226875A85772D500CA15C1513341D7CD6B87DB57EA269CE97657B7EEA36D2FAB434FD2CCB2EF541ACA9A50B6F3CD70BEC6D78EF7DCC3C9EEEBE2D370BEF342128EA7C4B19FE9EED23A7BA85DEF4057FC167CF3BA930BDB6C47C35D554EDABBA403BBA439F3105F90F1EE4D793C2323B49B736FFAA2926044A29D1736A16284B08F5A1DA367039F39513D55C3B1944E1EA9F9000ADC4D35F1EB7D5743592C0EF663EC7B19B76D0F96ECA54E85F23C1CEFB5BC73F39AC73863DDE1A137D5BF420FCBB971BAEB13700EFC6DC6AA77B5BDABED5D6DEF6AED5DADED81DB56075B7F46D78D6F2D9EBE75E05FB7EC7A1FDBFBD8DEC7F63ED6DEC7BA3AF0DFEA6B9BEF0974F2B7CDA7FFE10EB7895FEF711BCA12D4019BEEC7418D925512C56246B41F179F840209420BD85F97F54F26008EC3D6FDF400FB740524A2A2499638E6853B9886943E7D21E14B7A9E1C44B7C25180A339944C9EDAD9D07C6002E60775877B73F15DFDEE0EEF1DA99E177A5FA993EB6DBC8404F7BC0DEC7AC77BE011E8DF2C9AA3858FF7B1193E8B91309AC9EE0781B2A4900574E7056558DE4F6725903EC57CB62715AE4B2301A6FEEEF5B88FC9C8316EDBEDECFAA6DA6F006F7D76EA36007739E19D8831F3BE4B3970973266491847AB9D97F355403CC4BB774E0BBCD8C3C2455A0A2AFAA8D33E3036663889672C42291C6093898B3EC971903BED6A77617531DE65E751BEE0EEACDB28B2ED3B8C037718BD23EF1DF9E53872F7A1370C9D775BE48E4E6E7B1D8703EE9933CADEF95ECAB1E380C4CC13B8DCCF6AC9B6B433DB773C464F078CB8A3FAABFA983CDD5C5231FC4E07BFB425EF9DD3C538A7BCD1F7E49CD6A5ED659478D9AEA96BACAD8A936A0EC9D5C953B506DE827BAF1696BD473B8E3DEC102F22BC147649776F96217E49B787315A44C49303A3E5CECB643CDCA20EEFA18A39EA939711F0ACC386344A7857521C4E5B0F907475603B0FB4A73ABA0E31FAEC9C5F4BD43D0B1FD8C8B97785C7E10A45BBEC67D4250BFA9B8CF6528E40198A0A9BDA66CB659252FC3320B4F626FB895759EB5BC0112FED5C4C5DF04A0BDFA267D93B950B732A11630147B1D0905F5E20371233A3FE9BC6B3029E763311DA7950D65A5B378FE7DAC9C89B23B4C22DBC895F6FDEC761DEFDF4A99F3E99B9BD1D8663561D1E348CB3BDB72BC566B6F474055EBD973B0E2F97C6AEDCC72046E80A613E627B8A0A248B9BC9D807BB5F916691BC24B1C7BAE525EEA87A4EBCA09B20ED8DDEAF25B0BB43CFA789D8EECA115658F77EF138FCA2664486B86CB73DEC476E4FD6482FF682C395D01EACBE45260BE64BD0AD12B4C1209D15ABE27612B8F7970BCCBC84D1E3079D9CC6F61903B85758D3F6667F29A700168CB3919890EC65A4B029AC3FA0B4F353001D1E2C513D57D3A3269D5CD3E6F512B867CA497BC7741CE391056C9767F10CCCBF82E50F07C0FC4360FE6B60FE1BA840B750821B68156EA10437D04ADF0209285022E0497C0E5429078AC381D55D00E55900E55940E5B901E6BF85E647D01ABF85E687963087E6072214E8B71677C0FCF7C0FC2FC0FCEF80F5E5144A10032922608B4550A37C032580827A80A0863C4060D782A0C63C404073E6C01238943FD01638D0163810DB1E2C3BD0D29640BB012A3F062A3F067ADEF87760570F640FC4420CC4C20A18EA690EAC2E06FA080CF41018E81F30103E18089F3950FE00961DA8FD67A0F69F81D23F03B5FF0CD4FE3350FBCF40E37D065AD733D0BA9E819EF619DA073F43FBE0E701B48907D0361E401B79006DE501B09923A0934B80FD2974C0011DEB0EA083DD0110778B611BEEBA2EBE819FE25597DE1A5EEBEDB6F296BFCBDB61E12DA5ECD7DD1A37E702823EFD7B0F67964439FFFE723C7BECC0279D2B20AF7DF4B913C66BDE7786435ECBA8B7802359791E7738742C8868887C36C63E0A49FC773716E9A16579645FB0E8C0C1C73C4EAFBF72D4A912EBCB027263900067A7D80B8402D2C886BC4BE517BC3BF1DF642483652FE998A0589001070E3C4EBC150A58981EA2960E0F3408225C687C3CEBCC40567D845F80632929B47C89014E39A1210EB7A14901CDDBB561E15479ED8C48BBF62D5A275CF7567B4BDE4ACFD34A60D711D5BF7BDFA93BAA67D7774A0D65A53ADACFC186ACA80E31C4F71BFC7D535A1FED1CE88CEA4DB0CE251951541D93199903F7243AC6FC75DE90CF5D38A81A86BD8B6A2AEB5B4C39F3E88AC528C6F2CD89DD07F03E1D97730A0EBC778B7586DFE818DB696A5CA301A195737C1874F1800F8383BAB9870F70372769FA05B26EE53C40F71F1EA0FB0F0FD0FD87FFFCFCFE53833701E01F79CC97F70CC4CC9023F99AB90C86924D98564937E36864D95B4E6F394E2D07B8158D23E0212F87A6F6F4E7D3FBDF3BDA544ADB1B4F6F3C4E8D07D8ED3C40B7BD1FA0DBDE0FD06DEF07E846F30374A3F901BAD17C481FF3A69B7B79D37B960BF22C7B38C72B2005F45E0E6D404C1B5F045445DB23D9D43C4EC3702528DFC8E8B6EC65C2B7B7A2DE8A1C5BD1E9743D1D9752FAB5944B321AD1DE07EB1706888D4938C768BEC47EFA96B774DF4BBA48F83CA473B644111EB198C9B71AFD150E3A854FEC504C6F00976500A7E3D287DD2C60D823FAA2103D842F54406F723AC474BE3C1DCB602C02DC11CB42D2141C7447D4B733EEEDE2B2EC028A72F00ADE213B87EB6E6672DD1BC14519C135D806AEE10BDFD7F0956FF0D2F73570EDDBA1A5A16244B5CD6A1312FD8CB0BFAC9709F134C25E479334E6DFDB6E6FBB276788E06DAE43F6AA37DD4CF8A6B7CC8BB24C68C429490127011AB3432B40631A53A1894086D1CC8F008EE94A1E2AEA68200D1C7BDBE96DC7A92180CF491CB2C7B9ED6650B7BDD55C94D54043164A0A3809D8D0A051081DDA0DD23E439F3D3FDFD1A69A58F6F6D6DBDB818D077C9CEF90FDDADB6E36F8B6B7B38BB2B3B7603B7B0BEFD7DE1E6C26F5B6BCB6C7E4EE54760A218905BCBF7AF926159E77341763FEBD5DF576E5D448C067C50FD91BDD7533AFBBDE6A2ECA6AEEC0567307EF8DEEC08676071E28DE1D6CB7EC2EBBD88DD2D03A9C2DE5042A229EE89FE46344E97DC46C434BFC13BFC26495208FACE4693CF9684F473BB52BB4B7F2DECA4FCE64C157AF0ED9FFDE77B3EBFBDE322FCA32EFC196790FEF7FEFC1C67C0F36E67BB031DF03D7761CDA2622930999C77499BE9AB788D892793448FB4BD9598A3FD223F31D4DD8907B6FE9BDA55F80D982EF3F1FB2D77ED7CDE4DFF5B67C41B6FC0568C95F8076FC0568C55F8036FC0568C15FA006FFEE60972DDEE5717F50F1595C5A7A3DDBFA6D6B7829BD77E8BD43EF1D0A7DEC890C07BA5D47EC6F235E92B9439FDD04BE32FA00BDEBE80EFCA85B800541D71BC00519C01310A04FC0FEEE093AA705DF0E1E42E7D943B04887B36194446C2986AA739C9D99C068119105F3B01C9ACA870ABB99780BDBDE03F41EA0F700DD3DC02107BD166143877DD8D08BB37E70CCB0238C337A5073DB4907DD77CFBD81EE67864A4FA86BEB16AD76D847ABBD247B11ED0D1E3FBE01F769C337079B14BE416C44F8828CF39D0B44A371FA6EC2483E9CE0D35802417420DD2E9599B3EFADAAB72AA726F2D0FAE2F611F5451D5757FBC5D5CBB29A8385AF1D0E90FE1DD365EECC652C8B888D09EF162103C0BF87FC6541FE749C78C71DE27E8BF8B210DD61411A3EA1802E623BB4022403F7258B6CB41F4E5814A431C8195A262F4438F4F5DBF2A4A3B918F3EFEDEAB2EC0A6E56BBB6AA43F646DD22E40EFB08B9976535E0289B437884DC213430A7432B281DCBDD9ECA0D69E0E0F0AF39FBDEAA2ECBAAE046B56B9B3A605FD4AD2BEA7BA28BB219B00580A33D83833D1F2CE87A39267ABE0226C31A51B4609C8D68B7DD9876B6BDC9F5267758933B9D4ECDE268DC757F34EEF2ACAD7FBEFAB80DBADBE307FDDB071765C4E0F0EDE0E8ED37878A297D933F2147E5524694057FDE1C148D894F56629C68F78A35AC88DEB27ACB726A59A7D315598C2D6FFAB1E5E5190FF4ACDB11DE8A3AA0B9757B84A47F83E4A24C0CFC2402FC05925BF89BAD82046A98B7D7F052AEA1A5B8B34DB94E89794CE5D18E45C4A6110E448BB35140C26EF7A11A39F636DDDBF46558E8C3E9BCA6D2ED3195FE2D958BB265E8930FEED0A9DB559BA1791271B69441D737AB1DACDB291348013DE62F0AF327E3C2BBBD40D23F4072517006BF4C007F7E04FA94813B03584761C0E1D4A72B3E675386687AC729E9FCB0701BD3DE7C7AF371680C0FA7F3E446B71737FA07372ECA60A051F8DDA133DF07152E7ABDFFB94AF84C3E55885E70948CC8D7F4DDC2E405CFBA011950408FF98BC2FCC9B8F06ECF2FF4AF2F5C149C0FF6BAC03BBD87256200BE449C2F5837F4B671EDD17D51E83E1567FD88BD25F6D1FBDF9E3C1CE1AF180D50A7151F1D9FC342DEEB00796F7F90FFABADA816F23B4BFA7B3BFAFF101C1538C803CC400E5B54B4ABDD06DA231AD328598E6714A51B7A9DB15D66D483BBA12CD53501A1F1696047DF155AF630878233C682171E519F06A8E3530D7A4E3D3C1BCA7A42EF45C5AC80F184FE95609F4E28B144D8C960D5029C3D1A9BCAFA330EE41F3B1F947E16E2EEBE944F6415A79C8F76746163039D420FAF697B2B6828EB038DC85832FA49286DE728DD94B61FCB4B465F45717B29EB17D10A741AFE8EC36982A7BB2FEF672F19E3ACDD9288133BBBFF9CDD2012ACC2D88ED37BCEF8CEEB2E0BF985FABB57F2E1665BFA6E24E10E7DAACDC0A21F5934FA02C17A3F0E6E41C6540C87A5483B2EEA0F16CA83DF8BD95E2A264A9B66C52926D8C1703EE088FB74BE17B9F3B27E129FC41C65BC8F81DF9FDF92E537A99130C07BA963B1C07D5734C05F83647FD5CC8ADB67255BBDFC45F686D0AEADD36196356DDFB51D43D7F6DB6C8EF01CEDA5ACBF188FF73519D9BDDF127C3DC667BBAF10C3F108EF7EE4D14F294E664AD1E904CA9AB6F7BBC7E0779F70E8B3E51E8B425FD90A797B195BED7139E8E729165898E250F42D5402600F4B6B0B9F059F4944F19ECAFA98042312EDA19F590ACEFB99BE113E8EE8622FEDD58FF40D77FC522FF19444748733068BF309FD8984A3E8B73EE0A58F773FBACE072BC816D57FCD3CC485AF5EEDDE59CBA24216ECC153FF81A7FBAA942C6A3F95DAE31AEB039F4D31FA8647898F46C92A4ABE1D632F744C9DC38E7A4468EF61B13D7DE8E771FBFE633DCC9027B8562C14FFE533C46774B21D71ECAB54E1D1765FE6C33E0BF2F192BDD03D14263D019AE095BF97AE87C5C1450DC25DAF14757BBF754DDB7BCC86B22694EDDE0492183F63CEA9DCECCC7CE59ECBEC3DE50978CA73F660D7164B06D7FD9AC1518CF9FE49A378F6A1B0F42CFF7EA2C1716C18F2182FE79B99F4FA7A1A10F6BF46D84B642BFCB987114BB62C8CE8734C858F116E7A5F2506C5BE61F7DEDA0FA8DCB290F7EDF65458122EF7B024FD2FBCE214ADA8EFE110CDF18478023D188999898F571E68FD55B32FFD4CA3294501F6F11C2326060DD15414234AB3649C6FEBEC7E8FF898BA33E87AF8EE3BC44E31A173D2BE3B3C86EE305B4297E6FE95ED7EB1738FEBAAFB3A7AD3714BAF1FF1EFFF8860A708B93969EFAD8EC15BEDE75ADD7FF2A5D9BDAC2AEE7718DB7BAB93F15616A141FA682026DE0A252FA3FD78ACBD94545E2BDD47891B453EB3887EDD932AF753565999FB29F3CC1CED3FF15C4CFC8FF972FA8127CF161756FAFB2AC7331C95FBC2FBD9312A1F1CD87971BFB3159DE1FD54ED37164E4844424E577B2A31BFFE8ED8371AA781A6EC0F259D91F33E67BF6B7161A5BFAF725C7EB75FB0BCF861E6397B2A19688E069C4E8479A2815540458553EFC79AC659A0F5B18F6A00C596EC4358F66B58F61BA034B7C0FC3740F16F81F96F80F5BD85E57F8089E3CE35EC2C60E01F2CA402EEC2963BBD8E5320EF7D4243598F303B7984E1EC1186E2C71B58F65B58F6B7B0EC6A74E496EC6A30E496ECEF60D9076F80F981ED3A0036EC00D8B20360D30E806D3B0036EE00D8BA0360F30E80ED3B04B6EF106AB7C0F61D02DB77086CDF21B07D87C0F61D02DB77086CDF21B07DAF81ED7B0D6CDF6BA8FD22300154A3080A51A048F6D1D4B21181F5EC2862DB8717B4876E8D073D9FDE3F3C3D7CFC153DFDF9F4FEF72EC39E1283FEB99086B2427C66CF8540DFFF1B02F35F03F3DFC0F2EFEDF992F79CB3314D3194334A36F68146110EC73305EF3F87DEAB4FCCD7E5449F59128DB72B83C49F7CB7CD249A5958175D087B12BF7E7CFD5F952A35B17EC2D194C425D6B9780ADB37DF7D3750EB5EA86573E5C733CA7D12CA47A4D38787E4AB70A850853A795BE8748AD1914054D456A44661F56D61A7B4F4190F12A492487F39C763BA82E9CF98855695CDD420AD9A0BB23F057B59EC51134556B3EA1496E7822846C3787F0A20930999C77499823DA411F2B0CF7C1C87623C60A215437A9DAA9A4821FA3315E1804A5D88A1431877D26785D4489519959516AB051F50819CA4E164E7B89B12B5E4468ADC525A29532FC0FE143A151D7A4CD182A125F5708028173D9CC796384C2F4AB56AD4905EA7D22652884E4D45D89F5269386151207B318C18F28440A295D39F33139D9A91EB54DA4009D1A8A100FB53E89C093633C2E32543F4C51393303A4301F9EA25218E98277F71B9756D04D92ECC74CA36E603517D27E10EDE103C76D204356C00CA2F7270A0F63A81F6A7F02C68BA894E2B39756ACB3241345365BBC7CA67CF244CA41F32D18036BB560DDB9C205DE80BD89F42E4014531092588F86218113131155D219FC672092A89A88992CC59E814D7420D51264090032878D30552D1038A6928414BF14DAEF01179ED00A067534E8DEA6E64D249EBC6621D40F981E419108F6221144EBC74231D86EE56168DEAD65377D273BB20FB5330E321E6B37C018B46E3ADB931A36EDB905EA7DA2652885E4D453890527D3C62421AD1C47085EA695B955920EBACC89AA20FADC490068889BF936C364782EE3A6D6265AEE20A177B8D370AB6BF0658BF4164A2614D5E9D0AD7D9203AD2B1DE9F12224CE576A5890EAA59752AC8734134A061BC470590A9F861547F35A7B6FA69A676095B3883EAFF5F9D2BCF63B220215A86C48B4828C7F8746EB4AAD846A8538D96068293D642F7871A9E0401551629D24539B634529F11B95689F59420559A09B06F854684E7DB61219F7751693B837AA5D6D0C2D56A20C4AE149B6DBFFFC4C218D390449BCB7E239F70F9953CC79A232EFFE6243FE5C2F3830F6A0525D7CF24CEF9ADB7C4B79BFDCA5E79454165FA62552B3C8A892D7CF49BDB158EFA6C6DBCDB767BABC5B451B494B8D92EAD70DEA4B47068DE45ACB06DCE0E2D6BBDCDD65ECC3A27B484E2FE537B29C5DC2D25356FCB548A6ACEDE5256E37E45A5A8C6DC2D250116EB2BE50268BB49515EB5362DBF4CD552F27AE1B7C27C9DD0465F5C31AD3229A6B6706A5D42AC706FA5302DB16515ADBEE01642D3F2EB9695EA0BAEA36829B179B5A5525C73764859A5C588E6724A593B95A1998D1B16A9A16C91603B99AD14B14D6AE1B1990D56586C52DA38E413AA2A833CA185BE66D651615793AF8D7BD370BC5A46536EA3926AC7A83565D5E66F294D9E6CADB07CD0CD61553AE4315F284F8E7A384A840F979E2B53EE2AD1326DA1682F313FB9AD639D27B5F278A3257F63422974FC225C96BC0C2BCF43F338F59989A8411A1442DB386664AD65EB1BC9A49506888D4938C768BE147E77920E55A918CE2C123E0FE95C4C5622E1386226DF55148D13E83C76272EAD920DB525552F2668287320C5D2C789294EC4483A6C28C8A3E76D42D75AFAB596F7B509252A8E7636ED8F8434629E96C9126261B99EBE080079AB2C37DA226E4C2851FDFC47CFB491A0B5BC5B2DD35B134AA41D5DD68E455B295A4B7CABE5FAD684B2DCB84C6234B3AC2416B3E4AF5E0E55AC9B36C2C85B65B9D31671674289646F84D18486A21F624BA9BB887842283189F253979FA154FC13BFC26495208FACA4D708D348F9BA726D79B64A7DAF2DF7DE84129566A38B882D994783541C298BF823758CFA028C895BE578A72DE09D0965DE01A3E260929636CDDA86A15D98B4C9A5ED1C0CFA86F45E9C861219F495221312B382259121ED3353128395882C44B7964EF975036423AAF6926B473643D391CDB093ECD6926BC7534383F1D4F08DC08418B49271717226CD79549A026B277520EA5649F4903141CC00E9B72A96B928B2938BC4D0896B7B461079AB2C7A9331B119392E12C38945A647E03A028CBC5516EDE86A6830BA1A5EA3EE336910759B24DA2A18D4A03CBECB1120BB70B902C9D948BBEC6044D55E72ADFFB936F53FDA01A5C178F2261F9453A9F7281B6F6D9C90E8C3C94AD4A4718A05E5D02E51AD366E4CB5A11DB41A8C596F650B62D1794ABB11B62F46F34140040203126A5D780B415B79DA01ABC178F5AD0E7533344F2231429363B14D6330ADBDC1E8DBA4D10E580DC6AB77EBFE0F87539FAEF89C4DC5A83FDB6CAE9BCEB4D3B495AA1D6E1A8C36EF0BEB2739BE57099FC9613D7AC15132225FD3317EF2A2DD6100D2B749A31D721A8C38DFE9A520428B4BC4F98269F9B613B5949B47347BFFDB53F61C134A432E544AD26733E33D4A67B9322A284AA32DD43157F399718FB1E893F088CA68AEFA516E5D4623FEF50C8D39E88682DB24331E0D6218CBA1B3AF6D92190F1DBAB749463CEA1160DAE6DAC1F536C98C47BD460D46B8DB170C6B78680289E879E83AC44D8A11075D57B54931E2506FF0A6365E0F2D5364D503CB145795F08E0D8EA09CB1857D29285C856929B585931269A5C24B4957B8154EBCE84E92ACC348BC2AE4AB9C28D1C69A289DE0A98F36B1A94DF9FCCA1584D7FAD84F8157CD9199AB72750D54D1165442A318501C8A52D54C2351142A6A720A07548646990D67873A28D43CE0844EB71DC3559455000F5851D438EC4052D79277DD0E9AB8141A7DB745AF28D5AE217E45A11635C7AEDA38ED5A1FA6612A344AEA14E1A2545F688C8B821220C7CD3A95B977C557435998E8BC25004673D5EB436034695A7FE20E5AD2DEF5AB8F7461A263831819CDB56F8E92D1A4EBFA73875D4ADCB5CE4D83616894DE298E464907D0481A052540CE60762A73D78A370C98A1D17B97501B251500836D143400388EDAA5C45DEBBC534C0D4D0BD8C7E62869C72A3A4741579D0FEDDA4B73A096AB0BC261DE6646613C4CF4D316C8A3BD9D9A0E37DB48B0EBB6A9C6EBD0A8BF25A847A97EF5613D0A55D01FE26EE1B37355E8A377E8F46110E7A35C99E6481F45CDD49F4C37E1B86B1D01027A68F4D6351C48A9E61D028214B4013C9BDFB5E4BDB58371DC8FA6E6E8163C44AF1B70F8105DE3804E1C58CAB1B7A66A8F12D2D446C018237AA5984719D1B58AD9E58EAE25EFBA1D4C8389681AA1531C92921EA091480A4A805C76E954E65E155F1370A44DE926714AEA2BDF12A9A44ED90D377EC0651D46C98D01498C756E1ED6C4402D46814D5A5BA4F50897AD24BB6E2F5DFC124D83B4863929D5B329D049A1227517C05A79ED5A299A78261A9DB4453D2955A321EE49A11635F7D9DA38ED5C1F95F0263A7534C74029D7A1360A4A5119DABB792D7C76AD8AD660271ACDC002A4942A681C22A5505FA34B88B05276AE55B348283ADD7688A152AE3B2C8A4A51CFE61731BB94B81F9D1B044BA9D53A34D08A460B80502B15CD1B5E4BED56AA2BEDAF1F33D94453D9A4FD70F5793C2301CE3FFC7025B28CC9224EB09FBD09B44EF8032F16F268CC9632FFF2EAF3028F45A57EFA6F9F5FBF7A0EFC90FFF87A16C78BEFAFAE78CA9A7F17D071C4389BC4DF8D5970853D76357CF3E6DDD5607015643CAEC6BCD8483F28D26E4A12E3143C254AAA285A48FA0B8D78FC01C77884E5E3373F7941255B39764CCD019F7559A5F030D5A65C9FF75967977FE74783B0FE6D253DABAD1E7F11550B4818A7B524D56335154241FA798C7D1C290FDB504F549FF949106E7FAB60ACA70EB17C7EAA489F7DA972F8E14A915CD5D255454D0A5E55A51B3549A35DC39BA59E9D41D33411EFAE79D277A7D4164A3F9AF3A11E5A8F6CCAC2A0BA014F23AFF5D12F8597FE44586BFDE47B5795FAC98F470342ED0930177034616C004C3336BB8128E61CF1592C0F0D1499143E9BF34A221A7A8C2BC8DA7E35E7C4318B47785566B4F908A91D9AE010A5B736CAD5DB7E0773F3D858CB2DFD0EE2B688D8A4C22AFB08E2E3B1970A9BF41B88CB1CC731AEF0C9BF823861794350E183ABB7069BB1A4D1CEE623884FA5BDD6DF405C34DAD97E0571AA6867FD0D601F4CA39DCD47109F8A76D6DF405C34DAD97E0571AA6867FD0DD4C51507DE4A37573F266FE2B94A1F202DB2CABE1C4F27D772E8D6497F072BC3A4EB8372DC4D2F38A1AC4C9E7E80E0369B7096719B7D03E0369C2862645FCC39F8349C9739645F00FE898B399BE29EB24FBBB0955D58F081EC6F7D68DB859DD5F032B0A75ACAE3B49B39F3908C9A5066B2FD0AC0ADBCB38BAAF3E1E27730B724189148CB2F4F81684A8CF02BD26DBFF6D69525D75857E3197E17260729C0C00E61EC76639C2C0E3406B1FDBAC7EE717BC4BC2A5025B1135F19EAAD966F96D84D5E8D0FD0241FC2115CE430B7EE8AC94E7C809E7717F3AFE3D45B7E6FF9BDE577B3FCC285A79D587F3DFF2E1EA0895BEF057A2FD07B01232FD078FFCE851B801460E00760EC76E3088448019B6A4CAF9460CE6F94AC92280EB086A39204308B2414EA111AC4BE6219C504C02E44807DAA58C5FA1B64452E144D15F3EAD66B3101B23EF742C297F4824C79916EF31960AA380A703457586DBF02DC9D0C68ABB8B8ECD3A9382377CEF6406EADE982AB0BAF06E06FE0D440DC8E73E5F16F16CDD1C2C7EAAA7DF13B00FDB318F1199D28702D7C86F10A998C59AFB2CABE9A73CA1A46E3A54B0980D55A124E319FE96AAA24C1799200535FCF334F02D4BB3216840E002F728DD5FC1AB70B8FD4B93403FF64C1FB38BDD59825611C2938DA7C34E7F3952551A88EB0361FCDF92CF0429D14E59F803C50D5D28ADFF7B9F339663889672C42A95E555597D3FA7D9FC3FAA452C8821D7AA3A672BAFBA166AEC7E9817ACF51CFA1F71C47E839F2381D2E9C839E9581FDD7111EA789BB3B8C11909879C2F369A61E4A52179E9A15D94A626F66FB32B342D01727B656CFCFC4E09AA8CFDEEAF2CAEBACAE9CD4816715DC4A526F717BB2B8B630402EAC10588681658239EEC65A8F73993AC48B082F05FE69E5365F2101C2EF257B314BBE4EE1C9CE71A9F2D56400EC2CF370DB76CACE819A06913A8748F23252C52DA674E01825BC86639AD281A37C6EA5866596747CFEA239329553B7012A0AE23D808C2FC989086D687AFEED5718A7BFC9A8CA28FD08E3231A074595F5F8720A8CA3F8A767B849383ED3AB093FE6D4E6CCCA80189B29C7DECABA5859C458C051CC62ECEB168E34C950DE7FD3785668441DFF4A96A3B19DC6D8712E0C07528081D5C0D85D92C9F4A3DB7E74BB1F37518C7AE8DC45343087BA87465697E41AD2200CD5A5A0CD57C02E0E1E21CC474C7707504D83719DC97B5B5586F96780B658240F80D609A94906F3D6885A4E3972B3AD86C6DC9D15B796D5D9A80D385F928D6B7A63C4A5B65A3BED7536C862FA76C35D1AE90B0E5702158A32EA73752B69C17C898055B27DB49BCEAA353424391A1BDDC45A75618475CC0CACAC9EF4DC7774B217D389A6B728A774E0A8D94455D3FA1D9D3D19DA3A84AF0B3BABE1656066B59497D4592D149300D13E2BC4CF206A45090B50CDC381D29B561E536EA41E2AD495D7791BA9AF15EA6B10F58D2AFA0D4CF65B95FE16467FA356FE0656FB5B95FE16467FA3AAEF06A6BF5B95FE16444F15F129487A65B6019A1071A5E138A8DDB8223707C9CD15A57190CE168AE40B90E40B45F20548F28522F90226F98D427D03A2BE55A82B8FA5375323556FE9170087B70A7DE5A9F566EA4AF96F61E5CF15FA398C5A2106D999D23BC0FAC5C59D52EFCA03F38DD4F70A75E571F9466A2534E502149672F14EA1AE3C4BDFA835AEDCA24A3F40E8E30A8318C4215210138110A30C66602399C11BD549BD81D1579C1CCC560748F573E9171007D5D7A55F401C547F977E0171507D5EFA05D0D328127050F95C299DC3CA56EC9E83EC9E2B76CF4176CF15CBE520CB55A616A09985E27040FE46D94902ED1BC54A4BC7A0968E95968E412D1D2B3D630CEA19E3DF15EADF4123486500092A5941680C4268AC2034062154BD850FBB7E3F57743607E90C2BCE15837C2B563C2B06F955AC78550CF2A958413906A11C2B28C72094CF957ACF41F556628083427F2B8D0D6AEB67A5AD9F416DFDACD4F91954E767A5AD9F416DFDACB4F533A8AD9F95B67E06B5F5B3E2D19E411EED59F12BCF20BFF2ACF89567905F79567ABE6750CFF7AC8EDB9E61E3B66775DCF60C1BB73D0F54C00D60881BA8901BC0303750413780A16EA0C26E00C3DD4005DE00843CF5C408EC944852264E40232E65C0051BE7AA53C4016C8E3850278903D82C71A04EF40620AB590CD5D9CE506B35875AE1CF9E6971B2C0AF6565B2BE5F43B89BE5FD10BB79FA262539FE2766F40FE8B9686F23CE06CD6FC8E7A2367BC6BA83B7DBAF204E34443E13692824F1DF357CB57940A5A4E775E58507C1A1A6105D16C889271EA737FA38D2AB479B018084FCB286DC0B272AA69434C0B4C20B846ED340415C27B42E1DA0F7056FE05D4D35E7FC3719C9C0A04B3A262816AE40E9C235C980E1409C782B14B0303DB62F5F882D8D0E2AA980210EE1A2FDC7B35AE6DA0C307D8FF00BAEEA39FB0AD38170861A6EE514C8518710876AD0B0CD472062EBB1DA11A535F004F3CAB5A365A8A61D4F1FDCF0B8AA939ED89CBF497F0CE1B69B5E392D4E73B8A8F81DCA4D134BB29460CE6F17514637841A31D5B4531FDD9C4CECCBE6A779DD59AE6109C6B66BCC6F4763EA6F31E5CCA32B16A318CB40BEEA42BC2EC339DADF71FBB1DE3B94D381DEE161E0C40554D918D8B98EA84EA10F1FCAAA94BF8F7FB9A4B636EA2AF2036C15F9415D457E80AD223FA8ABC80FB055E4FFFCFCFE539941F6E588608D3CE6CBDB0E627CCE917C564C4644C95669568923CC83CA30320820C7DE5ACCE86DAD452507ED8BE248399A967D392F6B7BFAF3E9FDEFAECC4ACBCCCC7E6A487B4331A33F6CB7F2A06E4E3EC036271FD4CDC907D8E6E483BA39F900DB9C7C50B7F91E60DB7C0FEA36DF036C9BEF41DDE67B806DF35D84AB7AE3C84B55F81839280DD565F8A6C31F1616CAAFB8C73720FF780AE846117949FC58C016E138263C4EA37925285F5776B4E4D3A52033FBE8C0B63720337A070654B19FBE7B510CD0D57A4AB705954B5E51A98E7DCFCDB90F101B93708ED17C89FDF48944E91B977491F07948E76C89223C623193EFF1F82B1CB80981E7A05C33ECDA97723158B79AE65D841F1E3AC27E858F119635549782CD61059C43E822847A9134FF745EF8CC977A6319C828E171C4B22035057FE70AC1F092CC30DE85EFC5588135866D17E32EC2CB5F3BB2910A1F230BD0505D0ABEAF2BF0BE06A2FBBA3A8AB9862E575F574CE41ABA605D5DB1062E595F57D6ACAF418BD6A76065A8185C6DB3128384DFE771EEF5433C8DB0E7CA1C3B176866B716EC7B0337E67006C669BBA375119DF08D23ABAFF03132660DD5A5D8A81ADB2BFB02E3A06101E551B1735888AF5340381AD3984609096428DAFC58EA98AEE4411D57E007146166172086BDC91873B084BBED21878BE8526E1D5955858F91E968A82EC53ED4708FD91718070D0B288F8A8DC1A23E8AFC95711B2C6EE329D808D23E80EDF0D96E601966B605E3D8DB9D318783DB8CEDF1BB8BE8D9DE3AB2CC0A1F23EBD3505D8A85BDAD58D85BA085BDADF66C6FA13DDBDB8A95BE3DB7C9D2DBF2EA1A93FB43D9FE7D120B187FF5F26D223C77650A9D0B34B3190BF6BD711973B0340CDBB3DB17D1F9DC39B2B80A1F2343D2505D8A7DDC55ECE30E681F77D5CEE70EDAF9DC556CEC0E6863779521E21D7088785759FDB83BB7EDB2BBEC16334AE39670B694D39B8878A2FB900F13A5B7FAB21D26F14FFC0A9355823CB292C7DAE4AB45AE6CD4AD146616EEBACCDE3F18733803DBB6BD3F75117DF8BD23FF50E16364E11AAA4BB1D1FB8A8DDE036DF4BEDA87DF43FBF0FB8A9DDF03EDFCBE62E7F7403BBFAFD8F93DD0CEEF2B2B45F7A0A5A253B053442613328FE9327DBF7211B125F36890767FB2EF137FA4E7D95D9973C7E2CCACBE33F3DE391873E80D3BEFDF5406FD1040712DEF1CF98C0A1F2367A0A1BA0C2BFFA2D8F81790857F51ECFB0BC8BABF28B6FD0564D95F14BBFE02B2EA2F8A4D7F0159B4A277A05F7D57F1ABEFCEED26C8BB3CC00F2ABE774D8BAFD8EFE0D56EFB62CD7C857521BD6B31A0EE5D4B17D752F12CFD40A3EC9A1CDDA1EC7485F2626F50DABD7E6AF362EC43E5EA26ECE6E609001A390ACFA06164046A1DD965C0FA49C1D613085A4F4A0FF704EAE19E941EEE09362DB6348B87A13AB31FC226F643755E3F04CAAF929F9D51A324624B31CA9CE3EC9806468B882C9887E5A872859DD93CB01C439700E6DA7B0C03EADE631CC8635CC4C8D865C0D31A6666DEE3C2039EDA45243BF580A997616AFBE9DC77D1B5F71DFB71CD70A962AEB4EFD8546B73141EB7CAC7C8622E363CAEA87A65CC080B4E2BF36B58407954867E6FCE6DBAF806B111E10B32CEB723108DC6E95B0B23F9D8824F6312E158786E4777E8BA97676631DDB9F79665CCC1D22A1ED4F7931FF4EF275F74CFE36A69B6DBCAECC52ECC8AAA57572BCE6DDD7F80B40F34A365EE2A65588C888D097714CEC3A24033B45AB0BF18585BADC15D84CB75B5C1DB6D87F762B77845D52BE004AF1057BD36D06D0B82EA32F3B90DF665905A1E278B6C681C4E5814A461C5195A262F44F8CBF5ABE8C49529742ED0CC662CD85F8C71596E9E38304E4BC3BA88CEC751ECDE2A1F2343BADCD8BDC34A68CF2130B4E7B01ABB77088DDD3BAC84071DC2C2839E02C24BC75EB7A75E431AECE2486FF7F2CC2CA63BF78BB12CCB6D77079669695597D0F338EA783AF53B97DBED54B00D847605D9C068D29560D2C058D29550D2E716E6BD1C153D5F4792618E285A30CE46D4D18608BC1C23C3EAC0B5B73C33FA435B9E4ADE7768AAE53A3C8D56C3CCCC062FFC345AFF7CB542DF3F5FEDD8D41DBDB5D0E9A985CB7D69A112351E1834BE12331E1832FE46ED026FCE2C98F54DFE961C954B0B5116127A735632263E5989719CE327ACEDCA343218CB127AEB32A3B7B52E95BCEF7454EB7438BEAC6166664F973DBEB43C4576EAD7922EC1D41C3D7CD2E9DD93CB7DF6A4F2FA02F0F185EA9B27D0274F6EAB0FC6DE421F8C1504AA81669F203CAEAB725C43E5B8AECA710D93E3040C55AE31621E5379E86211B1698403013C36123238BA93042AC2C8C0610C7BE337A3EF4DB7CC4365D0F7F165D7E1E809984E2FC05CEE033095272A602F549C00AC743B6033344F22CE9632E6FA661982393A706253A21158ADF85F0AAE5558F7EEB66C178E1E3DE9F4E6C9E53E795279D100F8A041F5BD13E87327951711600F229C00B0D7F1057038F5E98ACFD994219ADE034ADCBD4C0C2DC5C82CC03C7BAB31A3B7C3FC83BA01DC3FBFA1D89CA3D7373A3DBE71B96F6F54A2EBC382EB9F00ACF29D42E1FBD63B84AB84CFE4B382E80547C9887C4DDF184C5EF0CC11022D4A3402AB15FF4BC1B50AEBDEDD96EDC2D14B079D1E3AB8D8770E1E2A41F7CF2DE6FE3BBD73226214BA449C2F9823D8418B3182259CE9A5C056456DEF4D4BB07FC4DE12FBE8FD6F4F1E8EF0578C06C8CDDA88096303689BB1A96D7E4F697E0FD2787F9589FF02D12AB3A6BF40B3A6BF9441C05FA041C07F088E14D0A55FCC396C9B53D56039E5D8603CA2318D92E5784691DC297388E366CEE6406EE3B31B242B3E48EB806A69958EFF13A8DFEF8E247B741F168BB1907D8447D4A70172F5C680196B7334B632DA0D1C9FD07BDF2F33C83F4178FC2BC13E9D50E2A99C0A093D505FB501D52532BB43716FD8FB330EE41F65169B8FE67C3EC73856B8E49F00AE95ACA43615FFBAFED877F8AF5AB1EB26326D1D3373F44262D45AC1F7038DC838A62CFC49885E66A42475E059350C2509601EC9E8ABA0AC722C2598F3FB45A89D4EC3DF71384DF054E1594934E7FBB3978C71A6B424E20ADF4A22C43DA43738046118AB5EA29862CEF13D67BCCC29FB02E3F00BF549954BF6F5341C4E93434E78D523275A1D1DD66D39ED732D3ADDBDF5BABF24BE5FF505DBAF80665E903115E3BB78A53475E1BB39B73F58284FBC2E6655E1942410CF6946593513350DE0A471C47D3AD7B8E8620298DF4FE293182B8F2B83195D3A6094F52D597E13AD8BC3006B865B95D46E9C6B85AFCD042B27C05F83A446FE625A17AE8DB26BB2ECCA119E7767715837EFE660401D3373370F392470246EFEB7D91CE139AA322B250056541957C661D917F088563B9A05B98088861EE333C5EA375F0112311C8FB0DA0FAE3FF623CB4B1C59BAD91CAF6366EE72201BE547E2729E70E8B3659557F13B941BFACA56C8ABF4F195C4C34DAC7F9E62314E9AE250F8432AE7BACA14B89A0C595858F82CF84C228AD56585420294DFC724189148C7709D0271A14BE17835CA2C7C07C847F838A28BAA164B09FD48CEA573CE4CE92989A8CEC4B2EF47E6A45D6E4C76DF8ADCDBE6A33B0FFD012F7DAC8CC0D6DFCCB9E43D14526B55FC0E1858CE3CC485235B292EAEF81DC62D6481EADE0A9F01EB1078AA95ACF81DC64D2359E1F3A1D6701EF86C8AD1373C4A7C344A5651F24D41AB267DDF3EF8183D27BC5F38ACD774B9D7D3E929C27AD263779C4F58EEF0AF5828FECB6788CFE8A4DA5F6AB3742E433885E612B20C2033D7307DE8C8C9C74BF64275DCB62930534213BCF2ABB6947F86395A160755379B7E3C6D9773423369474FCFD5313377377BDBA3995056264F3F00809BC4F819734EE5BE41E6401410EB3274E55F7505BAF4DEBDF46EC1A95BB8763979AB3233760B3AD2631F85FC9346F1EC436531ACF0799FEBF93CC6CBB932355A7F33E7F26B84BD44C8EEFDA976D9E514E82217A2CF3115F62D5C996EA5AB940CE61D143DA596BD9203E0FCFC80CA454D79565F415D2905CA310997EAA25A29C19CDFBFF08A53B4A2BE874334C713E28986C2480C497DBCF2148FDD9A19B0EFF34CA3294581489A63C444F7174D0553C15B29B3312378A15875AB9BAFA7DD656816FC6A96FACEA0D3711300B28697719703090579243D4EB63828CDF52B53D69A94A4432D5EB9DA5576B75560BF137C0E43D583DABB9B607035BC8CED1D1216EE48ECDDC5A1FCFFE40B540AF2365F612B390D432D4D726FEF1769EF2E6FDC76BF64BBB77BB56BCB46C9CB486FF3590AD0EEABEC0A9FBB2E3355786A923BD4FC9945F46B4DDDF33468ED352C4B095D35A0E1ABCD70AA5EE79F782EE65ACA25ACCDC7D3F05E6730C7717956B6FB51D9133C299B19398B03CDF2B59AD67537AF69230FC2F577B6A233AC11B494003825CCC2098948C8E94AC755930CD16B7A4F0BB16F344E2FECABAAAD249FAA07EC3D9795E77279E4B6FB89DB133C70BBF14E354EEBF457657A3B37C1C089D8792CBB3D4E27C280D1C06D749916D6C64EA09DD16E7CC293324080D07E54E2CB7C04C597F9A804B7FD088A6DFB51797CEA23E8EDA98FEA23751F618FD47D545F19F9087B65E4A3FAC8DD47D823771F6F55FA5B18BDFA04E547D813941F6F55FA5BD823D095A7C70EEBCB8E3EE0CB1F2CA4C26F880F6EE28037F03370598DD4BBF1538F8AC13D82ECED51C1DB23086F8F0AD81F41587F541EA47C043D48F9A8BCBFF3087A7FE751794EE211F49CC4A31209EF111409EF518984F7088A84F7A8847F7C04857F7C1CBC51E1027A5BF1517DAEE011F65AC1E34005DC0086B8810AB9010C73EADBE58FB0B7CB1FD5B7CB1F616F973FAA6F973FC2DE2E7F54DF2E7F84BD5DFEA8BE5DFE087BBBFC517DBBFC11F676F9A3FAB6E723EC6DCF47F56DCF47D8DB9E8FEADB9E8FB0B73D1FD5B73D1F616F7B3E0E55FC0D61F81BAAF81BC2F03754F13784E16FA8E26F08C3DF50C5DF1086BFA18ABF210C7FD72AFEAE61F8BB56F1770DC3DFB58ABF6BA0FF531FAECBBE8038545C0802B6A1FA00DF23F01DC0C7CA33808FC057005DCDFBF5E364E07C3F62CA3678F6E568C6C89FDE3F3C3D7CFCD5E1EBD68D1C0DC6C92DF4B523E5F30AE4AD869F07BE526D33537C509FA886CD52FBA7E4F3E4F79CB3314D03EA55CC2ED9980D1A45381CCF5E1B58968648359E6D168D2D7B8AAA2AFCD0138EA624D618AD56D55471903913AAF19052579BE2BB48F69925D19874950C2CD24F2CF4D2F80FAF1EF8C7C4F77F7C3DC1BE1A2FB1B6BE3F5C69DBDE1C1EE319E53E09E5D38EE92307F2891854685B03B0B4B250A1A3233000514B3996902A307200AB36598F11648D1AB0075A1A9F9D04A94692914FE7784C579D3107E056815F33AD09128D4B3F2E509A8B7D79F8F4B2B08C401CEAA854BCE5790C7055E57654F8D18877793821930999C77499BAF69046C8C33EF3711CB200EAC48C59A9886A2234809961B947853D53997B40A2058EE5F9294B2C6AB8B4C230A3E982C04A69C70DBEAAB83DEE64E8231955778EADB157C3A9157F5BBA2E18D4967ADC38D48B7C79589C8AF9714CD182A125F570802817B32F8F2D71985E648680D198958AC6264203381A967B54783495F9F20049C3098B0239BDC288214F2846089AFE9C01F168CA498563039D011ACD4A3D2A301A8A7C79589C339F8E6784C74B86E88B8743F9147440BE7A498823E6C95F5C9E0C867ACA6E7C559C1A7331406D17898E0AC39D2AD0233A57138F5D63B996A3218A8BF4DDF15B23C52920B74EF4CBC36CF6F20810961A2215795916037055781D157EAAD25D2044B2879126720403C4490D65052CDB7C2688D1723D2ED8E845BC3CECC82BA3E3192588F8641E472C0CD90AF93426118E938802F104E1A662AC85D60077E6A51F151601625F303E37D3342A6669CBE485A0A5F8269414121952A21B4CCD99D6A2B5910504B4A6B21C27768DA5BF600807891FD38078140BE5E0C44B2FDB7476B106DC6A41ABA785A0B5B5F4E38469BBD897874FC643CC67F9A1231A8DB77D0F834E878D59A9C86C223480A561B947854953992F1C903E1E31A11561A65660AC63D308C402111484FAF28E178035F2F6E0CBB412D20031F17792ED5291C009169BB99A41B3C2A333529BA43901E0368A7F79385EBFB60C04AA964C45E23A9301D434FC8E0A4B3AF92E0F2C11A6120E40ACE8A854A8E4790C9052E5765440D1887781382153F1190A932A91D5A5A00A3FCB86C8F9B9C04845323B04EF0622B5F5B586078FC982846819122F22A15C5BA773E8A1BE761E2A78B41406386A2BE9A8DC4FABB097E78C7812045439E5909E2C634B28E60C395590574F67823FA3528F0B8566225F2A1623C2F3FB51219F5BA2D184971E8F3594C6886C2FF908316920F419A2727DC15B9415631A9248CDB2B9419E7FD9FCE6EB0F1243784A32EC6DE93E8F6724C0A92EF8028F85A83F891CBFD088C71F708C4798932CCBEB5742014BEA91E8C7D79F57A29B0ABE9319BEFBFCCDFFC9A7F25AC726C31F625A3E213C7E627312FEF87AF846464F7AEF53CC0529F127AF5F3D077EC8BF1F273C660116F3FB38ADFA8FAF6771BCF8FEEA8AA725F2EF023A8E186793F8BB310BAEB0C7AE04AFEBABC1E08A78C1954A9EB335E2F2E6DD9A0BE79E5FC44A21D2448E90FC867BB9C97E231520AC01F2894C5ED561E9872B95F0070D1E65E1F2C06A9C9BFEAF24942BC6C4FB0BC772AB4D465F23A998AF5F49C8E1914F36B0BB6A641F62192A362B205CE2683CC3D1FF11E0E7FFB3C8298E128551310241A3B2EA46F827ADB034F40658673A515136282F490CE6518CD3D089475A271906C4419D0AA1070AF2A8B6F9FD43E891E71F5FFFAF94EAFB570FFF17DA10FEE3D59F91F01ADFBF7AF3EAFF86965E98E3C04ADF109A976E6C03EDF10B4ED61A30E788CF84562DD0974434F418B70130C72C1EE19505072CA338873236BD3D138F8DED982C2236B1E3E0B1173B0673010D6CC74260C30A15B66A101CEC5A4230B055836061A706CE6CD52038D8A94130B055836061A706D1CBA993A94E7C5669BCB5EECD591EB6C3BA9812F12EBA19489C9293ED71D2B7D01D8C5378362B74328C0B276E64F2693877C228E1626A7738337165AD476D6EDA302D176F5673E621BE206337301633F611EA3845AD6597042312396138A16258EF4ABADEE6DA6DCE3C90CDC91A62FA46982B4C39EB2CC9266E8433D90A3CBDF46558C7721EA999F723D90E66AE0B14D45B786FE1BD859F8B85D78562EAADBCB7F2DECA4FD4CACD435C9DAC990B76019BBAB3A651B24AA238C00E7D47120ADD8BEA617FCD6F44E1EBF901F6E9CA820115405CE29817763B3B70F1E90B095F643882EE3C563892A1FB6D58C8B3271BFA89CFF0A92E683B758947ED8B8CE39B9DAC2B723548F89B4573B4F0B1ABD5F1598CF88C4EDCF4E1925BF680B80366190ADCB9DA3909A798CF1C5677CD910498FA6EEAEC6A8CD6AF57B63B9D8EC1EA2EDE058D5912C6D1CA09AFAF2C8942ECC6781678E1682E927242451B3A8E9DC331C3493C63114A9BC06A88D3EF8E1C87B7A90F2A78F17EA6F70DBD6FB80CDFA00BFB78F1E6EFF4B0424062E609FFEB6E3AB1E578A46BA0BDE119185E5D08CDDEFA9C5A5FAE6687D6B7E6E8AC23EE6D6FCFB6070A2D7AB2F678244BC9215E447829104EDD003CC42FE94611468B8878B22F5C3AE1CB78B8C50076246A8EB3E46564B1ABB0611325DC051B1C4E6DB67C4EC3B40171587B0BB7B370A15D77DDAB64F6371939E325EA83A2C2DA76A769A96424FE59F3390DD3318906DBDBCC11D94CC458C0512CA0E397D7603A0896F1FA9BC6B3020ECE7520681E66B6C77B3F0AEC47812769D77E5DD4DEDEA62D0F09C98BF1AEFA309115613E620EEF75499633790DC8CDC20A8BE45945C732E65CDD89798276D912B2B83753DBAEB7D255222EB5EF68B576BBB92C0DEE05872B012F9BFA16592E982FC1B24AD0063B745614FEDC86A4FA58CA276B0347B929B0609C8DC410C89917DF30EC37E44ED6F0B491A94FD6EE8EA4EF59582D972D9EEDC85756E4E1C08E7C68477E6D477E6329FDAD25FD8D65F56F2DE96F2CF5776B474FEDC4B73B45C5EDDA8EDBC9CEED34B7B0137E6127FCC252F81B3BF25B4B7264A9BCB796E496E5CF2DC9ED6CCEAEBB58DCD991DFDB91BFD891BFB3531DA796F4B11D83C80E3891A5C77A63496F69B50364E9F406C8D667234BC7374076AE8FDB95CF2D4BB7B37D6E67FBDCCE783D2B6A3BBFB3B4731B768D1EDB357A6CD759C6BFDB0D30ED0AB7036C6C07D895DD1DE9B99DE6B09DB7C576BE16DB795A6C07796C07F9B95DDD032B6ABB567FB66BF567BB9A3FDBB5FAB35DAB3FDBB5FAB39DA37BB6F335CF76BEE6D9AE737CB61CDB3D5B8EED9E0796C01B58226F6009BD8125F60676E08BECBA9AC46E60663926B69C510E2CA794033BD3590CED4CE7B8770BB2F739CE63B340EE33B97ABB24E5D5E9CD1063DD1B3CF077B24D712CFB3663EB83A482050D91CFC6D8472189FF76C1303D962A4FF10B86D6FC7CCCE3F41217470EAABBBE5B2077A989DD941A7B81D05C1ADA85DB6B6DC15DB1FA9B8C643CC6251D13140B2676DD1B8F136F850216A6C7CBC3A95D374F38918EC6153FA9B5117EB11B3CC81A0A3760CF6842431C6EC32E7507951B38D9F2C8F562CFE8A84708C68F819E6C5F95D6C6DD219A8C9D7D083DF7A112371CFBF87E276A86466FA09EAC21D26F31E5CCA32B16A318CBC0A36EE2E01DB5251DA9F7E90D7CCF06FE30E862C50F1FE0562C69CE7E16AEA9B6E512E683E512E683E512E67F7E7EFFC9D89200B0431EF3E5A17A3122E648BE2124A348646B13ABA4C7E49963D26E230C477667957686E9A73F9FDEFFDE83F7CCC16BE7501F2CF7841E2CF7841E2CF7841E2C37561E2C37561E2C37568ED67BBCE91DC74E1DC7C18F598A26B6735D3B439E98E1BF24BE9C8420D9FC3C4E23FF24285F6BEC36D5EFA17952D03C4FA7DA4F6F773E1A3B4E9F36406C4CC23946F325F6D357AFA44B5BD245C2E7219DB3258AF088C54CBEDC2026A241A7084D3D50F6366C3F5A0F33EC81B363E00CAD277C9617AB76069D7C112C96C13B121E472C0BD050F0523DB8760D2E4B6CD82E271CAD5FBBEEA1B763E85DDB22EFDA7A29ECDA7A2DCC7631ECDA6E356C67E847C5383A9B7930128E9AC7B99B0EF134C25E6F26476F26A70E72DB25E7A3ED636E7AE3D9B1F1580632910CAC39D899DFCEB087C634A6824320C3E9E5E79BC67425B7A47B581E3D2C6D7DBA9D473E5A8F7ADB4377C7D0B50CED24195873B005BF6578A69D8117691F5BECFEC8620FECBD02FBC0B0B43D1971B44EFD6D8FFD1D63FFAD2DF6DF5A3BF5B7C7394C7E5B5E086172AD3ADB3F4BE22589BE7AF992359EF7203D7A90DA3A68BB936347EB5FEF7AE8EE18BA77B6D0BDB3F6AF77B6E0BFB31D9DDC1DE752F75D766F07A5F764395BCA1177443CE1EF65FCF8F4687EB6DA2DFE895F61B24A904756F2DC840C2EDFDBCED1DBCEA923DFF6C8F1D1763CF7BDF1ECD878EE6D8DE7DEBAE3B9B735BF7B5BF3BBB735BF7BBB89F5CECC0791C984CC63BA4C9FC459446CC93C1AA49D95ECA9C41FE921BFDECA8EDECA2EDE466CAFC51C6D1FF7AEB7BE9D5ADF173BDBFB6267795FECECEE8B9DD57DB1B3B92F9616FBEE388F95BECBEF51A3E28371B4F892A3FD8371BD81F6067A02067A965D6A7FE360B7066BF9864E6C075ACBDB0EBBC21CEA6FD2ED16754F76EDFE64D74D3C59CE9F6CEFE80C2D2780435BF98FD4E85012B1A518CACD71B6059B3E43BB601ECE1EA5ED6DB2B7C9DE26B5E4473B7AEBA30435F172B6266917D0E0D4A30C1D2FFAFB0EED52A73696AFBA1E2DA4FBC04D3BF6E543CBB84992813587E39C21BC416C44F8828CF3655E44A3711A4E7324E369FA3496E0102EB73F3E7FFC18B51D6E9F6708A761BFF0B46BE81E6708A7E10069DF2A42CBDCC1C9BB9A111B13DEDFD7DC3942CED3B5F43B29BB068EFD1A94F5C8CD72196B67D843329448B2C8466DE18445411AA28EA165F24284935BBF89457A90EE1AA4D6183D2C448FD6BFF631A4760D5DDBE03843EB185243CBF03A3BC35EE9F8D3F6F4534883FEF8D37E316A0DD1C322F458DD6BEF5D778C5C5BE0D9061EB38D3B769CB1F5CAA1F5F2A9BCBC504ED1827136A2FD5A658FEB66FAF374E7FDC1807D80BF7F7EC792FE3C0F55F7A128776C77B621FF6C23FEDD1C65CCB39B3C043C9593D4288B77B6391013139FACC4B0A87F86E752307A9EAEB51FD8EC03BC96FBFFA77E5CF858D1DF4764DD31EE6DE3565AC763BDB57E434470B0349EDB6B6B19AE2D65D895FDC82522CC632AF74417119B463810E861A38084FD71E163B7ADDE34F24EE01CBBB63E2EED8ECDCF32E2E7AE9A5DB7803F43F324E26C29E3046E26B3ACDF5CDD3542CED2B1F40159770C1BDB9892D6E1582D6352EE0A77EBDB69389CFA74C5E76CCA104D0F1D27FDBB3027004BCB61DA798619EDA38CEE18B696E10F77D5ECF9D682F05BEB2D8555C26732583F7AC15132225FD3C8FDC90B9EF508D93142CED2B1F4A11D770C9BE30C30F84EEF5888182B2D11E70BD6C362C7B038476FF288BD25F6D1FBDF9E3C1CE1AF180D50B769A0D70148DE4E81F4578DB6CC88EFACA8EF6DA8FF4370B4A6E701F6FD2E4CFE1DD22589B8509CA2E6463E50DC8CD2C73C97E3194572C5F83C8053676666C4031BEA6EADE60442D0A68FB1E08547D4A701EA1AA7F0F8DAFE09BDF77D1BCD3FA17F25D8A7134AAC1AF07480702E2DFF671CC83F9C8C153ECBB7339D70FA4456310DA7A7D09D588F4206DD42FA1C1F943ED0888C63CAC29F98E706061B8EEE209A8CBE0A96CEF8FD225448A7E1EF389C2678EA86E7CF5E32C6991E9388131B23F89C1DE6148C2471773EEF39E34EEA2619FD427D378A3AE08851EFFC12BE3327712EFDCD2F22BB3B6B5E903115C30E298703767FB0509EF859CC9C0928384E339645AC7681D7071C719FCE9D4996F3FB497C12A3B6B1AB8EFBCF6FC9F29BA40803EC4CD622D35D081CE0AF41E256DC8CA56B61813EE67CDD2FD47B76DB953A73EFF9DB6C8EF01C39E3F7977CA0D3E120CD8D314634F4189FB9118CE17884DD7436FD90EAD043AA6E3B4A67EE149E70E8B3A56376E82B5B21CF592FE8780EF7F354E01C4F71281C1895F32E4773D785CF82CF24A2D821BF8F493022912367B614BED1DD8092F0714417CEF4D78F755A8CEA2989E8CE464CE7B2A9E1D4377EC04B1FBB1996E45D10B203C25F330F71E161566E5C8C6417B2C0917FF9034F5D0A27D9B913CEF1CAC1039F4D31FA8647898F46C92A4ABE1D870F3C2AB765E190A1DEEB5C96D41D0FEDE4A6E58A85E2BF7C86F88C4EB63D884BCEC24CDDF07D70CDCCC74BF6421D3194784613BCF29DF9371607E7375AD9ED2CAE63C4F6E333F509656E7094C4F819734EE5F26E66E43BE0DB9B786F964D6679DD4F2034CCFE49A378F6A1B00E22D744622AB91F68A995C77839DF0CD02B27348D54F46B84BD446AFB4F47DD57B6D481E8734C85FD0977E3926B50F4636EBC8E1F50B9BC250F923A6498844B474B29FFC22B4ED18AFA1E966FA14D88275A0C233154F3F1CA032C226896D79F6934A54838333CC78889EE269A8A424459566CF3253E370BE447E57661AB36FB76DBDDE2C79CB9D7CE967DA4B97C656E960B1CAF3EB8DC2F73B2ECDA8FBD2C6CB05BA08B33B74177474BFF93AF52389BB4BB1F50F43678681B3C97CB406B1B44C9CBC89D1D3AE3565E5370C57553E96716D1AF0EABED8E5FB9E2EEF81EA9E1FF13CFC514E1248EF31FC120BC3FAC566B812C0EDCAD1696772D9CB0FC9DADE80CBB13F137164E4844422E9FA374C635BF1580D8371AA7B7186D77F58ED0E55C90BFE8CFB1D5A89C38DB503BE2097B6F7F87B63F792798069C4E704CD1E06CEE833F594C403FD65D0737221EDA105FDB10DF58C97D6B457D6355ED5B2BEA1B2BADDDDA503FD8087E0AF7C5FF602115A649C369B7907EC7E7191E6D70FE68D3DE8F36487BBCB121BEB5217E6B435C1793C588B82E248B11F13B1BE2C11B2B6A2B8C0DAC4036B042D9C00A66032B9C0DAC8036B042DAC00A6A032BAC0DADB036B4F36756581B5A616D6885B5A115D68656581B5A616D6885B5A115D6AEADB0766D85B56B3BBF862CC9EDDA0CD9999995F0B6D7EFB381A6E52C34629BFD41B3835FC663CC4FEF1F9E1E3EFEDABF7DD5C4CBD9A39EB5C7E560F39D43BC477B16AFBEBDE79C8D691A2227679B6CE6816814E170ACC618FE39F45E7D62B2943C3917E133F127DFAD3FFD91F8315DF8742CD8FCF8FACD77DF0D2AB5D9F2D99658E255FC5CE6F75F1566C2FAE4DA7E4CB1FF130BE5231642235553A5E1982EB05F965FC9A6B5695A99394A956E18AA291FC88284D258AB3534292D130CE90BDDF0565C4C9B0A7EB82AB4753304C633CA7D12CAD740D260B132D434AAAB834D43B60043274789B33EC34EC0026C424BC0682B66526EC17A0F079F34A4270952E193914FE7784C57874552B3486550B5E53D077CB5D4F154A0E665A1970E01A9BCE812B3CDB73380C8BA2EA70205329990794C97A9CF0C69843CEC331FC7210B0EE2729AE42995D09CF10C90D458C19385D7424CCDC2F828909589D20CAA759E73C4535EB793851227696CBB393E0E386DC569865431DF39C2AA50BF5381D654CC1C638A160C2DA9870344B99846786C89C3F416DCDEB1D5244FA984E68C6780AEC60A9E0ABC6838615120A70A1831E4893A0819D39FB343A0AB419C52018DF9CE005B4DF53B1568159FA6A52F1E0EE51B6701F9EA25218E98277F71790EF1206ECC58B8527100AA3300A1796D4F1C923C3E4A3016C532816139FFF902B054CF53815E16F3FA10E8CA4A2EF15A7F3A038CE4553919186451F427B2633F0416B6C5970151FC7E0EA828D4E754A0216F5A8D679420E28B596BC4C290AD904F6379642089E821E0D22252A990D6BC6700ABB63A9E1CD436F30C2AA619CBE485A0A5F826CFA6107993F980886B944C0FBC169273C25F73554F0E86816C9A8078148B7AE0C44BAF041CD6E3E945D203AF2EEF3921AEA68EA70235C643CC67F9F90B1A8DB75E9B1D64CAD7244FA984E68C6780B0C60A9E24BC7C3C62A202C23E0E0FAD822CF5B02A653A3748152B77DA700A698098F83BC9361948703CE8AA886600360DCDD962AF5AD75381E2FA69B943606D5D7689DBF6E319A065539953818320956F0F1F020D79D125669B6F678085755D4E060A642A7E982021CB596EB8FCD3495C2BC885DD03068088CB9BE06010E0B12C032D43E2098E724D9BCE0F72E2492B4889754D8E33F01BFA9A9D8A17E14910506557393D59C396070152BD38653835E53B075035D4EFB4A015119EDF8708F9FC18C0552390065EB539CF066075353C4E8865172E054D2C284894CBF113F3C82F34E2F1071CE311E6A4822749F599C4A5BB80AF5F6DAF6F2A572D3F8F6724C03FBEF646F2D19BECFEE73AAD82AD32EF22342BFC8B89BA328AE92DE5E8AFE9554AD467D395ADCFD92645DBBDAEAA406D145AD9DA885AC4DCDC21AA88B349D115BB496C61DF7CDBA4526673769D20CD1450E9D6D716DA055BE73492699D192A4EF1C87BBB48C5DC466215095A446B3E305D91AD39BB4EB8668A16E91A4FDC56846BCCAD93AD91A04534C0A9CC8AA0005A9DD800F26E95289FE93315BF4C0510BC4CD822F2FA145945AA7582AEE0755A1BEFE281A46A01C5546D29C50C2D45B51E5CA914DF4AA113A995C854CC96630EF5D2B610360ADD426B2A7BDD4E79BDD075148DD2D611B588D9BCD75A91B139BB4EC0660A8874A52DBB66C94A595BA52AE5EE2491665FC750400DA5B9BC1AE216F1B73B0915F9B6493A01B6A92D256C96A72B056C5274FC37896DECF345D42AF73C41CB3C4F6BE15DB35E5629AA269FAEE49AAC6D8234ADB454C569CAAD15AA89C048B4DA597A8D70B5F9EBC5AB256911504663AA48213FEA8A7AD02D5DA8FC90C77CD17072EEC35122B8C85E2C6BD855A22DAC85422F490B51BB9859AC2FAD3C79524DC1796A6B096FB4CCDFD4F17D63C252B4F38BE8B964A46C19208CC7697F9B888AA74F12683165465623940165ABD47A88D562CC046403C4C6249C63345F8A1E7D92CEB7A998B42C123E0FE99C2D5124BC7ECC649C380193403780E8C4A5466438A3D62A0EB5220FEB44189AB0CC8D26965D60C2C51093A4A3FA82A0FA424DE86AC432216D15FC5A2BD6755DA1D7262C517182B381331262F2381732C4C28D7AFAB201E435420238B4D6E6462BE44D5DD937262C51FDAA96BEB446821A411A695A65BCD50A725B57DAAD094BA49DF8D6CEAF5B296A4469266A15F3AD5694B775C5BD356159062493269B39AF245E92E8AB975B2ED6AD53C2C86B84047068ADCD9D56C8BBBAB2EF4C582239D6C268424331CA624BD95E11F184B468C1FC740C9219ADF8277E85C92A411E59499F1FA60F4EEB04B2E559531D5BB6ADCAB8D756E7BE4EA07B1396A8B438BA88D892793448E594428A3FD26E545FB231718D80C6F4ADF578A715F05D5DC9EF4C58E6435B549CD9D2D239E2B609751726350283F9B4D54F3BD6A91BEA188C74D258C91A8EA86ED099A618704589C00591AF80676E4A4C4022B210E3BA74895CB74E60445527532B61BBC8B5D39C61E33467683ACD19765249478558AB433B271BD6CDC9860673B2E11B017631F926E3E2AA9DF4B0A3D2F2AD767D10445D23A23983D6AAE88DA6D6664C4C6680F427C096B98C72A81789C913D78E2941E435420238B4D646EFA76A1D9589A792132431F85F646D075CB88791D70809E0D05A1BED446D5837511B1A4CD486D7A8FB223288BA464473066D55D12AA74E3706AA29CF207338CBE1B2DCC1E56CA45DF837A2D24B6440D82E726D7F74DDD81F5D9BF647DA9970DD44D8601E7C932F6050D9FC51364BDBF43A62B84C56A2FE8DCB6F500E7A49814CDAAB55DB10378D0D7163DA10DAB979DDD4DC60667E2B2187C54053FA24E1B2A7110E02226C3020A17694D142A097A399A64D46EDACBC6E526E30277FAB33B9199A279198D3C9D9DB060E4CEBFE60F47A29412CDA2AA49D95D74DCA0DE6E477EB21210EA73E5DF1399B326108E919F3BA85AA761ABD34AD646DC26AA7CC7533668309F37D610F24F705AB84CFE412097AC15132225FD3F592E4457B020748AF9712C4A2AD42DA8973DDBCD960DAFC4E2F1D110DB7449C2F98B6BC7622BD3CED742DF2E6CFA1BEFFEDC9C311FE8A51FA625045427D369D4CFA9C66528CD27559F9BA354A9F0EAA1343CDD720879AD54C90188B31171E51F9D8B87E5E5F97B141944A5E2359EA0B6F2CCD98BD6E76BA4D6A28A07D9E9A676CA84173158CEBA07372DBA48612DA1D5E9E51E725B6490D25B47B8C2C633DDA1BF16D8A68ED22C436A9A100D366D64EE4B7490D259836F375BD8EAE1B95746DAA25DDF0719352CFBF7D2099E5D38DD43629F5ECDBC76C59BE7ABFDDE8AA4DBD73BD9135DA98A989D55B58A38199DA57E5C1EF26975ECED8ECD2CB795B6429BE2B5C15A094AA2BB594A1A5A8F2F372D5C294745D714A16A5C0C26D14DD4D8FF5A35EAF0AF92A373EB42F7F952E2795AFA58882EA2E9DD45E912A50365C25B92A57C7A0AA6D8F57692A0E7AEFCAAE4225EAA67B31291FA37B2E1D5464FE40934E5B1D9F7772A938B3AB3C990E81F771E0EAD43C42A4515BDB53450ED5A35C214A49EBEE07C1AB6BFAD08E46079DDEE871A81893CB4F293FD02526072AAC3E2663A2BD96276876A9B8F2BD2CBDCE6A2E59395097FEC1141395193CB5B24BB555EF8FE955D770110CAE3ED3474134FAEBF49E8843059ADC724BF9816EABC15568F8F08546835D9ECC70A840838B78293BC88D3AB8FA3A3DEEA051A6FD23110E550BBE489832EF7E07D099DAEB1E303057B8D11308BB57B5EEBA6393921BEF2BC2D55B0DD2AFD1604B247F874A2A5FB04C296BAE4F76A8AA3E10BDAEBE0621EB5D56BA7AF333AB79C3954E78F501C1D6352AE91AAADDA19A0C6FADA62CA1574F2DD4691C50BC49ABDDA292EF42B9464776CA3A861DB2B150757BD0EC261D03436EEF42B9CD9781CB5A35BCD10B57A76960688D2E3BC59476A84893EBCA293FD0B5634B15D6043F6E539F49CCE45DA94E7397BAAAB6A67BD1AE54D618E0D75883E6618277AED0DA537C0DFA6D3F7A0757B72E88AD469FADB16E1D2A4CBD7C9ED2D65E2C87575913A85553E3B670AE0E2BACDC854F49EB2EBA77A86E2518A9AEB6CD114BCBE296EED667D26A6FCEEF7D3BA435E8A6A6E6B0409D0E5BBD318C40CAC82C2A400735990596D429AB43484A972A6B0F7890290E10B9A0ABFA0C8227D62A101A78D1B90A5B02331494681A5FA15E8D3F5C654C37C10137693F5C653BBEF907F1537472784AFE601EF179FAF587AB4F492887B7D9AF0F84D3E996C50F826748C6A560849B3C0F62B6B10E8DA848B4CEB24E5EEF8C93187B38C6EFE57A341EC77F65F7235237FC3FB19F882C3F0723E23D847F26F1228945954930F24B0A97B1159BCAFFE1AA22F30F7F2EE42FEEA20A424C2A2FDBFF19FE33A1BEB791FB17EC73658A55C742066DFC958472142CDB3216FF25D3D586D347161A32CAD5B78935F94482852F98F13FC3CF7849BAC8F66F4E7E27533C5E89EF4BEA91A89E497B4394D5FEC3072A2F9D073CE7B1A5173F0586BDE0F9BFFFFF6235421842C70500, N'6.1.3-40302')
GO

INSERT INTO dbo.__MigrationHistory (MigrationId, ContextKey, Model, ProductVersion)
VALUES 
  (N'201701091007343_AutomaticMigration', N'RatingUniversity.Models.TablesContext', 0x1F8B0800000000000400EDBDDD92E336F22F78BF11FB0E1D7DB5FB8F39AE96AAAAABDA619F133D6EDB5165BBEDE9AE39B1D33708488424B448424D9072A94EEC93EDC53ED2BEC20224259120482209E89B311DE312814C2412BF4C7C27FEBFFFE7FFFDE17F3C07FEAB25893865E18FAF07DFBD79FD8A8463E6D170FAE3EB249EFCB7FBD7FFE3BFFFEFFFDB0F3F7BC1F3ABFFB9CE772DF309CA90FFF87A16C78BEFAFAEF8784602CCBF0BE838629C4DE2EFC62CB8C21EBB1ABE79F3EE6A30B82282C56BC1EBD5AB1F3E25614C0392FE103F7F62E1982CE204FB7F308FF83CFF2E523EA75C5F7DC401E10B3C263FBEFE846321DBBF439A0A1DAFBECB485EBF7AEF532CC4F94CFCC9EB57380C592C72B2F0FB7F73F2398E5838FDBC101FB0FFB45A10916F827D4EF24A7CBFCD6E5A9F3743599FAB2DE19AD538E1310B800C07D7B982AE54F24E6A7EBD51A050E1CF42D5F14AD63A55E38FAF47110EC7B3D7AFD4A2BEFFC98F64B65A1D7F9751FEE3959AFE8F0D320480E4FFFEF1EAA7C48F9388FC1892248EB0FF8F577F25239F8E7F23AB273627E18F61E2FB453185A022ADF4417CFA2B620B12C5AB4F64920B4FBDD7AFAECA74572AE186AC409355EC218CAF87AF5F7D1485E3914F36282828E173CC22F22B09498463E2FD85E39844A2111F3C92EAB152BA525628FE7F5D9A809D50D3EB577FE0E7DF49388D673FBE167FBE7EF50B7D26DEFA4B2E8150A6B03A41144709A914F2112FE934954F292ED9B4C1EB579F889F66E133BAC8ECE0BB6D325AB7FA2F110B3E31BF449B27A2271C4D492CC46775393EB3241A2BF2FD70B5855823F08AC2C2C19714E0D603B01180E8D3BFDD63B05227149169EAA14A556BA55A03114095D6E9DF5FF668576B21ED6D6A6D31F536B5B63A53D9C633CA7D2200C363B45870B44C5EB056525D465434C2ADDC2D592B9EA12DBFCE4F34D689C654345090F293863AC763BA6AA95E334D5D4D8DA9AA95362785D6DFC31117FCB4F5CCD36AEA534DADC8ADC902958F4C26641ED365DAE0218D90877D26240D850FD70ADD4450531343924AF54CE9ACEB2CC68FC2079B5537CB6B5AD34AEEF64A5649ACEBC745229D08541BD6719BDFB49E5A8AF6BAEAC9A0F59D0A771B53B46068493D1C20CA850BF3D81287543F7A6A22A8A9B12149A5CAA674D03AD370C2A240BA298C18F2045B9198FED4776E0DF96B6A6C4651A9B02119B4BE7326C67833C2E32543F4C513C32A3A4301F9EA25218E98277F7131CE22FA0637A6AED14517FA8A663A3171A4271E77D350910EA69B1A4A53ADD49143F511E0AF41A2EFC9B2A49A5A55122B8257738065632113FE61226C432FE036BD4E4A6D8EAAA8FA6C5079432C9B8A12447CE1C6232646892BE4D3584E6892886AEBD04253532F73AA4A5D01A49DEBBFF17154B8383142246829BEC9E91C8949B31A1A49DBB4614A5CAF14630E9D751388E9390D8847B1608D138F8A592F6DC1869EA64D1BAD54F56A682785D69FF110F3593E71A2D1780B39A677B84D0435353724A954DB94CEAACE3E1E31C153E8D1A0BE85CC2675D5676FAE670D8D9B3A8634404CFC9D6423391200AA5CA10569A089DA50218D2CA0FAF92617BCC29AB9E23AB1A6869AE44A157479A0324698C6E9BA9246C43CAD46C26A6A45404D16B07CF9729B4EBC34A94E3A35B12A5C250754361E930509D132245E44423980A073FD2C529BB346F2B6BC958AB41280EB9504015546DFE95C8D2DF5B5ABCF5F5747238A6A4DCDC8BAD537223C5FDF0AF9DCA8C635148D756EA7A9A9B501A1D53E857E8115BE63A1E3D3EF5D34948539477C16CBF527C0EE8018AE871EE3B02D058E593CC22B100DE668824314B2A00B99C7C650B245C426501A8FBD4049E6A29D309448B415B095E0D5113450AD091278750411B43A9CC1AB2368A0D51124F0EA08226875A85772D500CA15C1513341D7CD6B87DB57EA269CE97657B7EEA36D2FAB434FD2CCB2EF541ACA9A50B6F3CD70BEC6D78EF7DCC3C9EEEBE2D370BEF342128EA7C4B19FE9EED23A7BA85DEF4057FC167CF3BA930BDB6C47C35D554EDABBA403BBA439F3105F90F1EE4D793C2323B49B736FFAA2926044A29D1736A16284B08F5A1DA367039F39513D55C3B1944E1EA9F9000ADC4D35F1EB7D5743592C0EF663EC7B19B76D0F96ECA54E85F23C1CEFB5BC73F39AC73863DDE1A137D5BF420FCBB971BAEB13700EFC6DC6AA77B5BDABED5D6DEF6AED5DADED81DB56075B7F46D78D6F2D9EBE75E05FB7EC7A1FDBFBD8DEC7F63ED6DEC7BA3AF0DFEA6B9BEF0974F2B7CDA7FFE10EB7895FEF711BCA12D4019BEEC7418D925512C56246B41F179F840209420BD85F97F54F26008EC3D6FDF400FB740524A2A2499638E6853B9886943E7D21E14B7A9E1C44B7C25180A339944C9EDAD9D07C6002E60775877B73F15DFDEE0EEF1DA99E177A5FA993EB6DBC8404F7BC0DEC7AC77BE011E8DF2C9AA3858FF7B1193E8B91309AC9EE0781B2A4900574E7056558DE4F6725903EC57CB62715AE4B2301A6FEEEF5B88FC9C8316EDBEDECFAA6DA6F006F7D76EA36007739E19D8831F3BE4B3970973266491847AB9D97F355403CC4BB774E0BBCD8C3C2455A0A2AFAA8D33E3036663889672C42291C6093898B3EC971903BED6A77617531DE65E751BEE0EEACDB28B2ED3B8C037718BD23EF1DF9E53872F7A1370C9D775BE48E4E6E7B1D8703EE9933CADEF95ECAB1E380C4CC13B8DCCF6AC9B6B433DB773C464F078CB8A3FAABFA983CDD5C5231FC4E07BFB425EF9DD3C538A7BCD1F7E49CD6A5ED659478D9AEA96BACAD8A936A0EC9D5C953B506DE827BAF1696BD473B8E3DEC102F22BC147649776F96217E49B787315A44C49303A3E5CECB643CDCA20EEFA18A39EA939711F0ACC386344A7857521C4E5B0F907475603B0FB4A73ABA0E31FAEC9C5F4BD43D0B1FD8C8B97785C7E10A45BBEC67D4250BFA9B8CF6528E40198A0A9BDA66CB659252FC3320B4F626FB895759EB5BC0112FED5C4C5DF04A0BDFA267D93B950B732A11630147B1D0905F5E20371233A3FE9BC6B3029E763311DA7950D65A5B378FE7DAC9C89B23B4C22DBC895F6FDEC761DEFDF4A99F3E99B9BD1D8663561D1E348CB3BDB72BC566B6F474055EBD973B0E2F97C6AEDCC72046E80A613E627B8A0A248B9BC9D807BB5F916691BC24B1C7BAE525EEA87A4EBCA09B20ED8DDEAF25B0BB43CFA789D8EECA115658F77EF138FCA2664486B86CB73DEC476E4FD6482FF682C395D01EACBE45260BE64BD0AD12B4C1209D15AB72F8E1B05B9FB3C35712CC3C92D1430B9D1CD4F6C904B8075AD3F62EE6524E1C2C18672331F9D9CBA86453587F186AE7270E3A3C8EA27AAEA607543AB9A6CD4B2970CF9493F68EE938C63E0BD88ED2E219987F05CB1F0E80F987C0FCD7C0FC3750816EA10437D02ADC42096EA095BE051250A044C053FF1CA8520E148703ABBB00CAB300CAB380CA7303CC7F0BCD8FA0357E0BCD0F2D610ECD0F4428D06F2DEE80F9EF81F95F80F9DF01EBCB299420065244C0168BA046F9064A0005F500410D7980C0AE05418D798080E6CC812570287FA02D70A02D7020B63D5876A0A52D817603547E0C547E0CF4BCF1EFC0AE1EC81E88851888851530ACD41C585D0CF41118E82130D03F60207C30103E73A0FC012C3B50FBCF40ED3F03A57F066AFF19A8FD67A0F69F81C6FB0CB4AE67A0753D033DED33B40F7E86F6C1CF0368130FA06D3C8036F200DACA0360334740279700FB53E880033AD61D4007BB0320EE16C336DC755D7C033FFBAB2EBD35BC0CDC6DE52D7F03B8C3C25B4AD9AFBB35EE7B05047DFAF71ECE478972FEFDE578F6D680CF4757405EFBC074278CD7BC250D87BC96516F0147B2F23CEE70C05910D110F96C8C7D1492F8EF6E2CD203D2F27A8060D181838F799C5EB5E5A85325D61713E4C62001CE4EB1170805A451147997CA2F7877E2BFC94806E65ED23141B120030E1C789C782B14B0303DB02D1D1E681044B8D0F878D69981ACFA08BF00C7525268F9EA039C7242431C6EC3A0029AB76BC3C2A9F2DA199176ED5BB44EB8EE5DF896BC959EA795C0AE234A5F9B2F8729CBDF9AEFD41DD5B3EB3BA586B2521DEDE7604356548778E5FB0D34BF29AD8FAC0E7446F52658E7928C28AA8EC98CCC817B121D63FE1270C8E72E1C540DC3DE453595F52DA69C7974C5621463F9BEC5EE83859F8ECB390507DEBBC53AC36F748CED3435AED180D0CA393E0CBA78C087C141DDDCC307B89B9334FD0259B7721EA0FB0F0FD0FD8707E8FEC37F7E7EFFA9C19B00F08F3CE6CB3B0D6266C8917C395D065EC9264CABA49B7134B2EC2DA7B71CA79603DC8AC611F0909743537BFAF3E9FDEF1D6D2AA5ED8DA7371EA7C603EC761EA0DBDE0FD06DEF07E8B6F70374A3F901BAD1FC00DD683EA48F79D3CDBDBCE93DCB0579963D9CE31590027A2F873620A68D2F02AAA2ED916C6A1EA721BF12946F64745BF632E1DB5B516F458EADE874BA9E8E4B29FD5ACA25198D68EF83F50B03C4C6249C63345F623F7D375CBAEF255D247C1ED2395BA2088F58CCE4BB90FE0A079D42357628A63780CB3280D371E9C36E1630EC117D51881EC2172AA037391D623A5F9E8E65301601EE8865E16F0A0EBA23EADB19F7767159760145397805EF909DC3753733B9EE8DE0A28CE01A6C03D7F085EF6BF8CA3778E9FB1AB8F6EDD0D250317ADB66B509897E46D85FD6CB84781A61AFA3491AF3EF6DB7B7DD933344F036D7217BD59B6E267CD35BE645592634E294A48093008DD9A115A0318DA9D04420C368E64700C774250F15753490068EBDEDF4B6E3D410C0E7240ED9E3DC7633A8DBDE6A2ECA6AA0210B25059C046C68D028840EED06699FBCCF9EBAEF68534D2C7B7BEBEDEDC0C6033ECE77C87EED6D371B7CDBDBD945D9D95BB09DBD85F76B6F0F36937A5B5EDB6372772A3B8590C402DE5FBD7C930ACF3B9A8B31FFDEAE7ABB726A24E0B3E287EC8DEEBA99D75D6F351765357760ABB983F746776043BB030F14EF0EB65B76975DEC4669681DCE96720215114FF44FF2E1A3F43E62B6A125FE895F61B24A904756F2349E7CB4A7A39DDA15DA5B796FE52767B2E0AB5787EC7FEFBBD9F57D6F99176599F760CBBC87F7BFF76063BE071BF33DD898EF816B3B0E6D1391C984CC63BA4C5FCD5B446CC93C1AA4FDA5EC2CC51FE991F98E266CC8BDB7F4DED22FC06CC1F79F0FD96BBFEB66F2EF7A5BBE205BFE02B4E42F403BFE02B4E22F401BFE02B4E02F50837F77B0CB16EFF2B83FA8F82C2E2DBDD46DFD8E36BC94DE3BF4DEA1F70E853EF6448603DDAE23F6B7112FC9DCA1CF6E025F197D80DE7574077ED42DC082A0EB0DE0820CE00908D027607FF7049DD3826F070FA1F3EC2158A4C3D9304A22B61443D539CECE4C60B488C88279580E4DE54385DD4CBC856DEF017A0FD07B80EE1EE090835E8BB0A1C33E6CE8C5593F3866D811C6193DA8B9EDA483EEBBE7DE40F73343A527D4B5758B563BECA3D55E92BD88F6068F1FDF80FBB4E19B834D0ADF2036227C41C6F9CE05A2D1387D3761241F4EF0692C81203A906E97CACCD9F756D55B95531379687D71FB88FAA28EABABFDE2EA6559CDC1C2D70E0748FF8EE93277E6329645C4C684778B9001E0DF43FEB2207F3A4EBCE30E71BF457C5988EEB0200D9F504017B11D5A019281FB924536DA0F272C0AD218E40C2D9317221CFAFA6D79D2D15C8CF9F7767559760537AB5D5BD5217BA36E1172877D84DCCBB21A7094CD213C42EE101A98D3A115948EE56E4FE586347070F8D79C7D6F5597655570A3DAB54D1DB02FEAD615F53DD145D90CD802C0D19EC1C19E0F1674BD1C133D5F0193618D285A30CE46B4DB6E4C3BDBDEE47A933BACC99D4EA7667134EEBA3F1A7779D6D63F5F7DDC06DDEDF183FEED838B326270F87670F4F69B43C594BEC99F90A3722923CA823F6F0E8AC6C4272B314EB47BC51A56446F59BD6539B5ACD3E98A2CC69637FDD8F2F28C077AD6ED086F451DD0DCBA3D42D2BF41725126067E1201FE02C92DFCCD56410235CCDB6B7829D7D052DCD9A65CA7C43CA6F268C72262D30807A2C5D9282061B7FB508D1C7B9BEE6DFA322CF4E1745E53E9F6984AFF96CA45D932F4C90777E8D4EDAACDD03C89385BCAA0EB9BD50ED6ED9409A4801EF31785F99371E1DD5E20E91F20B92838835F26803F3F027DCAC09D01ACA330E070EAD3159FB3294334BDE394747E58B88D696F3EBDF938348687D37972A3DB8B1BFD831B176530D028FCEED099EF830A17BDDEFF5C257C269F2A442F384A46E46BFA6E61F28267DD800C28A0C7FC4561FE645C78B7E717FAD7172E0ACE077B5DE09DDEC31231005F22CE17AC1B7ADBB8F6E8BE28749F8AB37EC4DE12FBE8FD6F4F1E8EF0578C06A8D38A8F8ECF6121EF7580BCB73FC8FFD556540BF99D25FDBD1DFD7F088E0A1CE4016620872D2ADAD56E03ED118D69942CC7338AD20DBDCED82E33EAC1DD5096EA9A80D0F834B0A3EF0A2D7B9843C11963C10B8FA84F03D4F1A9063DA71E9E0D653DA1F7A26256C07842FF4AB04F27945822EC64B06A01CE1E8D4D65FD1907F28F9D0F4A3F0B71775FCA27B28A53CE473BBAB0B1814EA187D7B4BD153494F58146642C19FD2494B673946E4ADB8FE525A3AFA2B8BD94F58B68053A0D7FC7E134C1D3DD97F7B3978C71D66E49C4899DDD7FCE6E100956616CC7E93D677CE7759785FC42FDDD2BF970B32D7D379270873ED56660D18F2C1A7D8160BD1F07B720632A86C352A41D17F5070BE5C1EFC56C2F1513A54DB3E21413EC60381F70C47D3ADF8BDC79593F894F628E32DEC7C0EFCF6FC9F29BD44818E0BDD4B158E0BE2B1AE0AF41B2BF6A66C5EDB392AD5EFE227B4368D7D6E930CB9AB6EFDA8EA16BFB6D3647788EF652D65F8CC7FB9A8CECDE6F09BE1EE3B3DD5788E17884773FF2E8A7142733A5E87402654DDBFBDD63F0BB4F38F4D9728F45A1AF6C85BCBD8CADF6B81CF4F3140B2C4C7128FA162A01B087A5B585CF82CF24A2784F657D4C821189F6D0CF2C05E7FD4CDF081F4774B197F6EA47FA863B7EA997784A22BAC31983C5F984FE44C251F45B1FF0D2C7BB1F5DE78315648BEABF661EE2C257AF76EFAC6551210BF6E0A9FFC0D37D554A16B59F4AED718DF581CFA6187DC3A3C447A3641525DF8EB1173AA6CE61473D22B4F7B0D89E3EF4F3B87DFFB11E66C8135C2B168AFFF219E2333AD98E38F655AAF068BB2FF3619F05F978C95EE81E0A939E004DF0CADF4BD7C3E2E0A206E1AE578ABABDDFBAA6ED3D66435913CA766F02498C9F31E7546E7666BE72CF65F69EF2043CE5397BB06B8B2583EB7ECDE028C67CFFA4513CFB50587A967F3FD1E038360C798C97F3CD4C7A7D3D0D08FB5F23EC25B215FEDCC388255B1646F439A6C2C70837BDAF128362DFB07B6FED07546E59C8FB767B2A2C09977B5892FE175E718A56D4F77088E678423C811E8CC4CCC4C72B0FB4FEAAD9977EA6D194A200FB788E11138386682A8A11A55932CEB77576BF477C4CDD19743D7CF71D62A798D03969DF1D1E4377982DA14B73FFCA76BFD8B9C775D57D1DBDE9B8A5D78FF8F77F44B05384DC9CB4F756C7E0ADF673ADEE3FF9D2EC5E5615F73B8CEDBDD5C9782B8BD0207D3410136F859297D17E3CD65E4A2AAF95EEA3C48D229F5944BFEE4995FB29ABACCCFD9479668EF69F782E26FEC77C39FDC093678B0B2BFD7D95E3198ECA7DE1FDEC18950F0EECBCB8DFD98ACEF07EAAF61B0B27242221A7AB3D95985F7F47EC1B8DD34053F68792CEC8799FB3DFB5B8B0D2DF57392EBFDB2F585EFC30F39C3D950C3447034E27C23CD1C02AA0A2C2A9F7634DE32CD0FAD8473580624BF6212CFB352CFB0D509A5B60FE1BA0F8B7C0FC37C0FADEC2F23FC0C471E71A761630F00F1652017761CB9D5EC72990F73EA1A1AC47989D3CC270F60843F1E30D2CFB2D2CFB5B5876353A724B763518724BF677B0EC8337C0FCC0761D001B76006CD901B06907C0B61D001B77006CDD01B07907C0F61D02DB7708B55B60FB0E81ED3B04B6EF10D8BE4360FB0E81ED3B04B6EF10D8BED7C0F6BD06B6EF35D47E119800AA510485285024FB686AD988C07A7614B1EDC30BDA43B7C6839E4FEF1F9E1E3EFE8A9EFE7C7AFF7B97614F8941FF5C484359213EB3E742A0EFFF0D81F9AF81F96F60F9F7F67CC97BCED998A618CA19251BFB40A30887E39982F79F43EFD527E6EB72A2CF2C89C6DB9541E24FBEDB6612CD2CAC8B2E843D895F3FBEFEAF4A959A583FE1684AE212EB5C3C85ED9BEFBE1BA8752FD4B2B9F2E319E53E09E523D2E9C343F2553854A8429DBC2D743AC5E848202A6A2B52A3B0FAB6B0535AFA8C07095249A4BF9CE3315DC1F467CC42ABCA666A9056CD05D99F82BD2CF6A88922AB59750ACB734114A361BC3F0590C984CC63BA4CC11ED20879D8673E8E43311E30D18A21BD4E554DA410FD998A7040A52EC4D0218C3BE9B3426AA4CA8CCA4A8BD5820FA8404ED270B273DC4D895A7223456E29AD94A917607F0A9D8A0E3DA668C1D0927A3840948B1ECE634B1CA617A55A356A48AF5369132944A7A622EC4FA9349CB02890BD18460C794220D1CAE9CF99894ECDC8752A6DA08468D45080FD2974CE049B19E1F19221FAE28949189DA1807CF5921047CC93BFB8DCBA36826C17663A651BF381A8BE9370076F081E3B69821A3600E5173938507B9D40FB53781634DD44A7959C3AB56599209AA9B2DD63E5B3671226D20F9968409B5DAB866D4E902EF405EC4F21F280A2988412447C318C8898988AAE904F63B9049544D44449E62C748A6BA186281320C80114BCE902A9E801C53494A0A5F82657F888BC7600D0B329A746753732E9A47563B10EA0FC40F20C8847B1100A275EBA910E43772B8B4675EBA93BE9B95D90FD2998F110F359BE8045A3F1D6DC9851B76D48AF536D132944AFA6221C48A93E1E31218D6862B842F5B4ADCA2C907556644DD18756624803C4C4DF49369B2341779D36B1325771858BBDC61B05DB5F03ACDF2032D1B026AF4E85EB6C101DE958EF4F0911A672BBD24407D5AC3A15E4B9201AD030DEA302C854FC30AABF9A535BFD3453BB842D9C41F5FFAFCE95E7315990102D43E2452494637C3A375A556C23D4A9464B03C1496BA1FB430D4F82802A8B14E9A21C5B1AA9CF885CABC47A4A902ACD04D8B74223C2F3EDB090CFBBA8B49D41BD526B68E16A351062578ACDB6DF7F62618C6948A2CD65BF914FB8FC4A9E63CD11977F73929F72E1F9C107B58292EB6712E7FCD65BE2DBCD7E65AFBCA2A0327DB1AA151EC5C4163EFACDED0A477DB636DE6DBBBDD562DA285A4ADC6C9756386F525A3834EF2256D836678796B5DE666B2F669D135A4271FFA9BD9462EE96929AB7652A4535676F29AB71BFA2525463EE9692008BF5957201B4DDA428AF5A9B965FA66A2979BDF05B61BE4E68A32FAE98569914535B38B52E2156B8B7529896D8B28A565F700BA169F975CB4AF505D751B494D8BCDA5229AE393BA4ACD262447339A5AC9DCAD0CCC60D8BD450B648B09DCC568AD826B5F0D8CC062B2C36296D1CF2095595419ED0425F33EBA8B0ABC9D7C6BD69385E2DA329B75149B563D49AB26AF3B794264FB656583EE8E6B02A1DF2982F9427473D1C25C2874BCF952977956899B650B497989FDCD6B1CE935A79BCD192BF31A1143A7E112E4B5E8695E7A1799CFACC44D4200D0AA16D1C33B2D6B2F58D64D24A03C4C6249C63345F0ABF3B4987AA540C6716099F87742E262B91701C3193EF2A8AC609741EBB139756C986DA92AA17133494399062E9E3C4142762241D3614E4D1F336A16B2DFD5ACBFBDA841215473B9BF647421A314FCB6409B1B05C4F5F0480BC55961B6D11372694A87EFEA367DA48D05ADEAD96E9AD0925D28E2E6BC7A2AD14AD25BED5727D6B42596E5C26319A5956128B59F2572F872AD64D1B61E4ADB2DC698BB833A144B237C2684243D10FB1A5D45D443C21949844F9A9CBCF502AFE895F61B24A904756D26B8469A47C5DB9B63C5BA5BED7967B6F42894AB3D145C496CCA3412A8E9445FC913A467D01C6C4AD72BCD316F0CE8432EF80517130494B9B666DC3D02E4CDAE4D2760E067D437A2F4E43890CFA4A91098959C192C890F6992989C14A4416A25B4BA7FCBA01B211557BC9B5239BA1E9C866D849766BC9B5E3A9A1C1786AF84660420C5AC9B8383993E63C2A4D81B5933A1075AB247AC898206680F45B15CB5C14D9C94562E8C4B53D2388BC5516BDC998D88C1C1789E1C422D323701D0146DE2A8B76743534185D0DAF51F7993488BA4D126D150C6A501EDFE508905DB85C81E46CA45D7630A26A2FB9D6FF5C9BFA1FED80D2603C79930FCAA9D47B948DB7364E48F4E164256AD238C582726897A8561B37A6DAD00E5A0DC6ACB7B205B1E83CA5DD08DB17A3F9202002810109B52EBC85A0AD3CED80D560BCFA5687BA199A279118A1C9B1D8A63198D6DE60F46DD26807AC06E3D5BB75FF87C3A94F577CCEA662D49F6D36D74D67DA69DA4AD50E370D469BF785F5931CDFAB84CFE4B01EBDE0281991AFE9183F79D1EE3000E9DBA4D10E390D469CEFF45210A1C525E27CC1B47CDB895ACACD239ABDFFED297B8E09A521172A25E9B399F11EA5B35C191514A5D116EA98ABF9CCB8C758F4497844653457FD28B72EA311FF7A86C61C7443C16D92198F06318CE5D0D9D736C98C870EDDDB24231EF508306D73EDE07A9B64C6A35EA30623DCED0B86353C348144F43C741DE226C58883AEABDAA41871A83778531BAF879629B2EA81658AAB4A78C7064750CED8C2BE1414AEC2B494DAC24989B452E1A5A42BDC0A275E742749D661245E15F2554E9468634D944EF0D4479BD8D4A67C7EE50AC26B7DECA7C0ABE6C8CC55B9BA06AA680B2AA1510C280E45A96AA691280A15353985032A43A3CC86B3431D146A1E7042A7DB8EE12ACA2A8007AC286A1C7620A96BC9BB6E074D5C0A8DBEDBA257946AD710BFA2508B9A63576D9C76AD0FD330151A25758A7051AA2F34C645410990E3669DCADCBBE2ABA12C4C74DE1200A3B9EAF521309A34AD3F71072D69EFFAD547BA30D1B1418C8CE6DA3747C968D275FDB9C32E25EE5AE7A6C130344AEF1447A3A40368248D82122067303B95B96BC51B06CCD0E8BD4BA88D920A80C1360A1A001C47ED52E2AE75DE29A686A605EC637394B463159DA3A0ABCE8776EDA53950CBD505E1306F33A3301E26FA690BE4D1DE4E4D879B6D24D875DB54E37568D4DF12D4A354BFFAB01E852AE80F71B7F0D9B92AF4D13B74FA3088F351AE4C73A48FA266EA4FA69B70DCB58E00013D347AEB1A0EA454F30E01410ADA009ECDEF5AF2DEDAC138EE475373740B1EA2D70D387C88AE7140270E2CE5D85B53B54709696A23608C11BD52CCA38CE85AC5EC7247D79277DD0EA6C144348DD0290E49490FD048240525402EBB742A73AF8AAF0938D2A674933825F5956F895452A7EC861B3FE0B20EA3E4C68024C63A370F6B62A016A3C026AD2DD27A84CB56925DB7972E7E89A6415AC39C94EAD914E8A45091BA0B60ADBC76AD144D3C138D4EDAA29E94AAD110F7A4508B9AFB6C6D9C76AE8F4A78139D3A9A63A094EB501B05A5A80CEDDDBC163EBB56456BB0138D666001524A15340E9152A8AFD1254458293BD7AA5924149D6E3BC45029D71D1645A5A867F38B985D4ADC8FCE0D82A5D46A1D1A6845A30540A8958AE60DAFA5762BD595F6D78F996CA2A96CD27EB8FA3C9E9100E71F7EB81259C6641127D8CFDE045A27FC81170B7934664B997F79F57981C7A2523FFDB7CFAF5F3D077EC87F7C3D8BE3C5F757573C65CDBF0BE838629C4DE2EFC62CB8C21EBB1ABE79F3EE6A30B80A321E57635E6CA41F1469372589710A9E122555142D24FD85463CFE80633CC2F2F19B9FBCA092AD1C3BA6E680CFBAAC5278986A53AECFFBACB3CBBFF3A34158FFB6929ED5568FBF88AA05248CD35A92EAB19A0AA120FD3CC63E8E94876DA827AACFFC2408B7BF5530D65387583E3F55A4CFBE5439FC70A548AE6AE9AAA22605AFAAD28D9AA4D1AEE1CD52CFCEA0699A8877D73CE9BB536A0BA51FCDF9500FAD4736656150DD80A791D7FAE897C24B7F22ACB57EF2BDAB4AFDE4C7A301A1F604980B389A303600A6199BDD4014738EF82C9687068A4C0A9FCD7925110D3DC615646DBF9A73E298C523BC2A33DA7C84D40E4D7088D25B1BE5EA6DBF83B9796CACE5967E07715B446C5261957D04F1F1D84B854DFA0DC4658EE31857F8E45F419CB0BC21A8F0C1D55B83CD58D26867F311C4A7D25EEB6F202E1AED6CBF823855B4B3FE06B00FA6D1CEE623884F453BEB6F202E1AED6CBF823855B4B3FE06EAE28A036FA59BAB1F9337F15CA50F901659655F8EA7936B3974EBA4BF839561D2F54139EEA6179C5056264F3F40709B4D38CBB8CDBE01701B4E1431B22FE61C7C1ACECB1CB22F00FFC4C59C4D714FD9A75DD8CA2E2CF840F6B73EB4EDC2CE6A7819D8532DE571DACD9C7948464D2833D97E05E056DED945D5F970F13B985B128C48A4E597A740342546F815E9B65F7BEBCA926BACABF10CBF0B9383146060873076BB314E16071A83D87EDD63F7B83D625E15A892D889AF0CF556CB374BEC26AFC60768920FE1082E72985B77C564273E40CFBB8BF9D771EA2DBFB7FCDEF2BB597EE1C2D34EACBF9E7F170FD0C4ADF702BD17E8BD80911768BC7FE7C20D400A30F0033076BB710442A4804D35A6574A30E7374A5649140758C35149029845120AF5080D625FB18C6202601722C03E55AC62FD0DB222178AA68A7975EBB59800599F7B21E14B7A41A6BC48B7F90C30551C05389A2BACB65F01EE4E06B4555C5CF6E9549C913B677B20B7D674C1D5855703F037706A206EC7B9F2F8378BE668E16375D5BEF81D80FE598CF88C4E14B8163EC378854CC6AC5759655FCD39650DA3F1D2A504C06A2D09A798CF74355592E03C4980A9AFE7992701EA5D190B42078017B9C66A7E8DDB8547EA5C9A817FB2E07D9CDE6ACC92308E141C6D3E9AF3F9CA92285447589B8FE67C1678A14E8AF24F401EA86A69C5EFFBDCF91C339CC43316A154AFAAAACB69FDBECF617D522964C10EBD515339DDFD5033D7E3F440BDE7A8E7D07B8E23F41C799C0E17CE41CFCAC0FEEB088FD3C4DD1DC60848CC3CE1F934530F25A90B4FCD8A6C25B137B37D995921E88B135BABE76762704DD4676F7579E57556574EEAC0B30A6E25A9B7B83D595C5B18201756082CC3C032C11C7763ADC7B94C1DE245849702FFB4729BAF9000E1F792BD98255FA7F064E7B854F96A3200769679B86D3B65E7404D83489D43247919A9E216533A708C125EC3314DE9C0513EB752C3324B3A3E7FD11C99CAA9DB001505F11E40C697E4448436343DFFF62B8CD3DF645465947E84F1118D83A2CA7A7C3905C651FCD333DC241C9FE9D5841F736A736665408CCD94636F655DAC2C622CE0286631F6750B479A6428EFBF693C2B34A28E7F25CBD1D84E63EC3817860329C0C06A60EC2EC964FAD16D3FBADD8F9B28463D74EE221A9843DD4323AB4B720D691086EA52D0E62B6017078F10E623A6BB03A8A6C1B8CEE4BDAD2AC3FC33405B2C920740EB84D42483796B442DA71CB9D9564363EECE8A5BCBEA6CD4069C2FC9C635BD31E2525BAD9DF63A1B64317DBBE12E8DF405872B810A4519F5B9BA95B460BE44C02AD93EDA4D67D51A1A92EC7E6075209BDFC46E7561D475CC0CACB69EF4DC7788B217D889A6F729A774E0A8D99455D3FA1DA23D19DA3A24B00B3BABE1656066B59497D4F92D149300D13E2BC4CF206A45090B50CDC381D2A3541E676EA41E2AD495D77E1BA9AF15EA6B10F58D2AFA0D4CF65B95FE16467FA356FE0656FB5B95FE16467FA3AAEF06A6BF5B95FE16444F15F129487A65F6029A6071A5E138A8DDB8223707C9CD15A57190CE168AE40B90E40B45F20548F28522F90226F98D427D03A2BE55A82B8FAF375323556FE9170087B70A7DE5E9F666EA4AF96F61E5CF15FA398C5A2106D999D23BC0FAC5C59D52EFCA83F58DD4F70A75E5B1FA466A25D4E50214E672F14EA1AE3C73DFA835AEDCCA4A3F40E8E30A8318C4215210138110A30C66602399C11BD549BD81D1579C1CCC560748F573E9171007D5D7A55F401C547F977E0171507D5EFA05D0D328127050F95C299DC3CA56EC9E83EC9E2B76CF4176CF15CBE520CB55A616A09985E27040FE46D99902ED43C54A4BC7A0968E95968E412D1D2B3D630CEA19E3DF15EADF4123486500092A5941680C4268AC2034062154BDD50FBBCE3F57743607E90C2BCE15837C2B563C2B06F955AC78550CF2A958413906A11C2B28C72094CF957ACF41F556628A8342892B8D0D6AEB67A5AD9F416DFDACD4F91954E767A5AD9F416DFDACB4F533A8AD9F95B67E06B5F5B3E2D19E411EED59F12BCF20BFF2ACF89567905F79567ABE6750CFF7AC8EDB9E61E3B66775DCF60C1BB73D0F54C00D60881BA8901BC0303750413780A16EA0C26E00C3DD4005DE00843CF5040AECD44952264E40232E65C0051BE7AA53C4016C8E3850278903D82C71A04EF40620AB590CD5D9CE506B35875AE1CF9E7D71B2C0AF6565B2BE5F43B89BE5FD10BB794A272539FE276BF40FF2B9686F23CE06CD6FC8E7A2367BC6BA83BCDBAF204E34443E13692824F1DF357CB57940A5A4E77FE5050AC1A1A6105D16C8092A1EA7370439D2AB479B018084FCF287DC0B272AA69434C0B4C20B846ED3C0435C27B42E1DA0F7056FE05D4D35E7FC3719C940A34B3A262816AE40E9C235C980E1409C782B14B030BD06205F9C2D8D0E2AA980210EE1A2FDC7B35AE6DA0C307D8FF00BAEEA39FB0AD38170861A6EE514C8518710876A10B2CD472062EBB1DA11A535F004F3CAB5A365A8A61D4F1FDCF058AB939ED89CBF497F0CE1B69B5E392D4E73B8A8F81DCA4D139BB29460CE6F17514B37841A31D5B4531FDD9C4C2CCDE6A77EDD59AE6109C6B66BCC6F4763EA6F31E5CCA32B16A318CBC0C0EA42BC2EC339DADF71FBB1DE3B94D381DEE161E0C40554D918D8B98EA84EA10F1FCAAA94BF8F7FB9A4B636EA2AF2036C15F9415D457E80AD223FA8ABC80FB055E4FFFCFCFE539941F6E588608D3CE6CBDB13627CCE917CA64C4658C95669568923CC83CA30320820C7DE5ACCE86DAD452507ED8BE248399A967D392F6B7BFAF3E9FDEFAECC4ACBCCCC7E6A487B4331A33F6CB7F2A06E4E3EC036271FD4CDC907D8E6E483BA39F900DB9C7C50B7F91E60DB7C0FEA36DF036C9BEF41DDE67B806DF35D84AB7AE3C84B55F81839280DD565F8A6C31F1616CAAFB8C73720FF780AE846117949FC58C016E138263C4EA38325285F5776B4E4D3A52033FBE8C0B63720337A070654B19FBE7B510CD0D57A4AB705954B5E51A98E7DCFCDB90F101B93708ED17C89FDF4C945E91B977491F07948E76C89223C623193EFFBF82B1CB809A9E7A05C33ECDA97723158B79AE65D841F1E3AC27E858F119635549782CD61059C43E822847A9134FF745EF8CC977A63191829E171C4B2A037057FE70AC1F092CC30DE85EFC5588135866D17E32EC2CB5F3BB2910A1F230BD0505D0ABEAF2BF0BE06A2FBBA3A8AB9862E575F574CE41ABA605D5DB1062E595F57D6ACAF418BD6A76065A818AC6DB3128384DFE771EEF5433C8DB0E7CA1C3B176866B716EC7B0337E67006C669BBA375119DF08D23ABAFF03132660DD5A5D8A81ADB2BFB02E3A06101E551B1735888AF5340381AD3984609096468DBFC58EA98AEE4411D57E007146166172086BDC91873B084BBED21878BE8526E1D5955858F91E968A82EC53ED4708FD91718070D0B288F8A8DC1A23E8AFC95711B2C6EE329D808D23EA8EDF01970601966B605E3D8DB9D318783DB8CEDF1BB8BE8D9DE3AB2CC0A1F23EBD3505D8A85BDAD58D85BA085BDADF66C6FA13DDBDB8A95BE3DB7C9D2DBF2EA1A93FB43D9FE7D120B187FF5F26D223C77650A9D0B34B3190BF6BD711973B0340CDBB3DB17D1F9DC39B2B80A1F2343D2505D8A7DDC55ECE30E681F77D5CEE70EDAF9DC556CEC0E6863779521E21D7088785759FDB83BB7EDB2BBEC16334AE39670B694D39B8878A2FB900F1DA5B7FAB21D26F14FFC0A9355823CB292C7DAE42B48AE6CD4AD146616EEBACCDE3F18733803DBB6BD3F75117DF8BD23FF50E16364E11AAA4BB1D1FB8A8DDE036DF4BEDA87DF43FBF0FB8A9DDF03EDFCBE62E7F7403BBFAFD8F93DD0CEEF2B2B45F7A0A5A253B053442613328FE9327D0F7311B125F36890767FB2EF137FA4E7D95D9973C7E2CCACBE33F3DE391873E80D3BEFDF5406FD1040712DEF1CF98C0A1F2367A0A1BA0C2BFFA2D8F81790857F51ECFB0BC8BABF28B6FD0564D95F14BBFE02B2EA2F8A4D7F0159B4A277A05F7D57F1ABEFCEED26C8BB3CC00F2ABE9F4DB70F68D3D50E5E01B72FD6CC575817D2BB1603EADEB574712D15CFD20F34CAAEC9D11DCA4E57282FF606A5DDEBA7362FC63E54AE6EC26E6E9E00A091A3F00C1A4646A0D6915D06AC9F146C3D81A0F5A4F4704FA01EEE49E9E19E60D3624BB37818AA33FB216C623F54E7F543A0FC2AF9D919354A22B614A3CC39CE8E6960B488C88279588E2A57D899CD03CB31740960AEBDC730A0EE3DC6813CC6458C8C5D063CAD6166E63D2E3CE0A95D44B2530F987A19A6B69FCE7D175D7BDFB11FD70C972AE64AFB8E4DB53647E171AB7C8C2CE662C3E38AAA57C68CB0E0B432BF8605944765E8F7E6DCA68B6F101B11BE20E37C3B02D1689CBEB530928F2DF83426118E85E7767487AE7B796616D39D7B6F59C61C2CADE2417D3FF941FF7EF245F73CAE9666BBADCC5EECC2ACA87A75B5E2DCD6FD0748FB40335AE6AE5286C588D8987047E13C2C0A3443AB05FB8B81B5D51ADC45B85C571BBCDD76782F768B5754BD024EF00A71D56B03DDB620A82E339FDB605F06A9E571B2C886C6E18445411A569CA165F24284BF5CBF8A4E5C9942E702CD6CC682FDC51897E5E68903E3B434AC8BE87C1CC5EEADF23132A4CB8DDD3BAC84F61C02437B0EABB17B87D0D8BDC34A78D0212C3CE82920BC74EC757BEA35A4C12E8EF4762FCFCC62BA73BF18CBB2DC76776099965675093D8FA38EA753BF73B9DD4E05DB406857900D8C265D09260D8C255D09257D6E61DECB51D1F3752419E688A205E36C441D6D88C0CB3132AC0E5C7BCB33A33FB4E5A9E47D87A65AAEC3D36835CCCC6CF0C24FA3F5CF572BF4FDF3D58E4DDDD15B0B9D9E5AB8DC97162A51E38141E32B31E38121E36FD42EF0E6CC8259DFE46FC951B9B4106521A137672563E2939518C7397EC2DAAE4C2383B12CA1B72E337A5BEB52C9FB4E47B54E87E3CB1A6666F674D9E34BCB5364A77E2DE9124CCDD1C3279DDE3DB9DC674F2AAF2F001F5FA8BE79027DF2E4B6FA60EC2DF4C15841A01A68F609C2E3BA2AC735548EEBAA1CD730394EC050E51A23E63195872E16119B463810C063232183A33B49A0228C0C1CC6B0377E33FADE74CB3C54067D1F5F761D8E9E80E9F402CCE53E005379A202F642C509C04AB7033643F324E26C2963AE6F962198A3032736251A81D58AFFA5E05A8575EF6ECB76E1E8D1934E6F9E5CEE932795170D800F1A54DF3B813E7752791101F620C209007B1D5F0087539FAEF89C4D19A2E93DA0C4DDCBC4D0528CCC02CCB3B71A337A3BCC3FA81BC0FDF31B8ACD397A7DA3D3E31B97FBF64625BA3E2CB8FE09C02ADF2914BE6FBD43B84AF84C3E2B885E70948CC8D7F48DC1E405CF1C21D0A24423B05AF1BF145CABB0EEDD6DD92E1CBD74D0E9A1838B7DE7E0A11274FFDC62EEBFD33B272246A14BC4F98239821DB4182358C2995E0A6C55D4F6DEB404FB47EC2DB18FDEFFF6E4E1087FC56880DCAC8D98303680B6199BDAE6F794E6F7208DF75799F82F10AD326BFA0B346BFA4B1904FC051A04FC87E048015DFAC59CC3B639550D96538E0DC6231AD328598E6714C99D3287386EE66C0EE4363EBB41B2E283B40EA89656E9F83F81FAFDEE48B247F761B1180BD94778447D1A20576F0C98B13647632BA3DDC0F109BDF7FD3283FC1384C7BF12ECD309259ECAA990D003F5551B505D22B33B14F786BD3FE340FE5166B1F968CEE7738C63854BFE09E05AC94A6A53F1AFEB8F7D87FFAA15BB6E22D3D63133472F2446AD157C3FD0888C63CAC29F84E865464A52079E55C3509200E6918CBE0ACA2AC7528239BF5F84DAE934FC1D87D3044F159E954473BE3F7BC918674A4B22AEF0AD2442DC437A83431086B1EA258A29E61CDF73C6CB9CB22F300EBF509F54B9645F4FC3E13439E484573D72A2D5D161DD96D33ED7A2D3DD5BAFFB4BE2FB555FB0FD0A68E605195331BE8B574A5317BE9B73FB8385F2C4EB6256154E4902F19C6694553351D3004E1A47DCA7738D8B2E2680F9FD243E89B1F2B83298D1A5034659DF92E537D1BA380CB066B85549EDC6B956F8DA4CB07202FC35486AE42FA675E1DA28BB26CBAE1CE17977168775F36E0E06D4313377F390430247E2E67F9BCD119EA32AB3520260459571651C967D018F68B5A359900B8868E8313E53AC7EF3152011C3F108ABFDE0FA633FB2BCC491A59BCDF13A66E62E07B2517E242EE709873E5B567915BF43B9A1AF6C85BC4A1F5F493CDCC4FAE72916E3A4290E853FA472AEAB4C81ABC990858585CF82CF24A2585D56282440F97D4C821189740CD7291017BA148E57A3CCC277807C848F23BAA86AB194D08FE45C3AE7CC949E9288EA4C2CFB7E644EDAE5C664F7ADC8BD6D3EBAF3D01FF0D2C7CA086CFDCD9C4BDE4321B556C5EF8081E5CC435C38B295E2E28ADF61DC4216A8EEADF019B00E81A75AC98ADF61DC3492153E1F6A0DE781CFA6187DC3A3C447A3641525DF14B46AD2F7ED838FD173C2FB85C37A4D977B3D9D9E22AC273D76C7F984E50EFF8A85E2BF7C86F88C4EAAFDA5364BE7328453682E21CB0032730DD3878E9C7CBC642F54C76D9B02332534C12BBF6A4BF96798A365715075B3E9C7D3763927349376F4F45C1D337377B3B73D9A096565F2F40300B8498C9F31E754EE1B640E4401B12E4357FE5557A04BEFDD4BEF169CBA856B9793B72A3363B7A0233DF651C83F6914CF3E5416C30A9FF7B99ECF63BC9C2B53A3F537732EBF46D84B84ECDE9F6A975D4E812E7221FA1C5361DFC295E956BA4AC960DE41D1536AD92B3900CECF0FA85CD49467F515D49552A01C9370A92EAA9512CCF9FD0BAF38452BEA7B3844733C219E68288CC490D4C72B4FF1D8AD9901FB3ECF349A521488A439464C747FD1543015BC95321B3382178A55B7BAF97ADA5D8666C1AF66A9EF0C3A1D3701206B7819773990509047D2E3648B83D25CBF3265AD49493AD4E295AB5D65775B05F63BC1E730543DA8BDBB090657C3CBD8DE2161E18EC4DE5D1CCAFF4FBE40A5206FF315B692D330D4D224F7F67E91F6EEF2C66DF74BB67BBB57BBB66C94BC8CF4369FA500EDBECAAEF0B9EB325385A726B943CD9F5944BFD6D43D4F83D65EC3B294D055031ABEDA0CA7EA75FE89E762AEA55CC2DA7C3C0DEF7506731C976765BB1F953DC193B29991B338D02C5FAB695D77F39A36F2205C7F672B3AC31A414B098053C22C9C9088849CAE745C35C910BDA6F7B410FB46E3F4C2BEAADA4AF2A97AC0DE7359792E97476EBB9FB83DC103B71BEF54E3B44E7F55A6B773130C9C889DC7B2DBE374220C180DDC469769616DEC04DA19EDC6273C29030408ED4725BECC47507C998F4A70DB8FA0D8B61F95C7A73E82DE9EFAA83E52F711F648DD47F595918FB057463EAA8FDC7D843D72F7F156A5BF85D1AB4F507E843D41F9F156A5BF853D025D797AECB0BEECE803BEFCC1422AFC86F8E0260E78033F0397D548BD1B3FF5A818DC23C8DE1E15BC3D82F0F6A880FD1184F547E541CA47D083948FCAFB3B8FA0F7771E95E7241E41CF493C2A91F01E4191F01E9548788FA048788F4AF8C74750F8C7C7C11B152EA0B7151FD5E70A1E61AF153C0E54C00D60881BA8901BC030A7BE5DFE087BBBFC517DBBFC11F676F9A3FA76F923ECEDF247F5EDF247D8DBE58FEADBE58FB0B7CB1FD5B7CB1F616F973FAA6F7B3EC2DEF67C54DFF67C84BDEDF9A8BEEDF9087BDBF3517DDBF311F6B6E7E350C5DF1086BFA18ABF210C7F43157F4318FE862AFE8630FC0D55FC0D61F81BAAF81BC2F077ADE2EF1A86BF6B157FD730FC5DABF8BB06FA3FF5E1BAEC0B8843C58520601BAA0FF03D02DF017CAC3C03F8087C05D0D5BC5F3F4E06CEF723A66C83675F8E668CFCE9FDC3D3C3C75F1DBE6EDDC8D1609CDC425F3B523EAF40DE6AF879E02BD53633C507F5896AD82CB57F4A3E4F7ECF391BD334A05EC5EC928DD9A05184C3F1ECB58165698854E3D966D1D8B2A7A8AAC20F3DE1684A628DD16A554D15079933A11A0F2975B529BE8B649F59128D4957C9C022FDC4422F8DFFF0EA817F4C7CFFC7D713ECABF1126BEBFBC395B6EDCDE1319E51EE93503EED983E72209F884185B635004B2B0B153A3A020310B5946309A9022307B06A93F51841D6A8017BA0A5F1D949906A2419F9748EC774D51973006E15F835D39A20D1B8F4E302A5B9D897874F2F0BCB08C4A18E4AC55B9EC70057556E47851F8D78978713329990794C97A96B0F69843CEC331FC7210BA04ECC98958AA82642039819967B54D83395B907245AE0589E9FB2C4A2864B2B0C339A2E08AC9476DCE0AB8ADBE34E863E925175E7D81A7B359C5AF1B7A5EB82416DA9C78D43BDC89787C5A9981FC7142D185A520F07887231FBF2D81287E9456608188D59A9686C223480A361B947854753992F0F90349CB02890D32B8C18F2846284A0E9CF19108FA69C543836D019A0D1ACD4A302A3A1C89787C539F3E9784678BC6488BE7838944F4107E4AB978438629EFCC5E5C960A8A7ECC657C5A9311703D47691E8A830DCA9023DA27335F1D835966B391AA2B848DF1DBF35529C0272EB44BF3CCC662F8F0061A9215291976531005785D751E1A72ADD0542247B1869224730409CD45056C0B2CD6782182DD7E3828D5EC4CBC38EBC323A9E5182884FE671C4C290AD904F6312E1388928104F106E2AC65A680D70675EFA51611120F605E373334DA36296B64C5E085A8A6F424921912125BAC1D49C692D5A1B5940406B2ACB7162D758FA0B867090F8310D8847B1500E4EBCF4B24D67176BC0AD16B47A5A085A5B4B3F4E98B68B7D79F8643CC47C961F3AA2D178DBF730E874D898958ACC264203581A967B54983495F9C201E9E311135A11666A05C63A368D402C104141A82FEF780158236F0FBE4C2B210D10137F27D92E15099C60B199AB19342B3C3A23B5499A13006EA3F89787E3F56BCB40A06AC95424AE3319404DC3EFA8B0A493EFF2C012612AE100C48A8E4A854A9EC70029556E4705148D7817881332159FA130A912595D0AAAF0B36C889C9F0B8C5424B343F06E20525B5F6B78F0982C48889621F12212CAB5753A871EEA6BE7A182474B6180A3B6928ECAFDB40A7B79CE8827414095530EE9C932B68462CE90530579F57426F8332AF5B8506826F2A56231223CBF1F15F2B9251A4D78E9F15843698CC8F6928F109306429F212AD717BC455931A62189D42C9B1BE4F997CD6FBEFE203184A724C3DE96EEF37846029CEA822FF05888FA93C8F10B8D78FC01C7788439C9B2BC7E2514B0A41E897E7CFD7925BAA9E03B99E1BBCFDFFC9F7C2AAF756C32FC21A6E513C2E3273627E18FAF876F64F4A4F73EC55C90127FF2FAD573E087FCFB71C263166031BF8FD3AAFFF87A16C78BEFAFAE785A22FF2EA0E388713689BF1BB3E00A7BEC4AF0BABE1A0CAE88175CA9E4395B232E6FDEADB970EEF945AC14224DE408C96FB8979BEC375201C21A209FC8E4551D967EB852097FD0E051162E0FACC6B9E9FF4A42B9624CBCBF702CB7DA64F435928AF9FA95841C1EF96403BBAB46F62196A162B302C2258EC6331CFD1F017EFE3F8B9CE2285118152310342AAB6E847FD20A4B436F8075A613156583F292C4601EC5380D9D78A4759261401CD4A9107AA0208F6A9BDF3F841E79FEF1F5FF4AA9BE7FF5F07FA10DE13F5EFD1909AFF1FDAB37AFFE6F68E985390EACF40DA179E9C636D01EBFE064AD01738EF84C68D5027D4944438F711B0073CCE2115E5970C0328A732863D3DB33F1D8D88EC92262133B0E1E7BB1633017D0C0762C0436AC5061AB06C1C1AE2504035B350816766AE0CC560D82839D1A04035B350816766A10BD9C3A99EAC46795C65BEBDE9CE5613BAC8B2911EFA29B81C42939D91E277D0BDDC1388567B34227C3B870E246269F8673278C122EA67687331357D67AD4E6A60DD372F16635671EE20B3276036331631FA18E53D45A76493022911386132A86F5AEA4EB6DAEDDE6CC03D99CAC21A66F84B9C294B3CE926CE2463893ADC0D34B5F86752CE7919A793F92ED60E6BA4041BD85F716DE5BF8B958785D28A6DECA7B2BEFADFC44ADDC3CC4D5C99AB96017B0A93B6B1A25AB248A03ECD07724A1D0BDA81EF6D7FC4614BE9E1F609FAE2C185001C4258E7961B7B303179FBE90F0458623E8CE63852319BADF86853C7BB2A19FF80C9FEA82B6539778D4BEC838BED9C9BA22578384BF5934470B1FBB5A1D9FC588CFE8C44D1F2EB9650F883B6096A1C09DAB9D93708AF9CC6175D71C4980A9EFA6CEAEC668FD7A65BBD3E918ACEEE25DD09825611CAD9CF0FACA9228C46E8C6781178EE622292754B4A1E3D8391C339CC43316A1B409AC8638FDEEC871789BFAA08217EF677ADFD0FB86CBF00DBAB08F176FFE4E0F2B0424669EF0BFEEA6135B8E47BA06DA1B9E81E1D585D0ECADCFA9F5E56A76687D6B8ECE3AE2DEF6F66C7BA0D0A2276B8F47B2941CE245849702E1D40DC043FC926E1461B4888827FBC2A513BE8C875B0C6047A2E6384B5E4616BB0A1B3651C25DB0C1E1D466CBE7344C1B1087B5B7703B0B17DA75D7BD4A667F9391335EA23E282AAC6D779A964A46E29F359FD3301D9368B0BDCD1C91CD448C051CC5023A7E790DA6836019AFBF693C2BE0E05C0782E661667BBCF7A3C07E14789276EDD745EDED6DDAF29090BC18EFAA0F135911E623E6F05E97643993D780DC2CACB0489E55742C63CED59D982768972D218B7B33B5ED7A2B5D25E252FB8E566BB79BCBD2E05E70B812F0B2A96F91E582F9122CAB046DB0436745E18F602C72D426A78FCD7CB23675949B0C0BC6D9480CA99CF50A1B86FD06DFC91A9E36D2F5C9DADD91F4650BABE5B7C5B31DF9CA8A3C1CD8910FEDC8AFEDC86F2CA5BFB5A4BFB1ACFEAD25FD8DA5FE6EEDE8A99DF876A7B2B85DDB713BD9B99DE61676C22FEC845F580A7F63477E6B498E2C95F7D692DCB2FCB925B99DCDD975178B3B3BF27B3BF2173BF27776AAE3D4923EB66310D90127B2F4586F2CE92DAD76802C9DDE00D9FA6C64E9F806C8CEF571BBF2B965E976B6CFED6C9FDB19AF67456DE77796766EC3AED163BB468FED3ACBF877BB01A65DE176808DED00BBB2BB733DB7D31CB6F3B6D8CED7623B4F8BED208FED203FB7AB7B60456DD7EACF76ADFE6C57F367BB567FB66BF567BB567FB67374CF76BEE6D9CED73CDB758ECF9663BB67CBB1DDF3C01278034BE40D2CA137B0C4DEC00E7C915D5793D80DCC2CC7C49633CA81E5947260673A8BA19DE91CF76E41F6DEC7796C16C87D26576FA1A4BC3ABD4162AC7B8307034FB6298E65DF666C7D3055B0A021F2D918FB2824F1DF2E18A6C75CE5AD00C1D09A9F8F799C5E0AE3C84175D77715E42E35B19B52632F109A4B43C5707BAD2DB82B567F93918CEFB8A4638262C1C4AE7BE371E2AD50C0C2F4B87A38B5EBE60927D2D1B8E227B536C22F7683075943E106EC194D6888C36D18A7EEA07203275B1EB95EEC191DF508C1F871D193EDABD2DAB83B4493B1B30FC9E73EF4E286631F2FF044CDD0E84DD5933544FA2DA69C7974C562146319C8D44D5CBDA3B6A423F53EBD81EFD9C01F065DACF8E103DC8A25CDD9CFC235D5B65CC27CB05CC27CB05CC2FCCFCFEF3F195B120076C863BE3CA42F46C41CC9378964548A6C6D6295F4983C734CDA6D84E1C8EEACD2CE30FDF4E7D3FBDF7BF09E3978ED1CEA83E59ED083E59ED083E59ED083E5C6CA83E5C6CA83E5C6CAD17A8F37BDE3D8A9E338F8314BD1C476AE6B67C81333FC97C4979310249B9FC76924A104E56B8DDDA6FA3D344F0A9AE7E954FBE9EDCE4763C7E9D306888D4938C768BEC47EFA8A9674694BBA48F83CA473B644111EB198C99720C44434E814F1A907CADE86ED47EB61863D70760C9CA1F584CFF262D5CEA0932F82C5321848C2E38865011F0A5EAA07D7AEC165890DDBE584A3F56BD73DF4760CBD6B5BE45D5B2F855D5BAF85D92E865DDBAD86ED0CFDA8189767330F46C251F33877D3219E46D8EBCDE4E8CDE4D4416EBBE47CB47DCC4D6F3C3B361ECB4026928135073BF3DB19F6D098C65470086478BEFC7CD398AEE496740FCBA387A5AD4FB7F3C847EB516F7BE8EE18BA96A19D24036B0EB6E0B70CCFB433F022EDE38DDD1F6DEC81BD57601F1896B627238ED6A9BFEDB1BF63ECBFB5C5FE5B6BA7FEF63887C96FCB0B214CAE5567FB6749BC24D1572F5FB2C6F31EA4470F525B076D7772EC68FDEB5D0FDD1D43F7CE16BA77D6FEF5CE16FC77B6A393BBE35CEABECBEEEDA0F49E2C674B39E28E8827FCBD8C479F1ECDCF56BBC53FF12B4C5609F2C84A9E9B90C1EA7BDB397ADB3975E4DB1E393EDA8EE7BE379E1D1BCFBDADF1DC5B773CF7B6E6776F6B7EF7B6E6776F37B1DE99F920329990794C97E9133B8B882D994783B4B3923D95F8233DE4D75BD9D15BD9C5DB88EDB598A3EDE3DEF5D6B753EBFB62677B5FEC2CEF8B9DDD7DB1B3BA2F7636F7C5D262DF1DE7B1D277F93D6A547C808E165F86B47F80AE37D0DE404FC040CFB24BED6F1CECD6602DDFD089ED406B79DB61579843FD4DBADDA2EEC9AEDD9FECBA8927CBF993ED1D9DA1E50470682BFF911A1D4A22B61443B939CEB660D3676D17CCC3D923B7BD4DF636D9DBA496FC68476F7D94A0265ECED624ED021A9C7A94A1E3457FDFA15DEAD4C6F255D7A385741FB869C7BE7C6819374932B0E6709C338437888D085F9071BECC8B68344EC3698E643C4D9FC6121CC2E5F6C7E78F1FA3B6C3EDF30CE134EC179E760DDDE30CE1341C20ED5B4568993B387957336263C2FBFB9A3B47C879BA967E2765D7C0B15F83B21EB9592E63ED0C7B4886124916D9A82D9CB0284843D431B44C5E887072EB37B1480FD25D83D41AA38785E8D1FAD73E86D4AEA16B1B1C67681D436A68195E6767D82B1D7FDA9E7E0A69D01F7FDA2F46AD217A58841EAB7BEDBDEB8E916B0B3CDBC063B671C78E33B65E39B45E3E959717CA295A30CE46B45FABEC71DD4C7F9EEEBC3F18B00FF0F7CFEF58D29FE7A1EA3E14E58EEDCE36E49F6DC4BF9BA38C7976938780A772921A65F1CE36076262E293951816F5CFF05C0A46CFD3B5F6039B7D80D772FFFFD48F0B1F2BFAFB88AC3BC6BD6DDC4AEB78ACB7D66F88080E96C6737B6D2DC3B5A50CBBB21FB94484794CE59EE82262D30807023D6C1490B03F2E7CECB6D59B46DE099C63D7D6C7A5DDB1F95946FCDC55B3EB16F067689E449C2D659CC0CD6496F59BABBB46C8593A963E20EB8E61631B53D23A1CAB654CCA5DE16E7D3B0D87539FAEF89C4D19A2E9A1E3A47F17E6046069394C3BCF30A37D94D11DC3D632FCE1AE9A3DDF5A107E6BBDA5B04AF84C06EB472F384A46E46B1AB93F79C1B31E213B46C8593A963EB4E38E61739C0106DFE91D0B1163A525E27CC17A58EC1816E7E84D1EB1B7C43E7AFFDB938723FC15A301EA360DF43A00C9DB2990FEAAD19619F19D15F5BD0DF57F088ED6F43CC0BEDF85C9BF43BA2411178A53D4DCC8078A9B51FA98E7723CA348AE189F0770EACCCC8C786043DDADD59C4008DAF43116BCF088FA34405DE3141E5FDB3FA1F7BE6FA3F927F4AF04FB74428955039E0E10CEA5E5FF8C03F98793B1C267F976A6134E9FC82AA6E1F414BA13EB51C8A05B489FE383D2071A91714C59F813F3DCC060C3D11D4493D157C1D219BF5F840AE934FC1D87D3044FDDF0FCD94BC638D36312716263049FB3C39C829124EECEE73D67DC49DD24A35FA8EF4651071C31EA9D5FC277E624CEA5BFF945647767CD0B32A662D821E570C0EE0F16CA133F8B99330105C769C6B288D52EF0FA8023EED3B933C9727E3F894F62D43676D571FFF92D597E931461809DC95A64BA0B8103FC3548DC8A9BB1742D2CD0C79CAFFB857ACF6EBB5267EE3D7F9BCD119E2367FCFE920F743A1CA4B931C688861EE3333782311C8FB09BCEA61F521D7A48D56D47E9CC9DC2130E7DB674CC0E7D652BE439EB051DCFE17E9E0A9CE3290E8503A372DEE568EEBAF059F09944143BE4F73109462472E4CC96C237BA1B50123E8EE8C299FEFAB14E8B513D2511DDD988E95C36359CFAC60F78E96337C392BC0B427640F86BE6212E3CCCCA8D8B91EC421638F22F7FE0A94BE1243B77C2395E3978E0B32946DFF028F1D1285945C9B7E3F08147E5B62C1C32D47B9DCB92BAE3A19DDCB45CB150FC97CF109FD1C9B60771C95998A91BBE0FAE99F978C95EA8238612CF688257BE33FFC6E2E0FC462BBB9DC5758CD87E7CA63EA1CC0D8E92183F63CEA95CDECD8C7C077C7B13EFCDB2C92CAFFB098486D93F6914CF3E14D641E49A484C25F7032DB5F2182FE79B017AE584A6918A7E8DB097486DFFE9A8FBCA963A107D8EA9B03FE16E5C720D8A7ECC8DD7F1032A97B7E44152870C9370E96829E55F78C5295A51DFC3F22DB409F1448B6124866A3E5E79804504CDF2FA338DA614096786E71831D1DD4453518828CB8A6DBEC4E76681FCA8DC2E6CD566DF6EBB5BFC9833F7DAD9B28F3497AFCCCD7281E3D50797FB654E965DFBB197850D760B7471E636E8EE68E97FF2550A679376F7038ADE060F6D83E77219686D83287919B9B34367DCCA6B0AAEB86E2AFDCC22FAD561B5DDF12B57DC1DDF2335FC7FE2B998229CC471FE231884F787D56A2D90C581BBD5C2F2AE851396BFB3159D617722FEC6C2098948C8E57394CEB8E6B70210FB46E3F416A3EDAEDE11BA9C0BF217FD39B61A9513671B6A473C61EFEDEFD0F627EF04D380D3098E291A9CCD7DF0278B09E8C7BAEBE046C4431BE26B1BE21B2BB96FADA86FACAA7D6B457D63A5B55B1BEA071BC14FE1BEF81F2CA4C2346938ED16D2EFF83CC3A30DCE1F6DDAFBD106698F3736C4B736C46F6D88EB62B21811D7856431227E67433C7863456D85B18115C80656281B58C16C6085B38115D00656481B58416D6085B5A115D68676FECC0A6B432BAC0DADB036B4C2DAD00A6B432BAC0DADB036B4C2DAB515D6AEADB0766DE7D79025B95D9B213B33B312DEF6FA7D36D0B49C85466CB33F6876F0CB788CF9E9FDC3D3C3C75FFBB7AF9A78397BD4B3F6B81C6CBE7388F768CFE2D5B7F79CB3314D43E4E46C93CD3C108D221C8ED518C33F87DEAB4F4C969227E7227C26FEE4BBF5A73F123FA60B9F8E059B1F5FBFF9EEBB41A5365B3EDB124BBC8A9FCBFCFEABC24C589F5CDB8F29F67F62A17CC44268A46AAA341CD305F6CBF22BD9B4364D2B3347A9D20D4335E5035990501A6BB58626A56582217DA11BDE8A8B6953C10F5785B66E86C07846B94F42F91A481A2C56869A467575B069C81660E8E42871D667D80958804D6809186DC54CCA2D58EFE1E09386F424412A7C32F2E91C8FE9EAB0486A16A90CAAB6BCE780AF963A9E0AD4BC2CF4D2212095175D62B6F976061059D7E554A0402613328FE932F599218D90877DE6E33864C1415C4E933CA5129A339E01921A2B78B2F05A88A959181F05B232519A41B5CE738E78CAEB76B250E2248D6D37C7C701A7AD38CD902AE63B475815EA772AD09A8A99634CD182A125F570802817D3088F2D7198DE82DB3BB69AE42995D09CF10CD0D558C15381170D272C0AE4540123863C51072163FA737608743588532AA031DF1960ABA97EA702ADE2D3B4F4C5C3A17CE32C205FBD24C411F3E42F2ECF211EC48D190B572A0E4075062034AFED894392C74709C6A25826302CE73F5F0096EA792AD0CB625E1F025D59C9255EEB4F678091BC2A2703832C8AFE4476EC87C0C2B6F832208ADFCF011585FA9C0A34E44DABF18C12447C316B8D5818B215F2692C8F0C24113D045C5A442A15D29AF70C60D556C79383DA669E41C5346399BC10B414DFE4D914226F321F10718D92E981D742724EF86BAEEAC9C130904D13108F62510F9C78E99580C37A3CBD487AE0D5E53D27C4D5D4F154A0C67888F92C3F7F41A3F1D66BB3834CF99AE42995D09CF10C10D658C19384978F474C5440D8C7E1A15590A51E56A54CE706A962E54E1B4E210D10137F27D92603098E075D15D10CC0A6A1395BEC55EB7A2A505C3F2D7708ACADCB2E71DB7E3C03B46C2A732A7010A4F2EDE143A0212FBAC46CF3ED0CB0B0AECBC940814CC50F13246439CB0D977F3A896B05B9B07BC000107179131C0C023C9665A065483CC151AE69D3F9414E3C690529B1AEC971067E435FB353F1223C0902AAEC2AA7276BD8F22040AA17A70CA7A67CE700AA86FA9D16B422C2F3FB10219F1F03B86A04D2C0AB36E7D900ACAE86C709B1ECC2A5A08905058972397E621EF985463CFE80633CC29C54F024A93E93B87417F0F5ABEDF54DE5AAE5E7F18C04F8C7D7DE483E7A93DDFF5CA755B055E65D8466857F3151574631BDA51CFD35BD4A89FA6CBAB2F539DBA468BBD75515A88D422B5B1B518B989B3B4415713629BA6237892DEC9B6F9B54CA6CCEAE13A499022ADDFADA42BB60EB9C4632AD3343C5291E796F17A998DB48AC22418B68CD07A62BB23567D709D74CD1225DE389DB8A708DB975B23512B48806389559111440AB131B40DEAD12E5337DA6E297A9008297095B445E9F22AB48B54ED015BC4E6BE35D3C90542DA098AA2DA598A1A5A8D6832B95E25B297422B512998AD972CCA15EDA16C246A15B684D65AFDB29AF17BA8EA251DA3AA216319BF75A2B323667D709D84C0191AEB465D72C59296BAB54A5DC9D24D2ECEB180AA8A134975743DC22FE7627A122DF364927C036B5A584CDF274A5804D8A8EFF26B18D7DBE885AE59E276899E7692DBC6BD6CB2A45D5E4D3955C93B54D90A69596AA384DB9B54235111889563B4BAF11AE367FBD78B5242D02CA684C1529E4475D510FBAA50B951FF2982F1A4ECE7D384A0417D98B650DBB4AB485B550E82569216A17338BF5A595274FAA29384F6D2DE18D96F99B3ABE6F4C588A767E113D978C942D0384F138ED6F1351F1F449022DA6CCC86A8432A06C955A0FB15A8C99806C80D89884738CE64BD1A34FD2F93615939645C2E7219DB3258A84D78F998C13276012E806109DB8D4880C67D45AC5A156E4619D08431396B9D1C4B20B4CB818629274545F10545FA8095D8D5826A4AD825F6BC5BAAE2BF4DA84252A4E70367046424C1EE7428658B8514F5F3680BC46480087D6DADC6885BCA92BFBC68425AA5FD5D297D648502348234DAB8CB75A416EEB4ABB356189B413DFDAF9752B458D28CD44AD62BED58AF2B6AEB8B7262CCB8064D26433E795C44B127DF572CBC5BA754A18798D90000EADB5B9D30A795757F69D094B24C75A184D682846596C29DB2B229E90162D989F8E4132A315FFC4AF305925C8232BE9F3C3F4C1699D40B63C6BAA63CBB65519F7DAEADCD709746FC21295164717115B328F06A99C5248F147DA8DEA4B3626AE11D098BEB51EEFB402BEAB2BF99D09CB7C688B8A335B5A3A47DC36A1EEC2A44660309FB6FA69C73A75431D83914E1A2B59C311D50D3AD31403AE2811B820F215F0CC4D8909484416625C972E91EBD6098CA8EA646A256C17B9769A336C9CE60C4DA739C34E2AE9A8106B7568E764C3BA39D9D0604E367C23C02E26DF645C5CB5931E76545ABED5AE0F82A86B443467D05A15BDD1D4DA8C89C90C90FE04D83297510EF5223179E2DA312588BC46480087D6DAE8FD54ADA332F15472822406FF8BACED800BF730F21A21011C5A6BA39DA80DEB266A438389DAF01A755F440651D78868CEA0AD2A5AE5D4E9C64035E519640E67395C963BB89C8DB40BFF46547A890C08DB45AEED8FAE1BFBA36BD3FE483B13AE9B081BCC836FF2050C2A9B3FCA66699B5E470C97C94AD4BF71F90DCA412F2990497BB56A1BE2A6B1216E4C1B423B37AF9B9A1BCCCC6F25E4B018684A9F245CF634C24140840D0624D48E325A08F47234D3B4C9A89D95D74DCA0DE6E46F75263743F32412733A397BDBC08169DD1F8C5E2F2588455B85B4B3F2BA49B9C19CFC6E3D24C4E1D4A72B3E6753260C213D635EB750D54EA397A695AC4D58ED94B96EC66C3061BE2FEC81E4BE6095F0995C22412F384A46E46BBA5E92BC684FE000E9F5528258B455483B71AE9B371B4C9BDFE9A523A2E19688F305D396D74EA497A79DAE45DEFC39D4F7BF3D7938C25F314A5F0CAA48A8CFA693499FD34C8A51BA2E2B5FB746E9D3417562A8F91AE450B39A09126331E6C2232A1F1BD7CFEBEB32368852C96B244B7DE18DA519B3D7CD4EB7490D05B4CF53F38C0D3568AE82711D744E6E9BD45042BBC3CB33EABCC436A9A184768F9165AC477B23BE4D11AD5D84D826351460DACCDA89FC36A9A104D366BEAED7D175A392AE4DB5A41B3E6E52EAF9B70F24B37CBA91DA26A59E7DFB982DCB57EFB71B5DB5A977AE37B2461B3335B17A0B6B343053FBAA3CF8DDE4D2CB199B5D7A396F8B2CC57785AB02945275A59632B414557E5EAE5A9892AE2B4EC9A21458B88DA2BBE9B17ED4EB55215FE5C687F6E5AFD2E5A4F2B5145150DDA593DA2B5205CA86AB2457E5EA1854B5EDF12A4DC541EF5DD955A844DD742F26E56374CFA5838ACC1F68D269ABE3F34E2E1567769527D321F03E0E5C9D9A4788346A6B7BAAC8A17A942B442969DDFD2078754D1FDAD1E8A0D31B3D0E156372F929E507BAC4E44085D5C7644CB4D7F204CD2E1557BE97A5D759CD252B07EAD23F9862A23283A75676A9B6EAFD31BDEA1A2E82C1D567FA2888467F9DDE1371A840935B6E293FD06D35B80A0D1FBED068B0CB93190E156870112F6507B95107575FA7C71D34CAB47F24C2A16AC1170953E6DDEF003A537BDD0306E60A377A0261F7AAD65D776C5272E37D45B87AAB41FA351A6C89E4EF5049E50B962965CDF5C90E55D507A2D7D5D72064BDCB4A576F7E66356FB8D209AF3E20D8BA46255D43B53B5493E1ADD59425F4EAA9853A8D038A3769B55B54F25D28D7E8C84E59C7B0433616AA6E0F9ADDA46360C8ED5D28B7F9327059AB86377AE1EA340D0CADD165A798D20E1569725D39E507BA766CA9C29AE0C76DEA338999BC2BD569EE5257D5D6742FDA95CA1A03FC1A6BD03C4CF0CE155A7B8AAF41BFED47EFE0EAD605B1D5E8B335D6AD4385A997CF53DADA8BE5F02A6B02B56A6ADC16CED5618595BBF02969DD45F70ED5AD0423D5D5B639626959DCD2DDFA4C5AEDCDF9BD6F87B406DDD4D41C16A8D361AB3786114819994505E8A026B3C0923A65750849E95265ED010F32C501221774559F41F0C45A0542032F3A57614B608682124DE32BD4ABF187AB8CE92638E026ED87AB6CC737FF207E8A4E0E4FC91FCC233E4FBFFE70F52909E5F036FBF581703ADDB2F841F00CC9B8148C7093E741CC36D6A1111589D659D6C9EB9D7112630FC7F8BD5C8FC6E3F8AFEC7E44EA86FF27F61391E5E76044BC87F0CF245E24B1A83209467E49E132B66253F93F5C5564FEE1CF85FCC55D54418849E565FB3FC37F26D4F73672FF827DAE4CB1EA58C8A08DBF92508E82655BC6E2BF64BADA70FAC8424346B9FA36B1269F48B0F00533FE67F8192F4917D9FECDC9EF648AC72BF17D493D12D533696F88B2DA7FF840E5A5F380E73CB6F4E2A7C0B0173CFFF7FF1F7EB6EAF54EC80500, N'6.1.3-40302')
GO

INSERT INTO dbo.__MigrationHistory (MigrationId, ContextKey, Model, ProductVersion)
VALUES 
  (N'201701091033108_AutomaticMigration', N'RatingUniversity.Models.TablesContext', 0x1F8B0800000000000400EDBDDD92E336F22F78BF11FB0E1D7DB5FB8F39AE96AAAAABDA619F133D6EDB5165BBEDE9AE39B1D33708488424B448424D9072A94EEC93EDC53ED2BEC20214259120482209509F8CE9189708642291F865E23BF1FFFD3FFFEF0FFFE339F05F2D49C4290B7F7C3DF8EECDEB57241C338F86D31F5F27F1E4BFDDBFFE1FFFFD7FFFDF7EF8D90B9E5FFDCF4DBE6B994F5086FCC7D7B3385E7C7F75C5C7331260FE5D40C711E36C127F3766C115F6D8D5F0CD9B775783C115112C5E0B5EAF5EFDF02909631A90F487F8F9130BC7641127D8FF8379C4E7D97791F239E5FAEA230E085FE031F9F1F5271C0BD9FE1DD254E878F5DD9AE4F5ABF73EC5429CCFC49FBC7E85C390C522270BBFFF37279FE38885D3CF0BF101FB4FAB0511F926D8E724ABC4F7BBECA6F5793394F5B9DA116E588D131EB300C870709D29E84A256FA5E6D75B050A15FE2C541DAF64AD5335FEF87A14E1703C7BFD4A2DEAFB9FFC4866ABD4F1776BCA7FBC52D3FFB145860090FCDF3F5EFD94F87112911F4392C411F6FFF1EAAF64E4D3F16F64F5C4E624FC314C7C3F2FA61054A4153E884F7F456C41A278F5894C32E1A9F7FAD55591EE4A25DC92E568D6157B08E3EBE1EB571F45E178E4932D0A724AF81CB388FC4A4212E198787FE138269168C4078FA47A2C95AE94158AFFDF94266027D4F4FAD51FF8F977124EE3D98FAFC59FAF5FFD429F89B7F99249209429AC4E10C551424A857CC44B3A4DE5538A4BB66DF0FAD527E2A759F88C2ED676F0DD2E196D5AFD9788059F985FA0CD12D1138EA62416E2B3AA1C9F59128D15F97EB8DA41AC16787961E1E04B7270EB01580B40F4E9DFEE3158AA138AC834F55085AA35526D8008A04AEBF4EF2F9DD7290379A9B9EAA9D66A68A4AAB4E18D42ECED77639DD5F6BBB17053D9C633CA7D22C0C963B45870B44C5EB056525D469437F89DDC0D594B5EA829BFCE27D5D689C654802148F949A730C763BA6AA85E3D4D554D8DA9CA95362785D6DFC31117FCB4F5CCD22AEA534E2DC9ADC902958F4C26641ED365DAE0218D90877D26240D457FA115BA8EA0A2268624A5EA99D259D7598C5585BF37ABEE3AAF694D4BB99B2B5926B1AE1F17897422506D58C75D7ED37A6A299AEBAA2783D6772ADC6D4CD182A125F5708028172ECC634B1C52FD48AD8EA0A2C68624A52A9BD241EB4CC3098B02E9A63062C8136C4562FA53DFB9D5E4AFA8B11945A9C28664D0FACE99184FCE088F970CD1174F0CE1E80C05E4AB978438629EFCC5C5988EE81BDC98BA42176DE84B9A69C5C4919E78DC4E43793A986E2A284DB552450ED54780BF0689BE275B2755D4AA945812BC9C032C1B0B99F00F13611B7A0177E955526A739445D56783CA1B62D9549420E20B371E31314A5C219FC672F29444545B87069A8A7A995395EA0A206D5DFFAD8FA3C2C5891122414BF14D4E1D494CEAD5504BDAA40D53E26AA5187368AD9B20F1E56AA347B1608D138F8A19366DC0869EA6491B8D54D56A682685D69FF110F3593671A2D1780739A677B87504153537242955DB94CEAACE3E1E31C153E8D1A0BEB9CC2675D567AFAF67058D9B3A8634404CFC9DAC4772240054B9440BD2401DB5A1426A5940F5F34D2EAE851573C54D62450D35C9A52AE8F240658C308DD3352C8D88595A8584E5D492809A2C60F9B2A53D9D78EBE5AE0AE9D4C4B270A51C50D9784C162444CB90781109E50082CEF5B3486DCE0AC99BF2962AD24800AE57120454197DA77335B6D4D7AE3A7F551D8D28CA3535236B57DF88F06C7D2BE473A31A5750D4D6B999A6A2D60684567B22FA0556F8EE888E4FBF4F525316E61CF1592CD79F006BFD62B81E7A8CC3B62F3866F108AF403498A3090E51C88236641E1B43C916119B40693CF60225998B76C25022D156C056825747D040B52648E0D51144D0EA7006AF8EA081564790C0AB2388A0D5A15EC15503285704473065EFBC74EBEDB9862D76871B5FEAF69DE94659BB8EA76917AC451F54CFB2EF8E6ACA9A50D6F9F636DFE0ABE39301E1A4FBBAF8349C775E48C2F19474EBA1DA3BC37DF8B6AE77BD4B1E0FBE61DECAF96DB7C0E14E2E23ED9DD9819DD99C79882FC8B87B27309E9111EAE65C9FBEA8241891A8F3C226548C2DF651ABF3F289E01332AA8FAB3944D3CA97D51F97813BB83A7EBDD7AB298BC5C17EDCC45EC68ABB63307BA953AE3C0FC77B2DEFDCFCED79CDAF3B3CDCA77A66E8A14037EE7A73D2CF81A75EB3EA9D74EFA47B27DD3BE9433A69DB23C98DAEB9FA14B31BAF9C3F9FECC033EFD8F5DEB9F7CEBD77EEBDF321BDB3ABCB148D5EBAFE0E462B4F5D7FB302EEAAEBF8F5BEBAA62C411DB0E97E5CDB285925512C6661FBE91C925020416801FB9BB2FEC904C071D8785621C03E5D0189A86892258E79EE2EAD21A54F5F48F8929ED507D1AD7014E0680E259327A2B6341F9880F93139D2BD750E7BF0D81DDE06537D36F416592BA75D7B350CEEB36BD8F52EFBC0A3DEBF5934470B1FEFE3A0C12C46C26826DD0F3C6549210B68E705ADB1BC9F6E4E207D8AF96C4F2ADC9446024CFDEEF5B88F09D0796D6C76761D57ED7180B7785B753880BBB9F0EEC79879DF191DB8331AB3248CA355E7E57C15100F71F76E6D81177B5866494B4179EF76DAC7F8C60C27F18C452885036C02D39F9269D5991C24BA81DAD158854870D9ED14431D38EB70F26CFBAEE6C05D4DDF05F45D40DF051C227C8BA1DB6F8AFED2CAE16F62B9C07DFA9AB277DB0776DB7B3B461E9098790297FB59DBD99576663BB3E7E52381F19E544F571D11AA9D33CB077F6AE1D176E4BD5BBB18B79635FA9EDCDAA6B4BD8C4C7BA7D6CEA9B58D1157726FF5A1E45AF9B8C6807170BFD7C0B2F785C7713E20C48B082F8545D3EE0D3AC42FE9063A468B88787230B6ECBC4CC6C31DEAF01EAA98A13E791901CF916C49A384B725C5E1147A38670FAEAFF3D092AA8B6C1195D2CE6D36C499B4F09EB59C7B277A1C4E54B4CB7E467AB2A0BFC9682FE50894A1287760C06C5950528A7F70C27DFAA1FDC476ADF44AE0E8B076CEA92AD0AB8557D2B3ECDDD185B9A388B180A35868C82F6E2198BD109352FF4DE3590E4FC7366DEB3CF471A597308F9ADCCA3DD4C74186FB863A7EBD63380EC7D04FF6FAC95ED70EB3C370E9AAAB848659B7F79385D8E9963E32C7ABF78FC7E11FD3D8B2FB1838095D21CC476C4F11B464713319B3A3FB357B16C9EB327BAC5B56E27EAAB76FFFE9E6F9855ABFD9F06483439FA9798BC1950B2DB1EE3DEA717854CD281071D96E7BD8EBDD9D7792FEEF05872BA13D587DF34C16CC97A05B25688B413ACB57C5F594759F8377B7DEAAC39753CC7C99D1E32BAD5CDBEE1915B8EFDAD0F6CEE952CE812C1867233155DBCB48685B587FB8ED88CF81B4786A49F57975CF31B5726ADB7797E03E2D23ED5DDA718CB716B04DB7C53330FF0A963F1C00F30F81F9AF81F96FA002DD42096EA055B88512DC402B7D0B24A040898037473850A51C280E0756770194670194670195E70698FF169A1F416BFC169A1F5AC21C9A1F8850A0DF5ADC01F3DF03F3BF00F3BF03D6975328410CA488802D16418DF20D94000AEA01821AF200815D0B821AF30001CD99034BE050FE405BE0405BE0406C7BB0EC404B5B02ED06A8FC18A8FC18E879E3DF815D3D903D100B31100B2B6020B539B0BA18E82330D04360A07FC040F860207CE640F9035876A0F69F81DA7F064AFF0CD4FE3350FBCF40ED3F038DF719685DCF40EB7A067ADA67681FFC0CED839F07D0261E40DB78006DE401B49507C0668E804E2E01F6A7D0010774AC3B800E760740DC2D8640DCED61D90EFCFCB8BA6857F34279BB35BBEC2DF2164B762965BF6257BBD71610F4E9DF9D2F6DA7E5FCFBCBF1ECE7019FB12F81BCF2A1FB5618AF78D31E0E792DA3DE028E64CD7ADCE2F0B820A221F2D918FB2824F1DFED58A487CFE5D50BC1A205071FF338BD74CD51AB4A6C2E7DC8CD48029CD7622F100A48E386F236955FF0F6C47F93910C62BFA463826241061C72F038F1562860617AA45D3A3CD0F08970A1F1F1AC350359F5117E018EC2A4D0F26D1538E5848638DC05FE05346FDB86855365B56B43BA87C197D67D5774524D794B7D5623815D1796040155C2EBA5C1C5E571F8161D5935BBBE3BAB292BD5D17E8E61AC8B6AF12AC07E9F73D896D6BF5FB03737566DBC55CECC88A2ECD2CCC81C3836D119672F92877CEEC2B55530EC9D5B5D59DF62CA9947572C463196EFCF741F92FF749CD529B8FEDEA15A38D40A9751EB529B692A9CAA01A1955B7D18B4F19D0F83833AC8870F70072969FAE5BC76E53C40F7591EA0FB2C0FD07D96FFFCFCFE538D9103F08F3CE6CBFB22621ECB51329E1119BC673D495B25ED8CA396656F39BDE538B51CE0963B8E8087D91C9ADAD39F4FEF7F6F6953296D6F3CBDF138351E60B7F300DDDE7F806EEF3F40B7F71FA01BEA0FD00DF507E886FA217DCC9B76EEE54DEF592EC8B3ECE1BCB28014D07B39B401316D7C1150156D8F6453F3380DFE96A06CDBA5DD829909DFDE8A7A2B726C45A7D3F5B45C4AE9D7522EC968447B1FAC5F18203626E11CA3F912FB7442E7A9FB5ED245C2E7219DB3258AF088C54CBEDBEAAF70D02A68678B627A03B82C03381D973E6C6701C31ED11785E8217CA1027A63D521A6B3E5E95886AB11E08ED83AB450CE41B7447D33E3DE2E2ECB2EA02807AFE01DB273B86E6726D7BD115C94115C836DE01ABEF07D0D5FF9062F7D5F03D7BE1D5A1ACA47C6DBAE3621D1CF08FB5BF732219E46D86B6992C6FC7BDBED6DF7E40C11BCCD75C85EF5A69D09DFF496795196098DAC2529E0244063766805684C632A3411C840A3D911C0315DC943452D0DA486636F3BBDED383504F0398943F638B7ED0CEAB6B79A8BB21A686846490127011B1A34DAA243BB29CC9AE88B87D38912170022ADDE2B6960D9DB5B6F6F07361EF071BE43F66B6FDBD9E0DBDECE2ECACEDE82EDEC2DBC5F7B7BB099D4DBE2DA1E93BB53EB5308492CE0FDD5CB36A9F0BCA5B918F3EFEDAAB72BA746023E2B7EC8DEE8AE9D79DDF5567351567307B69A3B786F740736B43BF040F1EE60BB6577EB2BE1280D04C4D9524EA022E289FE493E2A95DE475C6F68897FE25798AC12E491953C8D279F356A69A77685F656DE5BF9C9992CF8EAD521FBDFFB76767DDF5BE64559E63DD832EFE1FDEF3DD898EFC1C67C0F36E67BE0DA8E43DB44643221F3982ED3770517115B328F06697F293B4BF1477A64BEA5091B72EF2DBDB7F40B305BF0FDE743F6DAEFDA99FCBBDE962FC896BF002DF90BD08EBF00ADF80BD086BF002DF80BD4E0DF1DECB2C5BB2CEE0FCA3F1C4C0BAFA05BBF510E2FA5F70EBD77E8BD43AE8F3D91E140BBEB88FD6DC44B3277E8F3A2C0D7541FA0771DDD811FB50BB020E87A03B82003780202F409D8DF3D41E7B4E0DBC143E83C7B0816E970368C92882DC550758ED76726305A4464C13C2C87A6F241C67626DEC0B6F700BD07E83D407B0F70C841AF45D8D0611F36F4E2AC1F1C33EC08E38C1ED4DC3AE9A0FBEEB937D0FDCC50E909756DEDA2D50EFB68B597642FA2BDC1E3C737E03E6DF8E66093C237888D085F9071B6738168344EDF4D18C987137C1A4B20880EA4DDA53273F6BD55F556E5D4441EA02F8B1FB22F6AB9BADA2FAE5E96D51C2C7CED7080F46FA72E33672E6359446C4C78BB081900FE3DE42F0BF2A7E3C45BEE10F75BC49785E8160BD2F009057411DBA1152019B82F59AC47FBE18445411A839CA165F2428443A7A1440089494B7331E6DFDBD565D915DCACBAB6AA43F646ED22E40EFB08B9976535E0289B437884DC213430A7432B281CCBDD9DCA0D69E0E0F0AF39FBDEAA2ECBAAE046D5B54D1DB02F6AD715F53DD145D90CD802C0D19EC1C19E0F1674BD18133D5B0193618D285A30CE46B4DD6E4C33DBDEE47A933BACC99D4EA7667134EEBA3F1A7779D6D63F5F7DDC06DDEEF183FEED838B326270F87670F4F69B43C594BEC99E90A37229235A077FDE1E148D894F56629C68F78A35AC88DEB27ACB726A59A7D315598C2D6FFAB1E5E5190FF4ACDB11DE8A3AA0B9B57B84A47F83E4A24C0CFC2402FC05925BF89BAD82046A98B7D7F052AEA1A5B8B34DB94E89794CE5D18E45C4A6110E448BB35140C276F7A16A39F636DDDBF46558E8C3E9BCA6D2EE3195FE2D958BB265E8930FEED0A9DB559BA1791271B69441D7B7AB1DACDD291348013DE62F0AF327E3C2DBBD40D23F4072517006BF4C007F7E04FA94813B03D84461C0E1D4A72B3E675386687AC72969FDB07013D3DE7C7AF371680C0FA7F3E446BB1737FA07372ECA60A051F8DDA133DB07152E7AB3FFB94AF84C3E55885E70948CC8D7F4DDC2E405CFDA011950408FF98BC2FCC9B8F076CF2FF4AF2F5C149C0FF6BAC03BBD87256200BE449C2F583BF43671EDD17D51E83E1567FD88BD25F6D1FBDF9E3C1CE1AF180D50AB151F1D9FC342DE6B01796F7F90FFABA9A806F23B4BFA7B3BFAFF101CE538C803CC400E3B5434ABDD06DA231AD328598E6714A51B7AADB15D64D483BBA62CD53501A1F1696047DF165AF630878233C682171E519F06A8E5530D7A4E3D3C6BCA7A42EF45C5AC80F184FE95609F4E28B144D8C960D5029C3D1AEBCAFA330EE41F9D0F4A3F0B71BB2FE51359C529E7A31D5DD8D840ABD0C31BDADE0A6ACAFA402332968C7E124AEB1CA5DBD2F66379C9E8AB286E2F65FD225A814EC3DF71384DF0B4FBF27EF692315EB75B12716267F79FD7378804AB30B6E3F49E33DE79DD6521BF50BF7B251F6EB6A5EF4612EED0A7DA0C2CFA9145AD2F10ACF7E3E016644CC570588AD471517FB0501EFC5ECCF6523151DA745D9C62822D0CE7038EB84FE77B913B2BEB27F149CC51C6FB18F8FDF92D597E931A0903BC973AE60BDC774503FC3548F657CD7571FBAC64A397BFC8DE10DAB5B53ACCB2A1EDBBB663E8DA7E9BCD119EA3BD94F517E3F1BE2623DDFB2DC1D7637CD67D85188E47B8FB91473FA538992945AB13281BDADEEF1E83DF7DC2A1CF967B2C0A7D652BE4ED656CB5C7E5A09FA75860618A43D1B75009803D2CAD2D7C167C2611C57B2AEB63128C48B4877E662938EF67FA46F838A28BBDB4573FD237DCF14BBDC45312D10E670C16E713FA130947D16F7DC04B1F773FBACE062BC816D57FCD3CC485AF5E75EFAC6551210BF6E0A9FFC0D37D554A16B59F4AED718DF581CFA6187DC3A3C447A3641525DF8EB1173AA6CEA1A31E11DA7B586C4F1FFA79DCBEFFD80C33E409AE150BC57FF90CF1199DEC461CFB2A5578B4EECB7CD867413E5EB217BA87C2A4274013BCF2F7D2F5B038B8A841B8EB95A276EFB76E687B8F5953D684B2EE4D2089F133E69CCACDCEB5AFDC7399BDA73C014F79CE1EECDA62C9E0BA5F33388A31DF3F6914CF3EE4969EE5DF4F34388E0D431EE3E57C3B93DE5C4F03C2FED7087B896C853FF73062592F0B23FA1C53E163849BDE578941BE6FE8DE5BFB01955B16F2BEDD9E0A4BC2E51E96A4FF85579CA215F53D1CA2399E104FA007233133F1F1CA03ADBF6AF6A59F6934A528C03E9E63C4C4A0219A8A624469968CB36D9DEEF7888FA93B83AE8777DF21B68A099D91F6DDE1317487EB257469EE5F59F78B9D7B5C57DDD7D19B965B7AFD887FFF47045B45C8CD487B6F750CDE6A3FD7EAFE932DCDEE655571BFC3D8DE5B9D8CB7B2080DD2470331F156287919EDC763EDA5A4E25AE93E4ADC2AF29945F4EB9E54B99FB28ACADC4F9967E668FF89E762E27FCC97D30F3C79B6B8B0D2DF57399EE1A8DC17DECF8E51F1E040E7C5FDCE567486F753B5DF5838211109395DEDA9C4ECFA3B62DF689C069AB23F947446CEFB9CFDAEC58595FEBECA71F9DD7EC1F2E28799E7ECA964A0391A703A11E68906560115154EBD1FAB1B6781D6C73EAA01141BB20F61D9AF61D96F80D2DC02F3DF00C5BF05E6BF01D6F71696FF01268E3BD7D059C0C03F584805DC852DB77A1D2747DEFB849AB21E6176F208C3D9230CC58F37B0ECB7B0EC6F61D9D5E8C80DD9D560C80DD9DFC1B20FDE00F303DB75006CD801B06507C0A61D00DB76006CDC01B07507C0E61D00DB77086CDF21D46E81ED3B04B6EF10D8BE4360FB0E81ED3B04B6EF10D8BE4360FB5E03DBF71AD8BED750FB456002A8461114A24091ECA3A9AD4704D6B3A388ED1E5ED01EBA351EF47C7AFFF0F4F0F157F4F4E7D3FBDFDB0C7B0A0CFAE7426ACA0AF1993D17027DFF6F08CC7F0DCC7F03CBBFB7E74BDE73CEC634C550C628D9DA071A45381CCF14BCFF1C7AAF3E315F97137D664934DEAD0C127FF2DD2E936866615D7421EC49FCFAF1F57F95AA54C7FA09475312175867E2296CDF7CF7DD40AD7BAE96F5951FCF28F749281F914E1F1E92AFC2A15C15AAE46DA0D329464702515153911A8555B7859DD2D2673C48904A22FDE51C8FE90AA63F63165A55D65383B46A2EC8FE14ECAD638F9A28B29C55A7B02C1744311AC6FB5300994CC83CA6CB14EC218D90877DE6E33814E30113AD18D2EB5455470AD19FA9080754EA420C1DC2B8953E4BA446AA5C535969B15CF00115C8491A4E768EDB29514B6EA4C81DA59532F502EC4FA153D1A1C7142D185A520F078872D1C3796C89C3F4A254A3460DE9752AAD2385E8D45484FD299586131605B217C388214F08245A39FD3933D1A919B94EA53594108D1A0AB03F85CE996033233C5E32445F3C3109A3331490AF5E12E28879F217975BD746906DC34CA76C633E10D5B712EEE00DC163274D50C106A0FC3C07076AAF12687F0A5F074D37D16929A74E6DEB4C10CD94D9EEB1F2EB671226D20F9968409B5DAB865D4E902EF405EC4F21F280A2988412447C318C8898988AAE904F63B9049544D44449E62C748A6BA086281320C80114BCED02A9E801C53494A0A5F82657F888BC7600D0B329A75A75D73269A57563B10EA0FC40F20C8847B1100A275EBA910E4377238B5A75EBA95BE9B95990FD2998F110F359B68045A3F1CEDC9851B76D48AF536D1D2944AFA6221C48A93E1E31218D6862B842F5B48DCACC91B5566445D18756624803C4C4DFC97A364782F63AAD6365AEE212177B8DD70AB6BF06D8BC4164A2614D5E9D0A37D9203AD2B1DE9F12224CE576A5890ECA59752AC8724134A061BC470590A9F861547F35A7B6FA69A666091B3883EAFF5FAD2BCF63B220215A86C48B4828C7F8746EB4AAD844A8538D96068293C642F7871A9E0401551629D24539B634529F11B95689D59420559A09B06F85468467DB61219FB7516933836AA556D0C2D56A2044578A5D6FBFFFC4C218D39044DBCB7E239F70F9953CC79A232EFFE6243BE5C2B3830F6A0525D7CF24CEF86DB6C4779BFDCA5E79494145FA7C554B3CF2890D7CF49BDB258EFA6C4DBC9B767BCBC534513494B8DD2E2D71DEA63470A8DF452CB1ADCF0E2D6BB3CDD65CCC2627B484FCFE537329F9DC0D25D56FCB948AAACFDE5056ED7E45A9A8DADC0D250116EB4BE50268DB49515CB5362DBF48D550F266E1B7C47C93D0449F5F312D33C9A736706A5C422C716FA4302DB16115ADBAE00642D3F2AB9695AA0BAEA26828B17EB5A5545C7D76485985C588FA720A595B95A1998D1B16A9A16C906037992D15B14B6AE0B19D0D96586C539A386413AA32832CA181BE62D651625791AF897BDD70BC5C465D6EA3922AC7A8156555E66F284D9E6C2DB17CD0CD61553AE4315F284F8E7A384A840F979E6BADDC55A265DA40D15C6276725BC73A4B6AE4F1464BFEC68452E8F845B82C7919569E87E671EA33135183342884B671CCC81ACBD63792492B0D101B93708ED17C29FCEE241DAA52319C59247C1ED2B998AC44C271C44CBEAB281A27D079EC565C1A251B6A4B2A5F4CD05066408AA58F13539C889174D8909347CFDB84AEB1F46B2DEF6B134A941FED6CDB1F0969C43C6D2D4B8885E57AFA2200E48DB2DC688BB831A144D5F31F3DD35A82C6F26EB54C6F4D289176745939166DA4682CF1AD96EB5B13CA62E33289D1B56525B198257FF532A862DDB41146DE28CB9DB6883B134A247B238C263414FD105B4ADD45C413428949949FBAFC354AC53FF12B4C5609F2C84A7A8D308D94AF2BD79667A3D4F7DA72EF4D28516136BA88D892793448C591B2883F52C7A82FC098B8518E77DA02DE9950661D30CA0F266961D3AC6918DA8649935CDACEC1A06F48EFC5692891415F293221312B581219D27E6D4A62B0129185E8D6D229BF6E806C44D55C72E5C866683AB219B692DD5A72ED786A68309E1ABE119810835632CE4FCEA4398F0A5360EDA40E44DD28891E3226881920FD56C5321345767291183A716DCF08226F94456F32263623C7456238B158EB11B88E00236F94453BBA1A1A8CAE86D7A8FD4C1A44DD2489B60A0635288EEF3204C82E5CAE407236D22E3B185135975CE97FAE4DFD8F764069309EBCC906E554EA3D5A8FB7B64E48F4E164256A523BC582726896A8521B37A6DAD00E5A0DC6ACB7B205B1E83CA5DD08DB17A3F9202002810109B52EBC81A0A93CED80D560BCFA5687BA199A279118A1C9B1D8B63198D6DE60F44DD26807AC06E3D5BB4DFF87C3A94F577CCEA662D4BFDE6CAE9ACE34D33495AA1D6E1A8C36EF73EB2719BE57099FC9613D7AC15132225FD3317EF2A2DD6100D23749A31D721A8C38DFE9A520428B4BC4F98269F9361335949B45347BFFDBD3FA392694865C2895A4CF66C67B94CE7265545094465BA862AEE633E31E63D127E11195D15CF5A3DCAA8C46FCAB191A73D00D057749663C6AC4309643675FBB24331E3A74EF928C785423C0B4CDB583EB5D92198F6A8D1A8C70772F1856F0D00412D1F3D07588DB14230EBAAE6A9B62C4A1DAE04D6DBC1A5AA6C8AA069629AE4AE11D6B1C41316303FB4250B812D3426A032725D24A899792AE70CB9D78D19D24D984917895CB573A51A28D355138C1531D6D625B9BE2F9952B08AFCDB19F1CAF8A233357C5EA1AA8A229A8844631A0381485AA9946A2C855D4E4140EA80C8D326BCE0EB550A879C0099D6E5B86AB28AA001EB022AF71D881A4B62577DD0E9AB8141A7D3745AF28D4AE267E45AE1615C7AE9A3875AD0FD330151A25B58A7051A82F34C6454E0990E366ADCADCBBE2CBA12C4C74DE1000A3BEEAD52130EA34AD3F71072D69EFFAD547BA30D1B1418C8CFADAD747C9A8D375F5B9C3362576AD73D360181AA5B78AA351D0013492464E09903398ADCAEC5AF1860133347A6F136AA3A00260B08D9C0600C751DB94D8B5CE5BC5D4D0B4807D6C8E8276ACA273E474D5FAD0AEBD34076AB9AA201CE66D6614C6C3443F4D813C9ADBA9EE70B38D045DB74D395E8746FD0D413D0AF5AB0EEB91AB82FE1077039FCE55A18FDEA1D387419C8F6265EA237DE435537D32DD8463D73A0204F4D0E8AD6D389042CD5B0404C969037836BF6DC97B6B07E3B81F75CDD12E78885E37E0F021BAC6019D38B094636F4DD51C25A4AE8D803146F44A318F32A26B15B3CB1D6D4BEEBA1D4C8389681AA1551C92821EA09148724A805C766955E65E155F1170A449E926714AAA2BDF10A9A44AD935377EC0651D46C9B501498C756E1ED6C4402D46814D1A5BA4F10897AD245DB7972E7E89A6411AC39C14EA5917E8245791AA0B608DBCBA568A269E8946274D514F0AD5A8897B92AB45C57DB6264E9DEBA314DE44A78EFA1828C53A544641C92B437B37AF814FD7AA680C76A2D10C2C404AA182C6215272F535BA84082BA573AD9A4542D1E9B6450C9562DD615154F27A36BF88D9A6C4FDE8DC20584AA5D6A18156345A00845A2969DEF05A6ABB525D697FF398C9369ACA36ED87ABCFE3190970F6E1872B91654C167182FDF59B409B843FF062218FC6EC28B32FAF3E2FF05854EAA7FFF6F9F5ABE7C00FF98FAF6771BCF8FEEA8AA7ACF977011D478CB349FCDD980557D86357C3376FDE5D0D0657C19AC7D598E71BE90745DA6D49629C82A7444915450B497FA1118F3FE0188FB07CFCE6272F28652BC68EA938E0B329AB101EA6DC949BF33E9BECF2EFEC6810D6BFADA467B5D3E32FA26A0109E3B496A47CACA64428483F8FB18F23E5611BEA89EA333F09C2DD6F158CD5D42196CF4FE5E9D75FCA1C7EB8522457B574555293825755E9464D526BD7F066A96667D03475C4DD354FFAEE94DA42E947733ED4439B914D51185435E0A9E5B539FAA5F0D29F086BAC9F7CEFAA543FF9D19C4F764A4D5576EEB339AF6C7CA7F2CA7D3E1AE3D09E4C736126268C0D0CC68C4D37A68339477C16CBC30C7926B9CFE6BC9288861EE30AE2775FCD3971CCE2115E15196D3F426A87263844E96D9262F576DFC1DC3C36D6724BBF83B82D223629B15A7F04F1F1D84B894DFA0DC4658EE31897F8645F419CB0BCB9A8F0C1E5DB8CF558D26867FB11C4A7D45E9B6F202E1AEDECBE823895B4B3F906B00FA6D1CEF623884F493B9B6F202E1AEDECBE823895B4B3F906EA7AF31302A5FBAD9E2BD4F15CA50FA3E659ADBF005A7E3783515DB692743C1D67C30163277D28AC0C93EE14CAB19B9E754259913CFD00B185F5E4BA680BEB6F005B08278A18EB2FE61C7C1ACE8B1CD65F00C8E7627EAA207EFD699FF6D7855738419BDE1C7A7761BB15BC0C6CB492F2386D71CE3C24A34E1499ECBE021023EF3CA3F27A42FE3B985B128C48A4E597A5403425662225E9765F7B8BDDBBC5D6DEAB7061C690020C6C1BC6AE1B836771A031B2DDD73D76E3BB63FF65814A89ADF8CAF07B957CD789EDE4D5F8154DF2219C4B3FC4EFCAB96457893AF12B7ADE6D5C4A15A7DE9BF4DEA4F726C7E34D7297E53AF128D5FCDB78953A6EBD67E93D4BEF590EE6596AEF83BA702D90020C7C0B8C5D37CE458814B0A9C69C0B0980EDE36495447180351C952480A925A1508FD020F6156BCB2700769F02EC53C5D236DF20ABA6A168AA98978F02E413206BA82F247C492F6C151752B79F01E68FA300477385D5EE2BC085CA00CB8ADB5C7F3A7507E7CE819FA0ABACBBC4EDC25302F81B384A10B7E35C1DFE9B4573B4F0B1BA5B93FF0EB0A8598CF88C4E1413C87D86F10A997C974165B5FE6ACE69DD301ACF5F4800ACA893708AF94C57532509CE930498FA7A9E5912A0DEA5312B74A0DAAF833BF26BE6E10F5C78B9D6A519F83C0BDEC7E901C72C09E348C1E6F6A3399FAF2C89427524B8FD68CE678117EA8430FB04E481CAD69BFFBECF5DF431C3493C63114AF5AAAABA98D6EFF79D9F9F2B840FE9D0C3D595D3DEB7D5733D4EAFD67BA36A0EBD37BA106F94C5E171E170F4AC0C7C4A15E171BA0D7787850212334F7853CDB44B496AC353B36A5E4AEC4DF7944D371728CA89FD56F33331E23AEAB3B7E4ACF23A4B2E26B5E059361825A9B7E213B6E2A670642E2C1B588681B5833976E3018E737B22C48B082F854DD1D2ADE25C0284DFCBFAE53EF94A8E273BF1A5CA579301704A8187BBB653768CD43488D419449297912A6E3EA505C728E1151CD394161CE5B34F152CD74997E183EAA3EE397545A0A2201E09C8F8921C93D0866684B2FB0AE3F437199519A51F617C44E3A0A8B40F534C817114FFF40CB7099761CE15E11A9DDAB15919100336E5D85B6E1BCB8D180B388A598C7DDDE29E2619CAFB6F1ACF728DA8E35FCA72D6F6581BBFD38531420A30B04418BB4B32C37E64DF8FEC4FD7F5E4A3D93A773B35CCA12EA796D525B99B34884D79B96EFB15B023884708F311D3DD4D56D3605C67F2EE679961F619A02D16C983D455426A92C1BC35A216532ED01594C32877E7191ACB6AED280C385F92DFD08C1A1097DA6A1C5C6CB2413651760742A4E1BFE0702550A128A33A57BB9216CC97085825680B083A2BD7D090643F76EF7A5079203FB28D1DEEC251543133F004D5A4E7BEDBB8609C8DC4F8B5DC4B16535A70D41C1A50D3FADDC6131E046CC2DCBBB0DD0A5E06A65B4979499DF442313310EDB342FC0CA25694B000D53C1C28BDD400443D54A84B2FD8D7525F2BD4D720EA1B55F41B98ECB72AFD2D8CFE46ADFC0DACF6B72AFD2D8CFE4655DF0D4C7FB72AFD2D889E2AE25390F4CACC0D345DE34AC37150BB71456E0E929B2B4AE3209D2D14C91720C9178AE40B90E40B45F2054CF21B85FA06447DAB50DFC2A891AAB7F40B80C35B85FE2D8CBA54FE5B58F973857E0EA356884176A6F40EB07E7171A7D4FB0E447DAF50DF83A89530C90B5088E4C53B85FA1D486B5CB985997E80D0C72506318843A4202602214619CCC046328337AA937A03A32F393998AD0E90EAE7D22F200EAAAF4BBF8038A8FE2EFD02E2A0FABCF40BA0A75124E0A0F2B9523A8795ADD83D07D93D57EC9E83EC9E2B96CB4196AB4C2D40330BC5E180FC8DB2D307DAD78B95968E412D1D2B2D1D835A3A567AC618D433C6BF2BD4BF834690CA001254B282D01884D05841680C42A81A1904161264AEE86C0ED219569C2B06F956AC78560CF2AB58F1AA18E453B182720C423956508E41289F2BF59E83EAADBC47017A8642696C505B3F2B6DFD0C6AEB67A5CECFA03A3F2B6DFD0C6AEB67A5AD9F416DFDACB4F533A8AD9F158FF60CF268CF8A5F7906F99567C5AF3C83FCCAB3D2F33D837ABE6775DCF60C1BB73DABE3B667D8B8ED79A0026E0043DC4085DC0086B9810ABA010C750315760318EE062AF00620E4A9277A60A7781265C51A34E252065CB071AE3A451CC0E6880375923880CD1207EA446F00B29AC5509DED0C4156738ABB06EBE7D19C6C1A685999EC19541076B3651062374FCEA52480A7DD0ED4C0FA876B5DB4B7116783E637E473511B4863DD01EEDD5710271A229F89341492F8EF0ABEDA3CA052D273DFF2328EE05051882E0BE4441A8FD35BB11CE9D5A3CD004042769148EED91315534A1A60AAE20542B769F032AE135A970ED0FB82D7F02EA79A73FE9B8C6450E5251D13140B57A00C0B34C98021469C782B14B030BDFE215F662F8C384AA9806113E1A2FDC7B34AE6DA0C307D8FF00B2EEB79FD15A603E10C35DC8A29902319210ED54086DB8F40C45663B5254A2BE009E6956947CB504D3BEB815BDD43E94E7A7773FE267D3C845B373D7D5A9CE66055FE3B949B260E6F21C19C5F17119AB7841A31D5B4531F315D74DCE0B57589BE2D7B3431E4F34EBC816109C6FEC0985F4763FF6F31E5CCA32B16A318CBC0EAEA26842EC339DAF471FBC6DEE31C9DC7791838712B653606BE434754A5DA870F457DCADFC7BF5454591B7555FE01B62AFFA0AECA3FC056E51FD455F907D8AAFC7F7E7EFFA9C860FDE588608D3CE6CB5B33626EC2917C8A53463F5AAF50AD1247980795616410408EBDB598D1DB5A8B4A0EDA67C69172D46FFDE5BCACEDE9CFA7F7BFBB322B2D3333FBA920ED0DC58CFEB0DDCA83BAD9FB00DBEC7D50377B1F609BBD0FEA66EF036CB3F741DD367D806D9B3EA8DBA60FB06DD30775DBF401B66D7A11AEEA8D232F55E263E4A0345497E19B0E7FF85A28BFE41EDF80FCE329A01B45E425F163015B84E398F0388DB297A06C4DDDD132529B82CCECA305DBDE80CCE81D1850C97EFAEE45314057EB29ED16542E7945A53CF63D37E73E406C4CC23946F325F6D3A775A56F5CD245C2E7219DB3258AF088C54CBE8FE6AF70E0268CA48372CDB06B5FCAC560DD6A9A77117E78E808FB253E4658D6505D0A368725700EA18B10EAC5DCECD379E1335BEA8D6540AC84C7115B073BCAF93B570886976486F1367C2FC60AAC316CBB1877115EFEDA918D94F818598086EA52F07D5D82F73510DDD7E551CC3574B9FABA6422D7D005EBF28A3570C9FABAB4667D0D5AB43E052B43F9207DDB951824FC3E8F33AF1FE269843D57E6D8BA4033BBB560DF1BB8318733304EDB1DAD8BE8846F1C597D898F91316BA82EC546D55869EB2F300E1A16501E253B87854C3B0584A3318D699490408634CE8EBA8EE94A1ED471057E401166760162D89B8C31074BB8DB1E72B8882EE5D6915595F818998E86EA52EC430D9FB9FE02E3A06101E551B23158144D91BF346E83C5C13C051B29CC62E88B87D3890B8F714CDC3C1E022CC3CCB6601C7BBB33E670709BB13D7E77113DDB5B479659E263647D1AAA4BB1B0B7250B7B0BB4B0B7E59EED2DB4677B5BB2D2B7E736597A5B5C5D63727F68BD7F9FC402C65FBD6C9B08CF5D9942EB02CD6CC6827D6F5CC61C2C0DC3F6ECF645743E778E2CAEC4C7C890345497621F7725FBB803DAC75DB9F3B983763E77251BBB03DAD85D698878071C22DE95563FEECE6DBBEC6E7D331AA5315B385BCAE94D443CD17DC807AED25B7DEB1D26F14FFC0A9355823CB292C7DAE4EB57AE6CD4AD146616EEBACCDE3F18733803DBB6BD3F75117DF8BD23FF50E26364E11AAA4BB1D1FB928DDE036DF4BEDC87DF43FBF0FB929DDF03EDFCBE64E7F7403BBF2FD9F93DD0CEEF4B2B45F7A0A5A253B053442613328FE9327D077511B125F36890767FB2EF137FA4E7D95D9973CBE2CCACBE35F3DE391873E80D3BEBDF5406FD1040712DEF1CF98C121F2367A0A1BA0C2BFFA2D8F81790857F51ECFB0BC8BABF28B6FD0564D95F14BBFE02B2EA2F8A4D7F0159B4A277A05F7D57F2ABEFCEED26C8BB2CC00FCABF9B4E770FA7D35507AFBFDB176BE62BAC0BE95D8B0175EF5ADAB8969267E9071A45D7E4E80E65AB2B94177B83D2EE35599B17781F4A57376137374F00D0C85178060D232350EBC82E03D64F0AB69E40D07A527AB827500FF7A4F4704FB069B1A5593C0CD599FD1036B11FAAF3FA21507E95FCEC8C1A25115B8A51E61CAF8F6960B488C88279588E2A57D899CD03CB31740960AEBDC730A0EE3DC6813CC6458C8C5D063CAD6066E63D2E3CE0A95D44B2530F987A19A6B69FCEBD8BAEBDEFD88F6B864B1573A57DC7A65A9BA3F0B8653E461673B1E17145D54B634658705A995FC302CAA334F47B736ED3C537888D085F9071B61D8168344EDF5A18C9C7167C1A9308C7C2733BBA43D7BE3C338B69CFBDB72C630E9656F1A0BE47FD007B8FFA227A1E574BB3ED56662F76615654BDBC5A716EEBFE03A47D9C1A2D335729C362446C4CB8A3701E16059AA1D582FDC5C0DA6A0DEE225CAEAB0DDE763BBC17BBC52BAA5E02277885B8ECB5816E5B10949799CF6DB02F83D4F23859AC87C6E18445411A569CA165F24284BFDCBC084F5C9942EB02CD6CC682FDC51897E5E68903E3B434AC8BE87C1CC5EE2DF33132A4CB8DDD3B2C85F61C02437B0ECBB17B87D0D8BDC35278D0212C3CE82920BC70EC7577EA35A44117477ADB97676631EDB95F8C65596EBB3BB04C4BABBA849EC751C7D3AADFB9DC6EA7846D20B44BC80646932E059306C6922E85923EB730EFC5A8E8D93A920C7344D1827136A28E3644E0E51819560BAEBDE599D11FDAF254F2BE43532DD7E169B40A66663678E1A7D1FAE7AB15FAFEF96AC7A6EEE8AD85564F2D5CEE4B0BA5A8F1C0A0F1A598F1C090F1376A17787366C1AC6FB2B7E4A85C5A88D621A1B7672563E2939518C7397EC2DAAE4C2383B12CA1B72E337A5BEB52C9FB4E47B54E87E3CB0A6666F674D9E34BCB5364A77E2DE9124CCDD1C327ADDE3DB9DC674F4AAF2F001F5F28BF79027DF2E4B6FC60EC2DF4C15841A01AE8FA1384C775598E6BA81CD76539AE61729C80A1CA3546CC632A0F5D2C22368D702080C746420647779240451819388C616FFC66F4BDE91679A80CFA3EBEE83A1C3D01D3EA0598CB7D00A6F44405EC858A1380956E076C86E649C4D952C65CDF2E433047074E6C4A3402AB15FF4BC1B50AEBDEDD16EDC2D1A327ADDE3CB9DC274F4A2F1A001F3428BF77027DEEA4F42202EC41841300F626BE000EA73E5DF1399B3244D37B4089BB9789A1A518990598676F3566F476987F503780FBE737149B73F4FA46ABC7372EF7ED8D52747D5870FD138055B653287CDF66877095F0997C5610BDE0281991AFE91B83C90B9E3942A045894660B5E27F29B85661DDBBDBA25D387AE9A0D5430717FBCEC14329E8FEB9C5DC7FA7774E448C429788F30573043B683146B08433BD14D8AAA8EDBD6901F68FD85B621FBDFFEDC9C311FE8AD100B9591B31616C006D333695CDEF29CDEF411AEFAF22F15F205A65D6F41768D6F4973208F80B3408F80FC19102BAF48B39875D73AA1A2CA61C1B8C4734A651B21CCF28923B650E715CCFD91CC84D7CBA41B2E283B40EA89256E9F83F81FAFDF648B247F761B1180BD94778447D1A20576F0C98B136476323A36EE0F884DEFB7E9141F609C2E35F09F6E984124FE5944BE881FAAA09A82E91D91E8A7BC3DE9F7120FF28B2D87E34E7F339C6B1C225FB0470AD6425B5A9F8D7CDC7BEC37FD5885D379169AB9899A31712A3D60ABE1F6844C63165E14F42F4222325A905CFB261284900F348465F0565996321C19CDF2F42ED741AFE8EC36982A70ACF52A239DF9FBD648CD74A4B22AEF02D2542DC437A83431086B1EA25F229E61CDF73C68B9CD65F601C7EA13E2973597F3D0D8753E790135EF6C889564787755B4EFB5C8B4E776FBDEE2F89EF977DC1EE2BA09917644CC5F82E5E294D9DFB6ECEED0F16CA13AF8B5959382509C473BAA62C9B899A0670D238E23E9D6B5C743E01CCEF27F1498C95C7A5C18C2E1D30CAFA962CBF89D6C5618035C3AD526A3BCE95C25766829513E0AF4152217F3EAD0DD75AD93559BA7284E7DD591CD6CDBB391850C5CCDCCD430E091C899BFF6D3647788ECACC0A09801555C69571D8FA0B7844AB1DCD825C4044438FF19962F5DBAF0089188E4758ED07371FFB91E5258E2CDD6C8E5731337739908DF22371394F38F4D9B2CC2BFF1DCA0D7D652BE495FAF852E2E126D63F4FB118274D7128FC2195735D650A5C4E862C2C2C7C167C2611C5EAB2422E01CAEF63128C48A463B84981B8D0A570BC1A65E6BE03E4237C1CD145598B85847E24E7D239AF4DE92989A8CEC4D6DF8FCC49BBDC986CBF15B9B7CD47771EFA035EFA5819816DBE9973C97A28A4D62AFF1D30B09C79880B47B6525C5CFE3B8C5BC802D5BDE53E03D621F0542B59FE3B8C9B46B2DCE743ADE13CF0D914A36F7894F86894ACA2E49B82564DFABE7DF0317A4E78BF7058AFE972AFA7D55384D5A4C7EE389FB0DCE15FB150FC97CF109FD149B9BFD466695D86700AF525AC3380CC5CC3F4A125271F2FD90BD571DBA5C04C094DF0CA2FDB52F619E668591C94DD6CFAF1B45DCE09CDA41D3D3D57C5CCDCDDEC6D8F664259913CFD00006E12E367CC3995FB066B07A2805897A12DFFB22BD0A5F7EEA5770B4EDDC2B5CBC95B9999B15BD0911EFB28E49F348A671F4A8B61B9CFFB5CCFE7315ECE95A9D1E69B39975F23EC254276EF4FB5CB2EA64017B9107D8EA9B06FE1CA742B5D856430EF20EF29B5EC951C00E7E707542E6ACAB3FA0AEA0A29508E49B85417D50A09E6FCFE85579CA215F53D1CA2399E104F3414466248EAE395A778ECC6CC807D9F671A4D290A44D21C2326BABF682A980ADE4A99B519C10BC5AA5BDD7E3DED2E43B3E057B1D477069D8E9B009015BC8CBB1C4828C823E971D68B83D25CBF3265AD49493AD4E295AB5D65775B05F63BC1E730543DA8BDBB090657C1CBD8DE2161E18EC4DE5D1CCAFF4FB640A5206FFB15B6925333D4D224F7F67E91F6EEF2C66DFB4BB67BBB57BBB16C94BC8CF436BF4E01DA7D995DEE73DB65A6124F4D728B9A3FB3887EADA87B9606ADBD866521A1AD06347CB5194ED5EBFC13CFC55C4BB984B5FD781ADEEB0CE6382ECFCAB63F2A7B822765D746CEE240B37CADA6B5DDCDABDBC88370FD9DADE80C6B042D24004E09B37042221272BAD271D52443F49ADED342EC1B8DD30BFBAA6A4BC9A7EA017BCF65E5B95C1EB96D7FE2F6040FDC6EBD5385D33AFD5599DECE4D307022761ECB6E8FD389306034701B5DA681B5B1136866D48D4F7852060810DA8F4A7C998FA0F8321F95E0B61F41B16D3F2A8F4F7D04BD3DF5517DA4EE23EC91BA8FEA2B231F61AF8C7C541FB9FB087BE4EEE3AD4A7F0BA3579FA0FC087B82F2E3AD4A7F0B7B04BAF4F4D8617DD9D1077CF9838554F80DF1C14D1CF01A7E062EAB96BA1B3FF5A818DC23C8DE1E15BC3D82F0F6A880FD1184F547E541CA47D083948FCAFB3B8FA0F7771E95E7241E41CF493C2A91F01E4191F01E9548788FA048788F4AF8C74750F8C7C7C11B152EA0B7151FD5E70A1E61AF153C0E54C00D60881BA8901BC030A7BE5DFE087BBBFC517DBBFC11F676F9A3FA76F923ECEDF247F5EDF247D8DBE58FEADBE58FB0B7CB1FD5B7CB1F616F973FAA6F7B3EC2DEF67C54DFF67C84BDEDF9A8BEEDF9087BDBF3517DDBF311F6B6E7E350C5DF1086BFA18ABF210C7F43157F4318FE862AFE8630FC0D55FC0D61F81BAAF81BC2F077ADE2EF1A86BF6B157FD730FC5DABF8BB06FA3FF5E1BAF5171087920B41C036541FE07B04BE03F8587A06F011F80AA0AB79BF7E9C0C9CEF474CD9065F7F399A31F2A7F70F4F0F1F7F75F8BA752D47837172037DE548F9BC0279ABE1E781AF54DBCC141FD427AA61B3D4FE29F92CF93DE76C4CD3807A25B34BB6668346110EC7B3D70696A521528D67974563CB9EA2AA123FF484A329893546AB5535551C64C6847A1AB04A656DCB6F23DA67964463D25634AAF1DAB522FDC4422F0D00F1EA817F4C7CFFC7D713ECAB0113AB2BFCC395B6F5CD01329E51EE93503EEE983E73201F8941B9D635804B230B153C3A02031835946309AA1C2317C06A12F6186156AF027BA8A531DA4990AA2419F9748EC774D51A75006E2500D6D39A60D1B8F42383A5B9DC1788506F1D9C1188441D958AB82C8F01B2CADC8E0B411AF92E1029643221F3982E53FF1ED20879D8673E8E4316401D99312B155375840640332CF7B8D0672A740FC9082D702C4F5259A251C3A511886B9A36182C9576E4F02BCBDB232F9261906484DD39B6465F05A74604EEE8DAA0505BEA9123512FF305A2712A26CB31450B8696D4C301A25C4CC43CB6C4617AAD19024763562A1EEB080D006958EE7121D254E80B84240D272C0AE44C0B23863CA1192169FA730644A42927159035740678342BF5B8E06828F305A271CE7C3A9E111E2F19A22F1E0EE5E3D001F9EA25218E98277F71795618EA2DDBF155916ACCC500B76D243A2E14B7AA418FE98D9E78EC1ACD951C0D719CA76F8FE00A294E02BB55B25F206AD7EF910081A92152B1B7CE6200AF12AFE3425059BC4B04C9FAC1A4891CC8009152415982CB2E9F0966B45C8F0C387A192F103DF232E9784609223E99C7110B43B6423E8D4984E324A2404441B8A9286BA035409E79E9C7854680DC978CD0ED8C8D8A09DB3279216829BE092D8544869B68075473A69578AD650181ADA92C478A5E63F12F19C441E2C734201EC5423B38F1D2AB38ADDDAC01B74AD8EA6921786D2CFD4881DA2CF7052294F110F35976228946E35D07C4A0536363562A36EB080D806958EE71A1D254E84B87A48F474CA84558AA151CABD8D44231470485A1BEBC23866085C03DFC32B58434404CFC9DACB7AE48E0048DF55CCDC059E2D11AAB75D29C02746BE5BF40246FDE640642554BA6627193C9006C1A7EC785269D8017089708530908205A74542A58B23C065829733B2EA868E4BB44A490A9F80C054A99C8EAFA50899F654B64FC9CA0A4249A1D88BB01497585AD01C263B220215A86C48B482897DBE91C7AE8AF99870A1F2D8501929A4A3A2E17D428ED053A249E0401550E40A407CFD8128A3A434E25EC55D39920D0A8D423C3A199CC178BC688F0EC2A55C8E7967834E1A5476405A531269B4B3E46541A487D8EB8DC5C091785C598862452B36CEF9C675FB6BFF9E68344119E9235FA76749FC73312E054197C81C742D69F448E5F68C4E30F38C623CCC93ACBEB5742034BEA91E8C7D79F57A2AF0ABE9319BEFBFCCDFFC9A7F2FAC736C31F628E3E213C7E627312FEF87AF846C65B7AEF53CC0529F127AF5F3D077EC8BF1F273C66011693FD38ADFA8FAF6771BCF8FEEA8AA725F2EF023A8E186793F8BB310BAEB0C7AE04AFEBABC1E08A78C1954A9EB135E2F2E6DD860BE79E9F074B2E36450691EC4E7CB1C97E2325246C10F2894C5E5581E9872B95F0070D2065E1F2446B9C19FFAF24944BC8C4FB0BC772FF4DC66B23A998AF5F49CCE1914FB6B8BBAA651F62195C765D40B8C4D17886A3FF23C0CFFF679E531C250AA37CCC825A65558DF44F5A6169B00EB0CE74A2A2F5D8BC203198473EB2432B1E699D64E0100775DAC62AB090673B61B1E0918F999063A23A89EF1F428F3CFFF8FA7FA564DFBF7AF8BFD08EF21FAFFE8C84FFFAFED59B57FF77EB3A80CBDF519A976F6C8FCDB1174ED63231E788CF845A2D50934434F418B731268E593CC22B0B0E58C6A00E65647D7B261E1BDB3159446C62C7C1632F760CE6021AD88E85C086152A6CD52038D8B5846060AB06C1C24E0D9CD9AA4170B053836060AB06C1C24E0DA2C755A776ADF8ACD26871ED9B333F8770C507DC5915A9BBE8B020B15A4EB6EF4ADF847730FAE2EBC9AE93C169387123934FC3B91346091713D6C3199C2BBBBF10C3D586BCB978039D330FF10519BB3188F18C8C50CB297C25BB241891C809C30915530D57D2F5D6BB4FEB350F2E74B2269DBEDFE60A9DCE3A70B20DE3E14CB61C4F2F7DB5D7B19C47EA30FA71FA411D862E0854EF2B7A5FD1FB8ADE579886EBEAFD45EF2F7A7F71F1FEC23C9CDAC93A0CC12E60537776394A56491407D8A1174A42A17B513DEC6FF88D287C2F26C03E5D5930A002894B1CF3DCAE790B2E3E7D21E18B0C78D19EC70A47F2D1081B16F210D3967EE2337CAA9B114E9DEB857835E3987C27EBD45C0D5CFE66D11C2D7CEC6A676316233EA31337E30AC92D640175C26C8D02774E7B4EC229E63387D5DD702401A6BE9B3ABB1A37F62BC4FB745F2D03355EBC331BB3248CA395135E5F591285D88D192EF0C2D14C2BE584F2D6781CFBC763869378C622943681D5B0ABDFD932E473327EAB3A30E7C57BACDECBF45EA6F732994D1B7A195D08D68B77244E0FBF0424669EF0E4EE264B3B8E47BAEADC9BF05E4DB82A2C6E6FC74EED3853B3433BDE70743638E8ADF864AD181476F8642DFB48B60142BC88F052D80A75632A217E4937F9305A44C493FDF3D2095FC6C31D06B02351339C252F238B1DA12D9B28E12ED8E0706AB35D77694E0210EBB9F71576BE4268D75D972F99FD4D46CE7889FAA028B72FD16AFA2E19897FD67C2ECD084D2257F7D67744D617311670140BECF8C555AF3677FF535E7FD37896C3413FCC6D321EF3D0DABDE5F463DC7E8C7BE11EC2AF8A78DE7B07CB8370327087AB7E556445988F98C33B9E92E54C5EE473B394C522791ED7B18C195777625EB48537848DEF0DDE763850EABE1197DA77B4D2BE3BAC204DF705872B812F9BFAE6592E982FC1B24AD0163B749617FE80036ED7E3AC23375E7D9CFD93B5CEA3DC6A5A30CE4662C0E8ACA7DA32EC378CFBFE57FFFAC1C95AF091F4AF0BABA5D3C5B31DF9CA8A3C1CD8910FEDC8AFEDC86F2CA5BFB5A4BFB1ACFEAD25FD8DA5FE6EEDE8A99DF876270FB95DDB713BD9B99DE61676C22FEC845F580A7F63477E6B498E2C95F7D692DCB2FCB925B99DCDD975178B3B3BF27B3BF2173BF27776AAE3D4923EB66310D90127B2F4586F2CE92DAD76802C9DDE00D9FA6C64E9F806C8CEF571BBF2B965E976B6CFED6C9FDB19AF67456DE77796766EC3AED163BB468FED3ACBF877BB01A65DE176808DED00BBB28B9A30B7D31CB6F3B6D8CED7623B4F8BED208FED203FB7AB7B60456DD7EACF76ADFE6C57F367BB567FB66BF567BB567FB67374CF76BEE6D9CED73CDB758ECF9663BB67CBB1DDF3C01278034BE40D2CA137B0C4DEC00E7C915D5793D80DCC2CC7C49633CA81E5947260673A8BA19DE95CCABEC3FA0DA9F3D876907B5FAEDED74A79B57AD7CA58F7064FD19E6C531CCB0ED0D8FA50B1604143E4B331F65148E2BF5D304C8F28CBBB2182A1353F1FF338BDAEC89183EA6E6EACC89D73623739C75E203497067BE2F65A5B7057ACFE262319357649C704C582895D47C9E3C45BA18085E95583706A3760209C4847E38A9FD4DA08BFD80D43640D851BB06734A1210E7781D8DA83CA0D9C6C79647AB1677421630DE3E7AF4FB6D74B6BE3EE88D09A9D7DA04FF7015DB71CFB28A4176FD046AF879FAC49D36F31E5CCA32B16A318CB40CB6EA2751EB54D1EA91FEB5DC5C9BA8A87411B7FF0F001EE0F24CDD9AF3168AA6DB9D4FB60B9D4FB60B9D4FB9F9FDF7F32863F0076C863BEBC6021C6FB1CC957EA640C97F5CACB2AE93179E698B4DB30C491DD99AECE30FDF4E7D3FBDF7BF09E3978ED1CEA83E5DED983E5DED983E5DED983E506D483E506D483E506D4D17A8F37BDE3E8D4711CFC38AA68623BD7D519F250445E125FCE42906C7E1EA7D1B21294ADA4B65B34E8A17952D03C4FA7DA4F6F3B1F8D1DA74F1B203626E11CA3F912FBE9CB83D2A52DE922E1F390CED9124578C462265FAA1113D1A0552CB21E287B1BB61FAD8719F6C0E9183843EB099FE505B4CEA0932D82C532904BC2E388AD8375E4BC540FAEAEC165890DDBE584A3F56BD73DF43A86DEB52DF2AEAD97C2AEADD7C26C17C3AEED56C33A433FCAC754DACE839170D43CCEDC7488A711F67A33397A33397590DB2E391F6D1F73D31B4FC7C66319F04532B0E660677E9D610F8D694C0587408656CC4E4A8DE94A6E49F7B03C7A58DAFA743B8F7CB41EF5B6876EC7D0B50C8125195873B005BF6518ABCEC08BB40FB9B67FC0B507F65E817D6058DA9E8C385AA7FEB6C77EC7D87F6B8BFDB7D64EFDED710E93DF161742985CAB5EEF9F25F192445FBD6CC91ACF7B901E3D486D1DB4DDC9B1A3F5AF773D743B86EE9D2D74EFACFDEB9D2DF8EF6C472777C7B9D47DB7BE0184D25BC09C2DE5883B229EF0F7F22D81F468FE7AB55BFC13BFC26495208FACE4B909F9D0406F3B476F3BA78E7CDB23C747DBF1DCF7C6D3B1F1DCDB1ACFBD75C7736F6B7EF7B6E6776F6B7EF77613EBCECC0791C984CC63BA4C9F475A446CC93C1AA49D95ECA9C41FE921BFDECA8EDECA2EDE466CAFC51C6D1FF7AEB7BE4EADEF8B9DED7DB1B3BC2F7676F7C5CEEABED8D9DC174B8B7D779CC74ADF65F7A851FEF1409A7F1FD4FEF1C0DE407B033D01033DCB2EB5BF71D0ADC15ABE3514DB81D6F2B643579843FD4DBA6E51F764D7EE4F76DDC493E5FCC9F68ECED0720238B495FF488D0E25115B8AA1DC1CAFB760D3278917CCC3EB078A7B9BEC6DB2B7492DF9D18EDEFA284175BC9CAD49DA053438F52843C78BFEBE43BBD4A98DE5EBB7470BE93E7053C7BE7C6819374932B0E6709C338437888D085F9071B6CC8B68344EC3698E643C4D9FC6121CC2E5F6C7E78F1FA3B6C3EDF30CE134EC179EBA86EE7186701A0E90F62526B4CC1C9CBCAB19B131E1FD7DCDCE11729EAEA5DF49E91A38F66B50D62337CB65ACCEB08764289164B11EB58513160569883A8696C90B114E6EF3E217E941DA3548AD317A58881EAD7FED6348750D5DDBE03843EB185243CBF03A9D61AF70FC6977FA29A4417FFC69BF18B586E861117AACEEB5F7AE1D23D71678B681C76CE38E1D676CBD6268BD6C2A2F2F9453B4609C8D68BF56D9E3BA9EFE3CDD797F30601FE0EF9FDFB1A43FCF43D57D28CA8EEDCE36E49F6DC4BF9BA38C7976938580A772921AADE39D6D0FC4C4C4272B312CEA9FE1B9148C9EA76BED0736FB00AFE5FEFFA91F173E56F4F711593BC6BD6DDC4AEB78ACB7D66F88080E96C6737B6D2DC3B5A50C5DD98F5C22C23CA6724F7411B1698403811E360A48D81F173E76DBEA4D23EB04CEB16BEBE3D2766C7E96113FBB6A76DD02FE0CCD9388B3A58C13B89DCCB27E73B56B849CA563E903B2760C1BDB9892D6E1582D63527685BBCDED341C4E7DBAE273366588A6878E93FE5D981380A5E530ED3CC38CF651463B86AD65F8C3AE9A3DDB5A107E6BB3A5B04AF84C06EB472F384A46E46B1AB93F79C1B31E211D23E42C1D4B1FDAB163D81C6780C1777AC742C4586989385FB01E161DC3E21CBDC923F696D847EF7F7BF27084BF623440EDA6815E0B20799D02E9AF0A6D9911DF5951DFDB50FF87E06843CF03ECFB6D98FC3BA44B1271A13845CDB57CA0B819A58F792EC7338AE48AF17900A7CACCCC880736D4ED5ACD0984A04D1F63C10B8FA84F03D4364EE1F1B5FD137AEFFB369A7F42FF4AB04F27945835E0E900E15C5AFECF38907F38192B7C966F673AE1F489AC621A4E4FA13BB11E850CDA85F4393E287DA01119C794853F31CF0D0CB61CDD4134197D152C9DF1FB45A8904EC3DF71384DF0D40DCF9FBD648CD77A4C224E6C8CE0F3FA30A7602489DBF379CF19775237C9E817EABB51D401478C7AE797F0CE9CC4B9F437BF88ECEEAC7941C6540C3BA41C0ED8FDC14279E267317326A0E0385DB3CC63B50DBC3EE088FB74EE4CB28CDF4FE29318B58D5D75DC7F7E4B96DF2445186067B2E69976217080BF06895B71D72C5D0B0BF431E7EB7EA1DEB3DDAED4997BCFDF667384E7C819BFBFE4039D0E07696E8C31A2A1C7F8CC8D600CC723ECA6B3E98754871E52B5DB513A73A7F084439F2D1DB3435FD90A79CE7A41C773B89FA702E7788A43E1C0A89C77399ABB2E7C167C2611C50EF97D4C8211891C39B3A5F08DEE0694848F23BA70A6BF7EACD360544F49443B1B319DCBA68653DFF8012F7DEC6658927541C80E087FCD3CC4858759B97131925DC80247FEE50F3C75299C64E74E38C72B070F7C36C5E81B1E253E1A25AB28F9761C3EF0A8DC968543867AAF735952773CB4939B962B168AFFF219E2333AD9F5202E390B3375C3F7C135331F2FD90B75C450E2194DF0CA77E6DF581C9CDF68A5DB595CCB88EDC767EA13CADCE02889F133E69CCAE5DDB59177C0B737F1DE2CEBCCF2BA9F406898FD9346F1EC436E1D44AE89C454723FD0522B8FF172BE1DA0974E681AA9E8D7087B89D4F69F8EBAAFF55207A2CF3115F627DC8D4BAE41DE8FB9F13A7E40E5F2963C48EA9061122E1D2DA5FC0BAF38452BEA7B58BE8536219E68318CC450CDC72B0FB088A0595E7FA6D19422E1CCF01C2326BA9B682A0A116559B1CD96F8DC2C901F95DB85ADDAECDB6DB78B1F73E65E7BBDEC23CDE52B73B35CE078F5C1E57E999365D77EEC656183ED025D9CB90DBA3B5AFA9F6C95C2D9A4DDFD80A2B7C143DBE0B95C06DAD8204A5E46EEECD019B7E29A822BAEDB4A3FB3887E75586D77FC8A1577C7F7480DFF9F782EA60827719CFF0806E1FD61B54A0B6471E06EB5B0B86BE184E5EF6C4567D89D88BFB17042221272F91CA533AED9AD00C4BED138BDC568BBAB77842EE782FC457F8EAD42E5C4D986DA114FD87BFB3BB4FDC93BC134E07482638A0667731FFCC96202FAB1EA3AB811F1D086F8DA86F8C64AEE5B2BEA1BAB6ADF5A51DF5869EDD686FAC146F053B82FFE070BA9304D1A4EDB85F43B3ECFF06883F3479BF67EB441DAE38D0DF1AD0DF15B1BE2AA982C46C45521598C88DFD9100FDE58515B616C6005B28115CA0656301B58E16C6005B48115D20656501B58616D6885B5A19D3FB3C2DAD00A6B432BAC0DADB036B4C2DAD00A6B432BAC0DADB0766D85B56B2BAC5DDBF93564496ED766C8CECCAC84B7BD7EBF1E685ACE4223B6DD1F343BF8653CC6FCF4FEE1E9E1E3AFFDDB5775BC9C3DEA59795C0E36DF39C47BB467F1EADB7BCED998A6217232B6C9761E8846110EC76A8CE19F43EFD527264BC99233113E137FF2DDE6D31F891FD3854FC782CD8FAFDF7CF7DDA0549B1D9F5D89055EF9CF457EFF556226AC4FAEEDC714FB3FB1503E6221345236551A8EE902FB45F9956C5A9BA6A599A354E996A19AF2812C48288DB55C4393D2D68221EA95B4264BDD32577C4C930E7EB8CA35763D06C633CA7D12CAE740D268B132D634AAAA844D4B362043274781B33E43276801B6A12562B41533293767BE07C44F1AD49304A9F4C9C8A7733CA6ABC342A95EA422AA9AF29E03C01AEA783258F3D6D1970E81A9ACE802B3EDB733C0C8A62E278305329990794C97A9DB0C69843CEC331FC7210B0EE274EAE42994509FF10CA0545BC1D3C5D742CCCFC2F828A0B516A51E559B3CE708A8AC6EA78B254ED20877737C1C78DA89538FA97CBE73C455AE7E2783ADA99840C6142D185A520F0788723199F0D81287E965B8BD83AB4E9E4209F519CF005EB5153C197CD170C2A2404E183062C813951042A63F678780578D3885026AF39D01B8EAEA7732D8CABF514B5F3C1CCAC7CE02F2D54B421C314FFEE2F240E2411C99B17085E20054678042F3DA9E3A26797C9468CC8B6582C362FEF34560A19E2783BD75F8EB43C06B5D7281D7E6D3198024ABCAE9E0601D517F223BF7438061577C1111F9EFE7008B5C7D4E061BF2DAD578460922BE98BC462C0CD90AF93496E70792881E022F0D22150A69CC7B06B86AAAE3E9616D3BDBA062B2B14C5E085A8A6FF2A40A91F79A0F08B95AC9F4C86B20392700D657F5F47018C8B6098847B1A8084EBCF486C0617D9E5E243DF2AAF29E13E42AEA783258633CC47C961DC7A0D178E7B8D941267E75F2144AA8CF780610ABADE069E2CBC723266A202CE4F0D8CAC9528DAB42A673C354BE72278EA790068889BF93F57E03098E075E25D10CD0A6A1395BF095EB7A3258DCBC367708B06DCA2E70DB7D3C03B86C2B73327810A4F23DE243C0212BBAC06CFBED0CC0B0A9CBE960814CC50F1328AC73165B2EFB7412770D3261F7000220E4B226381C06782CCB40CB907882A35CDDA6F3839C80D20A52605D91E30C3C87BE6627E34778120454D9634E4FDAB0E54190542D4E114F75F9CE015535F53B316C458467B724423E3F06745508A4C15765CEB34158550D8F1463EB9B988226161424CA04F98979E4171AF1F8038EF10873520294A4FA4CE2C225C1D7AF76F73A953B989FC73312E01F5F7B23F91ACEFA62E826AD04AE22EF3C364BFCF389BA32F2E90DE5E8AFEF954AD467D395ADCFD92445D375AFB2404D145AD99A881AC4DCDE2C2A89B34DD115BB4D6C605F7F05A554667D769D20F51450E93657199A05DBE434926993192A4EFE147CB348F9DC4662E5091A44AB3F425D92AD3EBB4EB87A8A06E96A8FE09684ABCDAD93AD96A04134C029CD92A0005A9DD800F27695281EF13315BF480510BC48D820F2E64C5949AA4D82AEE04D5A13EFFCE9A47201F9546D29F90C0D45351E622915DF48A113A991C854CC86130FD5D23610D60ADD406B2A7BD59E79B5D05514B5D25611358859BFE95A92B13EBB4EC07A0A887485ADBB7AC90A591BA52AE46E2591667BC750400DA5B9BC1AE206F177FB0925F976493A0176A90D256CD7A84B056C5374FCB7894DECB385D432F72C41CB3C4B6BE05DB164562AAA229FAEE48AAC4D82D4ADB594C5A9CBAD15AA8EC048B4CA697A857095F9ABC5AB2469105086692A49213FEA8A7AD0AD5DA8FC90C77CD17072EEC35122B8C85E6CDDB0AB445B5803855E9206A26631D741C0B4F26449150567A98D25BCD1327F53C5F78D094BD1CE2FA2E79221B465E4301EA7FD6D222A9EBE55A0C5941959855006948D52EB2156893113900D101B93708ED17C297AF4493ADFA662D2B248F83CA473B64491F0FA319301E4044C02DD00A215970A91E18C1AAB38D48A3CAC126168C232339A5876810917434C928EEA7382EA0B35A1AB10CB84B451F06BAD58D755855E9BB044F909CE16CE4888C9E34CC8100B37EAE9CB0690570809E0D0589B1BAD90375565DF98B044D5AB5AFAD26A092A04A9A56994F1562BC86D5569B7262C9176E25B39BF6EA4A810A59EA851CCB75A51DE5615F7D6846511904C9AECDA7925F192445FBDCC72B16E9D12465E21248043636DEEB442DE55957D67C212C9B11646131A8A51165BCAF68A8827A4450BE6A76390B5D18A7FE25798AC12E49195F4F961FA12B54E205B9E15D5B165DBA88C7B6D75EEAB04BA3761890A8BA38B882D994783544E29A4F823ED46F5251B135708684CDF588F775A01DF5595FCCE846536B445F9992D2D9C276E9A50B761522130984F53FDB4639DAAA18EC148270DA2ACE188AA069D698A015794085C10F93CF8DA4D8909484416625C972E91EBD6098CA8AA646A246C16B9729A33AC9DE60C4DA739C3562A69A9106B7568E764C3AA39D9D0604E367C23C02E26DF649C5FB5931E765458BED5AE0F82A82B443467D05815BDD154DA8C89C90C90FE10D83293510EF5223179E2DA312588BC42480087C6DAE8FD54A5A332F15472822406FF8B75DB0117EE61E41542023834D6463B511B564DD4860613B5E1356ABF880CA2AE10D19C415355B4CAA9D28D816A8A33C80CCE72B82C7770391B6917FE8DA8F4121910368B5CD91F5DD7F647D7A6FD9176265C3511369807DF640B1854367FB49EA56D7B1D315C262B51FFDAE5372807BDA44026CDD5AA6C889BDA86B8316D08EDDCBC6A6A6E3033BF9590C362A0297D9270D9D308070111361890503BCA6820D0CB514FD324A376565E3529379893BFD599DC0CCD9348CCE9E4EC6D0B07A6757F307ABD9420164D15D2CECAAB26E50673F2BBCD901087539FAEF89C4D993084F49879D54255338D5E9A46B22661B553E6AA19B3C184F93EB70792F98255C267728904BDE0281991AFE97A49F2A23D8103A4D74B0962D15421EDC4B96ADE6C306D7EA7978E88865B22CE174C5B5E33915E9E66BA0679B37752DFFFF6E4E1087FC5287D4AA824A13E9B4E267D4E332946E9BAAC7CF61AA56F0A5589A1E6AB9143CD6A26488CC5980B8FA87C855C3FAFAFCA58234A29AF912CD585D79666CC5E373BDD25D514D03C4FCD32D6D4A0BE0AC675D039B95D524D09CD0E2FCBA8F312BBA49A129A3DC63A6335DA6BF16D8A68ED22C42EA9A600D366D64EE4774935259836F375B58EAE6B95746DAA25DDF0719B52CDBF7920B9CEA71BA96D53AAD9378FD9D6F9AAFD76ADAB36F5CED546566B63A626566D61B506666A5FA597C0EB5C7A3163BD4B2FE66D9025FFE070598042AAAED4428686A28AEFCE950B53D275C52959940273B75174373D36AF7DBDCAE52BDDF8D03E0956B89D54BC96220AAABA745279472A47597395E4AA581D83AA363D6AA5A938E81D2CBB0A15A8EBEEC5A47C8CEEB9B45091F9BB4D3A6DB57CF5C9A5E2CCAEF2AC7508BC8F0357A7E669228DDA9A1E3072A81EE50A514A5A753F085E5DD3D777343A68F5708F43C5985C7E4AF9812E31395061F9811913ED353C4BD3A5E28AF7B2F43AABB864E5405DFA37544C5466F0FA4A976A2BDF1FD3ABAEE622185C7DA6CF8468F4D7EA8511870A34B9E596F203DD5683ABD0F0250C8D06DBBCA1E150810617F15276901B7570F5B57AEC41A34CFB47231CAA167C913065DEFE0EA033B557BD6760AE70A31711BA57B5EEBA639D926BEF2BC2D55B0ED9AFD160435C7F874A2A5EB04C292BAE4FB6A8AA3E2ABDAEBE06F1EB5D56BA7CF3735DF39A2B9DF0EA0302AF6B54D2366CBB433519DE5A4D5942AF9E5AA8D338B6789D56DB0528EF42B94647768A3A861DB2B1507573F8EC3A1D03836F77A1DCFACBC045AD1ADEE885ABD33442B44697AD824B3B54A4C975E5941FE8DAB1A50A2B822037A9CF24767257AAD3DCA52EABADEE5EB42B95D5C6F935D6A079B4E0CE155A798AAF46BFCD47EFE0EAD685B2D5E8B331E2AD4385A997CF53DACA8BE5F02A6BA2B56A6ADC14D3D5618595BBF02969D545F716D52D0524D5D5B63E6A6951DCC2DDFAB5B4DA9BF37BDF0E698CBBA9A9392C56A7C356AF0D239032328B0AD0424D66A12575CA6A1194D2A5CA9A031EAC1507885CD0567D06D1132B15088DBCE85C850D8119724A348DAF50ADC61FAED64CB7C101B7693F5CAD777CB30FE2A7E8E4F094FCC13CE2F3F4EB0F579F92500E6FD7BF3E104EA73B163F089E21191782116EF33C88D9C62636A222D126CB2679B3334E62ECE118BF97EBD1781CFFB5BE1F91BAE1FF89FD4464F9391811EF21FC338917492CAA4C82915F50B88CAD5857FE0F5725997FF873217F71175510625279D9FECFF09F09F5BDADDCBF609F2B53AC2A163268E3AF2494A360D996B1F82F99AEB69C3EB2D09051A6BE6DACC927122C7CC18CFF197EC64BD246B67F73F23B99E2F14A7C5F528F44D54C9A1BA2A8F61F3E5079E93CE0198F1DBDF82930EC05CFFFFDFF07CB56BDF691DD0500, N'6.1.3-40302')
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

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (1, 1, 2013, 623, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 119, 1, 0, 0, 6994, 0, 6, 2, 3, 0, 2, 0, 0, 223, 510, 150, 310, 0, 16, 0, 1, 60.8, 63, 1321, 1488, 0, 3, 10, 0, 10, 64, 18, 3, 124, 0, 190, 6, 0, 0, 129.52, 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 2990, 633, 3171, 405, 6588, 160, 50, 121, 0.5, 0.8, 6, 432, 66, 508, 0.5, 0.5, 0.5, 0.5, 0, 43, 14, 0.65, 576, 788, 25, 218, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (2, 2, 2013, 232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 115, 0, 0, 0, 2384, 0, 1, 0, 0, 0, 0, 0, 0, 165, 187, 30, 130, 0, 4, 0, 1, 42.9, 13, 182, 561, 0, 1, 0, 0, 2, 1, 1, 1, 24, 0, 66, 0, 30.95, 3.4, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 1872, 473, 1927, 325, 2684, 232, 232, 107, 1, 0.6, 28, 20, 28, 214, 0.5, 0.5, 0.5, 0.5, 0, 49, 43, 0.7, 594, 612, 16, 96, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (3, 3, 2013, 493, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92.7, 125, 1, 3, 0, 3043, 0, 6, 0, 0, 0, 0, 0, 0, 126, 471, 145, 307, 0, 8, 0, 1, 53.3, 67, 491, 522, 0, 0, 0, 0, 86, 0, 28, 1, 126, 0, 194, 0, 0, 272.57, 51, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1019, 987, 1195, 457, 3010, 87, 87, 120, 0.5, 0.6, 6, 0, 24, 480, 0.5, 0.5, 1, 1, 0, 22, 31, 0.7, 85, 97, 65, 286, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (4, 4, 2013, 240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.9, 84, 1, 0, 0, 2827, 0, 0, 1, 6, 0, 10, 0, 0, 245, 225, 42, 130, 0, 12, 0, 1, 54.3, 5, 268, 353, 0, 2, 0, 0, 0, 0, 4, 0, 14, 0, 81, 0, 0, 41.13, 93, 0, 1, 0, 0, 6, 0, 0, 0, 0, 0, 0, 1315, 1315, 1486, 211, 2694, 90, 90, 50, 0.5, 0.2, 10, 22, 21, 243, 0.5, 0.5, 0.5, 0.5, 0, 7, 30, 0.74, 785, 829, 9, 127, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (5, 5, 2013, 620, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91.9, 79, 0, 9, 0, 5640, 0, 9, 15, 16, 7, 0, 0, 0, 284, 407, 137, 259, 1, 12, 0, 1, 58.7, 9, 1137, 1468, 0, 9, 0, 0, 0, 1, 8, 3, 188, 3, 147, 0, 0, 4.76, 120, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 1592, 736, 2172, 625, 6245, 424, 226, 95, 0.5, 0.4, 36, 1, 36, 470, 1, 0.5, 1, 1, 0, 42, 44, 0.6, 1116, 1305, 42, 331, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (6, 6, 2013, 520, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89.7, 93, 0, 0, 0, 5183, 0, 0, 2, 8, 0, 8, 0, 0, 407, 386, 101, 254, 3, 20, 0, 1, 63.5, 5, 1087, 1139, 0, 4, 0, 2, 4, 16, 20, 4, 27, 3, 148, 3, 0, 24.2, 201.5, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2582, 494, 2967, 395, 5241, 340, 310, 65, 1, 0.2, 10, 17, 52, 338, 1, 0.5, 1, 1, 0, 49, 38, 0.54, 1452, 1474, 20, 132, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (7, 7, 2013, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95.7, 90, 1, 1, 0, 1603, 0, 12, 2, 2, 0, 0, 0, 0, 161, 190, 39, 123, 0, 2, 0, 1, 56.7, 8, 375, 389, 0, 6, 0, 0, 0, 0, 31, 0, 42, 0, 101, 0, 0, 0, 75, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 982, 698, 1080, 246, 1487, 132, 90, 60, 0.2, 0.6, 26, 24, 26, 230, 0.5, 0.5, 0.5, 0.5, 0, 27, 21, 0.76, 69, 69, 24, 233, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (8, 8, 2013, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88.6, 37, 0, 0, 0, 188, 0, 0, 0, 0, 0, 0, 0, 0, 54, 25, 0, 5, 0, 1, 0, 1, 59.5, 2, 28, 36, 4, 1, 0, 0, 0, 0, 0, 0, 11, 0, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 156, 19, 176, 61, 197, 54, 48, 19, 1, 0.4, 1, 0, 24, 52, 0.5, 0.5, 0.5, 0.5, 0, 49, 44, 0.34, 0, 0, 3, 16, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (9, 9, 2013, 299, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95.5, 75, 0, 1, 0, 1435, 0, 14, 8, 0, 1, 9, 1, 0, 176, 225, 37, 134, 0, 89, 0, 1, 57.5, 10, 234, 334, 6, 0, 0, 0, 14, 2, 0, 0, 5, 0, 48, 79, 0, 30.81, 25, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 851, 763, 1583, 142, 1457, 52, 52, 61, 0.2, 0.2, 10, 3, 37, 368, 0, 0, 0.5, 0.5, 0, 30, 44, 0.35, 1313, 1313, 20, 185, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (10, 10, 2013, 392, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91.8, 72, 0, 2, 0, 3617, 0, 1, 3, 0, 0, 3, 0, 0, 444, 274, 55, 135, 0, 16, 0, 1, 54, 126, 699, 864, 0, 2, 1, 3, 36, 79, 33, 4, 22, 1, 66, 0, 0, 5, 339.1, 0, 3, 0, 0, 4, 0, 0, 0, 0, 0, 0, 1528, 1534, 1681, 805, 3641, 497, 497, 121, 1, 0.6, 37, 48, 37, 309, 0.5, 0.5, 1, 1, 0, 26, 28, 0.65, 847, 952, 73, 171, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (11, 11, 2013, 454, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88.4, 150, 13, 0, 0, 6506, 0, 0, 0, 1, 0, 1, 0, 0, 467, 354, 34, 190, 0, 4, 0, 1, 48.4, 72, 1379, 1418, 0, 5, 0, 0, 12, 1, 32, 3, 101, 0, 119, 2, 0, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1114, 915, 2247, 564, 6598, 478, 478, 146, 0.5, 0.8, 9, 8, 50, 380, 1, 1, 1, 1, 0, 34, 44, 0.65, 1228, 1308, 50, 203, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (12, 12, 2013, 268, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.4, 61, 0, 0, 0, 2606, 0, 1, 1, 7, 0, 1, 0, 3, 435, 202, 12, 110, 0, 15, 0, 1, 52, 35, 379, 570, 0, 1, 0, 1, 0, 0, 3, 1, 25, 0, 56, 0, 0, 40.71, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1610, 734, 2010, 425, 2944, 200, 180, 390, 0.5, 0.2, 2, 0, 29, 249, 1, 1, 1, 1, 0, 41, 27, 0.59, 919, 1417, 40, 100, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (13, 13, 2013, 204, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88.2, 78, 1, 1, 0, 1096, 0, 7, 3, 0, 0, 17, 0, 0, 166, 156, 5, 44, 0, 7, 0, 1, 66.7, 4, 178, 266, 0, 0, 0, 0, 0, 0, 1, 1, 11, 0, 15, 39, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 806, 352, 1560, 177, 1088, 70, 52, 11, 0.5, 0.4, 0, 0, 29, 175, 1, 1, 1, 1, 0, 39, 23, 0.58, 0, 0, 11, 84, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (14, 14, 2013, 722, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 85.1, 141, 0, 0, 0, 7213, 0, 32, 5, 3, 0, 7, 1, 0, 1140, 563, 176, 355, 0, 0, 0, 1, 53.9, 120, 1262, 1725, 0, 2, 0, 1, 34, 272, 24, 0, 147, 0, 220, 2, 0, 0, 272, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 3902, 2312, 4760, 477, 6976, 400, 400, 61, 1, 0.4, 33, 320, 33, 631, 0.5, 0.5, 0.5, 0.5, 0, 8, 22, 0.61, 922, 1248, 52, 227, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (15, 15, 2013, 519, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.2, 97, 0, 2, 0, 5302, 0, 6, 0, 0, 0, 0, 0, 0, 544, 437, 149, 216, 0, 20, 0, 1, 43.5, 60, 1081, 1231, 0, 3, 0, 0, 16, 7, 23, 4, 19, 0, 172, 0, 0, 8.47, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1604, 756, 2160, 316, 5361, 140, 72, 85, 0.5, 0.6, 2, 486, 43, 486, 1, 1, 0.5, 1, 0, 31, 39, 0.45, 1367, 1456, 38, 169, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (16, 16, 2013, 483, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91.2, 103, 0, 1, 0, 5358, 0, 0, 4, 4, 2, 1, 2, 0, 490, 286, 83, 182, 0, 2, 0, 1, 54.7, 21, 1044, 1093, 0, 5, 0, 0, 32, 0, 16, 4, 37, 0, 114, 0, 0, 22.73, 220.6, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1855, 1266, 2574, 566, 5580, 386, 385, 192, 1, 1, 33, 283, 33, 341, 1, 1, 1, 1, 0, 49, 19, 0.82, 1434, 1563, 48, 170, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (17, 17, 2013, 535, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.5, 175, 0, 1, 0, 5511, 0, 1, 0, 0, 0, 0, 0, 0, 407, 420, 45, 198, 0, 9, 0, 1, 61.3, 14, 890, 1340, 0, 6, 0, 0, 4, 37, 10, 2, 27, 0, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1080, 370, 1728, 488, 5345, 149, 149, 155, 0.5, 0.8, 6, 29, 43, 416, 1, 1, 1, 1, 0, 4, 36, 0.41, 1091, 1112, 21, 269, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (18, 18, 2013, 283, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97.6, 119, 0, 1, 0, 3165, 0, 2, 5, 1, 0, 0, 0, 0, 260, 199, 49, 141, 0, 3, 0, 1, 53.7, 27, 654, 841, 0, 3, 0, 0, 4, 12, 7, 2, 76, 0, 82, 0, 0, 110, 418.05, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1227, 401, 1659, 664, 2985, 468, 468, 425, 1, 0.6, 12, 10, 47, 221, 0.5, 0, 1, 1, 0, 47, 32, 0.62, 847, 1499, 34, 134, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (19, 19, 2013, 506, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88.7, 188, 1, 1, 0, 5885, 0, 0, 0, 0, 0, 0, 0, 0, 510, 332, 104, 205, 0, 9, 0, 1, 57.2, 100, 1144, 2475, 0, 5, 0, 28, 4, 0, 11, 2, 5, 1, 88, 0, 0, 60, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1120, 380, 1615, 470, 5882, 338, 338, 104, 0.2, 0.2, 4, 4, 47, 384, 0.5, 0.5, 1, 1, 0, 40, 37, 0.62, 674, 804, 54, 196, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (20, 20, 2013, 55, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99.6, 29, 0, 0, 0, 335, 0, 0, 0, 0, 0, 0, 0, 0, 64, 24, 13, 24, 0, 0, 0, 1, 76.2, 3, 93, 94, 0, 0, 0, 0, 2, 3, 5, 2, 10, 0, 13, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 614, 310, 929, 185, 336, 137, 137, 57, 1, 0.8, 21, 27, 21, 45, 1, 1, 1, 1, 0, 32, 44, 0.45, 0, 0, 16, 18, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (21, 21, 2013, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94.2, 91, 0, 1, 0, 5313, 2, 0, 1, 3, 0, 6, 13, 0, 419, 361, 128, 219, 1, 13, 0, 1, 49.4, 75, 845, 1132, 0, 6, 2, 3, 0, 13, 22, 3, 48, 1, 123, 6, 0, 2.68, 153.45, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2604, 2014, 3380, 501, 5114, 301, 301, 280, 0.5, 0.4, 2, 1, 27, 434, 0.5, 1, 1, 0.5, 0, 33, 33, 0.87, 935, 1128, 28, 233, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (22, 22, 2013, 377, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 80, 1, 0, 0, 4030, 0, 0, 3, 4, 0, 4, 0, 0, 385, 270, 50, 181, 0, 12, 0, 1, 49.4, 51, 763, 936, 0, 4, 0, 0, 35, 55, 7, 2, 30, 0, 129, 0, 0, 0.68, 80, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1642, 1070, 1965, 620, 3785, 580, 580, 260, 0.5, 0.6, 54, 66, 55, 280, 0.5, 0.5, 1, 0.5, 0, 35, 12, 0.64, 1123, 1143, 76, 151, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (23, 23, 2013, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.1, 67, 0, 0, 0, 1886, 0, 0, 11, 14, 0, 0, 0, 0, 103, 124, 10, 79, 3, 10, 0, 1, 54.5, 27, 200, 400, 0, 4, 0, 0, 12, 26, 7, 2, 17, 0, 74, 0, 0, 5, 255.58, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 838, 572, 859, 225, 1886, 180, 180, 55, 0.5, 0.6, 2, 0, 46, 146, 0.5, 0.5, 0.5, 0.5, 0, 46, 26, 0.72, 1540, 1540, 27, 70, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (24, 24, 2013, 885, 25, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.3, 98, 8, 6, 0, 8383, 6, 36, 20, 24, 20, 24, 15, 0, 835, 728, 201, 485, 14, 19, 0, 1, 56.2, 41, 1404, 2329, 0, 14, 0, 0, 607, 1521, 73, 18, 412, 8, 530, 3, 0, 994, 1857.87, 0, 10, 7, 3, 4, 0, 0, 0, 0, 0, 0, 3716, 663, 3912, 1223, 7681, 815, 815, 250, 1, 0.8, 56, 15, 68, 1091, 1, 1, 1, 1, 0, 1, 2, 0.86, 1403, 1448, 59, 242, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (25, 25, 2013, 517, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92.7, 157, 0, 0, 0, 5138, 0, 6, 1, 1, 0, 0, 3, 0, 598, 424, 86, 207, 0, 2, 0, 1, 50.8, 62, 1003, 1371, 0, 6, 0, 2, 4, 67, 19, 0, 74, 1, 153, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2024, 1474, 2657, 645, 4989, 391, 382, 403, 1, 0.4, 7, 482, 38, 482, 0.5, 0.5, 0.5, 0.5, 0, 23, 17, 0.76, 1103, 1107, 28, 171, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (26, 26, 2013, 341, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 128, 0, 1, 0, 3266, 0, 0, 2, 5, 0, 0, 0, 0, 317, 304, 47, 195, 0, 15, 0, 1, 47.6, 7, 371, 546, 0, 5, 0, 2, 8, 22, 6, 4, 47, 0, 129, 5, 0, 26.72, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 782, 779, 917, 293, 3405, 154, 154, 76, 0.5, 0.6, 2, 0, 31, 401, 0.5, 0.5, 0.5, 0.5, 0, 28, 35, 0.78, 375, 380, 11, 182, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (27, 27, 2013, 246, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88.1, 100, 0, 1, 0, 2121, 16, 5, 21, 0, 0, 15, 16, 0, 123, 243, 123, 165, 10, 17, 0, 1, 42.4, 7, 474, 511, 0, 4, 0, 1, 77, 0, 4, 3, 41, 0, 70, 1, 0, 0, 15.4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1448, 514, 1616, 256, 2067, 210, 210, 127, 0.5, 0.6, 46, 216, 46, 225, 1, 0.5, 0.5, 1, 0, 24, 24, 0.75, 0, 0, 12, 127, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (28, 28, 2013, 703, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94.7, 111, 0, 6, 0, 6262, 0, 1, 2, 2, 0, 17, 1, 0, 453, 529, 162, 374, 16, 26, 0, 1, 62.2, 65, 1625, 1825, 0, 11, 0, 0, 122, 2030, 40, 11, 154, 3, 400, 7, 80.76, 5.2, 466.6, 0, 2, 0, 5, 1, 0, 0, 0, 0, 0, 0, 3150, 1764, 3270, 917, 7565, 512, 551, 174, 0.5, 1, 53, 751, 53, 763, 1, 1, 1, 1, 0, 11, 10, 0.71, 1367, 1385, 62, 334, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (29, 29, 2013, 184, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87.4, 88, 1, 0, 0, 1966, 0, 0, 3, 5, 0, 5, 0, 0, 257, 179, 64, 148, 0, 13, 0, 1, 60.1, 16, 414, 488, 0, 4, 0, 1, 19, 10, 2, 6, 18, 1, 96, 0, 0, 9.05, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1064, 1064, 1130, 326, 1937, 280, 280, 104, 0.5, 0.8, 35, 143, 35, 234, 0.5, 0.5, 0.5, 0.5, 0, 20, 25, 0.57, 66, 67, 15, 52, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (30, 30, 2013, 529, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95.4, 101, 1, 1, 0, 3396, 0, 0, 5, 9, 1, 11, 1, 8, 219, 467, 20, 240, 0, 26, 0, 1, 63.3, 33, 406, 452, 0, 2, 0, 2, 135, 0, 30, 0, 191, 2, 215, 0, 0, 20, 70, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 1809, 952, 1809, 478, 3394, 130, 230, 277, 0.5, 1, 40, 523, 40, 523, 1, 1, 1, 1, 0, 36, 18, 0.77, 86, 86, 66, 207, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (31, 31, 2013, 327, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.5, 101, 1, 1, 0, 4081, 0, 0, 44, 11, 0, 8, 0, 0, 304, 273, 39, 187, 0, 1, 0, 1, 54.7, 29, 705, 795, 0, 4, 0, 5, 34, 80, 7, 6, 48, 1, 150, 0, 0, 95.7, 475.37, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1297, 1138, 1315, 468, 4139, 180, 180, 149, 0.5, 1, 2, 278, 37, 298, 1, 1, 1, 1, 0, 3, 44, 0.62, 1707, 1835, 35, 176, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (32, 32, 2013, 1013, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.2, 136, 5, 3, 0, 6446, 0, 39, 18, 30, 0, 30, 0, 46, 139, 841, 92, 482, 0, 14, 0, 1, 54.3, 91, 1279, 1417, 0, 5, 0, 0, 229, 1932, 87, 1, 207, 10, 537, 0, 0, 108.47, 962.98, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1226, 1157, 1324, 1120, 4820, 815, 786, 223, 0.5, 0.4, 30, 58, 32, 796, 0.5, 0.5, 0.5, 0.5, 0, 16, 3, 0.89, 298, 306, 411, 694, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (33, 33, 2013, 347, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91.7, 187, 0, 1, 0, 3372, 0, 6, 2, 7, 0, 2, 0, 0, 307, 292, 31, 176, 0, 27, 0, 1, 56.7, 8, 790, 964, 0, 6, 3, 1, 6, 24, 8, 6, 37, 2, 128, 0, 0, 179.14, 471.7, 0, 2, 6, 0, 3, 0, 0, 0, 0, 0, 0, 1170, 86, 1521, 389, 3050, 371, 239, 11, 0.5, 0.6, 12, 23, 46, 399, 1, 1, 1, 1, 0, 5, 15, 0.61, 974, 1076, 21, 128, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (34, 34, 2013, 388, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89.7, 123, 8, 48, 0, 3525, 0, 10, 13, 3, 0, 16, 8, 0, 316, 285, 14, 153, 0, 10, 0, 1, 54.6, 7, 620, 771, 0, 7, 1, 3, 28, 50, 3, 3, 44, 0, 116, 5, 0, 132.89, 337.1, 0, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 983, 420, 1140, 284, 3525, 155, 155, 279, 0.2, 0.2, 35, 240, 40, 490, 0.5, 0.5, 1, 1, 0, 37, 16, 0.74, 155, 158, 16, 120, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (35, 35, 2013, 535, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 86.2, 161, 3, 2, 0, 7560, 0, 0, 56, 9, 0, 5, 0, 0, 508, 456, 26, 269, 0, 24, 0, 1, 53.6, 24, 886, 1531, 0, 3, 0, 2, 41, 51, 3, 7, 93, 0, 174, 1, 0, 15, 536.62, 0, 6, 5, 0, 4, 0, 0, 0, 0, 0, 0, 1375, 478, 2459, 714, 5967, 130, 126, 370, 1, 0.2, 0, 0, 63, 514, 0.5, 0.5, 0.5, 0.5, 0, 49, 44, 0.49, 2736, 2936, 95, 288, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (36, 36, 2013, 264, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89.7, 186, 0, 0, 0, 2065, 15, 32, 83, 8, 1, 18, 0, 3, 323, 221, 41, 119, 0, 9, 0, 1, 60.8, 6, 375, 591, 4, 3, 0, 0, 110, 30, 22, 7, 98, 0, 64, 4, 43.81, 1, 183.8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1008, 840, 1069, 348, 2100, 187, 158, 80, 1, 0.8, 24, 40, 31, 320, 1, 1, 1, 1, 0, 15, 8, 0.72, 0, 0, 19, 112, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (37, 37, 2013, 844, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 175, 12, 16, 0, 7009, 3, 19, 5, 16, 0, 9, 0, 3, 854, 696, 28, 305, 0, 24, 0, 1, 56.7, 85, 1851, 2197, 0, 9, 1, 2, 42, 106, 67, 7, 122, 4, 303, 5, 0, 0, 758.1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2480, 2110, 2561, 720, 8064, 513, 513, 616, 0.5, 1, 6, 0, 56, 740, 0.5, 0.5, 0.5, 0.5, 0, 19, 40, 0.85, 1706, 1816, 41, 208, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (38, 38, 2013, 1092, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88.2, 141, 5, 6, 0, 11549, 0, 10, 19, 10, 0, 8, 0, 0, 924, 710, 29, 379, 4, 7, 0, 1, 49.6, 34, 1758, 2390, 0, 9, 0, 0, 479, 517, 47, 6, 291, 4, 346, 0, 10.09, 1143.91, 812.06, 0, 11, 11, 15, 19, 1, 0, 0, 0, 0, 0, 2905, 691, 3412, 1962, 10783, 1270, 978, 1380, 0.5, 0.4, 67, 157, 71, 873, 0, 1, 0.5, 1, 0, 29, 44, 0.63, 1632, 1843, 31, 316, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (39, 39, 2013, 534, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88.5, 132, 5, 15, 0, 5661, 5, 24, 28, 12, 15, 0, 0, 6, 329, 510, 152, 313, 0, 26, 0, 1, 62.7, 60, 1303, 1737, 0, 2, 0, 0, 55, 0, 52, 3, 246, 4, 194, 0, 27.48, 73.76, 412.6, 0, 3, 0, 0, 8, 0, 0, 0, 0, 0, 0, 2838, 2017, 3114, 1080, 5486, 840, 840, 569, 1, 0.8, 48, 611, 48, 611, 1, 1, 1, 1, 0, 48, 29, 0.73, 0, 0, 197, 210, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (40, 40, 2013, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89.9, 47, 11, 4, 0, 2047, 2, 2, 11, 0, 0, 5, 6, 0, 117, 184, 32, 139, 0, 5, 0, 1, 61.1, 6, 607, 668, 0, 2, 0, 0, 14, 0, 27, 13, 84, 2, 130, 0, 0, 0, 311.38, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 575, 150, 752, 732, 1993, 470, 470, 175, 1, 0.2, 30, 22, 35, 163, 0.5, 0.5, 0.5, 0.5, 0, 18, 11, 0.54, 0, 0, 41, 52, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (41, 41, 2013, 349, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 79, 0, 0, 0, 4082, 0, 2, 11, 0, 0, 3, 0, 0, 435, 311, 20, 217, 0, 6, 0, 1, 37.9, 51, 887, 950, 0, 7, 7, 0, 29, 80, 19, 1, 36, 1, 154, 0, 0, 293, 366.8, 0, 0, 5, 1, 2, 0, 0, 0, 0, 0, 0, 1491, 888, 1591, 968, 4082, 801, 801, 145, 1, 0.6, 9, 302, 9, 302, 0.5, 1, 1, 1, 0, 49, 44, 0.49, 848, 848, 35, 281, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (42, 42, 2013, 430, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99.2, 111, 0, 0, 0, 5562, 0, 2, 15, 0, 0, 14, 0, 4, 478, 392, 108, 302, 0, 8, 0, 1, 61.8, 15, 571, 1151, 1, 6, 0, 0, 65, 105, 18, 4, 75, 0, 162, 0, 0, 518, 615.66, 0, 3, 15, 0, 0, 0, 0, 0, 0, 0, 0, 1031, 310, 1118, 479, 5179, 287, 287, 348, 0.5, 0.2, 9, 30, 32, 345, 0.5, 0.5, 0.5, 1, 0, 6, 13, 0.78, 1128, 1128, 98, 193, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (43, 43, 2013, 364, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89.6, 126, 1, 1, 0, 3612, 0, 9, 8, 9, 4, 9, 4, 0, 663, 257, 17, 177, 0, 9, 0, 1, 60.2, 18, 336, 828, 0, 1, 0, 1, 58, 120, 26, 3, 110, 1, 160, 0, 30.95, 93.86, 933.85, 0, 5, 23, 15, 5, 0, 0, 0, 0, 0, 0, 1780, 827, 1839, 610, 3612, 478, 92, 135, 0.5, 0.2, 40, 60, 42, 369, 0.5, 0.5, 1, 1, 0, 21, 4, 0.61, 2220, 2220, 37, 234, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (44, 44, 2013, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92.6, 62, 0, 0, 0, 471, 1, 0, 0, 0, 0, 0, 0, 3, 231, 45, 9, 30, 0, 4, 0, 1, 42.2, 5, 109, 120, 0, 3, 0, 3, 9, 0, 4, 3, 20, 0, 20, 0, 0, 0, 175, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590, 158, 621, 265, 509, 199, 199, 265, 0.5, 0.4, 32, 57, 32, 119, 1, 1, 1, 1, 0, 10, 5, 0.79, 19, 49, 22, 53, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (45, 45, 2013, 696, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94.3, 147, 1, 0, 0, 5011, 0, 42, 31, 6, 4, 6, 6, 30, 170, 591, 77, 286, 0, 6, 0, 1, 50.6, 36, 698, 790, 0, 6, 0, 0, 103, 85, 49, 3, 169, 4, 306, 1, 0, 0, 579.93, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 956, 956, 983, 478, 3139, 290, 290, 444, 1, 0.4, 42, 436, 72, 507, 0.5, 0.5, 1, 1, 0, 13, 9, 0.68, 59, 59, 245, 427, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (46, 46, 2013, 953, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 206, 7, 5, 0, 10345, 0, 15, 30, 8, 6, 4, 0, 0, 343, 551, 61, 426, 0, 4, 0, 1, 55.7, 43, 1511, 2389, 0, 3, 0, 0, 82, 302, 24, 0, 86, 0, 164, 0, 0, 470.26, 1171.31, 0, 6, 28, 5, 1, 0, 0, 0, 0, 0, 0, 1279, 1186, 1489, 1480, 6150, 1320, 1320, 312, 1, 1, 74, 22, 74, 464, 1, 1, 0.5, 1, 0, 2, 1, 0.96, 669, 1027, 76, 190, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (47, 47, 2013, 219, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97.7, 94, 4, 3, 0, 1510, 0, 4, 4, 0, 0, 8, 1, 0, 72, 178, 45, 120, 0, 3, 0, 1, 60.7, 4, 385, 449, 0, 1, 0, 1, 102, 130, 5, 1, 115, 0, 113, 0, 0, 36.74, 275.87, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 479, 184, 479, 415, 1530, 250, 250, 365, 0.5, 0.8, 1, 7, 23, 181, 1, 1, 1, 1, 0, 17, 7, 0.54, 1627, 1627, 16, 95, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (48, 48, 2013, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92.4, 155, 4, 1, 0, 6043, 1, 10, 5, 0, 0, 19, 28, 9, 237, 451, 95, 301, 0, 1, 0, 1, 64.8, 91, 1637, 1753, 0, 8, 0, 3, 2, 46, 3, 5, 127, 0, 235, 0, 0, 0, 164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1123, 667, 1367, 607, 5975, 607, 607, 312, 1, 0.8, 40, 244, 45, 460, 1, 0.5, 1, 1, 0, 9, 44, 0.77, 0, 0, 61, 217, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (49, 49, 2013, 351, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90.9, 126, 0, 0, 0, 3922, 0, 5, 8, 1, 0, 1, 0, 0, 194, 243, 41, 134, 0, 9, 0, 1, 47.6, 28, 523, 1014, 0, 3, 0, 1, 16, 41, 8, 1, 74, 0, 122, 0, 37.51, 163.91, 1224.89, 0, 10, 7, 0, 2, 1, 0, 0, 0, 0, 0, 1728, 868, 1931, 454, 3537, 410, 410, 331, 0.5, 0.4, 12, 150, 42, 342, 1, 0.5, 1, 1, 0, 44, 44, 0.55, 1081, 1257, 52, 118, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (50, 50, 2013, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96.6, 104, 0, 0, 0, 6485, 0, 1, 7, 3, 0, 1, 0, 0, 232, 424, 164, 273, 0, 25, 0, 1, 44.4, 5, 1308, 1504, 0, 1, 0, 0, 15, 2, 5, 1, 23, 0, 75, 0, 0, 7, 139.04, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2067, 1104, 3930, 616, 6513, 228, 228, 321, 0.5, 0.4, 3, 2, 50, 399, 1, 1, 0.5, 0.5, 0, 38, 44, 0.52, 893, 910, 35, 295, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (51, 51, 2013, 371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92.6, 97, 0, 2, 0, 1921, 0, 3, 1, 0, 0, 0, 0, 0, 54, 206, 29, 133, 0, 10, 0, 1, 57.4, 21, 393, 509, 0, 1, 1, 1, 0, 18, 12, 0, 35, 1, 46, 29, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1426, 1026, 1656, 158, 1809, 143, 143, 68, 0.5, 0.4, 10, 0, 25, 228, 0.5, 0.5, 0.5, 0.5, 0, 45, 41, 0.44, 689, 836, 35, 52, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (52, 52, 2013, 428, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92.8, 105, 0, 0, 0, 4130, 1, 4, 5, 0, 0, 5, 0, 0, 118, 260, 13, 105, 0, 1, 0, 1, 52.8, 17, 733, 878, 13, 44, 0, 0, 0, 0, 23, 0, 40, 0, 52, 12, 0, 19.4, 22, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 547, 244, 728, 248, 4130, 90, 90, 40, 1, 0.2, 22, 37, 22, 318, 0.5, 0.5, 0.5, 0.5, 0, 49, 44, 0.74, 158, 158, 21, 72, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (53, 53, 2013, 738, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 82.5, 336, 4, 11, 0, 5933, 16, 32, 46, 18, 0, 12, 1, 5, 135, 490, 255, 361, 2, 9, 0, 1, 54.2, 23, 1401, 1474, 0, 9, 0, 0, 30, 374, 30, 7, 47, 3, 98, 4, 0, 0, 284.6, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 656, 291, 1780, 717, 5860, 200, 200, 93, 1, 0.2, 25, 0, 36, 477, 0.5, 0, 1, 1, 0, 49, 44, 0.59, 0, 0, 23, 400, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (54, 54, 2013, 181, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92.3, 136, 0, 0, 0, 1171, 9, 2, 24, 0, 0, 16, 23, 14, 162, 127, 64, 81, 3, 0, 0, 1, 50, 4, 160, 276, 1, 7, 0, 0, 53, 137, 17, 15, 9, 0, 65, 1, 0, 54, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1425, 962, 1618, 500, 1187, 300, 300, 60, 1, 0.2, 31, 197, 31, 197, 0.5, 0.5, 1, 0.5, 0, 14, 6, 0.55, 0, 0, 31, 104, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (55, 55, 2013, 678, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95.3, 76, 0, 1, 0, 6638, 1, 69, 11, 12, 7, 0, 0, 0, 830, 411, 100, 266, 1, 12, 0, 1, 50.4, 80, 1332, 1633, 0, 9, 0, 0, 0, 96, 19, 11, 108, 1, 138, 1, 53.57, 111.77, 302.71, 0, 4, 6, 12, 15, 0, 0, 0, 0, 0, 0, 2302, 2302, 2552, 1033, 6694, 717, 717, 213, 1, 1, 39, 443, 39, 443, 1, 1, 1, 1, 0, 49, 34, 0.55, 1537, 1993, 76, 227, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (56, 56, 2013, 611, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.5, 113, 0, 1, 0, 5502, 0, 6, 0, 0, 0, 1, 0, 0, 576, 397, 34, 172, 0, 7, 0, 1, 64.4, 93, 1051, 1412, 0, 4, 0, 0, 80, 228, 14, 3, 39, 0, 161, 1, 0, 13, 73.45, 0, 1, 0, 0, 4, 0, 0, 0, 0, 0, 0, 1782, 1163, 2104, 640, 6280, 270, 270, 320, 0.5, 0.8, 21, 300, 44, 456, 0.5, 0.5, 1, 1, 0, 25, 44, 0.57, 775, 817, 34, 275, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (57, 57, 2013, 480, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89.5, 103, 1, 2, 0, 5141, 0, 0, 0, 13, 4, 2, 0, 0, 454, 181, 1, 106, 0, 8, 0, 1, 52.2, 30, 832, 1126, 0, 0, 0, 0, 22, 101, 16, 1, 38, 0, 120, 0, 0, 49.75, 127.14, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2010, 1756, 2260, 404, 5116, 310, 296, 63, 1, 0.2, 28, 215, 38, 385, 0.5, 0.5, 1, 1, 0, 12, 20, 0.49, 1372, 1753, 24, 309, NULL, NULL)
GO

INSERT INTO dbo.raiting (id, id_university, year, p, px, py, n1, n2, n3, n41, n51, n42, n52, n43, n53, i2, t, s1, s2, s3, p1, p2, p3, p4, p5, p5_1, p6, p6_1, k1, k, ty, p7, p8, pz, p9, tsi, tsti, r1, r, p10, p11, p1_2, p1_3, p1_4, p1_5, s4, s5, s7, s8, s9, d, z, v, t4, t5, t6, tL, i, t7, t8, ya, kL, a1, a2, a3, a4, a5, k2, m, L, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, ra, u, s, p17, p18, p19, p20, university_id, university_id1)
VALUES 
  (60, 7, 2016, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL)
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

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (1, N'Андижанский государственный университет', 3, NULL, N'Andijon davlat universiteti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (2, N'Андижанский машиностроительный институт', 3, NULL, N'Andijon mashinasozlik instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (3, N'Андижанский медицинский институт', 3, NULL, N'Andijon davlat tibbiyot instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (4, N'Андижанский сельскохозяйственный институт', 3, NULL, N'Andijon qishloq xo`jaligi instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (5, N'Бухарский государственный университет', 4, NULL, N'Buxoro davlat universiteti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (6, N'Бухарский инженерно-технологический институт', 4, NULL, N'Buxoro muhandislik-texnologiya instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (7, N'Бухарский медицинский институт', 4, NULL, N'Buxoro davlat tibbiyot instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (8, N'Высшая школа национального танца и хареографии', 1, NULL, N'Milliy raqs va xoreografiya oliy maktabi', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (9, N'Государственная консерватория Узбекистана', 1, NULL, N'O`zbekiston Davlat Konservatoriyasi', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (10, N'Гулистанский государственный университет', 11, NULL, N'Guliston davlat universiteti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (11, N'Джизакский государственный педагогический институт', 5, NULL, N'Jizzax davlat pedagogika instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (12, N'Джизакский политехнический институт', 5, NULL, N'Jizzax politexnika instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (13, N'Институт национального художества и дизайна', 1, NULL, N'Kamoliddin Behzod Nomidagi Milliy Rassomlik va Dizayn Instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (14, N'Каракалпакский государственный университет', 2, NULL, N'Qoraqalpoq davlat universiteti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (15, N'Каршинский государственный университет', 6, NULL, N'Qarshi davlat universiteti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (16, N'Каршинский инженерно-экономический институт', 6, NULL, N'Qarshi muhandislik - iqtisodiyot instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (17, N'Кокандский государственный педагогический институт', 6, NULL, N'Qo`qon davlat pedagogika instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (18, N'Навоинский государственный горный институт', 7, NULL, N'Navoiy davlat konchilik instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (19, N'Навоинский государственный педагогический институт', 7, NULL, N'Navoiy davlat pedagogika instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (20, N'Налоговая академия', 1, NULL, N'Soliq akademiyasi', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (21, N'Наманганский государственный университет', 8, NULL, N'Namangan davlat universiteti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (22, N'Наманганский инженерно-педагогический институт', 8, NULL, N'Namangan muhandislik-pedagogika instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (23, N'Наманганский инженерно-технологический институт', 8, NULL, N'Namangan muhandislik-texnologiya instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (24, N'Национальный университет Узбекистана', 1, NULL, N'Mirzo Ulug''bek nomidagi O''zbekiston Milliy universiteti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (25, N'Нукусский государственный педагогический институт', 2, NULL, N'Nukus davlat pedagogika instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (26, N'Самаркандский государственный архитектурно-строительный институт', 9, NULL, N'Samarqand davlat arxitektura-qurilish instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (27, N'Самаркандский государственный институт иностранных языков', 9, NULL, N'Samarqand davlat chet tillar instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (28, N'Самаркандский государственный университет', 9, NULL, N'Samarqand davlat universiteti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (29, N'Самаркандский институт экономики и сервиса', 9, NULL, N'Samarqand iqtisodiyot va servis instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (30, N'Самаркандский медицинский институт', 9, NULL, N'Samarqand davlat tibbiyot instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (31, N'Самаркандский сельскохозяйственный институт', 9, NULL, N'Samarqand qishloq xo`jalik instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (32, N'Ташкентская медицинская академия', 1, NULL, N'Toshkent tibbiyot akademiyasi', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (33, N'Ташкентский автомобильно-дорожный институт', 1, NULL, N'Toshkent avtomobil-yo`llari instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (34, N'Ташкентский архитектурно-строительный институт', 1, NULL, N'Toshkent arxitektura-qurilish instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (35, N'Ташкентский государственный аграрный университет', 1, NULL, N'Toshkent davlat agrar universiteti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (36, N'Ташкентский государственный институт востоковедения', 1, NULL, N'Toshkent davlat sharqshunoslik instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (37, N'Ташкентский государственный педагогический университет', 1, NULL, N'Toshkent Davlat pedagogika universiteti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (38, N'Ташкентский государственный технический университет', 1, NULL, N'Toshkent davlat texnika universiteti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (39, N'Ташкентский государственный экономический университет', 1, NULL, N'Toshkent Davlat Iqtisodiyot Universiteti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (40, N'Ташкентский государственный юридический университет', 1, NULL, N'Toshkent davlat yuridik universiteti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (41, N'Ташкентский институт инженеров железнодорожного транспорта', 1, NULL, N'Toshkent temir yo`l transporti muhandislari instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (42, N'Ташкентский институт ирригации и мелиорации', 1, NULL, N'Toshkent irrigatsiya va melioratsiya instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (43, N'Ташкентский институт текстильной и легкой промышленности', 1, NULL, N'Toshkent to''qimachilik va yengil sanoat instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (44, N'Ташкентский исламский университет', 1, NULL, N'Toshkent islom universiteti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (45, N'Ташкентский медицинский педиатрический институт', 1, NULL, N'Toshkent pediatriya tibbiyot instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (46, N'Ташкентский университет информационных технологий', NULL, NULL, N'Toshkent axborot texnologiyalari universiteti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (47, N'Ташкентский фармацевтический институт', 1, NULL, N'Toshkent farmatsevtika instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (48, N'Ташкентский финансовый институт', 1, NULL, N'Toshkent Moliya instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (49, N'Ташкентский химико-технологический институт', 1, NULL, N'Toshkent kimyo-texnologiya instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (50, N'Термезский государственный университет', 1, NULL, N'Termiz Davlat Universiteti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (51, N'Узбекский государственный институт искусства и культуры', 1, NULL, N'O`zbekiston davlat san`at va madaniyat instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (52, N'Узбекский государственный институт физической культуры', 1, NULL, N'O`zbekiston davlat jismoniy tarbiya instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (53, N'Узбекский государственный университет мировых языков', 1, NULL, N'O`zbekiston davlat jahon tillari universiteti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (54, N'Университет мировой экономики и дипломатии', 1, NULL, N'Jahon iqtisodiyoti va diplomatiya universiteti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (55, N'Ургенчский государственный университет', 14, NULL, N'Urganch davlat universiteti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (56, N'Ферганский государственный университет', 13, NULL, N'Farg`ona davlat universiteti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (57, N'Ферганский политехнический институт', 13, NULL, N'Farg`ona politexnika instituti', NULL, NULL, NULL, NULL)
GO

INSERT INTO dbo.university (id, name_RU, id_region, id_branch, name_UZ, branch_id, region_id, branch_id1, region_id1)
VALUES 
  (58, N'Ташкентский государственный стоматологический институт', 1, NULL, N'Toshkent Davlat Stomatologiya Instituti', NULL, NULL, NULL, NULL)
GO

SET IDENTITY_INSERT dbo.university OFF
GO

--
-- Definition for indices : 
--

CREATE NONCLUSTERED INDEX IX_branch_id1 ON dbo.university
  (branch_id1)
WITH (
  PAD_INDEX = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX IX_region_id1 ON dbo.university
  (region_id1)
WITH (
  PAD_INDEX = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX IX_university_id1 ON dbo.chislennost_pps_vuza
  (university_id1)
WITH (
  PAD_INDEX = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX IX_university_id1 ON dbo.citiruemost_publikaciy_pps_vuza
  (university_id1)
WITH (
  PAD_INDEX = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX IX_university_id1 ON dbo.darslik
  (university_id1)
WITH (
  PAD_INDEX = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX IX_university_id1 ON dbo.effektivnost_nir_dalolatnoma
  (university_id1)
WITH (
  PAD_INDEX = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX IX_university_id1 ON dbo.effektivnost_nir_patent
  (university_id1)
WITH (
  PAD_INDEX = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX IX_university_id1 ON dbo.effektivnost_nir_sertifikat
  (university_id1)
WITH (
  PAD_INDEX = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX IX_university_id1 ON dbo.granti_po_vidam_issledovaniy
  (university_id1)
WITH (
  PAD_INDEX = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX IX_university_id1 ON dbo.informaciya_o_dissertaciyah
  (university_id1)
WITH (
  PAD_INDEX = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX IX_university_id1 ON dbo.kolichestvo_izdannih_mejdunarodnih_statey
  (university_id1)
WITH (
  PAD_INDEX = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX IX_university_id1 ON dbo.kolichestvo_izdannih_mestnih_statey
  (university_id1)
WITH (
  PAD_INDEX = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX IX_university_id1 ON dbo.majmua
  (university_id1)
WITH (
  PAD_INDEX = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX IX_university_id1 ON dbo.monografiya
  (university_id1)
WITH (
  PAD_INDEX = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX IX_university_id1 ON dbo.nalichie_elektronnoy_literaturi
  (university_id1)
WITH (
  PAD_INDEX = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX IX_university_id1 ON dbo.nalichie_informacii_o_vuze_v_internete
  (university_id1)
WITH (
  PAD_INDEX = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX IX_university_id1 ON dbo.nalichie_multimedia_v_auditorii
  (university_id1)
WITH (
  PAD_INDEX = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX IX_university_id1 ON dbo.osnashennost_irc_literaturoy
  (university_id1)
WITH (
  PAD_INDEX = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX IX_university_id1 ON dbo.osnashennost_laboratoriy
  (university_id1)
WITH (
  PAD_INDEX = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX IX_university_id1 ON dbo.osnashennost_laboratornim_oborudovaniem
  (university_id1)
WITH (
  PAD_INDEX = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX IX_university_id1 ON dbo.qullanma
  (university_id1)
WITH (
  PAD_INDEX = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX IX_university_id1 ON dbo.raiting
  (university_id1)
WITH (
  PAD_INDEX = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX IX_university_id1 ON dbo.stepen_vnedreniya_ikt
  (university_id1)
WITH (
  PAD_INDEX = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX IX_university_id1 ON dbo.summi_mejdunarodnih_grantov
  (university_id1)
WITH (
  PAD_INDEX = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX IX_university_id1 ON dbo.summi_respublikanskih_grantov
  (university_id1)
WITH (
  PAD_INDEX = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

--
-- Definition for foreign keys : 
--

ALTER TABLE dbo.university
ADD CONSTRAINT [FK_dbo.university_dbo.branch_branch_id1] FOREIGN KEY (branch_id1) 
  REFERENCES dbo.branch (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.university
ADD CONSTRAINT [FK_dbo.university_dbo.region_region_id1] FOREIGN KEY (region_id1) 
  REFERENCES dbo.region (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.chislennost_pps_vuza
ADD CONSTRAINT [FK_dbo.chislennost_pps_vuza_dbo.university_university_id1] FOREIGN KEY (university_id1) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.citiruemost_publikaciy_pps_vuza
ADD CONSTRAINT [FK_dbo.citiruemost_publikaciy_pps_vuza_dbo.university_university_id1] FOREIGN KEY (university_id1) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.darslik
ADD CONSTRAINT [FK_dbo.darslik_dbo.university_university_id1] FOREIGN KEY (university_id1) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.effektivnost_nir_dalolatnoma
ADD CONSTRAINT [FK_dbo.effektivnost_nir_dalolatnoma_dbo.university_university_id1] FOREIGN KEY (university_id1) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.effektivnost_nir_patent
ADD CONSTRAINT [FK_dbo.effektivnost_nir_patent_dbo.university_university_id1] FOREIGN KEY (university_id1) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.effektivnost_nir_sertifikat
ADD CONSTRAINT [FK_dbo.effektivnost_nir_sertifikat_dbo.university_university_id1] FOREIGN KEY (university_id1) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.granti_po_vidam_issledovaniy
ADD CONSTRAINT [FK_dbo.granti_po_vidam_issledovaniy_dbo.university_university_id1] FOREIGN KEY (university_id1) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.informaciya_o_dissertaciyah
ADD CONSTRAINT [FK_dbo.informaciya_o_dissertaciyah_dbo.university_university_id1] FOREIGN KEY (university_id1) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.kolichestvo_izdannih_mejdunarodnih_statey
ADD CONSTRAINT [FK_dbo.kolichestvo_izdannih_mejdunarodnih_statey_dbo.university_university_id1] FOREIGN KEY (university_id1) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.kolichestvo_izdannih_mestnih_statey
ADD CONSTRAINT [FK_dbo.kolichestvo_izdannih_mestnih_statey_dbo.university_university_id1] FOREIGN KEY (university_id1) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.majmua
ADD CONSTRAINT [FK_dbo.majmua_dbo.university_university_id1] FOREIGN KEY (university_id1) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.monografiya
ADD CONSTRAINT [FK_dbo.monografiya_dbo.university_university_id1] FOREIGN KEY (university_id1) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.nalichie_elektronnoy_literaturi
ADD CONSTRAINT [FK_dbo.nalichie_elektronnoy_literaturi_dbo.university_university_id1] FOREIGN KEY (university_id1) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.nalichie_informacii_o_vuze_v_internete
ADD CONSTRAINT [FK_dbo.nalichie_informacii_o_vuze_v_internete_dbo.university_university_id1] FOREIGN KEY (university_id1) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.nalichie_multimedia_v_auditorii
ADD CONSTRAINT [FK_dbo.nalichie_multimedia_v_auditorii_dbo.university_university_id1] FOREIGN KEY (university_id1) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.osnashennost_irc_literaturoy
ADD CONSTRAINT [FK_dbo.osnashennost_irc_literaturoy_dbo.university_university_id1] FOREIGN KEY (university_id1) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.osnashennost_laboratoriy
ADD CONSTRAINT [FK_dbo.osnashennost_laboratoriy_dbo.university_university_id1] FOREIGN KEY (university_id1) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.osnashennost_laboratornim_oborudovaniem
ADD CONSTRAINT [FK_dbo.osnashennost_laboratornim_oborudovaniem_dbo.university_university_id1] FOREIGN KEY (university_id1) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.qullanma
ADD CONSTRAINT [FK_dbo.qullanma_dbo.university_university_id1] FOREIGN KEY (university_id1) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.raiting
ADD CONSTRAINT [FK_dbo.raiting_dbo.university_university_id1] FOREIGN KEY (university_id1) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.stepen_vnedreniya_ikt
ADD CONSTRAINT [FK_dbo.stepen_vnedreniya_ikt_dbo.university_university_id1] FOREIGN KEY (university_id1) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.summi_mejdunarodnih_grantov
ADD CONSTRAINT [FK_dbo.summi_mejdunarodnih_grantov_dbo.university_university_id1] FOREIGN KEY (university_id1) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.summi_respublikanskih_grantov
ADD CONSTRAINT [FK_dbo.summi_respublikanskih_grantov_dbo.university_university_id1] FOREIGN KEY (university_id1) 
  REFERENCES dbo.university (id) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

