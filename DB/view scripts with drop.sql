--- 1.1  Local@dmin!
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I1]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I1]
GO

CREATE VIEW I1 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ, 
(raiting.px/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END)*100 as I11, 
(raiting.py/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END)*100 as I12,
(3*raiting.px+raiting.py)*100/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END as I1,
YEAR
FROM raiting inner join university
	ON raiting.id_university = university.id;
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I1_dolya_pps_s_uchenoy_stepenyu]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I1_dolya_pps_s_uchenoy_stepenyu]
GO

CREATE VIEW I1_dolya_pps_s_uchenoy_stepenyu AS 
SELECT ID, name_RU, name_UZ, I11, I12, I1, 4*I1/(SELECT MAX(I1) FROM I1 WHERE I1.YEAR = YEAR) AS mark, YEAR
FROM I1;
GO

--- 1.2
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I2_1]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I2_1]
GO

CREATE VIEW I2_1 AS 
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

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I2]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I2]
GO

CREATE VIEW I2 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ, 
p1, t, I2,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I2_1_uroven_kachestva_prepodavaniya]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I2_1_uroven_kachestva_prepodavaniya]
GO

CREATE VIEW I2_1_uroven_kachestva_prepodavaniya AS 
SELECT ID, name_RU, name_UZ, T1, T2, T3, I21, I22, I23, I2, 7*I2/(SELECT MAX(I2) FROM I2 WHERE I2.YEAR = YEAR) AS mark, YEAR
FROM I2_1;
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I2_uroven_kachestva_prepodavaniya]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I2_uroven_kachestva_prepodavaniya]
GO

CREATE VIEW I2_uroven_kachestva_prepodavaniya AS 
SELECT ID, name_RU, name_UZ, p1, t, i2, 7*I2/(SELECT MAX(I2) FROM I2 WHERE I2.YEAR = YEAR) AS mark, YEAR
FROM I2;
GO

--- 1.3
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I3]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I3]
GO

CREATE VIEW I3 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ, 
(raiting.s1/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END)*100 as I31, 
(raiting.s2/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END)*100 as I32,
(raiting.s3/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END)*100 as I33,
(3*raiting.s1+raiting.s2+raiting.s3)*100/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END as I3,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I3_kolichestvo_uchebnikov_i_posobiy]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I3_kolichestvo_uchebnikov_i_posobiy]
GO

CREATE VIEW I3_kolichestvo_uchebnikov_i_posobiy AS 
SELECT ID, name_RU, name_UZ, I31, I32, I33, I3, 5*I3/(SELECT MAX(I3) FROM I3 WHERE I3.YEAR = YEAR) AS mark, YEAR
FROM I3;
GO

--- 1.4
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I4]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I4]
GO

CREATE VIEW I4 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ,  
(raiting.p2/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END)*100 as I41,
(raiting.p3/CASE raiting.p1 WHEN 0 THEN 1 ELSE raiting.p1 END)*100 as I42,
((2*raiting.p2/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END)+(raiting.p3/CASE raiting.p1 WHEN 0 THEN 1 ELSE raiting.p1 END))*100 as I4,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I4_dolya_inostrannih_prepodavateley_i_studentov]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I4_dolya_inostrannih_prepodavateley_i_studentov]
GO

CREATE VIEW I4_dolya_inostrannih_prepodavateley_i_studentov AS
SELECT ID, name_RU, name_UZ, I41, I42, I4, 3*I4/(SELECT MAX(I4) FROM I4 WHERE I4.YEAR = YEAR) AS mark, YEAR
FROM I4;
GO

--- 1.5
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I5]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I5]
GO

CREATE VIEW I5 AS 
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

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I5_uchastie_v_programme_obmena]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I5_uchastie_v_programme_obmena]
GO

CREATE VIEW I5_uchastie_v_programme_obmena AS 
SELECT ID, name_RU, name_UZ, I51, I52_1, I52_2, I53_1, I53_2, I5, 4*I5/(SELECT MAX(I5) FROM I5 WHERE I5.YEAR = YEAR) AS mark, YEAR
FROM I5;
GO

--- 1.6
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I6]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I6]
GO

CREATE VIEW I6 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ, 
(raiting.k1/CASE raiting.k WHEN 0 THEN 1 ELSE raiting.k END)*100 as I6,
YEAR 
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I6_kolichestvo_uchebnih_kursov_na_inostrannom]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I6_kolichestvo_uchebnih_kursov_na_inostrannom]
GO

CREATE VIEW I6_kolichestvo_uchebnih_kursov_na_inostrannom AS 
SELECT ID, name_RU, name_UZ, I6, 3*I6/(SELECT MAX(I6) FROM I6 WHERE I6.YEAR = YEAR) AS mark, YEAR
FROM I6;
GO

--- 1.7
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I7]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I7]
GO

CREATE VIEW I7 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ, 
(3*raiting.p7+2*raiting.p8)/(2*CASE raiting.ty WHEN 0 THEN 1 ELSE raiting.ty END) AS I7,
raiting.p7/CASE raiting.ty WHEN 0 THEN 1 ELSE raiting.ty END AS I71,
raiting.p8/CASE raiting.ty WHEN 0 THEN 1 ELSE raiting.ty END AS I72,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I7_uroven_angliyskogo_i_ikt_u_pps]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I7_uroven_angliyskogo_i_ikt_u_pps]
GO

CREATE VIEW I7_uroven_angliyskogo_i_ikt_u_pps AS 
SELECT ID, name_RU, name_UZ, I71, I72, I7, 5*I7/(SELECT MAX(I7) FROM I7 WHERE I7.YEAR = YEAR) AS mark, YEAR
FROM I7;

GO

--- 1.8
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I8]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I8]
GO

CREATE VIEW I8 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ, 
(raiting.pz/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END)*100 AS I8,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I8_dolya_pps_prepodayushih_v_zarubejnih_vuzah]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I8_dolya_pps_prepodayushih_v_zarubejnih_vuzah]
GO

CREATE VIEW I8_dolya_pps_prepodayushih_v_zarubejnih_vuzah AS 
SELECT ID, name_RU, name_UZ, I8, 3*I8/(SELECT MAX(I8) FROM I8 WHERE I8.YEAR = YEAR) AS mark, YEAR
FROM I8;
GO

--- 1.9
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I9]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I9]
GO

CREATE VIEW I9 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ, 
(raiting.p9/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END) AS I9,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I9_dolya_pps_prepodayushego_v_sspo]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I9_dolya_pps_prepodayushego_v_sspo]
GO

CREATE VIEW I9_dolya_pps_prepodayushego_v_sspo AS 
SELECT ID, name_RU, name_UZ, I9, I9/(SELECT MAX(I9) FROM I9 WHERE I9.YEAR = YEAR) AS mark, YEAR
FROM I9;
GO

--- 2.1
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I10]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I10]
GO

CREATE VIEW I10 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ, tsi, tsti,
(raiting.tsi/CASE raiting.tsti WHEN 0 THEN 1 ELSE raiting.tsti END)*100 AS I10,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I10_rezultati_attestacii_u_studentov]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I10_rezultati_attestacii_u_studentov]
GO

CREATE VIEW I10_rezultati_attestacii_u_studentov AS 
SELECT ID, name_RU, name_UZ, tsi, tsti, I10, 8*I10/CASE (SELECT MAX(I10) FROM I10 WHERE I10.YEAR = YEAR) WHEN 0 THEN 1 ELSE (SELECT MAX(I10) FROM I10 WHERE I10.YEAR = YEAR) END AS mark, YEAR
FROM I10;
GO

--- 2.2
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I11]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I11]
GO

CREATE VIEW I11 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ,
(raiting.r1/CASE raiting.r WHEN 0 THEN 1 ELSE raiting.r END)*100 AS I11,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I11_ocenka_kvalifikacii_vipusknikov_rabotodatelyami]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I11_ocenka_kvalifikacii_vipusknikov_rabotodatelyami]
GO

CREATE VIEW I11_ocenka_kvalifikacii_vipusknikov_rabotodatelyami AS 
SELECT ID, name_RU, name_UZ, I11, 3*I11/(SELECT MAX(I11) FROM I11 WHERE I11.YEAR = YEAR) AS mark, YEAR
FROM I11;
GO

--- 2.3
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I12]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I12]
GO

CREATE VIEW I12 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ,
5*raiting.p10/CASE raiting.p11 WHEN 0 THEN 1 ELSE raiting.p11 END AS I12,
raiting.p10/CASE raiting.p11 WHEN 0 THEN 1 ELSE raiting.p11 END AS I12_1,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I12_dolya_trudoustroennih_vipusknikov]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I12_dolya_trudoustroennih_vipusknikov]
GO

CREATE VIEW I12_dolya_trudoustroennih_vipusknikov AS 
SELECT ID, name_RU, name_UZ, I12_1, I12, 6*I12/(SELECT MAX(I12) FROM I12 WHERE I12.YEAR = YEAR) AS mark, YEAR
FROM I12;
GO

--- 2.4
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I13]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I13]
GO

CREATE VIEW I13 AS 
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

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I13_kolichestvo_studentov_udostoennih_nagrad]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I13_kolichestvo_studentov_udostoennih_nagrad]
GO

CREATE VIEW I13_kolichestvo_studentov_udostoennih_nagrad AS 
SELECT ID, name_RU, name_UZ, I131, I132, I133, I134, I13, 3*I13/(SELECT MAX(I13) FROM I13 WHERE I13.YEAR = YEAR) AS mark, YEAR
FROM I13;
GO

--- 3.1
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I14]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I14]
GO

CREATE VIEW I14 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ,
(2*raiting.s4+5*raiting.s5)/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END AS I14,
raiting.s4/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END AS I141,
raiting.s5/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END AS I142,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I14_citiruemost_publikaciy_pps]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I14_citiruemost_publikaciy_pps]
GO

CREATE VIEW I14_citiruemost_publikaciy_pps AS 
SELECT ID, name_RU, name_UZ, I141, I142, I14, 7*I14/(SELECT MAX(I14) FROM I14 WHERE I14.YEAR = YEAR) AS mark, YEAR
FROM I14;
GO

--- 3.2
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I15]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I15]
GO

CREATE VIEW I15 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ,
(2*raiting.s7+raiting.s8+raiting.s9)/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END AS I15,
raiting.s7/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END AS I151,
raiting.s8/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END AS I152,
raiting.s9/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END AS I153,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I15_kolichestvo_izdannih_statey]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I15_kolichestvo_izdannih_statey]
GO

CREATE VIEW I15_kolichestvo_izdannih_statey AS 
SELECT ID, name_RU, name_UZ, I151, I152, I153, I15, 5*I15/(SELECT MAX(I15) FROM I15 WHERE I15.YEAR = YEAR) AS mark, YEAR
FROM I15;
GO

--- 3.3
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I16]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I16]
GO

CREATE VIEW I16 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ,
((2*raiting.d/(CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END - CASE raiting.z WHEN 0 THEN 1 ELSE raiting.z END - CASE raiting.v WHEN 0 THEN 1 ELSE raiting.v END))+(2*raiting.z+2*raiting.v)/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END)*100 AS I16,
(raiting.d/(CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END-CASE raiting.z WHEN 0 THEN 1 ELSE raiting.z END-CASE raiting.v WHEN 0 THEN 1 ELSE raiting.v END))*100 AS I161,
((raiting.z+raiting.v)/CASE raiting.p WHEN 0 THEN 1 ELSE raiting.p END)*100 AS I162,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I16_kolichestvo_sotrudnikov_utverjdennih_vak]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I16_kolichestvo_sotrudnikov_utverjdennih_vak]
GO

CREATE VIEW I16_kolichestvo_sotrudnikov_utverjdennih_vak AS 
SELECT ID, name_RU, name_UZ, I161, I162, I16, 5*I16/(SELECT MAX(I16) FROM I16 WHERE I16.YEAR = YEAR) AS mark, YEAR
FROM I16;
GO

--- 3.4
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I17]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I17]
GO

CREATE VIEW I17 AS 
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

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I17_summa_finansovih_sredstv_poluchennih_na_nauchnuyu_deyatelnost]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I17_summa_finansovih_sredstv_poluchennih_na_nauchnuyu_deyatelnost]
GO

CREATE VIEW I17_summa_finansovih_sredstv_poluchennih_na_nauchnuyu_deyatelnost AS 
SELECT ID, name_RU, name_UZ, I171, I172, I173, I174, I17, 10*I17/(SELECT MAX(I17) FROM I17 WHERE I17.YEAR = YEAR) AS mark, YEAR
FROM I17;
GO

--- 3.5
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I18]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I18]
GO

CREATE VIEW I18 AS 
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

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I18_effektivnost_provodimih_nauchnih_rabot]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I18_effektivnost_provodimih_nauchnih_rabot]
GO

CREATE VIEW I18_effektivnost_provodimih_nauchnih_rabot AS 
SELECT ID, name_RU, name_UZ, I181, I182, I183, I184, I185, I18, 6*I18/(SELECT MAX(I18) FROM I18 WHERE I18.YEAR = YEAR) AS mark, YEAR
FROM I18;
GO

--- 3.6
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I19]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I19]
GO

CREATE VIEW I19 AS 
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

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I19_stepen_osnashennosti_laboratoriy_oborudovaniem]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I19_stepen_osnashennosti_laboratoriy_oborudovaniem]
GO

CREATE VIEW I19_stepen_osnashennosti_laboratoriy_oborudovaniem AS 
SELECT ID, name_RU, name_UZ, Z1, Z2, Z3, Z4, Z5, Z, I19, 2*I19/CASE (SELECT MAX(I19) FROM I19 WHERE I19.YEAR = YEAR) WHEN 0 THEN 1 ELSE (SELECT MAX(I19) FROM I19 WHERE I19.YEAR = YEAR) END AS mark, YEAR
FROM I19;
GO

--- 4.1
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I20]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I20]
GO

CREATE VIEW I20 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ,
(2*raiting.k2+raiting.m)/(CASE raiting.l WHEN 0 THEN 1 ELSE raiting.l END) AS I20,
raiting.k2/CASE raiting.l WHEN 0 THEN 1 ELSE raiting.l END AS I201,
raiting.m/CASE raiting.l WHEN 0 THEN 1 ELSE raiting.l END AS I202,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I20_obespechennost_irc_uchebnoy_literaturoy]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I20_obespechennost_irc_uchebnoy_literaturoy]
GO

CREATE VIEW I20_obespechennost_irc_uchebnoy_literaturoy AS 
SELECT ID, name_RU, name_UZ, I201, I202, I20, 3*I20/(SELECT MAX(I20) FROM I20 WHERE I20.YEAR = YEAR) AS mark, YEAR
FROM I20;
GO

--- 4.2
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I21]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I21]
GO

CREATE VIEW I21 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ,
(raiting.x1/CASE raiting.x2 WHEN 0 THEN 1 ELSE raiting.x2 END)+((raiting.x3+raiting.x4+raiting.x5)/3*CASE raiting.x1 WHEN 0 THEN 1 ELSE raiting.x1 END)
+raiting.x6+(raiting.x7/CASE raiting.x9 WHEN 0 THEN 1 ELSE raiting.x9 END)+(raiting.x8/CASE raiting.x10 WHEN 0 THEN 1 ELSE raiting.x10 END)+raiting.x11+raiting.x12+raiting.x13+raiting.x14+raiting.x15+raiting.x16 AS I21,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I21_stepen_vnedreniya_ikt_v_uchebniy_process]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I21_stepen_vnedreniya_ikt_v_uchebniy_process]
GO

CREATE VIEW I21_stepen_vnedreniya_ikt_v_uchebniy_process AS 
SELECT ID, name_RU, name_UZ, I21, 6*I21/(SELECT MAX(I21) FROM I21 WHERE I21.YEAR = YEAR) AS mark, YEAR
FROM I21;
GO

--- 4.3
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I22]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I22]
GO

CREATE VIEW I22 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ,
(1-raiting.ra/(Select count(id) from university))+(1-raiting.u/(Select count(id) from university))+raiting.s AS I22,
1-raiting.ra/(Select count(id) from university) AS I221,
1-raiting.u/(Select count(id) from university) AS I222,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I22_dostupnost_informacii_o_vuze_v_internete]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I22_dostupnost_informacii_o_vuze_v_internete]
GO

CREATE VIEW I22_dostupnost_informacii_o_vuze_v_internete AS 
SELECT ID, name_RU, name_UZ, I22, I221, I222, 3*I22/(SELECT MAX(I22) FROM I22 WHERE I22.YEAR = YEAR) AS mark, YEAR
FROM I22;
GO

--- 4.4
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I23]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I23]
GO

CREATE VIEW I23 AS 
SELECT university.id as ID, university.name_RU as name_RU, university.name_UZ as name_UZ,
(2*raiting.p17/CASE raiting.p18 WHEN 0 THEN 1 ELSE raiting.p18 END)+raiting.p19/CASE raiting.p20 WHEN 0 THEN 1 ELSE raiting.p20 END AS I23,
raiting.p17/CASE raiting.p18 WHEN 0 THEN 1 ELSE raiting.p18 END AS I231,
raiting.p19/CASE raiting.p20 WHEN 0 THEN 1 ELSE raiting.p20 END AS I232,
YEAR
FROM raiting INNER JOIN university
	ON raiting.id_university = university.id;
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I23_osnashennost_laboratornim_oborudovaniem]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I23_osnashennost_laboratornim_oborudovaniem]
GO

CREATE VIEW I23_osnashennost_laboratornim_oborudovaniem AS 
SELECT ID, name_RU, name_UZ, I23, I231, I232, 3*I23/(SELECT MAX(I23) FROM I23 WHERE I23.YEAR = YEAR) AS mark, YEAR
FROM I23;
GO

--- 1 Уровень качества преподавания
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I1_TOTAL]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I1_TOTAL]
GO

CREATE VIEW I1_TOTAL AS
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
		
--- 2 Уровень знания студентов и квалификация выпускников
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I2_TOTAL]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I2_TOTAL]
GO

CREATE VIEW I2_TOTAL AS
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
		
--- 3 Уровень научного потенциала высшего учебного заведения
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I3_TOTAL]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I3_TOTAL]
GO

CREATE VIEW I3_TOTAL AS
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
		
--- 4 Уровень оснащенности материально-технической базы и внедрения ИКТ
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[I4_TOTAL]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[I4_TOTAL]
GO

CREATE VIEW I4_TOTAL AS
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

--- Общий рейтинг
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RAITING_TOTAL]') AND TYPE IN (N'U'))
DROP TABLE [dbo].[RAITING_TOTAL]
GO

CREATE VIEW RAITING_TOTAL AS
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