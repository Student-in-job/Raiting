-- SQL Manager 2011 for SQL Server 3.7.0.2
-- ---------------------------------------
-- Host      : (local)
-- Database  : URaiting
-- Version   : Microsoft SQL Server  11.0.2100.60


--
-- Dropping table __MigrationHistory : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[__MigrationHistory]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[__MigrationHistory]
GO

--
-- Dropping table branch : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[branch]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[branch]
GO

--
-- Dropping table chislennost_pps_vuza : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[chislennost_pps_vuza]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[chislennost_pps_vuza]
GO

--
-- Dropping table university : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[university]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[university]
GO

--
-- Dropping table region : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[region]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[region]
GO

--
-- Dropping table citiruemost_publikaciy_pps_vuza : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[citiruemost_publikaciy_pps_vuza]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[citiruemost_publikaciy_pps_vuza]
GO

--
-- Dropping table darslik : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[darslik]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[darslik]
GO

--
-- Dropping table effektivnost_nir_dalolatnoma : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[effektivnost_nir_dalolatnoma]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[effektivnost_nir_dalolatnoma]
GO

--
-- Dropping table effektivnost_nir_patent : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[effektivnost_nir_patent]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[effektivnost_nir_patent]
GO

--
-- Dropping table effektivnost_nir_sertifikat : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[effektivnost_nir_sertifikat]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[effektivnost_nir_sertifikat]
GO

--
-- Dropping table granti_po_vidam_issledovaniy : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[granti_po_vidam_issledovaniy]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[granti_po_vidam_issledovaniy]
GO

--
-- Dropping table informaciya_o_dissertaciyah : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[informaciya_o_dissertaciyah]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[informaciya_o_dissertaciyah]
GO

--
-- Dropping table Jadval_AKTdaraja_1_7 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Jadval_AKTdaraja_1_7]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[Jadval_AKTdaraja_1_7]
GO

--
-- Dropping table Jadval_bitiruvchi_2_2 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Jadval_bitiruvchi_2_2]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[Jadval_bitiruvchi_2_2]
GO

--
-- Dropping table Jadval_talababilim_2_1 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Jadval_talababilim_2_1]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[Jadval_talababilim_2_1]
GO

--
-- Dropping table Jadval_talimsifati_1_2 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Jadval_talimsifati_1_2]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[Jadval_talimsifati_1_2]
GO

--
-- Dropping table Jadval1 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Jadval1]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[Jadval1]
GO

--
-- Dropping table Jadval10 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Jadval10]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[Jadval10]
GO

--
-- Dropping table Jadval11 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Jadval11]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[Jadval11]
GO

--
-- Dropping table Jadval18 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Jadval18]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[Jadval18]
GO

--
-- Dropping table Jadval19 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Jadval19]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[Jadval19]
GO

--
-- Dropping table Jadval2 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Jadval2]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[Jadval2]
GO

--
-- Dropping table Jadval20 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Jadval20]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[Jadval20]
GO

--
-- Dropping table Jadval21 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Jadval21]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[Jadval21]
GO

--
-- Dropping table Jadval32 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Jadval32]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[Jadval32]
GO

--
-- Dropping table Jadval5 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Jadval5]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[Jadval5]
GO

--
-- Dropping table Jadval6 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Jadval6]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[Jadval6]
GO

--
-- Dropping table Jadval7 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Jadval7]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[Jadval7]
GO

--
-- Dropping table Jadval8 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Jadval8]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[Jadval8]
GO

--
-- Dropping table Jadval9 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Jadval9]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[Jadval9]
GO

--
-- Dropping table kolichestvo_izdannih_mejdunarodnih_statey : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[kolichestvo_izdannih_mejdunarodnih_statey]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[kolichestvo_izdannih_mejdunarodnih_statey]
GO

--
-- Dropping table kolichestvo_izdannih_mestnih_statey : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[kolichestvo_izdannih_mestnih_statey]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[kolichestvo_izdannih_mestnih_statey]
GO

--
-- Dropping table majmua : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[majmua]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[majmua]
GO

--
-- Dropping table Monitorings : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Monitorings]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[Monitorings]
GO

--
-- Dropping table monografiya : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[monografiya]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[monografiya]
GO

--
-- Dropping table nalichie_elektronnoy_literaturi : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[nalichie_elektronnoy_literaturi]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[nalichie_elektronnoy_literaturi]
GO

--
-- Dropping table nalichie_informacii_o_vuze_v_internete : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[nalichie_informacii_o_vuze_v_internete]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[nalichie_informacii_o_vuze_v_internete]
GO

--
-- Dropping table nalichie_multimedia_v_auditorii : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[nalichie_multimedia_v_auditorii]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[nalichie_multimedia_v_auditorii]
GO

--
-- Dropping table osnashennost_laboratoriy : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[osnashennost_laboratoriy]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[osnashennost_laboratoriy]
GO

--
-- Dropping table qullanma : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[qullanma]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[qullanma]
GO

--
-- Dropping table raiting : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[raiting]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[raiting]
GO

--
-- Dropping table stepen_vnedreniya_ikt : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[stepen_vnedreniya_ikt]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[stepen_vnedreniya_ikt]
GO

--
-- Dropping table summi_mejdunarodnih_grantov : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[summi_mejdunarodnih_grantov]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[summi_mejdunarodnih_grantov]
GO

--
-- Dropping table summi_respublikanskih_grantov : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[summi_respublikanskih_grantov]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  DROP TABLE [dbo].[summi_respublikanskih_grantov]
GO

--
-- Dropping view I1 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I1]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I1]
GO

--
-- Dropping view I1_dolya_pps_s_uchenoy_stepenyu : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I1_dolya_pps_s_uchenoy_stepenyu]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I1_dolya_pps_s_uchenoy_stepenyu]
GO

--
-- Dropping view I5_uchastie_v_programme_obmena : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I5_uchastie_v_programme_obmena]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I5_uchastie_v_programme_obmena]
GO

--
-- Dropping view I5 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I5]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I5]
GO

--
-- Dropping view I4 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I4]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I4]
GO

--
-- Dropping view I4_dolya_inostrannih_prepodavateley_i_studentov : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I4_dolya_inostrannih_prepodavateley_i_studentov]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I4_dolya_inostrannih_prepodavateley_i_studentov]
GO

--
-- Dropping view I3 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I3]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I3]
GO

--
-- Dropping view I3_kolichestvo_uchebnikov_i_posobiy : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I3_kolichestvo_uchebnikov_i_posobiy]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I3_kolichestvo_uchebnikov_i_posobiy]
GO

--
-- Dropping view I2 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I2]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I2]
GO

--
-- Dropping view I2_uroven_kachestva_prepodavaniya : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I2_uroven_kachestva_prepodavaniya]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I2_uroven_kachestva_prepodavaniya]
GO

--
-- Dropping view I9 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I9]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I9]
GO

--
-- Dropping view I9_dolya_pps_prepodayushego_v_sspo : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I9_dolya_pps_prepodayushego_v_sspo]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I9_dolya_pps_prepodayushego_v_sspo]
GO

--
-- Dropping view I8 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I8]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I8]
GO

--
-- Dropping view I8_dolya_pps_prepodayushih_v_zarubejnih_vuzah : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I8_dolya_pps_prepodayushih_v_zarubejnih_vuzah]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I8_dolya_pps_prepodayushih_v_zarubejnih_vuzah]
GO

--
-- Dropping view I7 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I7]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I7]
GO

--
-- Dropping view I7_uroven_angliyskogo_i_ikt_u_pps : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I7_uroven_angliyskogo_i_ikt_u_pps]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I7_uroven_angliyskogo_i_ikt_u_pps]
GO

--
-- Dropping view I6 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I6]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I6]
GO

--
-- Dropping view I6_kolichestvo_uchebnih_kursov_na_inostrannom : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I6_kolichestvo_uchebnih_kursov_na_inostrannom]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I6_kolichestvo_uchebnih_kursov_na_inostrannom]
GO

--
-- Dropping view I1_TOTAL : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I1_TOTAL]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I1_TOTAL]
GO

--
-- Dropping view I10 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I10]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I10]
GO

--
-- Dropping view I10_rezultati_attestacii_u_studentov : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I10_rezultati_attestacii_u_studentov]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I10_rezultati_attestacii_u_studentov]
GO

--
-- Dropping view I11 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I11]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I11]
GO

--
-- Dropping view I11_ocenka_kvalifikacii_vipusknikov_rabotodatelyami : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I11_ocenka_kvalifikacii_vipusknikov_rabotodatelyami]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I11_ocenka_kvalifikacii_vipusknikov_rabotodatelyami]
GO

--
-- Dropping view I12 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I12]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I12]
GO

--
-- Dropping view I12_dolya_trudoustroennih_vipusknikov : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I12_dolya_trudoustroennih_vipusknikov]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I12_dolya_trudoustroennih_vipusknikov]
GO

--
-- Dropping view I13 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I13]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I13]
GO

--
-- Dropping view I13_kolichestvo_studentov_udostoennih_nagrad : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I13_kolichestvo_studentov_udostoennih_nagrad]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I13_kolichestvo_studentov_udostoennih_nagrad]
GO

--
-- Dropping view I14 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I14]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I14]
GO

--
-- Dropping view I14_citiruemost_publikaciy_pps : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I14_citiruemost_publikaciy_pps]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I14_citiruemost_publikaciy_pps]
GO

--
-- Dropping view I15 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I15]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I15]
GO

--
-- Dropping view I15_kolichestvo_izdannih_statey : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I15_kolichestvo_izdannih_statey]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I15_kolichestvo_izdannih_statey]
GO

--
-- Dropping view I16 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I16]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I16]
GO

--
-- Dropping view I16_kolichestvo_sotrudnikov_utverjdennih_vak : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I16_kolichestvo_sotrudnikov_utverjdennih_vak]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I16_kolichestvo_sotrudnikov_utverjdennih_vak]
GO

--
-- Dropping view I17 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I17]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I17]
GO

--
-- Dropping view I17_summa_finansovih_sredstv_poluchennih_na_nauchnuyu_deyatelnost : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I17_summa_finansovih_sredstv_poluchennih_na_nauchnuyu_deyatelnost]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I17_summa_finansovih_sredstv_poluchennih_na_nauchnuyu_deyatelnost]
GO

--
-- Dropping view I18 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I18]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I18]
GO

--
-- Dropping view I18_effektivnost_provodimih_nauchnih_rabot : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I18_effektivnost_provodimih_nauchnih_rabot]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I18_effektivnost_provodimih_nauchnih_rabot]
GO

--
-- Dropping view I19 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I19]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I19]
GO

--
-- Dropping view I19_stepen_osnashennosti_laboratoriy_oborudovaniem : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I19_stepen_osnashennosti_laboratoriy_oborudovaniem]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I19_stepen_osnashennosti_laboratoriy_oborudovaniem]
GO

--
-- Dropping view I2_1 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I2_1]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I2_1]
GO

--
-- Dropping view I2_1_uroven_kachestva_prepodavaniya : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I2_1_uroven_kachestva_prepodavaniya]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I2_1_uroven_kachestva_prepodavaniya]
GO

--
-- Dropping view I2_TOTAL : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I2_TOTAL]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I2_TOTAL]
GO

--
-- Dropping view I20 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I20]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I20]
GO

--
-- Dropping view I20_obespechennost_irc_uchebnoy_literaturoy : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I20_obespechennost_irc_uchebnoy_literaturoy]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I20_obespechennost_irc_uchebnoy_literaturoy]
GO

--
-- Dropping view I21 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I21]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I21]
GO

--
-- Dropping view I21_stepen_vnedreniya_ikt_v_uchebniy_process : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I21_stepen_vnedreniya_ikt_v_uchebniy_process]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I21_stepen_vnedreniya_ikt_v_uchebniy_process]
GO

--
-- Dropping view I22 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I22]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I22]
GO

--
-- Dropping view I22_dostupnost_informacii_o_vuze_v_internete : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I22_dostupnost_informacii_o_vuze_v_internete]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I22_dostupnost_informacii_o_vuze_v_internete]
GO

--
-- Dropping view I23 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I23]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I23]
GO

--
-- Dropping view I23_osnashennost_laboratornim_oborudovaniem : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I23_osnashennost_laboratornim_oborudovaniem]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I23_osnashennost_laboratornim_oborudovaniem]
GO

--
-- Dropping view I3_TOTAL : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I3_TOTAL]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I3_TOTAL]
GO

--
-- Dropping view I4_TOTAL : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I4_TOTAL]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I4_TOTAL]
GO

--
-- Dropping view RAITING_TOTAL : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[RAITING_TOTAL]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[RAITING_TOTAL]
GO

--
-- Definition for table __MigrationHistory : 
--

CREATE TABLE [dbo].[__MigrationHistory] (
  [MigrationId] nvarchar(150) COLLATE Cyrillic_General_CI_AS NOT NULL,
  [ContextKey] nvarchar(300) COLLATE Cyrillic_General_CI_AS NOT NULL,
  [Model] varbinary(max) NOT NULL,
  [ProductVersion] nvarchar(32) COLLATE Cyrillic_General_CI_AS NOT NULL
)
ON [PRIMARY]
GO

--
-- Definition for table branch : 
--

CREATE TABLE [dbo].[branch] (
  [id] int IDENTITY(1, 1) NOT NULL,
  [name] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL
)
ON [PRIMARY]
GO

--
-- Definition for table region : 
--

CREATE TABLE [dbo].[region] (
  [id] int IDENTITY(1, 1) NOT NULL,
  [name_RU] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [name_UZ] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL
)
ON [PRIMARY]
GO

--
-- Definition for table university : 
--

CREATE TABLE [dbo].[university] (
  [id] int IDENTITY(1, 1) NOT NULL,
  [name_RU] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [id_region] int NULL,
  [id_branch] int NULL,
  [name_UZ] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [branch_id] int NULL,
  [region_id] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table chislennost_pps_vuza : 
--

CREATE TABLE [dbo].[chislennost_pps_vuza] (
  [id] int IDENTITY(1, 1) NOT NULL,
  [ass_shtat] int NULL,
  [urindosh] int NULL,
  [saotbay] int NULL,
  [as_fan_nom] int NULL,
  [as_fan_doc] int NULL,
  [as_prof] int NULL,
  [as_doz] int NULL,
  [as_katta] int NULL,
  [as_ass] int NULL,
  [ur_prof] int NULL,
  [ur_doc] int NULL,
  [ur_katta] int NULL,
  [ur_ass] int NULL,
  [so_prof] int NULL,
  [so_doc] int NULL,
  [so_katta] int NULL,
  [so_ass] int NULL,
  [id_university] int NULL,
  [year] int NULL,
  [university_id] int NULL,
  [university_id1] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table citiruemost_publikaciy_pps_vuza : 
--

CREATE TABLE [dbo].[citiruemost_publikaciy_pps_vuza] (
  [id] int IDENTITY(1, 1) NOT NULL,
  [fio] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [source] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [info] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [link] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [usage] int NULL,
  [year] int NULL,
  [id_university] int NULL,
  [university_id] int NULL,
  [university_id1] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table darslik : 
--

CREATE TABLE [dbo].[darslik] (
  [id] int IDENTITY(1, 1) NOT NULL,
  [fio] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [kod_spec] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [ucheb_name] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [ucheb_number] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [filename] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [year] int NULL,
  [id_university] int NULL,
  [university_id] int NULL,
  [university_id1] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table effektivnost_nir_dalolatnoma : 
--

CREATE TABLE [dbo].[effektivnost_nir_dalolatnoma] (
  [id] int IDENTITY(1, 1) NOT NULL,
  [otm_name] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [fio] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [sertifikat_name] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [sertifikat_date] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [sertifikat_number] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [filename] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [id_university] int NULL,
  [year] int NULL,
  [university_id] int NULL,
  [university_id1] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table effektivnost_nir_patent : 
--

CREATE TABLE [dbo].[effektivnost_nir_patent] (
  [id] int IDENTITY(1, 1) NOT NULL,
  [otm_name] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [fio] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [sertifikat_name] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [sertifikat_date] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [sertifikat_number] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [filename] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [id_university] int NULL,
  [year] int NULL,
  [university_id] int NULL,
  [university_id1] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table effektivnost_nir_sertifikat : 
--

CREATE TABLE [dbo].[effektivnost_nir_sertifikat] (
  [id] int IDENTITY(1, 1) NOT NULL,
  [otm_name] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [fio] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [sertifikat_name] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [sertifikat_date] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [sertifikat_number] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [filename] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [id_university] int NULL,
  [year] int NULL,
  [university_id] int NULL,
  [university_id1] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table granti_po_vidam_issledovaniy : 
--

CREATE TABLE [dbo].[granti_po_vidam_issledovaniy] (
  [id] int IDENTITY(1, 1) NOT NULL,
  [tormog_name] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [buyurtma_name] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [fundamental] bit NULL,
  [amaliy] bit NULL,
  [innovatsion] bit NULL,
  [lizenziya] bit NULL,
  [yarmarka] bit NULL,
  [summa] float NULL,
  [id_university] int NULL,
  [year] int NULL,
  [filename] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [university_id] int NULL,
  [university_id1] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table informaciya_o_dissertaciyah : 
--

CREATE TABLE [dbo].[informaciya_o_dissertaciyah] (
  [id] int IDENTITY(1, 1) NOT NULL,
  [fio] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [work_place] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [iht_shifr] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [iht_nomi] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [disser_name] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [kengash_shifr] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [kengash_email] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [date] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [year] int NULL,
  [id_university] int NULL,
  [university_id] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval_AKTdaraja_1_7 : 
--

CREATE TABLE [dbo].[Jadval_AKTdaraja_1_7] (
  [Id] int IDENTITY(1, 1) NOT NULL,
  [P] int NOT NULL,
  [P7] int NOT NULL,
  [P8] int NOT NULL,
  [Year] smallint NOT NULL,
  [UniversityId] int NOT NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval_bitiruvchi_2_2 : 
--

CREATE TABLE [dbo].[Jadval_bitiruvchi_2_2] (
  [Id] int IDENTITY(1, 1) NOT NULL,
  [R] int NOT NULL,
  [R1] int NOT NULL,
  [UniversityId] int NOT NULL,
  [Year] smallint NOT NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval_talababilim_2_1 : 
--

CREATE TABLE [dbo].[Jadval_talababilim_2_1] (
  [Id] int IDENTITY(1, 1) NOT NULL,
  [T_All] int NOT NULL,
  [T_Qualified] int NOT NULL,
  [UniversityId] int NOT NULL,
  [Year] smallint NOT NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval_talimsifati_1_2 : 
--

CREATE TABLE [dbo].[Jadval_talimsifati_1_2] (
  [Id] int IDENTITY(1, 1) NOT NULL,
  [T] int NULL,
  [N1] int NULL,
  [N2] int NULL,
  [N3] int NULL,
  [N41] int NULL,
  [N51] int NULL,
  [N42] int NULL,
  [N52] int NULL,
  [N43] int NULL,
  [N53] int NULL,
  [I2] int NULL,
  [UniversityId] int NOT NULL,
  [Year] smallint NOT NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval1 : 
--

CREATE TABLE [dbo].[Jadval1] (
  [Id] int IDENTITY(1, 1) NOT NULL,
  [OtmName] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [State] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Reyting] int NOT NULL,
  [Year] smallint NOT NULL,
  [UniversityId] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval10 : 
--

CREATE TABLE [dbo].[Jadval10] (
  [Id] int IDENTITY(1, 1) NOT NULL,
  [DirectionCode] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [DirectionName] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [SubjectName] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [ForeignLanguage] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [EducationCourse] int NOT NULL,
  [StudentCount] int NOT NULL,
  [Asos] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [AsosFile] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Year] smallint NOT NULL,
  [UniversityId] int NOT NULL,
  [Status] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval11 : 
--

CREATE TABLE [dbo].[Jadval11] (
  [Id] int IDENTITY(1, 1) NOT NULL,
  [FullName] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Speciality] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [MonographName] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [MongographYear] int NOT NULL,
  [DarslikName] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [DarslikCertificate] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [OquvqullanmaName] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [OquvqullanmaCertificate] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [OquvmajmuaName] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [OquvmajmuaCertificate] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Status] int NULL,
  [AsosFile] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Year] smallint NOT NULL,
  [UniversityId] int NOT NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval18 : 
--

CREATE TABLE [dbo].[Jadval18] (
  [Id] int IDENTITY(1, 1) NOT NULL,
  [FullName] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Khk_ak_Name] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Post] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Subject] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Orindosh] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Soatbay] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Asos] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [AsosFile] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Year] smallint NOT NULL,
  [UniversityId] int NOT NULL,
  [Status] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval19 : 
--

CREATE TABLE [dbo].[Jadval19] (
  [Id] int IDENTITY(1, 1) NOT NULL,
  [FullName] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [TanlovName] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Tanlov_joy_date] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [SubjectName] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [EgallaganPosition] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [DiplomSeria] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [DiplomNumber] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [SovrinName] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Description] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Status] int NULL,
  [AsosFile] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Year] smallint NOT NULL,
  [UniversityId] int NOT NULL,
  [TanlovTuri] int NOT NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval2 : 
--

CREATE TABLE [dbo].[Jadval2] (
  [Id] int IDENTITY(1, 1) NOT NULL,
  [FullName] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Davlat] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Jadval1_Id] int NOT NULL,
  [Phd_seriya] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Phd_nomer] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Mag_seriya] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Mag_nomer] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Speciality] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Ishga_qabul_buyruq] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Status] int NULL,
  [Year] smallint NOT NULL,
  [UniversityId] int NOT NULL,
  [AsosFile] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval20 : 
--

CREATE TABLE [dbo].[Jadval20] (
  [Id] int IDENTITY(1, 1) NOT NULL,
  [FullName] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Talim_yonalish_shifri] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Talim_yonalish_nomi] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Ish_nomi] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Ish_lavozimi] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Asos_fayl] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Mag_otm] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Year] smallint NOT NULL,
  [UniversityId] int NOT NULL,
  [Status] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval21 : 
--

CREATE TABLE [dbo].[Jadval21] (
  [Id] int IDENTITY(1, 1) NOT NULL,
  [fio] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Mutaxassislik_shifr] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Mutaxassislik_nomi] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Ish_nomi] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Ish_lavozimi] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Asos_fayl] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Year] smallint NOT NULL,
  [UniversityId] int NOT NULL,
  [Status] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval32 : 
--

CREATE TABLE [dbo].[Jadval32] (
  [Id] int IDENTITY(1, 1) NOT NULL,
  [FullName] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [BirthDate] datetime NULL,
  [Post] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [stavka] float NOT NULL,
  [GraduatedOtm] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Diplom_ixtisoslik] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Diplom_mutaxassislik] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Ilmiy_daraja] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Ilmiy_unvon] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Qaysi_yildan_kafedrada_ishlaydi] int NOT NULL,
  [Oxirgi_malaka_oshirgan_yili] int NOT NULL,
  [Subjects] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Year] smallint NOT NULL,
  [UniversityId] int NOT NULL,
  [Turi] int NOT NULL,
  [Status] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval5 : 
--

CREATE TABLE [dbo].[Jadval5] (
  [Id] int IDENTITY(1, 1) NOT NULL,
  [FullName] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Davlat_ishjoy] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Speciality] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Subject] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Status] int NULL,
  [Asos] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Asos_fayl] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Year] smallint NOT NULL,
  [UniversityId] int NOT NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval6 : 
--

CREATE TABLE [dbo].[Jadval6] (
  [Id] int IDENTITY(1, 1) NOT NULL,
  [FullName] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [State] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Yonalish] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Mag_mutaxassislik] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Status] int NULL,
  [Asos] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Asos_fayl] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Year] smallint NOT NULL,
  [UniversityId] int NOT NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval7 : 
--

CREATE TABLE [dbo].[Jadval7] (
  [Id] int IDENTITY(1, 1) NOT NULL,
  [FullName_uzb] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [State_uzb] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Mutaxassislik_uzb] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [FullName_xorij] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [State_xorij] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Mutaxassislik_xorij] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Asos] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Asos_fayl] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Bak_mag] int NOT NULL,
  [Year] smallint NOT NULL,
  [UniversityId] int NOT NULL,
  [Status] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval8 : 
--

CREATE TABLE [dbo].[Jadval8] (
  [Id] int IDENTITY(1, 1) NOT NULL,
  [FullName] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [State_otm_nomi] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Talim_yonalish] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Loyiha_nomi] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Konferensiya_nomi] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Student_oqituvchi] int NOT NULL,
  [Asos] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Asos_fayl] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Year] smallint NOT NULL,
  [UniversityId] int NOT NULL,
  [Status] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval9 : 
--

CREATE TABLE [dbo].[Jadval9] (
  [Id] int IDENTITY(1, 1) NOT NULL,
  [FullName] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [State_otm] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Speciality] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Subject] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Asos] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Asos_fayl] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Year] smallint NOT NULL,
  [UniversityId] int NOT NULL,
  [Status] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table kolichestvo_izdannih_mejdunarodnih_statey : 
--

CREATE TABLE [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] (
  [id] int IDENTITY(1, 1) NOT NULL,
  [fio] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [country] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [journal] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [paper] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [paper_year] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [link] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [coauthor_count] float NULL,
  [filename] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [year] int NULL,
  [id_university] int NULL,
  [university_id] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table kolichestvo_izdannih_mestnih_statey : 
--

CREATE TABLE [dbo].[kolichestvo_izdannih_mestnih_statey] (
  [id] int IDENTITY(1, 1) NOT NULL,
  [fio] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [journal] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [paper] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [paper_year] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [link] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [coauthor_count] float NULL,
  [filename] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [year] int NULL,
  [id_university] int NULL,
  [university_id] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table majmua : 
--

CREATE TABLE [dbo].[majmua] (
  [id] int IDENTITY(1, 1) NOT NULL,
  [fio] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [kod_spec] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [metodich_name] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [metodich_number] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [filename] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [year] int NULL,
  [id_university] int NULL,
  [university_id] int NULL,
  [university_id1] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Monitorings : 
--

CREATE TABLE [dbo].[Monitorings] (
  [Id] int IDENTITY(1, 1) NOT NULL,
  [J1] int NULL,
  [J2] int NULL,
  [J3] int NULL,
  [J4] int NULL,
  [J5] int NULL,
  [J6] int NULL,
  [J7] int NULL,
  [J8] int NULL,
  [J9] int NULL,
  [J10] int NULL,
  [J11] int NULL,
  [J12] int NULL,
  [J13] int NULL,
  [J14] int NULL,
  [J15] int NULL,
  [J16] int NULL,
  [J17] int NULL,
  [J18] int NULL,
  [J19] int NULL,
  [J20] int NULL,
  [J21] int NULL,
  [J22] int NULL,
  [J23] int NULL,
  [J24] int NULL,
  [J25] int NULL,
  [J26] int NULL,
  [J27] int NULL,
  [J28] int NULL,
  [J29] int NULL,
  [J30] int NULL,
  [J31] int NULL,
  [J32] int NULL,
  [J1_2] int NULL,
  [J1_7] int NULL,
  [J2_1] int NULL,
  [J2_2] int NULL,
  [Year] int NOT NULL,
  [UniverId] int NOT NULL,
  [Srok] datetime NULL
)
ON [PRIMARY]
GO

--
-- Definition for table monografiya : 
--

CREATE TABLE [dbo].[monografiya] (
  [id] int IDENTITY(1, 1) NOT NULL,
  [fio] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [kod_spec] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [monograf_name] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [monograf_year] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [filename] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [year] int NULL,
  [id_university] int NULL,
  [university_id] int NULL,
  [university_id1] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table nalichie_elektronnoy_literaturi : 
--

CREATE TABLE [dbo].[nalichie_elektronnoy_literaturi] (
  [id] int IDENTITY(1, 1) NOT NULL,
  [id_university] int NULL,
  [year] int NULL,
  [napravlenie] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [nazvaniya_predmetov] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [osn_literatura] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [nalichie_uzb] bit NULL,
  [nalichie_rus] bit NULL,
  [nalichie_angl] bit NULL,
  [university_id] int NULL,
  [university_id1] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table nalichie_informacii_o_vuze_v_internete : 
--

CREATE TABLE [dbo].[nalichie_informacii_o_vuze_v_internete] (
  [id] int IDENTITY(1, 1) NOT NULL,
  [id_university] int NULL,
  [year] int NULL,
  [vuz_name] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [vuz_web] float NULL,
  [vuz_int_rate] float NULL,
  [vuz_uz_rate] float NULL,
  [university_id] int NULL,
  [university_id1] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table nalichie_multimedia_v_auditorii : 
--

CREATE TABLE [dbo].[nalichie_multimedia_v_auditorii] (
  [id] int IDENTITY(1, 1) NOT NULL,
  [id_university] int NULL,
  [year] int NULL,
  [vuz_name] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [rooms_total_count] int NULL,
  [rooms_with_multimedia] int NULL,
  [university_id] int NULL,
  [university_id1] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table osnashennost_laboratoriy : 
--

CREATE TABLE [dbo].[osnashennost_laboratoriy] (
  [id] int IDENTITY(1, 1) NOT NULL,
  [id_university] int NULL,
  [year] int NULL,
  [fan_name] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [lab_asbob_name] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [lab_holat] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [yordam_asbob_name] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [yordam_holat] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [university_id] int NULL,
  [university_id1] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table qullanma : 
--

CREATE TABLE [dbo].[qullanma] (
  [id] int IDENTITY(1, 1) NOT NULL,
  [fio] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [kod_spec] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [posobie_name] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [posobie_number] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [filename] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [year] int NULL,
  [id_university] int NULL,
  [university_id] int NULL,
  [university_id1] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table raiting : 
--

CREATE TABLE [dbo].[raiting] (
  [id] int IDENTITY(1, 1) NOT NULL,
  [id_university] int NULL,
  [year] int NULL,
  [p] float NULL,
  [px] float NULL,
  [py] float NULL,
  [n1] float NULL,
  [n2] float NULL,
  [n3] float NULL,
  [n41] float NULL,
  [n51] float NULL,
  [n42] float NULL,
  [n52] float NULL,
  [n43] float NULL,
  [n53] float NULL,
  [i2] float NULL,
  [t] float NULL,
  [s1] float NULL,
  [s2] float NULL,
  [s3] float NULL,
  [p1] float NULL,
  [p2] float NULL,
  [p3] float NULL,
  [p4] float NULL,
  [p5] float NULL,
  [p5_1] float NULL,
  [p6] float NULL,
  [p6_1] float NULL,
  [k1] float NULL,
  [k] float NULL,
  [ty] float NULL,
  [p7] float NULL,
  [p8] float NULL,
  [pz] float NULL,
  [p9] float NULL,
  [tsi] float NULL,
  [tsti] float NULL,
  [r1] float NULL,
  [r] float NULL,
  [p10] float NULL,
  [p11] float NULL,
  [p1_2] float NULL,
  [p1_3] float NULL,
  [p1_4] float NULL,
  [p1_5] float NULL,
  [s4] float NULL,
  [s5] float NULL,
  [s7] float NULL,
  [s8] float NULL,
  [s9] float NULL,
  [d] float NULL,
  [z] float NULL,
  [v] float NULL,
  [t4] float NULL,
  [t5] float NULL,
  [t6] float NULL,
  [tL] float NULL,
  [i] float NULL,
  [t7] float NULL,
  [t8] float NULL,
  [ya] float NULL,
  [kL] float NULL,
  [a1] float NULL,
  [a2] float NULL,
  [a3] float NULL,
  [a4] float NULL,
  [a5] float NULL,
  [k2] float NULL,
  [m] float NULL,
  [L] float NULL,
  [x1] float NULL,
  [x2] float NULL,
  [x3] float NULL,
  [x4] float NULL,
  [x5] float NULL,
  [x6] float NULL,
  [x7] float NULL,
  [x8] float NULL,
  [x9] float NULL,
  [x10] float NULL,
  [x11] float NULL,
  [x12] float NULL,
  [x13] float NULL,
  [x14] float NULL,
  [x15] float NULL,
  [x16] float NULL,
  [ra] float NULL,
  [u] float NULL,
  [s] float NULL,
  [p17] float NULL,
  [p18] float NULL,
  [p19] float NULL,
  [p20] float NULL,
  [university_id] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table stepen_vnedreniya_ikt : 
--

CREATE TABLE [dbo].[stepen_vnedreniya_ikt] (
  [id] int IDENTITY(1, 1) NOT NULL,
  [id_university] int NULL,
  [year] int NULL,
  [pc_count] int NULL,
  [pc_in_local_netw_count] int NULL,
  [pc_with_intenet_count] int NULL,
  [last_years_pc_count] int NULL,
  [internet_speed] float NULL,
  [admin_emails_count] int NULL,
  [pps_emails_count] int NULL,
  [web_service_types] float NULL,
  [study_monitoring] float NULL,
  [research_monitoring] float NULL,
  [pps_baza] float NULL,
  [student_baza] float NULL,
  [finance] float NULL,
  [admins_count] int NULL,
  [pps_count] int NULL,
  [students_count] int NULL,
  [university_id] int NULL,
  [university_id1] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table summi_mejdunarodnih_grantov : 
--

CREATE TABLE [dbo].[summi_mejdunarodnih_grantov] (
  [id] int IDENTITY(1, 1) NOT NULL,
  [grant_name] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [grant_summa] float NULL,
  [buyurtma_name] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [buyurtma_summa] float NULL,
  [id_university] int NULL,
  [year] int NULL,
  [filename] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [university_id] int NULL,
  [university_id1] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table summi_respublikanskih_grantov : 
--

CREATE TABLE [dbo].[summi_respublikanskih_grantov] (
  [id] int IDENTITY(1, 1) NOT NULL,
  [iqtisodiyot_tarmogi] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [buyurtma_name] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [buyurtma_summa] float NULL,
  [grant_name] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [grant_summa] float NULL,
  [id_university] int NULL,
  [year] int NULL,
  [filename] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [university_id] int NULL,
  [university_id1] int NULL
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
-- Data for table dbo.__MigrationHistory  (LIMIT 0,500)
--

INSERT INTO [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion])
VALUES 
  (N'201601081313184_InitialCreate', N'RatingUniversity.Models.TablesContext', 0x1F8B0800000000000400EDBDDD92DBB6F62F783F55F30E2E5FCDFC6B9FB4A5EE76B753CE39E51D2729751227DBEE9C9AF806058990841649C804A9B4FAD43CD95CCC23CD2B0C40511F0441128B00F5C9DAAE9D1681B5B0B0F05B0BDF0BFFDFFFF3FFBEFF1FCF81FF6A41224E59F8C3EBDE776F5EBF22E18879349CFCF03A89C7FFEDFEF5FFF8EFFFFBFFF6FE272F787EF53FD7F9AE653E4119F21F5E4FE378FEFDD5151F4D4980F977011D458CB371FCDD880557D86357FD376FDE5DF57A5744B0782D78BD7AF5FE7312C63420E90FF1F347168EC83C4EB0FF3BF388CFB3EF22E54BCAF5D5271C103EC723F2C3EBCF3816B2FD15D254E878F9DD8AE4F5AB0F3EC5429C2FC41FBF7E85C390C522270BBFFF8B932F71C4C2C997B9F880FDC7E59C887C63EC739255E2FB6D76D3FABCE9CBFA5C6D09D7AC46098F590064D8BBCE1474A5923752F3EB8D02850A7F12AA8E97B2D6A91A7F783D8C70389ABE7EA516F5FD8F7E24B395EAF8BB15E5BF5EA9E9FFDA20430048FEEF5FAF7E4CFC3889C80F2149E208FBFF7AF56732F4E9E857B27C643312FE1026BEBF2BA61054A4E53E884F7F466C4EA278F9998C33E1A9F7FAD5559EEE4A25DC90EDD0AC2A3608E3EBFEEB579F44E178E8930D0A7694F0256611F9858424C231F1FEC4714C22D188038FA47A2C94AE94158AFF5F97266027D4F4FAD5EFF8F937124EE2E90FAFC59FAF5FFD4C9F89B7FE9249209429AC4E10C551420A857CC20B3A49E5538A4B366DF0FAD567E2A759F894CE5776F0DD3619AD5BFDE788059F999FA3CD12D1238E262416E2B3B21C5F58128D14F9DE5F6D215609BC5D61E1E04B76E0D601B01280E8F35FEE3158A8138AC824F550B9AAD552AD8108A04AEBF4D7D73DDAD55A487B9B5A5B4CB94DADADCE54B6D194729F08C0F018CDE71C2D9217AC95549711ED1AE156EE9AAC05CF50975FE7272AEB44632A1A2848F949439DE1115DD654AF9AA6ACA6C654C54A9B9342EBEFE1880B7EDA7A666925F529A616E4D66481CA47C663328BE9226DF09046C8C33E139286C2876B85AE2228A9892149A17AA674D67516E347E183CDAABBCA6B5AD342EEFA4A1649ACEBC745221D0B541BD6719BDFB49E5A8AFABAEAC9A0F59D08771B53346768413D1C20CA850BF3D80287543F7AAA2228A9B12149A1CAA674D03AD370CCA240BA298C18F2045B9198FED4776E15F94B6A6C4651A8B02119B4BE3326C67853C2E30543F4C513C32A3A450179F2921047CC93BFB81867117D831B5397E8A2097D41338D9838D2138F9B6968970EA69B124A53AD949143F511E0A720D1F764ABA4925A15120B8217738065632113FE612C6C432FE036BD4C4A6D8EA2A8FA6C5079432C9B8A12447CE1C6232646894BE4D3584E6892886AEB504353522F73AA425D01A48DEBBFF17154B8383142246821BEC9E91C8949B51A2A49EBB4614A5CAE14630E8D751388E9390D8847B1608D138F8A592FADC1869EA64E1BB554E56AA82785D69FF110F3693671F2F19009B8099E7A675B96B9A4C606D90B5535A181D6F19B5CDC084BE605EBC4923A68920B32EBF240658C308DD335048D88595A8984C5D482809A2C60F9B2A5159D78695299746A6251B8420EA86C3C267312A24548BC8884B2B3A033FD8C419BB344F2BABC858AD41280EB95040155465AE9B89C2DF4B52BCF5F5647238A624DCDC89AD537223C5BCB08F9CCA8C625149575AEA729A9B501A1D59AB47E310DBE3AADE3D3AD5357948539477C1ACBB506C04AB0189A851EE3B0E5638E593CC44B100DE6688C4314B2A00999C74650B279C4C6501A8FBD404966A29D309448B415B095E0D5113450AD091278750411B43A9CC1AB2368A0D51124F0EA08226875A89773D500CA25C1114CD95B2F5DF02D8EB6381D6E72A85B35A69B22CD3A9EBA1D8F067D5035CBAE3BAA286B4C59EB5BA67C8DAF967766C5E4BDF5427C1ACE5A2F24E17842DAF550CD9DE13E7C5BDB3B9C058F07DF1C6DE4FC36DB9D7027979176CEECC0CE6CC63CC4E764D4BE13184DC910B573AE4A5F54120C49D47A61632AC616FBA8D579F944F06908D5C7551C9868E4CBAA8F46C01D5C15BFCEEB5594C5E2603F6E622F63C5ED9187BDD469A73C0FC77B2DEFDCFCED79CDAF5B3CC8A57A66E8013037EE7A7DAACB81A75EB1EA9C74E7A43B27DD39E9433A69DBE3A7B5AEB9FCC4AA1BAFBC7B16D58167DEB2EBBC73E79D3BEFDC79E7437A675707E76BBD74F579FB469EBAFA143DDC5557F1EB7C754559823A6093FDB8B661B24CA258CCC2F6D33924A14082D002F6D765FD9B0980E3B0F6AC42807DBA041251D1240B1CF39DBB8C86943E7D21E14B7A2E1B44B7C45180A319944C9E88DAD07C6402E6C7E448F7D639ECC163B778F347F5D9D01B438D9C76E53520B8CFAE60D7B9EC038F7AFF61D10CCD7DBC8F8306D31809A319B73FF09425852CA0AD17B4C2F27EBA3981F409E6D33DA9705D1A0930F5DBD7E33E26406D6E6C36ED395ABB40A9F61BC07B978DBA0DC06D4A782762CCBCEB520EDCA58C5812C6D1B2F5729E04C443DCBE739AE3F91E164BD252D0AE8F3AEDC37823869378CA2294C201360D398BB32E4DBB8483DC2A57BB0BABABE92E3B8FFC157367DDC62EDBAEC3387087D139F2CE915F8E23771FFCC2D079D7C5CE68E4B6D79130E09E7945D939DF033BDFBD1DCC0E48CC3C81CBFDAC966C4B3BB3BDCEF33A9E0D8C96A37ABAF2783ACD9CD96EE89C061E6D4BDEB9B58B716B59A3EFC9ADAD4BDBCBF8B2736ACD9C5AD3085B05F7561D88AB918FAB0DB705F77B352C3B5F781C3BEE219E4778212C9AB66FD0217E49B7A4319A47C49383B145EB65321E6E5187F750C50CF5C9CB10783263431A25BC29290E27D0E32E7B707DAD07E6535D6483987E766EB3264A9F85F7ACE4DC39D1E370A2A25DF633D29305FD43369EC56CBD4D1209C8A068673FDD9C52FC8313EED3A9EC27CC65A98B0107CAB4F33465312F2D5C8C9E65E75B2ECCB7448C051CC542437E7E55DF48CC15F53F349EEEE0E9D8E660AD47812DF512E601641BB987F290B070BF50C6AB7308C7E110D29082FB7008425708F321DB53E01459DC545ED56E7F618945F294F41EEB9695B89FEAEDC191B610555A759D9048D48D7CE636C434DC47AE693B9F78292BFA73C6D95074E47B71179BC2BA6DCA235ED16F10865E757255A1EA1B39B54D4C7AB84FCB483B97761CC3BC396CC565FE0CCCBF84E50F7BC0FC7D60FE6B60FE1BA840B750821B68156EA10437D04ADF0209285022E0493E0E5429078AC381D59D03E59903E59943E5B901E6BF85E647D01ABF85E687963083E6072214E8B7E677C0FCF7C0FC2FC0FCEF80F5E5144A10032922608B4550A37C03258082BA87A086DC4360D782A0C6DC434073E6C01238943FD01638D0163810DB1E2C3BD0D21640BB012A3F062A3F067ADEF83760570F640FC4420CC4C21218646206AC2E06FA080CF41018E81F30103E18089F1950FE00961DA8FD67A0F69F81D23F03B5FF0CD4FE3350FBCF40E37D065AD733D0BA9E819EF619DA073F43FBE0E71EB4897BD036EE411BB9076DE51EB09923A0934B80FD2974C0011DEBF6A083DD1E1077F37E1DEE9A2EBE811F585497DE2ADE606CB6F296BDB6D860E12DA5ECD6DDAA163EC4FFA3CF7FB5BE409D96F3D757F7E5348639ECA1CE02C84B9FF26C84F192573BE190D732EA2CE048569E470DCEFF08221A229F8DB08F4212FFD38C457A7E489E9E132C1A70F0318FD34B301C35AAC4FADC9EDC5224C0D929F602A1803432126F52F9396F4EFC0F19CA309D0B3A22281664C081038F136F890216A6A792A4C3030D8208171A1F4D1B3390551FE217E0584A0A2DA347C329C734C4E136B419A0799B362C9C2AAB5D13D23DEC7C3A7D9359EDB38C1F716ED685553DD0DCA0232B67D775671565A53ADACF618A55510DE29EEE3760EDA6B42E42EBDEDC585B8FAF175C1AECCD760BC756FA127B53D756C2B0736E55657D8B29671E5DB218C55846D86E3FE8E8E938AB5370FD9D43B570A8252EA3D2A5D6D394385503422BB73AE835F19D83DE411DE4E023DC414A9A6E39AF593903E86EC900BA5B3280EE96FCFDD387CF15460EC03FF2982FAFEC8B792C47F2755B79997A35495B26CD8CA3926567399DE538B51CE0C6398E8047D21C9ADAE31F8F1F7E6B6853296D673C9DF138351E60B733806ED20FA09BF403E826FD00BA2D3E806E8B0FA0DBE287F4316F9AB997379D67B920CFB28753C7025240EFE5D006C4B4F1454055B43D924DCDE3347E4782B26D97660B66267C3B2BEAACC8B1159D4ED7D37029A55B4BB924A311ED7DB07EA187D88884338C660BECA76F9E4AF7BDA0F384CF423A630B14E1218B997C99CA5FE2A051DCA506C57406705906703A2EBDDFCC02FA1DA22F0AD17DF84205F4DEA9434C67CBD3A26A1E13E08E18491FCBD871D00D515FCFB8B38BCBB20B28CAC12B7887EC1CAE9B99C9756704176504D7601BB8862F7C5FC357BEC14BDFD7C0B56F879686769F77DAAC3621D1CF08FB5BF532219E44D86B6892C6FC3BDBED6CF7E40C11BCCD75C85EF5A69909DF7496795196098D8F2529E02440637668056844632A3411C8F8A0D911C0115DCA43450D0DA48263673B9DED383504F0398943F638B7CD0CEAB6B39A8BB21A688045490127011B1A3466A243BB41DA47779BBF5B5EC3B2B3B7CEDE0E6C3CE0E37C87ECD7DE36B3C1B79D9D5D949DBD05DBD95B78BFF6F66033A9B7F9B53D2677A756A7109258C0FBC9CB36A9F0ACA1B918F3EFECAAB32BA746023E2B7EC8DEE8AE9979DD75567351567307B69A3B786F740736B43BF040F1EE60BB6577AB2BE1280D04C4D9424EA022E289FE09CD999FDE475C6D68897FE257982C13E491A53C8D275F236A68A776857656DE59F9C9992CF8EAD521FBDFFB66767DDF59E64559E63DD832EFE1FDEF3DD898EFC1C67C0F36E67BE0DA8E43DB44643C26B3982ED2E700E7115B308F06697F293B4BF1477A64BEA1091B72EF2CBDB3F40B305BF0FDE743F6DAEF9A99FCBBCE962FC896BF022DF92BD08EBF02ADF82BD086BF022DF82BD4E0DF1DECB2C5BB2CEE0FDA7DEF97E61EFC65E2CFC4630B1C521234347760299D77E8BC43E71D76FAD813190E34BB8ED8DD46BC2473873E120A7C137500BDEBE80EFCA859800541D719C00519C02310A08FC0FEEE113AA705DF0EEE43E7D97DB04887B36194446C2186AA33BC3A3381D13C2273E661393495CF2A3633F11AB69D07E83C40E7019A7B80430E7A2DC286F6BBB0A11767FDE09861471867F4A0E6D64A07DD75CF9D81EE67864A4FA86B6B16ADB6DF45ABBD247B11ED0D1E3FBE01F769FD37079B14BE416C48F89C8CB29D0B44A351FA6EC2503E9CE0D35802417420CD2E9599B3EFACAAB32AA72632A87D1FFC88FAA286ABABDDE2EA6559CDC1C2D7F67B48FF76EA2273E6329645C44684378B9001E0DF41FEB2207F3A4EBCE10E71B7457C59886EB0200D9F504017B11D5A019281FB92F96AB41F8E5914A431C8195A242F4438741A4A04909834341763FE9D5D5D965DC1CDAA6DAB3A646FD42C426EBF8B907B5956038EB2D98747C8ED4303733AB482DCB1DCEDA9DC90060E0EFF9AB3EFACEAB2AC0A6E546DDBD401FBA2665D51D7135D94CD802D001CED191CECF96041D7F331D1B3153019D688A239E36C489BEDC6D4B3ED4CAE33B9C39ADCE9746A1647E3AEBBA37197676DDDF3D5C76DD0CD1E3FE8DE3EB8282306876F07476FBF39544CE99BEC09392A9732A255F0E7CD41D198F86429C68976AF58C38AE82CABB32CA796753A5D91C5D8F2A61B5B5E9EF140CFBA1DE1ADA8039A5BB34748BA37482ECAC4C04F22C05F20B985BFD92A48A086797B0D2FE51A5A8A3BDB94EB9498C7541EED98476C12E140B4381B06246C761FAA926367D39D4D5F86850E4EE73595668FA9746FA95C942D439F7C70874EDDAEDA14CD9288B3850CBABE59ED60CD4E99400AE8307F51983F1917DEEC0592EE01928B8233F86502F8F323D0A70CDC19C03A0A030E273E5DF2199B3044D33B4E49E38785EB9876E6D3998F4363189CCE931BCD5EDCE81EDCB828838146E17787CE6C1F54B8E8F5FEE732E153F954217AC15132244FE9BB85C90B9E360332A0800EF31785F99371E1CD9E5FE85E5FB828381FEC7581777A0F4BC4007C81389FB366E8ADE3DAA1FBA2D07D2ACEFA017B0BECA30FBF3E7A38C24F18F550A3151F1D9FC342DE6B00796F7F90FFB3AEA81AF23B4BFA7B3BFABF098E7638C803CC400E5B54D4ABDD06DA431AD328598CA614A51B7A8DB19D67D481BBA22CD53501A1F1B96747DF145AF630878233C682171E529F06A8E1530D7A4E1D3C2BCA7A441F44C5AC80F188FE93609F8E29B144D8C960D5029C1D1AABCAFA230EE41FAD0F4ABF0871DB2FE53359C629E7A31D5DD8D840A3D0C36BDACE0A2ACAFA482332928C7E144A6B1DA59BD2F66379C9F04914B797B27E16AD4027E16F389C2478D27E793F79C908AFDA2D8938B1B3FB2FAB1B44825518DB71FAC0196FBDEEB2909FA9DFBE920F37DBD277230977E8536D0616DDC8A2D21708D6FB71707332A262382C456AB9A8DF59280F7ECFA77BA998286DB22A4E31C10686F31147DCA7B3BDC89D95F5A3F824E628A37D0CFCFEF8962CBE498D8401DE4B1D770BDC774503FC1424FBABE6AAB87D56B2D6CB5F646F08EDDA1A1D6659D3765DDB31746DBF4E6708CFD05ECAFA93F1785F9391F6FD96E0EB313E6DBF420CC743DCFEC8A39B529CCC94A2D10994356DE7778FC1EF3EE2D0678B3D16859ED812797B195BED7139E8A709165898E050F42D5402600F4B6B739F055F4844F19ECAFA94044312EDA19F5908CEFB99BE113E8AE87C2FEDD58DF40D77FC522FF19844B4C51983C5F984EE44C251F45B1FF1C2C7ED8FAEB3C10AB245F59F530F71E1AB97ED3B6B5954C8823D78EADFF1645F959245EDA7527B5C631DF0E904A36F7898F868982CA3E4DB31F642C7D439B4D423427B0F8BEDE9433F8FDBF51FEB61863CC1B564A1F82F9F223EA5E3ED88635FA50A8FD67E99837D16E4E3057BA17B284C7A0234C64B7F2F5D0F8B838B1A84BB5E296AF67EEB9AB6F39815658D296BDF0492183F63CEA9DCEC5CF9CA3D97D979CA13F094E7ECC1AE2D960CAEBB3583A318F3FD9B46F1F4E3CED2B3FCFB9106C7B161C863BC986D66D2EBEB6940D8FF12612F91ADF0C71E462CAB6561449F632A7C8C70D3FB2A31D8ED1BDAF7D67E40E59685BC6FB7A7C29270B18725E9FFE025A768497D0F876886C7C413E8C148CC4C7CBCF440EBAF9A7DE9671A4D280AB08F67183131688826A218519A25E36C5BA7FD3DE263EACEA0EBE1ED77888D624267A45D77780CDDE16A095D9AFB136B7FB1738FEBAAFB3A7AD3704BAF1BF1EFFF8860A308B91969E7AD8EC15BEDE75ADDDFD9D2EC5E5615F73B8CEDBCD5C9782B8BD0205D3410136F859297E17E3CD65E4ACAAF95EEA3C48D229F59449FF6A4CAFD949557E67ECA3C3347FB6F3C1313FF63BE9C7EE0C9B3C58595EEBECAF10C47E5BEF07E768CF207075A2FEE37B6A453BC9FAAFDCAC2318948C8E9724F2566D7DF11FB46E334D094FDA1A43372DEE7EC772D2EAC74F7558ECBEF760B96173FCC3C674F2503CDD180D3B1304FD4B30AA8A870EAFC58D5380BB43EF6490DA05893BD0FCB7E0DCB7E0394E61698FF0628FE2D30FF0DB0BEB7B0FC039838EE5C436B01037F6721157017B6DCE8759C1DF2CE275494F500B3930718CE1E60287EB88165BF85657F0BCBAE4647AEC9AE0643AEC9FE0E96BDF706981FD8AE3D60C3F6802DDB03366D0FD8B63D60E3F680ADDB03366F0FD8BE7D60FBF6A1760B6CDF3EB07DFBC0F6ED03DBB70F6CDF3EB07DFBC0F6ED03DBF71AD8BED7C0F6BD86DA2F021340358AA010058A641F4D6D3522B09E1D456CFBF082F6D0ADF1A0E7F387C1E3E0D32FE8F18FC70FBF3519F6E41874CF85549415E2337B2E04FAFE5F1F98FF1A98FF06967F6FCF977CE09C8D688AA18C51B2B10F348C70389A2A78FF29F45E7D66BE2E27FAC29268B45D1924FEF8BB6D26D1CCC2BAE85CD893F8F5C3EBFF2A54A98AF5238E2624CEB1CEC453D8BEF9EEBB9E5AF79D5A56577E34A5DC27A17C443A7D7848BE0A8776AA50266F0D9D4E313A12888AEA8AD428ACBC2DEC94963EE341825412E92F6778449730FD19B3D0AAB29A1AA4557341F6A7606F157BD44491C5AC3A8565B9208AD130DE9F02C8784C66315DA4600F69843CEC331FC7A1180F9868C5905EA7AA2A5288FE4C4538A052E762E810C68DF459203552E58ACA4A8BC5820FA8404ED270B233DC4C895A7223456E29AD94A917607F0A9D880E3DA668CED0827A3840948B1ECE630B1CA617A56A356A48AF5369152944A7A622EC4FA9341CB32890BD18460C794220D1CAE9CFA9894ECDC8752AADA08468D45080FD2974C6049B29E1F18221FAE28949189DA2803C79498823E6C95F5C6E5D1B41B609339DB28DF94054DF48B88337048F9D3441091B80F2773938507B9940FB53F82A68BA894E0B39756A5B658268A6C8768F955F3D9330967EC84403DAEC5A356C738274A12F607F0A910714C5249420E28B6144C4C45474897C1ACB25A824A2264A3267A1535C0D35449900410EA0E04D1748450F28A6A1042DC437B9C247E4B503809E4D3955AABB924923AD1B8B7500E5079267403C8A855038F1D28D7418BA6B5954AA5B4FDD48CFF582EC4FC18C87984FB3052C1F0F993035218D51976D40AB5369191944972645EF4F89EBD75A4C94A6C9AB53D23A1B44293AD6FB534284A9DCD831D14131AB4E05592E8806348CF7A80032113F8CEAAFE6D4563FCD542F610D6750FDFFAB71E5794CE624448B90781109E56888CE8CD65FEA0875AAD1D24070525BE8FE50C39320A0CA742E5DBE600B23F519916B95584E0952A59900FB56684478B67110F2591395D63328576A092D5CAD0642B4A5D8D546E58F2C8C310D49B4B91635F409975FC973AC390CF01727D979009E6D11AB15945CBF9038E3B7DE3CDC6E8B2ABB8A0505E5E977AB5AE0B19B58C347BF0D58E0A8CF56C7BB6E5FAC584C1D454D899B8DA502E74D4A0D87EAFD9602DBEAECD0B2D61B12F5C5AC73424BD85DA9AF2F6537774D49D50BD885A2AAB3D79455B9B25B28AA32774D498065CD42B900DA6652E4D7F74CCBCF53D594BC5E222B305F27D4D1EFAE2D1599ECA6D670AA5D6C2970AFA5302DB166BDA1BCE01A42D3F2CB26E0E5059751D494583E3F2D14559EB5A68CEDF4AEC0739B54C363333F2AB0D8A4D471C8A618450659420D7DC938BCC0AE245F1DF7AA016AB18CAADC4625958EDA4ACA2ACD5F539A3C15576039D0CDEA543AE4315F284F8E03384A845793B6BC52EE32D132ADA1A82F313BF5A9639D25D5F278A3257F63422974FC228C585EA4936729799C7A9144D420BD50AE6D1C33B2DAB2F58D64D24A3DC446249C61345B084F344E076F5474F0F384CF423A13C3F748788A98C937D944E3043A1FD6884BAD647D6D49C543CD1ACA0C486248EF3131E88F18493BD21D79F4BC4DE86A4BBFD6F2BE36A144BBFDFFA6FD919046CC5C56B2845858AEA72F02405E2BCB8DB6881B134A543E23D033AD24A82DEF56CBF4D6841269C75BA5A3B35A8ADA12DF6AB9BE35A1CC372E93185D5956128B79E393974115EB265230F25A59EEB445DC995022D91B6134A6A1E887D842EA2E229E104A4C2BFCD4E5AF502AFE895F61B24C904796D26B8469946D5DB9B63C6BA5BED7967B6F428972F3B379C416CCA3412A8E9445FC913A467D01C6C4B572BCD316F0CE8432EB80D1EEE891E6763198F83359CD0349A02F08CCA44E2E6DE760D037A4776A3494C8A0AF149950221A81C870D82B5312839588CC45B7964E8275036423AAFA924B47367DD3914DBF91ECD6926BC7537D83F154FF8DC08418B492D17ACA42A3513A2A1CE626854CEBA921D4B592E8216382981ED22FDE2F325164271789A113D7F68C20F25A59F426636233725C248613F3951E81336B1879AD2CDAD155DF6074D5BF46FA097048837A1706A1AE93445B05831AE4C777190264172ED7E4381B6A27FD4654F52597FA9F6B53FFA31D501A8C276FB24139957A8F56E3AD8D13127D38598A9A544EB1A01CEA252AD5C68DA936B483568331EBAD6C412C3A4F6937C2F6C5683E088840604042AD0BAF21A82B4F3B603518AFBED5A16E8A6649244668722CB6690CA6B537187D9D34DA01ABC178F56EDDFFE170E2D3259FB18918F5AFB65FCBA633F53475A56A879B06A3CDFB9DF5930CDFCB844FE5B01EBDE0281992A7748C9FBC68D7DC81F475D268879C0623CE777A2988D0E202713E675ABEF54435E566D1903EFCFAB87ACA05A5D7B50B25E9B399F11EA6B35C195110A537B5CB98ABF9CCB8C758F4497848652448FD28B72CA311FF7286C61C7443C16D92198F0A318CE5D0D9D736C98C870EDDDB24231EE508306D73EDE07A9B64C6A35CA30623DCEDEB67253C344108F43C741DE226C58883AEABDAA41871283778531B2F879629B2CA81658AAB4268B80A4790CF58C33E1750AAC034975AC34989D250E0A5A42BDC76CE80E8CE56ACAFA0BFDAC9573863A1BDA79E3BD3527E537D539BFC898E2B08AFF541981D5E258748AEF2D5355045DD85748D624077D8735533BDC5BE5351937329A03234CAAC384DD340A1E697D575BA6D78D53DAF02F865F75D8DC38EE8342DB9ED76D0DC69D7E8BBEEE67BAE761577DF776A517210A98E53DBFA30BDE2AE5152A3DBF1B9FA42EFC7EF28017200AB51997B577CF11ABC89CE6B2ECF5757BDFCFA7C95A6F567D0A025ED5DBFFA5BF2263A36B85F5F5DFBEA1BF655BA2E3F89D7A4C4B6756E7A915EA3F44677F0733A80DEC2DF5102E45462A332DB56BCE1657B8DDE9B5CD3CFA90078517F470380039A4D4A6C5BE78DEEE36B5AC0FE5E7F4E3B5637FB7774D5F818ABBD34076AB9B20BFCE66D661402C0443F754100EADBA9EAB8AF8D046DB74DF1AEBF46FD35010172F52B0F09B05305FDB1E61A3EADAB427FF35FA70F831801F9CA544709D8D54CF9596D138E6DEB08100C40A3B7A6A10472356F104C60471BC0D3EA4D4BDE5B3B18C70CA86A8E668107F4BA01871ED0350EE8C481A51C7B6BAAFA0803556D048C4FA0578A7984025DAB985D77685A72DBED60128840D300E0F805B9FA432218EC54DCF4DA07B8ACB695AC0B54A0516A6D3C835CC5AA221AEC54A4EC5E4B2DAFB695A2095CA0D1495D78835C352A021CECD4A2E49A4E1DA7D6F5518863A0534775B0837C1D4AC31DEC2A437BE5A8864FDBAAA88D6AA0D10C2C1242AE82C6B11076EA6B74B70A564AEB5A350B79A0D36D836009F9BAC3C225ECEAD9FC7E599312F7A37383A808A55A874654D068011053A1A079C3DB76CD4A75A5FD757CF74DD8844DDAFBAB2FA3290970F6E1FD95C83222F338C1FEEA998475C2EF783E973BFE5BCAECCBAB2F733C1295FAF1BF7D79FDEA39F043FEC3EB691CCFBFBFBAE2296BFE5D404711E36C1C7F3762C115F6D855FFCD9B7757BDDE55B0E27135E2BB8DF45E917653921898E009515245D142D29F69C4E38F38C6432CDF03F8D10B0AD9F241224ACE2DACCBCAC5812836E5FA18C33ABBFC3B3BF150F2DC849ED5568F3F8BAA05248CD35A92E2698102A120FD32C23E8E9458FFD413D5677E1284DBDF2A18CBA9432C5FE4D8A55F7D2972787FA548AE6AE9AAA02605AFAAD28D9AA4D2AEE1CD52CECEA069AA88DB6B9EF4290EB585D28FE67CA887D6239BBC30A86CC053C96B7DA245E1A53FE8525B3FF90448A17EF2E3D180507BB0C5051C4D181B00D38C4D3B10C59C233E8DE55EE82E939DCFE6BC9288861EE30AB2B65FCD3971CCE2215EE6196D3E426A87C63844E961F47CF5B6DFC1DC3C36D2724BBF83B8CD23362EB05A7D04F1F1D84B814DFA0DC46586E31817F8645F419CB0BCF8A4F0C1C5CB50D558D26867F311C4A7D05EEB6F202E1AED6CBF823815B4B3FE06B00FA6D1CEE623884F413BEB6F202E1AED6CBF823815B4B3FE06EAE27607DE4A37577536B49CE7327D936D97D5EA0BA0E5B73305D5652B49C7D371D69C4F74D287C2CA30E94EA11CDBE959C794E5C9D30F105B584D62F3B6B0FA06B08570AC88B1FA62CEC1A7E12CCF61F505807C2EE6810AE2579FF6697F6D788513B4E9F5995917B65BC2CBC0464B298FD31667CC43F2D27A9EC9F62B0031F2CA242ACEDB77BF83B925C190445A7E590A4453622652906EFBB5B3D8BD5B6CE5B16C17660C29C0C0B661ECDA317816071A23DB7EDD6337BE3D355C14A890D888AF8CDE55CA7795D84C5E8D5FD1241FC2B97443FCB69C4B7613A115BFA2E7DDC4A59471EABC49E74D3A6F723CDE64E7AE4D2B1EA59C7F13AF52C5ADF32C9D67E93CCBC13C4BE5753217AE055280816F81B16BC7B908910236D198732EC19CDF305926511C600D472509606A4928D42334887DC5DA761300BB4F01F6A96269EB6F9055D3503455CC8B5BEEBB099035D41712BEA4F73DF20BA99BCF00F3C75180A399C26AFB15E042657C56C56DAE3E9DBA8373E7C04FD05556DD0175E12901FC0D1C2588DB71AE0EFFC3A2199AFB58DDADD9FD0EB0A8698CF8948E1513D8F90CE3153219D65D65B5FA6ACE69D5301ACF9F4B00ACA8937082F95457532509CE930498FA7A9E5912A0DE85312B74A07AD875F003F920F39BCE2E3C52E3D20CFC9305EFE3F45623968471A4E068F3D19CCF134BA2501DB56D3E9AF399E3B93A79CB3E0179A0A2A5ED7EDFE78EF788E1249EB208A57A55559D4FBBBCBDB9E3F249B95BFD2D7AA3AA729AFBA16AAEC7E9813ACF51CEA1F31C47E839B250162E9C839E9581FD97111EA789BB3B3013909879C2F369A61E4A52139E9A95E342E2E599D9192D86043BB1569CD86F393F1323AEA23E7B4BCE2AAFB3E47C52039E458351923A2B3E612BAE8BE8E3C2B2816518583B98633B1EE03897E8433C8FF042D8142DDC60DD4980F07B593D7E251F9AF06427BE50F96A320076EA79B86D3B65D7444D83489D41247919AAE2EEA634E01825BC84639AD280A37C39A584E52AE9327C5075E02AA7AE085414C42301195F926312DAD08C50B65F619CFE21C322A3F4238C8F681C1415F622F229308EE29F9EE126E132CCB924E299533B362B0362C0A61C3BCB6D62B911630147318BB1AF5B88D3244379FF43E3E94E23EAF817B29CB53D9686C3736188A6CC0D2CD09CD525995E1A4DA13867DE7C052CA1E321C27CC87497E4D43418D7A9BC845464987D06688B45F2445F99909A64306F8DA8F994B376059B208F2E4CBF8C9981A997939EFB52DDEA055AA241773EA50147CD8ABB9AD62DD59DB0F1AEE391BAB0DD125E06A65B4A79499DF25C313310EDB342FC0CA256943007D53CEC29AB4C85072F2BA9FB0A75E105C54AEA6B85BAF0007825F58D2AFA0D4CF65B95FE16467FA356FE0656FB5B95FE16467FA3AAEF06A6BF5B95FE16444F15F129487A65C4051A6671A5E138A8DDB8223707C9CD15A57190CEE68AE47390E47345F23948F2B922F91C26F98D425D78B6BE92FA56A12E3C685B4D8D54BDDD161F6DAEE4F056A12F3C875B4D5D28FF2DACFC99423F83512BC4203B537A0758BF38BF53EA5D7804B892FA5EA12E3C005C49ADC4D99B8362ECCDDF29D485A7832BB5C69563FCE907087D5C60108338440A6222106294C10C6C24235F22CF3BA9C243DAD5F4052707B3D5F41DE63C83E2CBCC351C545F977E017150FD5DFA05C441F579E917404FA348C041E573A5740E2B5BB17B0EB27BAED83D07D93D572C97832C57995A8066168AC301F91B65031CB4DD1D2B2D1D835A3A565A3A06B574ACF48C31A8678C7F53A80B2F955751AB57A540252B088D41088D1584C62084AA574B61774A678ACE66209D61C5B962906FC58A67C520BF8A15AF8A413E152B28C720946305E51884F29952EF19A8DE4A4063501C63A5B1416DFDACB4F533A8AD9F953A3F83EAFCACB4F533A8AD9F95B67E06B5F5B3D2D6CFA0B67E563CDA33C8A33D2B7EE519E4579E15BFF20CF22BCF4ACFF70CEAF99ED571DB336CDCF6AC8EDB9E61E3B6E79E0AB81E0C713D15723D18E67A2AE87A30D4F554D8F560B8EBA9C0EB8190A71E74831D6E4B94156BD0884B1970C1C6B9EA14B1079B23F6D449620F364BECA913BD1EC86AE67D75B6D3D75ACDA156F8576F4E3859E0D7B23259DF2F216C67793FC46EDEF148498EFFBD0CFD6B602EDADB88B341F31BF2B9A8CD9E91EEA4D2F62B88130D91CF441A0A49FC4F095F6D1E5029E9012779EA5470282944970572EA83C7E9F50F8EF4EAD1660020213B312BF7D7898A29250D30ADF002A1DB345205D709AD4B07E87DCE2B781753CD39FF43863282DE828E088A852B50BA704D3260381027DE12052C4CCF39CAE72E73A383422A608843B868FFD1B494B936034CDF43FC828B7A5E7D85E94038430DB77C0AE4F8448843356ACDE62310B1E5586D88D21278827965DAD13254D3CEFA6846D5EB934E7A7773FE267D3C845B3B3D7D5A9CE610D4EE7728374DD0B55C8239BF36C2F16D083562AA69A73E62BAE82071D5EFA1BAF306862518FB03637E2D8DFDBFC594338F2E598C622CA368AA1B06BA0CE768D3C7ED1B3B8F73741E67D073E2568A6C0C7C878EA84CB5838F797DCADFC7BF54545A1B75057D005B411FA82BE803D80AFA405D411FC056D0FFFEE9C3E73C83D597238235F2982F6F958BB90947F2DD2579CD7FB542B54C1C611E54869141003976D662466F6B2D2A39684F1847CAB1BCD597F3B2B6C73F1E3FFCE6CAACB4CCCCECA784B4331433FAC3762B0375637600DB981DA81BB303D8C6EC40DD981DC0366607EA16E700B6C53950B73807B02DCE81BAC539806D715E84AB7AE3C84B15F81839280DD565F8A6C31F9416CA2FB8C73720FF780AE846117949FC58C016E138263C4EC3C924285B5377B48CD4A42033FB68C0B63320337A070654B09FAE7B510CD0D57A4AB305954B5E51298E7DCFCDB9F7101B917086D16C81FDF41D35E91B17749EF05948676C81223C6431938F61F84B1CB88997E4A05C33ECDA97723158B79AE65D841FEE3BC27E818F119635549782CD7E019C7DE822847A8936FB745EF8CC967AE328F158C2E38891F4F1881D7FE70AC1F092CC30DE84EFC5588135866D17E32EC2CB5F3BB291021F230BD0505D0ABEAF0BF0BE06A2FBBA388AB9862E575F174CE41ABA605D5CB1062E595F17D6ACAF418BD6A7606568F79DA3CD4A0C127E9FC799D70FF124C29E2B736C5CA099DD5AB0EF0CDC98C31918A7ED8ED64574C2378EACBEC0C7C89835549762A36A5CB3D51718070D0B288F829DC3C29B9D02C2D188C6344A4820E30B67475D4774290FEAB8023FA00833BB0031EC4CC6988325DC6D0F395C449772EBC8AA0A7C8C4C47437529F6A186BA5C7D8171D0B080F228D8182CE2A5C85F18B7C162569E828D20EDEBB30EDFCC059661665B308E9DDD197338B8CDD81EBFBB889EEDAD23CB2CF031B23E0DD5A558D8DB8285BD055AD8DB62CFF616DAB3BD2D58E9DB739B2CBDCDAFAE31B93FB4DABF4F6201E3272FDB26C23357A6D0B840339BB160DF199731074BC3B03DBB7D119DCF9D238B2BF03132240DD5A5D8C75DC13EEE80F67157EC7CEEA09DCF5DC1C6EE803676571822DE0187887785D58FBB73DB2EBB5BDD8C4669CC16CE16727A13114F741F682EE496B7FA563B4CE29FF81526CB047964298FB5C9F7CB5CD9A85B29CC2CDC75999D7F30E67006B66D7B7FEA22FAF07B47FEA1C0C7C8C235549762A3F7051BBD07DAE87DB10FBF87F6E1F7053BBF07DAF97DC1CEEF81767E5FB0F37BA09DDF17568AEE414B45A760A7888CC76416D345FA28E93C620BE6D120EDFE64DF27FE48CFB3BB32E786C599597D63E69D7330E6D01976D6BFA90CBA2180E25ADE39F219053E46CE4043751956FE55B1F1AF200BFFAAD8F75790757F556CFB2BC8B2BF2A76FD1564D55F159BFE0AB26845EF40BFFAAEE057DF9DDB4D907759801FB4FB8839DD7DC51C31F167E2B1050E29095C19BF65B166BEC2BA90CEB5185077AEA5896B2978966EA091774D8EEE5036BA4279B13728ED5E7EB5792D7750B8BA09BBB9790280468EC233681819815A477619B07E54B0F50882D6A3D2C33D827AB847A5877B844D8B2DCD62D05767F67DD8C4BEAFCEEBFB40F955F2B3336A94446C21469933BC3AA681D13C2273E66139AA5C6267360F2CC7D02580B9761EC380BAF31807F2181731327619F0B4849999F7B8F080A77611C94E3D60EA6598DA7E3AF736BAF6AE633FAE192E55CC95761D9B6A6D8EC2E316F91859CCC586C715552F8C1961C169657E0D0B288FC2D0EFCDB94D17DF2036247C4E46D97604A2D1287D6B61281F5BF0694C221C0BCFEDE80E5DF3F2CC2CA639F7CEB28C39585AC5407D3B7AA07F3BFAA27B1E574BB3CD56662F76615654BDB85A716EEBFE3DA47D9C1A2D325729C362446C44B8A3701E16059AA1D582FDC5C0DA6A0DEE225CAEAB0DDE663BBC17BBC52BAA5E00277885B8E8B5816E5B10149799CF6DB02F83D4F23899AF86C6E19845411A569CA145F24284BF5CBF084F5C9942E302CD6CC682FDC51897E5E68903E3B434AC8BE87C1CC5EE2DF23132A4CB8DDDDB2F84F6EC03437BF68BB17BFBD0D8BDFD4278D03E2C3CE829203C77EC757BEA35A4411B477A9B97676631CDB95F8C65596EBB3BB04C4BABBA849EC751C7D3A8DFB9DC6EA7806D20B40BC80646932E049306C6922E84923EB730EFF9A8E8D93A920C7344D19C7136A48E3644E0E518195603AE9DE599D11FDAF254F2AE43532DD7E169B41266663678E1A7D1BAE7AB15FAEEF96AC7A6EEE8AD85464F2D5CEE4B0B85A8F1C0A0F18598F1C090F1376A17787366C1AC6FB2B7E4A85C5A885621A137672563E293A518C7397EC2DAAE4C2383B12CA1B32E337A5BEB52C9BB4E47B54E87E3CB126666F674D9E34BCB5364A77E2DE9124CCDD1C3278DDE3DB9DC674F0AAF2F001F5F28BE79027DF2E4B6F860EC2DF4C15841A01AE8EA1384C775518E6BA81CD74539AE61729C80A1CA3546CC632A0F5DCC233689702080C786420647779240451819388C6167FC66F49DE9E679A80CBA3E3EEF3A1C3D01D3E80598CB7D00A6F04405EC858A1380956E076C8A6649C4D942C65CDF2C433047074E6C4A3402AB15FF4BC1B50AEBCEDDE6EDC2D1A3278DDE3CB9DC274F0A2F1A001F3428BE77027DEEA4F02202EC41841300F63ABE000E273E5DF2199B3044D37B4089BB9789A1A51899059867673566F476981FA81BC0DDF31B8ACD397A7DA3D1E31B97FBF64621BA3E2CB8FE09C02ADB2914BE6FBD43B84CF8543E2B885E70940CC953FAC660F282A78E106851A21158ADF85F0AAE555877EE366F178E5E3A68F4D0C1C5BE73302804DD3FB798FBEFF4CE898851E802713E678E60072DC6089670A697025B15B59D37CDC1FE017B0BECA30FBF3E7A38C24F18F5909BB51113C606D0366353DAFC9ED2FC1EA4F1FECC13FF09A255664D7F82664D7F2A83803F418380BF098E14D0A55FCC396C9B53D5603EE5D8603CA4318D92C5684A91DC297388E36ACEE640AEE3D30E92151FA47540A5B44AC7FF19D4EF3747923DBA0F8BC558C83EC443EAD300B97A63C08CB5391A6B19B503C747F4C1F7F30CB24F101EFF49B04FC794782AA79D840EA8AFEA80EA1299CDA1B837ECFD1107F28F3C8BCD47733E5F621C2B5CB24F00D74A96529B8A7F5D7FEC3AFC57B5D8751399B68C99397A21316AADE0FB914664145316FE2844CF3352921AF02C1A869204308F64F824288B1C7309E6FC7E166AA793F0371C4E123C51781612CDF9FEE42523BC525A1271856F2111E21ED21B1C82308C552FB19B62CEF103673CCF69F505C6E167EA932297D5D7D37038550E39E1458F9C68757458B7E5B4CFB5E874F7D6EBFE9CF87ED1176CBF029A794E46548CEFE2A5D2D43BDFCDB9FDCE4279E2753E2D0AA72481784E5694453351D3004E1A47DCA7338D8BDE4D00F3FB517C1263E5516130A34B078CB2BE258B6FA275711860CD70AB90DA8C73A9F0A59960E504F829484AE4DF4D6BC2B552764D96B61CE17977168775F36E0E0694313377F390430247E2E67F9DCE109EA122B35C0260459571651CB6FA021ED16A47B3201710D1D0637CAA58FDE62B402286E32156FBC1F5C76E647989234B379BE365CCCC5D0E64A3FC485CCE230E7DB628F2DAFD0EE5869ED81279853EBE9078B889F54F132CC649131C0A7F48E55C5799021793210B0B739F055F4844B1BAACB09300E5F729098624D2315CA7405CE842385E8D3277BE03E4237C14D179518BB9846E24E7D239AF4CE93189A8CEC456DF8FCC49BBDC986CBE15B9B7CD47771EFA235EF8581981ADBF9973C97A28A4D66AF73B606039F510178E6CA9B8B8DDEF306E210B54F7B6F319B00E81275AC976BFC3B86924DBF97CA8359C019F4E30FA8687898F86C9324ABE2968D5A4EFDB071FA3E784F70B87F59A2EF77A1A3D45584E7AEC8EF311CB1DFE250BC57FF914F1291D17FB4B6D96C66508A7505DC22A03C8CC354C070D39F978C15EA88EDB3605664A688C977ED196B2CF3047CBE2A0E866D38FA7ED724E6826EDE8E9B93266E6EE666F7B3463CAF2E4E907007093183F63CEA9DC3758391005C4BA0C4DF9175D812EBD732F9D5B70EA16AE5D4EDE8ACC8CDD828EF4D84721FFA6513CFD58580CDBF9BCCFF57C1EE3C54C991AADBF9973F925C25E2264F7FE50BBEC7C0A74910BD1E7980AFB16AE4CB7D2954B06F30E763DA596BD9203E0FCFC80CA454D79565F415D2E05CA310917EAA25A2EC19CDF7FF09253B4A4BE874334C363E28986C2480C497DBCF4148F5D9B19B0EFF34CA3094581489A61C444F7174D0453C15B29B3322378A15875AB9BAFA7DD656816FC4A96FACEA0D3711300B28497719703090579243DCE6A71509AEB1353D69A94A4432D5EB9DA5576B75560BF137C0E43D583DABB9B607025BC8CED1D1216EE48ECDDC5A1FCBFB3052A05799BAFB0959C8AA19626B9B3F78BB47797376E9B5FB2DDDBBDDAB565A3E465A8B7F9550AD0EE8BEC763E375D662AF0D42437A8F9338BE85349DDB33468ED352C73094D35A0E1ABCD70AA5EE7DF7826E65ACA25ACCDC7D3F05E6730C7717956B6F951D9133C29BB327216079AE56B35ADE96E5ED5461E84EB6F6C49A75823682E01704A988563129190D3A58EAB2619A2D7F49E1662DF689C5ED857555B483E550FD8792E2BCFE5F2C86DF313B72778E076E39D4A9CD6E9AFCA74766E828113B1F358767B9C8E8501A39EDBE83235AC8D9D403DA3767CC2A3324080D07E52E2CB7C02C597F9A404B7FD048A6DFB49797CEA13E8EDA94FEA23759F608FD47D525F19F9047B65E493FAC8DD27D823779F6E55FA5B18BDFA04E527D813949F6E55FA5BD823D085A7C70EEBCB8E3EE0CBEF2CA4C26F880F6EE28057F033705995D4EDF8A907C5E01E40F6F6A0E0ED0184B70705EC0F20AC3F280F523E801EA47C50DEDF7900BDBFF3A03C27F1007A4EE2418984F7008A84F7A044C27B0045C27B50C23F3E80C23F3EF4DEA87001BDADF8A03E57F0007BADE0A1A702AE07435C4F855C0F8639F5EDF207D8DBE50FEADBE50FB0B7CB1FD4B7CB1F606F973FA86F973FC0DE2E7F50DF2E7F80BD5DFEA0BE5DFE007BBBFC417DDBF301F6B6E783FAB6E703EC6DCF07F56DCF07D8DB9E0FEADB9E0FB0B73D1FFA2AFEFA30FCF555FCF561F8EBABF8EBC3F0D757F1D787E1AFAFE2AF0FC35F5FC55F1F86BF6B157FD730FC5DABF8BB86E1EF5AC5DF35D0FFA90FD7ADBE8038145C0802B6A1FA00DF03F01DC087C233800FC057005DCDFBF5E364E07C3F62CA36F8EACBD18C913F7F183C0E3EFDE2F075EB4A8E06E3E41AFAD291F27905F256C3CF035FA9B699290ED427AA61B3D4EE29F92CF903E76C44D3807A05B34B36668386110E47D3D70696A521528D679B4563CB9EA2AA023FF488A309893546AB5535551C64C6846A3CA4D4D5A6F826927D614934224D25038BF4230BBD34FEC3AB01FF94F8FE0FAFC7D857E32596D6F7FD95B6EDCDE1319A52EE93503EED983E72209F88413B6D6B00965A162A7474040620AA29C712523B8CA8A7F181405CD5097B8C28AB56813DD4D208ED244855920C7D3AC323BA6C8C3A00B70200AB694DB0685CFA91C1D25CEE0B44A8B70ACD0844A28E4A455C96C70059456EC785208D7C178814321E93594C17A97F0F69843CEC331FC7210BA08ECC98958AA92A4203A019967B5CE83315BA836484E63896E7A82CD1A8E1520BC4154D130C164A3B72F815E5ED9017C9204832BEEE0C5BA3AF84532D02B7744D50A82DF5C891A897F902D1381173E598A239430BEAE100512E26621E5BE030BDD40C81A3312B158F55840680342CF7B810692AF40542928663160572A68511439ED08C9034FD390522D294930AC80A3A033C9A95EA128ED6683414F9E8C1E81C8B33E6D3D194F078C1107DF170281F860EC893978438629EFCC5E53961A8AF6CC657C5A9311703D43691E8A830DCA8021DA23335F1D835964B391AA27897BE397E4BA43805E496897E79985DBD430284A5864845DE2A8B01B80ABC8E6B305914EFE831E27ED818AC1E4A1ACB310C1029259405B86CF3996046CBF5C880A397F102D1232F918EA69420E293591CB130644BE4D39844384E220A4414849B8AB21A5A03E499977E5C6804C87DC908DD4CD6A898AB2D92178216E29BD05248649889664035675A8AD74A1610D89ACA72A4E83516FF92411C247E4C03E2512CB483132FBD82D3D8CD1A702B85AD9E1682D7DAD28F14A8F5725F2042190F319F6667917C3C64A2F3116A814E8A8DD8A8982C233200A34179C7854213812F107EEBE7428170D392A9F05A6732809386DF71C14727E005C225C254020288161D950A962C8F01568ADC8E6A754D23DED103C53D4EC8447C86C2A4486475AEBDC0CFB221327E2E305290CC0EC1ED40A4B4BED6F0E0319993102D42E2452494AB4174063D8D52CF43058F96C2004775251D574F552BEDD17B23F7DD164F82802A9B73E98908B680A2CE9053017BE5742608342AF5C8706826F3C5A231223C3BE31FF299251E4D78E9115942698CC9FA928F119506529F232ED73715456131A62189D42C9BAB90D997CD6FBEFE205184276485BE2DDD97D194043855069FE39190F54791E3671AF1F8238EF11073B2CAF2FA95D0C0827A24FAE1F597A5E8AB82EF6486EFBE7CF37FF4A93C97BCC9F03B0EE998F0F891CD48F8C3EBFE1B1906E4834F3117A4C41FBF7EF51CF821FF7E94F0980558CCECE3B4EA3FBC9EC6F1FCFBAB2B9E96C8BF0BE828629C8DE3EF462CB8C21EBB12BCAEAF7ABD2BE205572A79C6D688CB9B776B2E9C7BFE2E5876AE4C6710C9AE6AE69BEC575240C21A219FC9F8551998DE5FA984EF35809485CBB3567166FCBF90506E6D10EF4F1CCBE561194688A462BE7E253187873ED9E0EEAA927D8865CCC35501E10247A3298EFE8F003FFF9FBB9CE2285118ED5EA5AD5456D938FFA41596DE2107EB4C272A5A0DCD73128379EC5E386EC423AD93BCCFEEA04E3B776877E4516DF3FB41E891E71F5EFFAF94EAFB5783FF0B6D08FFF5EA8F48788DEF5FBD79F57F434BDF99E9C04ADF109A976E6C03F517714FD61A30E7884F63F9807563F425110D3DC66D00CC318B877869C101CB70A4A10CB26CCFC463233B26F3888DED3878ECC58EC14C4003DBB110D8B04285AD1A0407BB96100C6CD52058D8A981335B35080E766A100C6CD52058D8A941F472EA74AA119F651A38A87973E6D75ADDF0E941FBAA3C751B1D16E4E2FEC9F65DE9F3C00E463C7C35C17432200CC76E64F2693873C228E162927838837365F71762B8DAF807176FA033E6213E27233706319A92216A386D2E6597044312396138A662AAE14ABACE7AF769BDE691264ED6A4D3A77C5CA1D359074E3677BA9DC9B6C3D34B1F70742CE7913A8C6E9C7E5087A18B08D2F98ACE5774BEA2F315A6B15B3A7FD1F98BCE5F5CBCBF308FAD73B20E43B00BD8C49D5D0E936512C50176E8859250E85E540FFB6B7E430ADF8B09B04F97160CA840E202C77C67A7BA01179FBE90F045DE816ECE638923193FDC86853C38B4A11FFB0C9FEA668453E77A215ECD3840D3C93A355703977F583443731FBBDAD998C6884FE9D8CDB842725BBD87EC80D90A05EE9CF68C8413CCA70EABBBE648024C7D377576356E3CFA1562A8D769C1E9348CB675F12E68C492308E964E783DB1240AB11BE399E3B9A3F951CA09EDDAD071ECFA8E184EE2298B50DA045683A5CBDA8F3A5E6F531E15EDE2FD4CE71B3ADF7019BE4117B7EEE2CDDFE9F19080C4CC13FED7DD7462CBF148D7658FDEF0CE6A05A334966067C74EED3853B3433B5E7374D6A577567CB2560C8AD578B2967D240BE5219E4778216C85BA319510BFA4DB6018CD23E2C9FE79E1842FE3E11603D891A819CE9297A1C59EC9864D9470176C7038B1D9D0BA3427010890D9F90A3B5F21B4EBAECB97CCFE211BC36B3447963C443D50B4B362DF9891F867CDE7D28CCF24CC67677547647511630147B1C08E9F5FA36A20D88AD73F349EEEE0A01BDED6198F593CD2CE6A2C0F80C80BEBAEAC466445980F99C3BB4D92E5545E6071334165913C87E658C68CAB3B312FC4C2F521614FD6A28F720D6ACE381B8A118833B06F18762BC99D09EB03F59EAC051F499F3CB79A5BCD9FEDC89756E461CF8EBC6F477E6D477E6329FDAD25FD8D65F56F2DE96F2CF5776B474FEDC4B73B48C0EDDA8EDBC9CEED3437B7137E6E27FCDC52F81B3BF25B4B7264A9BCB796E496E5CF2CC9ED6CCEAEBB98DFD991DFDB91BFD891BFB3531DA796F4B11D83C80E3891A5C77A63496F69B53D64E9F47AC8D667234BC7D74376AE8FDB95CF2D4BB7B37D6E67FBDCCE783D2B6A3BBFB3B0731B768D1EDB357A6CD759C6BFD90D30ED0AB7036C6C07D8A5DD85C3999DE6B09DB7C576BE16DB795A6C07796C07F9995DDD032B6ABB567FB66BF567BB9A3FDBB5FAB35DAB3FDBB5FAB39DA37BB6F335CF76BEE6D9AE737CB61CDB3D5B8EED9E7B96C0EB5922AF6709BD9E25F67A76E08BECBA9AC46E60663926B69C51F62CA7943D3BD399F7ED4CE7A8AF8E640F159CC76681DCB172F58843CAABD1E309C6BA3778EFEC649BE258F66D46D66785040B1A229F8DB08F4212FFE382617AF2481EF5140CADF9F998C7E9ED038E1C54777D0055EE7713BB2935F602A1B934BA01B7D7DA9CBB62F50F19CA30690B3A2228164CECBA371E27DE12052C4C4F108613BB6E9E70221D8D2B7E526B43FC6237789035146EC09ED1988638DC461E690E2A3770B2E591E9C59ED1859C4C307E63F1647BBDB436EE0EF6ACD8D947B6721FC16CC3B10BBB75F1066DF444E5C99A34FD1653CE3CBA64318AB18C2CE8263CD551DBE491FAB1CE559CACAB18F49AF883C147B83F903467BFC6A0A9B6E502EDC072817660B940FBF74F1F3E1BC31F003BE4315F5EE915E37D8EE4B32CF24AF66AE5659974983C734CDA6DF3E1C8EE24566B987EFCE3F1C36F1D78CF1CBC760E7560B9E335B0DCF11A58EE780D2CB78D0696DB4603CB6DA3A3F51E6F3AC7D1AAE338F82152D1C476AEAB35E4A188BC24BE9C8520D9FC3C4E835F24285B496DB668D041F3A4A0799E4EB59BDEB63E1A3B4E9FD6436C44C21946B305F6D3A776A44B5BD079C267219DB1058AF090C54C86661713D1A05188910E287B1BB61FAD87E977C06919387DEB099FE5B5B1D6A0932D8209261E4B781C3192860FDFF1521DB8DA069725366C97138ED6AF5D77D06B197AD7B6C8BBB65E0ABBB65E0BB35D0CBBB65B0D6B0DFD68F76187CD3C180947CDE3CC4D87781261AF3393A337935307B9ED92F3D1F631379DF1B46C3C96615A24036B0E76E6D71AF6D088C654700864D4C4ECA4D4882EE5967407CBA387A5AD4FB7F3C847EB516F3BE8B60C5DCBC055928135075BF05B069F6A0DBC48FB9A5AF357D43A60EF15D80786A5EDC988A375EA6F3BECB78CFDB7B6D87F6BEDD4DF1EE730F96D7E2184C9B5EAD5FE59122F48F4E4654BD678D681F4E8416AEBA0ED4E8E1DAD7FBDEBA0DB3274EF6CA17B67ED5FEF6CC17F673B3AB93BCEA5EEBBD50D2094DE02E66C2147DC11F184BF4773E6A747F357ABDDE29FF81526CB04796429CF4DC807273ADB397ADB3975E4DB1E393EDA8EE7BE339E968DE7DED678EEAD3B9E7B5BF3BBB735BF7B5BF3BBB79B58B7663E888CC76416D345FAF2D13C620BE6D120EDAC644F25FE480FF9755676F45676F136627B2DE668FBB8779DF5B56A7D5FED6CEFAB9DE57DB5B3BBAF7656F7D5CEE6BE5A5AECBBE33C56FA2EBB478D76DF05A4BB0F032226FE4C3C26DF55264167A09D819EA9819E6597DADD3868D7602D5F088AED406B79DBA12DCCA1EE265DBBA87BB46BF747BB6EE2D172FE647B47A76F3901ECDBCA7FA4468792882DC4506E86575BB018CD2332671E9643B765A3F7603B9BEC6CF2026CF268476F5D94A02A5ECED624ED021A9C7A94A1E3457FD7A15DEAD4C6F2CDDAA3857417B8A9655FDEB78C9B2419587338CE19C21BC48684CFC9285BE645341AA5E13487329EA64F63090EE172BBE3F3C78F51DBE1F6798670EA770B4F6D43F7384338F57B48FB12135A640E4EDED58CD888F0EEBE66EB08394FD7D2EDA4B40D1CFB3528EB919BE532566BD843329448325F8DDAC2318B8234441D438BE4850827B77EF18B74206D1BA4D6183D2C448FD6BF7631A4DA86AE6D709CBE750CA9BE65789DD6B0973BFEB43DFD14D2A03BFEB45F8C5A43F4B0083D56F7DA79D796916B0B3CDBC063B671C78E33B65E3EB45E36959717CA299A33CE86B45BABEC705D4D7F9EEEBC3B18B00FF077CFEF58D29FE7A1EA2E1465CB76671BF2CF36E2DFCD51C63CBBC942C05339498D56F1CE36076262E293A5181675CFF05C0A46CFD3B576039B7D80D772FFFFD48F0B1F2BFABB88AC2DE3DE366EA5753CD65BEB374404074BE3B9BDB696E1DA5286B6EC472E11611E53B9273A8FD824C281400F1B0624EC8E0B1FBB6D75A6917502E7D8B57571695B363FCB889F6D35BB6E017F8A6649C4D942C609DC4C6659B7B9DA3642CED2B17401595B868D6D4C49EB70AC963129DBC2DDFA761A0E273E5DF2199B3044D343C749F72ECC09C0D27298769E6146BB28A32DC3D632FC615BCD9E6D2D08BFB5DE5258267C2A83F5A3171C2543F29446EE4F5EF0B44348CB08394BC7D285766C1936C71960F09DDEB11031565A20CEE7AC8345CBB038476FF280BD05F6D1875F1F3D1CE1278C7AA8D934D06B0024AF5520FD59A22D33E23B2BEA7B1BEABF098ED6F43CC0BEDF84C95F215D90880BC5296AAEE403C5CD307DCC73319A5224578CCF033865666646DCB3A16ED66A4E20046DFA180B5E78487D1AA0A6710A8FAFED1FD107DFB7D1FC23FA4F827D3AA6C4AA014F0708E7D2F27FC481FCC3C958E18B7C3BD309A7CF6419D370720ADD89F528A4D72CA4CFF141E9238DC828A62CFC91796E60B0E1E80EA2C9F049B074C6EF67A1423A097FC3E124C113373C7FF292115EE9318938B131822FABC39C8291246ECEE70367DC49DD24A39FA9EF4651071C31EA9D5FC25B7312E7D2DFFC2CB2BBB3E639195131EC90723860F73B0BE5899FF9D4998082E364C57217AB4DE0F51147DCA733679265FC7E149FC4A86DE4AAE3FEE35BB2F82629C2003B937597691B0207F82948DC8ABB62E95A58A08F395FF70BF59ECD76A5CEDC7BFE3A9D213C43CEF8FD291FE874384873638C110D3DC6A76E0463381E62379D4D37A43AF490AAD98ED2993B85471CFA6CE1981D7A624BE439EB051DCFE17E9A089CE3090E8503A372DEE568EE3AF759F08544143BE4F72909862472E4CC16C237BA1B50123E8AE8DC99FEBAB14E8D513D26116D6DC4742E9B1A4E7DE347BCF0B19B6149D605213B20FC39F510171E66E9C6C54876210B1CF997DFF1C4A570929D3BE11CAF1C0CF87482D1373C4C7C344C9651F2ED387CE051B92D0B870CF55EE7B2A4EE786827372D972C14FFE553C4A774BCED415C721666EA86EFC035331F2FD80B75C450E2198DF1D277E6DF581C9CDF68A5DD595CC388EDC767EA63CADCE02889F133E69CCAE5DD9591B7C0B733F1CE2CABCCF2BA9B406898FD9B46F1F4E3CE3A885C1389A9E47EA0A5561EE3C56C33402F9CD03452D12F11F612A9ED3F1C755FABA50E449F632AEC4FB81B975C835D3FE6C6EBF80195CB5BF220A9438649B870B494F21FBCE4142DA9EF61F916DA9878A2C5301243351F2F3DC022826679FD9946138A8433C3338C98E86EA28928449465C5365BE273B3407E546E17B66AB36FB7DD2C7ECC997BEDD5B28F349727E666B9C0F1EA83CBFD3227CBAEDDD8CBC2069B05BA38731B7477B4F4EF6C95C2D9A4DDFD80A2B3C143DBE0B95C065ADB204A5E86EEECD019B7FC9A822BAE9B4A3FB3883E39ACB63B7EF98ABBE37BA486FF6F3C1353849338CE7F0483F0EEB05AA905B23870B75A98DFB570C2F237B6A453EC4EC45F5938261109B97C8ED219D7EC560062DF689CDE62B4DDD53B42977341FEA23BC756A272E26C43ED8827EC9DFD1DDAFEE49D601A703AC63145BDB3B90FFE683101FD54761DDC88B86F437C6D437C6325F7AD15F58D55B56FADA86FACB4766B433DB011FC14EE8BFFCE422A4C9386936621FD8ECF333CD8E0FCC1A6BD1F6C90F67063437C6B43FCD686B82C268B117159481623E27736C4BD3756D45618EB5981AC6785B29E15CC7A5638EB5901AD6785B49E15D47A5658EB5B61AD6FE7CFACB0D6B7C25ADF0A6B7D2BACF5ADB0D6B7C25ADF0A6B7D2BAC5D5B61EDDA0A6BD7767E0D5992DBB519B233332BE16DAFDFAF069A96B3D0886DF607CD0E7E198F313F7F183C0E3EFDD2BD7D55C5CBD9A39EA5C7E560F39D43BC477B16AFBE7DE09C8D681A2227639B6CE6816818E170A4C618FE29F45E7D66B2942C3913E10BF1C7DFAD3FFD9EF8319DFB7424D8FCF0FACD77DFF50AB5D9F2D99698E3B5FB39CFEFBF0ACC84F5C9B5FD9862FF4716CA472C84468AA64AC3119D633F2FBF924D6BD3B43073942ADD3054533E923909A5B1166B6852DA4A30A42F74C35B7131752A787FB5D3D6D510184D29F749285F034983C5CA50D3A8AC0E360D59030C9D1C39CEFA0CAD8005D8849680D156CCA4DC1DEBA55E41B7FBC24F1AD39304A9F4C9D0A7333CA2CBC342A95AA43CAAEAF29E03C06AEA783258F356C1970E81A9ACE81CB3CDB733C0C8BA2E278305321E93594C17A9DB0C69843CEC331FC7210B0EE274AAE4C995509DF10CA05459C1D3C5D75C4CCFC2F828A0B512A51A55EB3CE708A8AC6EA78B254ED20077337C1C78DA8A538DA9DD7CE788AB9DFA9D0CB62662FE1853346768413D1C20CAC564C2630B1CA677E1F60EAE2A79722554673C03785556F064F045C3318B023961C088214F54420899FE9C1E025E15E2E40AA8CC7706E0AAAA1F185B0782D6EE0BB5F4C5C3A17CEA2C204F5E12E28879F21797C7110FE2C78C85CB1507A03A03109AD7F6C421C9E3A304E3AE582630CCE73F5F00E6EA792AD05B85BE3E04BA5625E778AD3F9D0146B2AA9CCC802B5845D31FCB9EFD1060D8169F47C4EEF77380C54E7D4E061BF2CAD5684A0922BE98B9462C0CD912F93496670792881E022F3522E50AA9CD7B06B8AAABE3E9616D33D5A062A6B1485E085A886FF2940A91779A0F08B94AC9F4C8AB213927005657F5F47018C8B6098847B1A8084EBCF476C0617D9E5E243DF2CAF29E13E44AEA783258633CC47C9A9DC5F0F19009A72D6A7090395F992C39EEE599CE0056A5953B193CAD5F5F3A047ED665E7B86D3F9E013E369539193C0852F93EE721E090159D63B6F976066058D7E554967B2232113F4C90B0CA996FB8ECD3491CBDCD84DD03068088CB9AE06010E0B12C032D42E2098E72BD87CE0E7220402B488E75498E33F01BFA9A9D4C8FC29320A0CA9E4BBAF1CC16074152B938793C55E53B075455D4EFC4B015119E1D1A0EF9EC18D0552290065FA539CF066165353C528CADEE25099A585090281344BE7BFE338D78FC11C778883929004A527D2171EECACCEB57DB5B4ECA8DA42FA32909F00FAFBDA17C1B62754D6A9D5600579EF72E360BFC77137565ECA6D794A3BFCD5228519F4D57B63E679D1475B71F8A02D5516865AB23AA117373D0BE20CE264557EC26B1867DF589EC4299D5D97582545340A55B9FECAD176C9DD348A67566A838BB8742EB45DACD6D24D62E418D68D5270A0BB25567D709574D51235DE589B4827095B975B25512D4880638B554101440AB131B40DEAC12F9332FA6E2E7A90082E7096B445E9FB22848B54ED015BC4EABE3BDBB5F5F2C6037555BCA6E869AA26AB7750BC5D752E844AA253215B3660FB05CDA1AC24AA16B684D652FDB452A17BA8CA252DA32A21A31CBB7230AF29567D509569EBB46A2ED827741826D92AEC46D6A4D099B45D442019B141DFF4D621DFB6CA9AFC83D4BD032CFD26A7897ACEA148A2AC9A72BB9246B9D2055CB014571AA726B85AA223012AD742659225C69FE72F14A496A049471350A52C88FBAA206BAE9B5CA0F79CC170D2787E71C25828B74B4AB865D26DAC26A28F492D410D58BB98ADAA295274B2A29384BAD2DE18D96F99B32BE6F4C588A767E11CE55C63C95A15E789C760989A8781A5C5A8B2933B212A10C286BA5D643AC14632620EB213622E10CA3D942743AE3744A48C5B87A9EF05948676C8122E1E6632623FE089804BA3EAE11971291E18C6AABD8D78ADC2F13A16FC232339A384A3C9670310A22E9C07347507DA1267425629990D60A7EAD15EBBAACD06B139668770CBE81331262F2381332C4C28D7AFAB201E425420238D4D6E6462BE44D59D937262C51F9C28BBEB44A8212412A696A65BCD50A725B56DAAD094BA49D9B954E016B294A44A926AA15F3AD5694B765C5BD35619907249326BB725E49BC20D19397592ED62DA5C1C84B840470A8ADCD9D56C8BBB2B2EF4C582239D6C2684C4331CA620BD95E11F184B468CEFC740CB2325AF14FFC0A9365823CB2943E3F4C9F0ED50964CBB3A43AB66C6B9571AFADCE7D9940F7262C516EFD6E1EB105F36890CA2985147FA4DDA8BE6463E212018DE96BEBF14E2BE0BBB292DF99B0CC86B668772A4B73870C99F833592D2792402F01984989C0603E75F5D38E75CA863A06239D34EAA586232A1B74A629065C51227041E47BAE2B3725262011998B715DBA8AAB5B2730A22A93A996B05EE4D2694EBF729AD3379DE6F41BA9A4A142ACD5A19D93F5CBE6647D833959FF8D00BB987C93D17A818946A374423ACCAD3032EDE001425D22A23983DAAAE88DA6D4664C4CA687F4E79416998C72A81789C913D78E2941E425420238D4D646EFA74A1D9589A792132431F89FAFDA0EB8B60C232F1112C0A1B636DA895ABF6CA2D63798A8F5AF917EF936A4417D9F07A12E11D19C415D55B4CA29D38D816AF233C80CCE72B82C3719391B6A57CE8DA8F4121910D68B5CDA1F5D57F647D7A6FD9176265C3611369807DF640B1854367FB49AA56D7A1D315C264B51FFCAE5372807BDA44026F5D52A6D889BCA86B8316D08EDDCBC6C6A6E3033BF9590C362A0297D9270D99308070111361890503BCAA821D0CB514D5327A376565E3629379893BFD599DC14CD9248CCE9E4EC6D0307A6757F307ABD9420167515D2CECACB26E50673F2BBF5901087139F2EF98C4D983084F42474D942553D8D5E9A5AB23A61B553E6B219B3C184F97E670F24F305CB844FE512097AC15132244FE97A49F2A23D2402A4D74B0962515721EDC4B96CDE6C306D7EA7978E88865B20CEE74C5B5E3D915E9E7ABA1A79B387ED3EFCFAE8E1083F6194BEFD5090509F4D27933EA79914C3745D56BE538AD24720CAC450F355C8A166351324C662CC8587543E1BAB9FD79765AC10A590D74896F2C22B4B3366AF9B9D6E932A0AA89FA766192B6A505D05E33AE89CDC36A9A2847A879765D479896D524509F51E6395B11CED95F83645B47611629B54518069336B27F2DBA48A124C9BF9BA5C47D7954ABA36D5926EF8B84929E75F3F905CE5D38DD43629E5ECEBC76CAB7CE57EBBD2559B7AE77223ABB43153132BB7B04A0333B5AFC2D3AD552E3D9FB1DAA5E7F3D6C8B2FB426451805CAAAED45C869AA2F20F05150B53D275C529599402772E4CE82E23AC9F6779B593AF702941FB864BEE024DFEE68428A8EC5E44E9359E1DCA8ADB0E57F9EA1854B5EE19124DC5412F97D85528475D757523E5637415A3818ACC5FDAD069ABE13B1D2E156776DB64A543E09511B83A358F4968D456F7E48443F528B75C52D2B22B2CF0EA9ABE97A0D141A3A7161C2AC6E47E4ECA0F74CFC6810A8B4F029868AFE62181361597BF3AA4D759C93D2007EAD247BD37519941BCFC36D556BCE2A4575DC55D25B8FA4C03BB6BF4D72826BC43059A5CC44AF9812E54C1556818BB5CA3C12651CF1D2AD0E0AE58CA0E72E90BAEBE46F1B935CAB48FF3ED50B5E0BB6E29F3E6D7D49CA9BD2C06B5B9C28DA258B7AF6ADD8DBC2A25575EA983ABB7186759A3C19A60CC0E9594BF03985296DCF06B50557D28615D7D0D820EBBAC74F172E2AAE615B70EE1D50744CBD5A8A469AC5D876A32BC5899B284DE8EB450A77140D82AAD368B2ADB86728D8EECE4750C3B6463A1EAFA98A7553A06464C6D43B9D5F755F35A35BC740A57A749584F8D1EC1D1401D2AB0EE266DCACBF8562C5C65BAC8951A15D506B874A812F52A6F4A5B7A4D175E654D70464D8DEB42383AACB072B338252DBB36DCA0BA850084BADA564729CC8B9BBBA9BC92567B0F79EF8BCBB581F634358705E773D8EA9597B253466677AC1BA8C92C969C4E590DA2D0B95459FDF5F195E200F7C09BAACF205C5AA902A1A1D69CABB0E69AFB8E124D6FAB97ABF1FDD58AE9261AD826EDFDD56AFF2CFB207E8A5E0D4FC8EFCC233E4FBFBEBFFA9C8472B0B0FAF591703AD9B2782F788664948B3EB6C9331063B775303445A2759675F27A9F91C4D8C331FE2057F7F028FE7375DA3C75C3FF13FB89C8F2533024DE20FC2389E7492CAA4C82A19F53B80CA65655FEFBAB82CCEFFF98CB5FDC45158498545E5DFE23FC77427D6F23F7CFD8E7CA80B58C858CD2F60B09E57C42B6652CFE4B26CB0DA74F2C346494A96F135CEE9104735F30E37F845FF0823491ED2F4E7E23133C5A8AEF0BEA91A89C497D43E4D5FEFE23955778039EF1D8D28B9F02C35EF0FCDFFF7F0C402ACA56A60500, N'6.1.1-30610')
GO

--
-- Data for table dbo.chislennost_pps_vuza  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[university] ON
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (1, N'Андижанский государственный университет', 3, NULL, N'Andijon davlat universiteti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (2, N'Андижанский машиностроительный институт', 3, NULL, N'Andijon mashinasozlik instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (3, N'Андижанский медицинский институт', 3, NULL, N'Andijon davlat tibbiyot instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (4, N'Андижанский сельскохозяйственный институт', 3, NULL, N'Andijon qishloq xo`jaligi instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (5, N'Бухарский государственный университет', 4, NULL, N'Buxoro davlat universiteti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (6, N'Бухарский инженерно-технологический институт', 4, NULL, N'Buxoro muhandislik-texnologiya instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (7, N'Бухарский медицинский институт', 4, NULL, N'Buxoro davlat tibbiyot instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (8, N'Высшая школа национального танца и хареографии', 1, NULL, N'Milliy raqs va xoreografiya oliy maktabi', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (9, N'Государственная консерватория Узбекистана', 1, NULL, N'O`zbekiston Davlat Konservatoriyasi', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (10, N'Гулистанский государственный университет', 11, NULL, N'Guliston davlat universiteti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (11, N'Джизакский государственный педагогический институт', 5, NULL, N'Jizzax davlat pedagogika instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (12, N'Джизакский политехнический институт', 5, NULL, N'Jizzax politexnika instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (13, N'Институт национального художества и дизайна', 1, NULL, N'Kamoliddin Behzod Nomidagi Milliy Rassomlik va Dizayn Instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (14, N'Каракалпакский государственный университет', 2, NULL, N'Qoraqalpoq davlat universiteti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (15, N'Каршинский государственный университет', 6, NULL, N'Qarshi davlat universiteti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (16, N'Каршинский инженерно-экономический институт', 6, NULL, N'Qarshi muhandislik - iqtisodiyot instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (17, N'Кокандский государственный педагогический институт', 6, NULL, N'Qo`qon davlat pedagogika instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (18, N'Навоинский государственный горный институт', 7, NULL, N'Navoiy davlat konchilik instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (19, N'Навоинский государственный педагогический институт', 7, NULL, N'Navoiy davlat pedagogika instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (20, N'Налоговая академия', 1, NULL, N'Soliq akademiyasi', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (21, N'Наманганский государственный университет', 8, NULL, N'Namangan davlat universiteti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (22, N'Наманганский инженерно-педагогический институт', 8, NULL, N'Namangan muhandislik-pedagogika instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (23, N'Наманганский инженерно-технологический институт', 8, NULL, N'Namangan muhandislik-texnologiya instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (24, N'Национальный университет Узбекистана', 1, NULL, N'Mirzo Ulug''bek nomidagi O''zbekiston Milliy universiteti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (25, N'Нукусский государственный педагогический институт', 2, NULL, N'Nukus davlat pedagogika instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (26, N'Самаркандский государственный архитектурно-строительный институт', 9, NULL, N'Samarqand davlat arxitektura-qurilish instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (27, N'Самаркандский государственный институт иностранных языков', 9, NULL, N'Samarqand davlat chet tillar instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (28, N'Самаркандский государственный университет', 9, NULL, N'Samarqand davlat universiteti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (29, N'Самаркандский институт экономики и сервиса', 9, NULL, N'Samarqand iqtisodiyot va servis instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (30, N'Самаркандский медицинский институт', 9, NULL, N'Samarqand davlat tibbiyot instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (31, N'Самаркандский сельскохозяйственный институт', 9, NULL, N'Samarqand qishloq xo`jalik instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (32, N'Ташкентская медицинская академия', 1, NULL, N'Toshkent tibbiyot akademiyasi', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (33, N'Ташкентский автомобильно-дорожный институт', 1, NULL, N'Toshkent avtomobil-yo`llari instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (34, N'Ташкентский архитектурно-строительный институт', 1, NULL, N'Toshkent arxitektura-qurilish instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (35, N'Ташкентский государственный аграрный университет', 1, NULL, N'Toshkent davlat agrar universiteti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (36, N'Ташкентский государственный институт востоковедения', 1, NULL, N'Toshkent davlat sharqshunoslik instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (37, N'Ташкентский государственный педагогический университет', 1, NULL, N'Toshkent Davlat pedagogika universiteti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (38, N'Ташкентский государственный технический университет', 1, NULL, N'Toshkent davlat texnika universiteti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (39, N'Ташкентский государственный экономический университет', 1, NULL, N'Toshkent Davlat Iqtisodiyot Universiteti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (40, N'Ташкентский государственный юридический университет', 1, NULL, N'Toshkent davlat yuridik universiteti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (41, N'Ташкентский институт инженеров железнодорожного транспорта', 1, NULL, N'Toshkent temir yo`l transporti muhandislari instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (42, N'Ташкентский институт ирригации и мелиорации', 1, NULL, N'Toshkent irrigatsiya va melioratsiya instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (43, N'Ташкентский институт текстильной и легкой промышленности', 1, NULL, N'Toshkent to''qimachilik va yengil sanoat instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (44, N'Ташкентский исламский университет', 1, NULL, N'Toshkent islom universiteti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (45, N'Ташкентский медицинский педиатрический институт', 1, NULL, N'Toshkent pediatriya tibbiyot instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (46, N'Ташкентский университет информационных технологий', NULL, NULL, N'Toshkent axborot texnologiyalari universiteti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (47, N'Ташкентский фармацевтический институт', 1, NULL, N'Toshkent farmatsevtika instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (48, N'Ташкентский финансовый институт', 1, NULL, N'Toshkent Moliya instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (49, N'Ташкентский химико-технологический институт', 1, NULL, N'Toshkent kimyo-texnologiya instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (50, N'Термезский государственный университет', 1, NULL, N'Termiz Davlat Universiteti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (51, N'Узбекский государственный институт искусства и культуры', 1, NULL, N'O`zbekiston davlat san`at va madaniyat instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (52, N'Узбекский государственный институт физической культуры', 1, NULL, N'O`zbekiston davlat jismoniy tarbiya instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (53, N'Узбекский государственный университет мировых языков', 1, NULL, N'O`zbekiston davlat jahon tillari universiteti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (54, N'Университет мировой экономики и дипломатии', 1, NULL, N'Jahon iqtisodiyoti va diplomatiya universiteti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (55, N'Ургенчский государственный университет', 14, NULL, N'Urganch davlat universiteti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (56, N'Ферганский государственный университет', 13, NULL, N'Farg`ona davlat universiteti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (57, N'Ферганский политехнический институт', 13, NULL, N'Farg`ona politexnika instituti', NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ], [branch_id], [region_id])
VALUES 
  (58, N'Ташкентский государственный стоматологический институт', 1, NULL, N'Toshkent Davlat Stomatologiya Instituti', NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[university] OFF
GO

--
-- Data for table dbo.chislennost_pps_vuza  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[chislennost_pps_vuza] ON
GO

INSERT INTO [dbo].[chislennost_pps_vuza] ([id], [ass_shtat], [urindosh], [saotbay], [as_fan_nom], [as_fan_doc], [as_prof], [as_doz], [as_katta], [as_ass], [ur_prof], [ur_doc], [ur_katta], [ur_ass], [so_prof], [so_doc], [so_katta], [so_ass], [id_university], [year], [university_id], [university_id1])
VALUES 
  (5, 428, 62, 1, 87, 16, 4, 2, 102, 224, 7, 15, 16, 24, 2, 34, 57, 99, NULL, 2015, 46, NULL)
GO

SET IDENTITY_INSERT [dbo].[chislennost_pps_vuza] OFF
GO

--
-- Data for table dbo.darslik  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[darslik] ON
GO

INSERT INTO [dbo].[darslik] ([id], [fio], [kod_spec], [ucheb_name], [ucheb_number], [filename], [year], [id_university], [university_id], [university_id1])
VALUES 
  (23, N'V.Karimova, M.Zaynutdinova, E.Nazirova, Sh.Sodikova', N'3521901–“Axborot-kommunikatsiya tizimlari va axborot texnologiyalariga texnik xizmat ko`rsatish"', N'Tizimli tahlil asoslari', N'9.09.14 № 220', NULL, 2015, NULL, 46, NULL)
GO

INSERT INTO [dbo].[darslik] ([id], [fio], [kod_spec], [ucheb_name], [ucheb_number], [filename], [year], [id_university], [university_id], [university_id1])
VALUES 
  (24, N'Aripov X K, A.A. Abdullaev., N. Alimova., N. Bustanov, Sh. Toshmatov', N'5311300 Telekommunikatsiya', N'Схемотехника', N'Рўйхатга олиш раками 107-12 . 14.03.2012', NULL, 2015, NULL, 46, NULL)
GO

INSERT INTO [dbo].[darslik] ([id], [fio], [kod_spec], [ucheb_name], [ucheb_number], [filename], [year], [id_university], [university_id], [university_id1])
VALUES 
  (25, N'Abduazizov A A', N'5522100 Radiotexnika radioaloka va radioeshittirish', N'Elekrt aloqa nazariyasi', N'Рўйхатга олиш раками 507-055., 26.12.12', NULL, 2015, NULL, 46, NULL)
GO

INSERT INTO [dbo].[darslik] ([id], [fio], [kod_spec], [ucheb_name], [ucheb_number], [filename], [year], [id_university], [university_id], [university_id1])
VALUES 
  (26, N'Abduazizov A A', N'5311300 Telekommunikatsiya', N'Signallarga raqamli ishlov berish', N'Рўйхатга олиш раками 392-1., 17.09.2012', NULL, 2015, NULL, 46, NULL)
GO

SET IDENTITY_INSERT [dbo].[darslik] OFF
GO

--
-- Data for table dbo.effektivnost_nir_dalolatnoma  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[effektivnost_nir_dalolatnoma] ON
GO

INSERT INTO [dbo].[effektivnost_nir_dalolatnoma] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id], [university_id1])
VALUES 
  (5, N'TATU', N'Zaynidinov X.N.  Zaynutdinova M.B.', N'Разработка методов оперативной обработки кардиологической информации и создание средств их аппаратной поддержки', N'04.09.2014г', NULL, NULL, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[effektivnost_nir_dalolatnoma] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id], [university_id1])
VALUES 
  (6, N'TATU', N'Eshmuradov A.M., Sadchikova S.A.', N'Исследование и разработка метода планирования уровня оптического доступа телекоммуникационной сети Узбекистана', N'АК "Узбектелеком"', N'10.10.2014', NULL, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[effektivnost_nir_dalolatnoma] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id], [university_id1])
VALUES 
  (7, N'TATU', N'Mirzaraximova Aziza Azimdjanovna', N'Развитие страхования ответственности лицензиатов в сфере ИКТ', N'"ALSKOM" Cуғурта компанияси', N'11/05/', NULL, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[effektivnost_nir_dalolatnoma] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id], [university_id1])
VALUES 
  (8, N'TATU', N'Korchieva Aziza Ulug`bekovna', N'Economic efficience improvement of governmental electronic services in Uzbekistan', N'04.06.2014 й.  ТАТУ', N'1707/19-01', NULL, NULL, 2015, 46, NULL)
GO

SET IDENTITY_INSERT [dbo].[effektivnost_nir_dalolatnoma] OFF
GO

--
-- Data for table dbo.effektivnost_nir_patent  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[effektivnost_nir_patent] ON
GO

INSERT INTO [dbo].[effektivnost_nir_patent] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id], [university_id1])
VALUES 
  (3, N'TATU', N' Radjabov T.D.   
Davranbekov D.A.
Inagamov A.M.
Kamardin A.A.
Tajenov K.E.
Simonov A.A.', N'Способ изготовления заготовки активированных оптических волокон', N'07.08.2014 й.', N'№ IAP 04944', NULL, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[effektivnost_nir_patent] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id], [university_id1])
VALUES 
  (4, N'TATU', N'Abdukadirov M.A., Axmedova N.A., Ganiev A.S.', N'Патент на изобретение "Интегральный фотоприемник и способ его изготовления', N'15.10.2014  Агенство по интелектуальной собственности', N'№IAP 20140441', NULL, NULL, 2015, 46, NULL)
GO

SET IDENTITY_INSERT [dbo].[effektivnost_nir_patent] OFF
GO

--
-- Data for table dbo.effektivnost_nir_sertifikat  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[effektivnost_nir_sertifikat] ON
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id], [university_id1])
VALUES 
  (24, N'TATU', N'Nazirov Sh.A.
Raxmanov K.S.
Maxmudov A.Z.', N'Двухязычный электронный перевод узбекского-каракалпакского языка', N'10.01. 2014 й.', N'1682', NULL, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id], [university_id1])
VALUES 
  (25, N'TATU', N'Nazirov Sh.A.
Abduazizov A.A.', N'Программный комплекс для расчета тепловых режимов радиоэлектронных аппаратур', N'10.01. 2014 й.', N'1678', NULL, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id], [university_id1])
VALUES 
  (26, N'TATU', N'Davranbekov D.A.
Xakimov Z.T.
Pisetskiy Yu.V., 
Tursunov B.B.
Irgashev R.Yu.', N'Calculating of REA software reliability', N'10.01. 2014 й.', N'1681', NULL, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id], [university_id1])
VALUES 
  (27, N'TATU', N'Burxonov R.A.
Kabulov R.V.', N'Программный комплекс для  анализа и оптимизации мобильных сетей связи', N'10.01. 2014 й.', N'1679', NULL, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id], [university_id1])
VALUES 
  (28, N'TATU', N'Ruzibaev O.B.
Allamov O.T.
Xujaev O.K.
Saidrasulov Sh.N.', N'Программа для решения задачи маршрутизации в динамическом многопараметрном графе', N'10.01. 2014 й.', N'1680', NULL, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id], [university_id1])
VALUES 
  (29, N'TATU', N'Musaev M.M.
 Berdanov U.A.
 Kardashev M.S.', N'“Параллелная обработка речевых сигналов”', N'12.02.2014 й.', N'1724', NULL, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id], [university_id1])
VALUES 
  (30, N'TATU', N'Musaev M.M.
 Berdanov U.A.
 Yuldasheva N.A.', N'«Анализ элементов речевых сигналов»', N'24.03.2014 й.', N'1807', NULL, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id], [university_id1])
VALUES 
  (31, N'TATU', N'Usmanov R.N.
Djumanov J.X.
Seytnazarov K.K.
Oteniyazov R.I.', N'Программный комплекс моделирования геофильтрационных процессов в однослойных пластах', N'12.02.2014 й.', N'1723', NULL, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id], [university_id1])
VALUES 
  (32, N'TATU', N'Usmanov R.N.
Djumanov J.X.
Digaev A.X.
Seytnazarov K.K.
Oteniyazov R.I.', N'Программный комплекс для устройства автоматизированного измерения уровня и температуры подземных вод в гидрогеологических скважинах', N'06.03.2014 й.', N'1764', NULL, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id], [university_id1])
VALUES 
  (33, N'TATU', N'Kadirov A.M.
Tursunov Sh.A.
Axmedieva A.T.
Radjabov O.S.', N'Создание электронно-учебно методического комплекса по предмету «Инновационный менеджмент»', N'04.09.2014 й.', N'2081', NULL, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id], [university_id1])
VALUES 
  (34, N'TATU', N'Kabulov R.V.', N'Программный комплекс для  решения двумерных краевых задач в произвольных областях', N'04.09.2014 й.', N'2078', NULL, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id], [university_id1])
VALUES 
  (35, N'TATU', N'Kabulov R.V.', N'Программный комплекс для анализа конструкций методом конечных элементов. Программа для ЭВМ', N'04.09.2014 й.', N'2079', NULL, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id], [university_id1])
VALUES 
  (36, N'TATU', N'Kabulov R.V.
Ruzibaev O.B.', N'Программное обеспечение для анализа сетей  связи с использованием техмерного моделирования.  Программа для ЭВМ', N'04.09.2014 й.', N'2080', NULL, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id], [university_id1])
VALUES 
  (37, N'TATU', N'Toirov O.S.
Kabulov R.V.
Xachaturova Ye.M.', N'«Библиотека классов для реализации интервальных вычислений» Программа для ЭВМ', N'04.09.2014 й.', N'2082', NULL, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id], [university_id1])
VALUES 
  (38, N'TATU', N'K.A.Tashev.
 Sh.Sh.Kayumov.
 A.A.Varisov.
 O.N.Djuraev.
 A.I.Abdullaev.', N'Система “ARM-UZ”', N'08.10. 2014 й.', N'2123', NULL, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id], [university_id1])
VALUES 
  (39, N'TATU', N'Kayumov Sh.Sh.
 Tashev K.A. 
Varisov A.A.', N'Архитектура безопасности информационных ресурсов и базы данных”', N'08.10. 2014 й.', N'2124', NULL, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id], [university_id1])
VALUES 
  (40, N'TATU', N'M.S.Yakubov.
  J.S. Nishanbaev.
 X. S. Atadjanov.
 A.A. Davronbekov.
  A.S.Kiriakidi.', N'“ACCOUNT”', N'03.10.2014 й.', N'2116', NULL, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id], [university_id1])
VALUES 
  (41, N'TATU', N'M.S.Yakubov.
  J.S. Nishanbaev.
 X. S. Atadjanov.
 A.A. Davronbekov.
   A.S.Kiriakidi.', N'“VIRTUAL”', N'07.10.2014 й.', N'2118', NULL, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id], [university_id1])
VALUES 
  (42, N'TATU', N'Migranova E.A.', N'Автоматизированная экспертная система профессиального отбора оперативно-диспечерского персонала при управлении сложными технологическими процессами', N'13.10.2014 й.', N'2127', NULL, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id], [university_id1])
VALUES 
  (43, N'TATU', N'Migranova E.A.
 Babamuxamedova M.Z.
 Xaitov T.M.', N'«Мультимедийный обучающий комплекс по операционной системе Linux (на государственном и русском языках)»', N'14.10.2014 й.', N'2128', NULL, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id], [university_id1])
VALUES 
  (44, N'TATU', N'Bendik  V. A.
 Tigay  O. E.
 Xamidov V. S.
 Zakirova F. M.', N'«Интеллектуальная система структурирования библиотечных ресурсов »', N'30.09.2014 й.', N'2107', NULL, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id], [university_id1])
VALUES 
  (45, N'TATU', N'Kerimov K.
Zakirova F.M.', N'FLYSTUDY', N'03.11.2014 й.', N'2147', NULL, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id], [university_id1])
VALUES 
  (46, N'TATU', N'Ruzibaev O.B.
Karaxonov N.A.
Egamberdiev N.A.
Yuldashev Z.B.
Narziev N.B.', N'Программа разделения объектов на классы с помощью алгоритма «Шар Апполона»', N'10.07.2014 й.', N'1942', NULL, NULL, 2015, 46, NULL)
GO

SET IDENTITY_INSERT [dbo].[effektivnost_nir_sertifikat] OFF
GO

--
-- Data for table dbo.Jadval10  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[Jadval10] ON
GO

INSERT INTO [dbo].[Jadval10] ([Id], [DirectionCode], [DirectionName], [SubjectName], [ForeignLanguage], [EducationCourse], [StudentCount], [Asos], [AsosFile], [Year], [UniversityId])
VALUES 
  (1, N'5610200', N'Меҳмонхона хўжалигини ташкил этиш ва бошқариш', N'Меҳмонхона хўжалиги менежменти', N'инглиз тили', 4, 23, N'БухДУ ректорининг
 2014 йил 22 сентябрдаги
 294-У(01)сонли буйруғи', N'1_2004_10.7BBAD6EFC6554E8791CCBF730A438BA8_2015_11_30__04_46_36.pdf', 2015, 24)
GO

INSERT INTO [dbo].[Jadval10] ([Id], [DirectionCode], [DirectionName], [SubjectName], [ForeignLanguage], [EducationCourse], [StudentCount], [Asos], [AsosFile], [Year], [UniversityId])
VALUES 
  (2, N'5610200', N'Меҳмонхона хўжалигини ташкил этиш ва бошқариш', N'Сервис тизими фаолияти асослари', N'инглиз тили', 4, 23, N'БухДУ ректорининг
 2014 йил 22 сентябрдаги
 294-У(01)сонли буйруғи', N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval10] ([Id], [DirectionCode], [DirectionName], [SubjectName], [ForeignLanguage], [EducationCourse], [StudentCount], [Asos], [AsosFile], [Year], [UniversityId])
VALUES 
  (3, N'5610200', N'Меҳмонхона хўжалигини ташкил этиш ва бошқариш', N'Жахон иқтисодиёти ва халқаро иқтисодий муносабатлар', N'инглиз тили', 3, 25, N'БухДУ ректорининг
 2014 йил 22 сентябрдаги
 294-У(01)сонли буйруғи', N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval10] ([Id], [DirectionCode], [DirectionName], [SubjectName], [ForeignLanguage], [EducationCourse], [StudentCount], [Asos], [AsosFile], [Year], [UniversityId])
VALUES 
  (4, N'5610200', N'Меҳмонхона хўжалигини ташкил этиш ва бошқариш', N'Олий математика', N'инглиз тили', 1, 25, N'БухДУ ректорининг
 2014 йил 22 сентябрдаги
 294-У(01)сонли буйруғи', N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval10] ([Id], [DirectionCode], [DirectionName], [SubjectName], [ForeignLanguage], [EducationCourse], [StudentCount], [Asos], [AsosFile], [Year], [UniversityId])
VALUES 
  (5, N'5610200', N'Меҳмонхона хўжалигини ташкил этиш ва бошқариш', N'Сиёсатшунослик', N'инглиз тили', 4, 23, N'БухДУ ректорининг
 2014 йил 22 сентябрдаги
 294-У(01)сонли буйруғи', N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval10] ([Id], [DirectionCode], [DirectionName], [SubjectName], [ForeignLanguage], [EducationCourse], [StudentCount], [Asos], [AsosFile], [Year], [UniversityId])
VALUES 
  (6, N'5230100', N'Иктисодиёт (тармоклар ва сохалар)', N'Микроиқтисодиёт', N'инглиз тили', 2, 19, N'БухДУ ректорининг
 2014 йил 22 сентябрдаги
 294-У(01)сонли буйруғи', N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval10] ([Id], [DirectionCode], [DirectionName], [SubjectName], [ForeignLanguage], [EducationCourse], [StudentCount], [Asos], [AsosFile], [Year], [UniversityId])
VALUES 
  (7, N'5230100', N'Иктисодиёт (тармоклар ва сохалар)', N'Менеджмент', N'инглиз тили', 2, 19, N'БухДУ ректорининг
 2014 йил 22 сентябрдаги
 294-У(01)сонли буйруғи', N'#', 2015, 24)
GO

SET IDENTITY_INSERT [dbo].[Jadval10] OFF
GO

--
-- Data for table dbo.Jadval11  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[Jadval11] ON
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [Status], [AsosFile], [Year], [UniversityId])
VALUES 
  (1, N'Ихтиярова Гулнора Акмаловна', N'05.19.03', N'Многофункциональные смешанные загустители для печатания ткани”', 2014, N'', N'', N'', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [Status], [AsosFile], [Year], [UniversityId])
VALUES 
  (2, N'Ёдгоров Нодир Джалолович', N'13.00.02', N'Чизмачиликда фазовий алмаштиришларни ўқитиш жараёнида ўқувчиларнинг билиш фаолиятини ривожлантириш', 2014, N'', N'', N'', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [Status], [AsosFile], [Year], [UniversityId])
VALUES 
  (3, N'Чориев Таваккал Равшанович', N'10.00.02', N'Забон ва услуби асарҳои публитсистии Садриддин Айнй', 2014, N'', N'', N'', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [Status], [AsosFile], [Year], [UniversityId])
VALUES 
  (4, N'Қаххарова Дилдора Сиддиковна', N'10.00.07', N'Инклюзив таълим технологияси', 2014, N'', N'', N'', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [Status], [AsosFile], [Year], [UniversityId])
VALUES 
  (5, N'Қувватова Дилрабо Хабибовна', N'10.00.02', N'ХХ аср иккинчи ярмида ўзбек поэмаси', 2014, N'', N'', N'', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [Status], [AsosFile], [Year], [UniversityId])
VALUES 
  (6, N'Жўраева Малоҳат Мухаммадиевна', N'10.00.07', N'Француз ва ўзбек эртаклари матнида модаллик категориясининг лингвокогнитив тадқиқи', 2014, N'', N'', N'', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [Status], [AsosFile], [Year], [UniversityId])
VALUES 
  (7, N'Назаров Ўткир Ўктамович', N'10.00.02', N'Романда бадиий хронотопнинг ўзига хослиги', 2014, N'', N'', N'', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [Status], [AsosFile], [Year], [UniversityId])
VALUES 
  (8, N'Музаффаров Фируз Давронович', N'09.00.03', N'Ғаззолий инсонга оид таълимотининг илмий-фалсафий асослари', 2014, N'', N'', N'', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [Status], [AsosFile], [Year], [UniversityId])
VALUES 
  (9, N'Қаҳҳоров Сиддик Қаҳҳорович, Самиев Камолиддин Аъзамович, Жўраев Ҳусниддин Олтинбойевич', N'15.06.04.', N'Қуёш қурилмаларидаги жараёнларни моделлаштириш', 2014, N'', N'', N'', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [Status], [AsosFile], [Year], [UniversityId])
VALUES 
  (10, N'Абдукабил Абдунабиевич Тўлаганогв', N'ББК 38.39', N'', 0, N'', N'', N'Местная Сырьевая база строительных материалов', N'2014 йил', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [Status], [AsosFile], [Year], [UniversityId])
VALUES 
  (11, N'Мавлонов А, Қодиров А', N'', N'Ўлкашунослик атласи Бухоро вилояти', 2014, N'', N'', N'', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [Status], [AsosFile], [Year], [UniversityId])
VALUES 
  (12, N'Таваккал Чориев', N'', N'', 0, N'Забони модари 3', N'', N'', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [Status], [AsosFile], [Year], [UniversityId])
VALUES 
  (13, N'Таваккал Чориев', N'', N'', 0, N'Забони модари 2', N'', N'', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [Status], [AsosFile], [Year], [UniversityId])
VALUES 
  (14, N'Таваккал Чориев', N'', N'', 0, N'Забони тожики 8', N'', N'', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [Status], [AsosFile], [Year], [UniversityId])
VALUES 
  (15, N'Абдуллаев Сухроб Саайфуллаевич', N'5110800- Тасвирий санъат ва мухандислик графикаси', N'', 0, N'', N'', N'Инклюзивтаълим технологияси', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [Status], [AsosFile], [Year], [UniversityId])
VALUES 
  (16, N'Л.Олимов, Эшонов Э. Махмудова З.', N'5110800- тасвирий санъат ва мухандислик графикаси', N'', 0, N'', N'', N'Тасвирий санъат ўқитиш методика', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [Status], [AsosFile], [Year], [UniversityId])
VALUES 
  (17, N'Қобилов Шавкат Рашидович', N'психология, педагогика ва психология', N'', 0, N'', N'', N'Психодиагностика', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [Status], [AsosFile], [Year], [UniversityId])
VALUES 
  (18, N'Ғанижон Худоев', N'Мусиқий таълим', N'', 0, N'', N'', N'Ғижжак чолғуси ижрочилик анъаналари', N'', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [Status], [AsosFile], [Year], [UniversityId])
VALUES 
  (19, N'Тулаганов Абдукабил Абдунабиевич', N'', N'', 0, N'', N'', N'Воздействие  сульфатов на бетон(Й.Штарк,Ф.Беллман,П. Нобест,Б.Вихт)', N'220-085', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [Status], [AsosFile], [Year], [UniversityId])
VALUES 
  (20, N'Тулаганов Абдукабил Абдунабиевич', N'511000,5340200, 52 30 200,5340 400,5341000', N'', 0, N'', N'', N'"Немисча-ўзбекча-русча" қурилиш луғати', N'312-077', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [Status], [AsosFile], [Year], [UniversityId])
VALUES 
  (21, N'Тулаганов Абдукабил Абдунабиевич', N'архитектура ва қурилиш йўналиш бакалавр ва магистратура', N'', 0, N'', N'', N'Замонавий қурилиш материаллари,буюмлари ва технологиялари', N'220-082', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [Status], [AsosFile], [Year], [UniversityId])
VALUES 
  (22, N'Маъмуров Баходир Бахшуллаевич', N'5111700-БТСТТ,511800-МТ', N'', 0, N'', N'', N'Оилада соғлом бола тарбияси', N'335-022', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [Status], [AsosFile], [Year], [UniversityId])
VALUES 
  (23, N'Маъмуров Баходир Бахшуллаевич', N'5111700-БТСТТ,511800-МТ', N'', 0, N'', N'', N'Болалар ривожланишида жисмоний тарбия назарияси ва методикаси', N'335-015', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [Status], [AsosFile], [Year], [UniversityId])
VALUES 
  (24, N'Ибрагимов Алишер Каромативич', N'5 111 200-Жисмоний маданият', N'', 0, N'', N'', N'Ёш қўл тўпичиларни тайёрлаш методикаси', N'335-017', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [Status], [AsosFile], [Year], [UniversityId])
VALUES 
  (25, N'Мехриддин Абдуллаев,Л.Смургина', N'5 111 200-Жисмоний маданият', N'', 0, N'', N'', N'Организация физкультурно оздоровительных и спортивных мероприятий общеобразовательной школе', N'335-025', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [Status], [AsosFile], [Year], [UniversityId])
VALUES 
  (26, N'Мехридин Абдуллаев', N'5 111 200-Жисмоний маданият', N'', 0, N'', N'', N'Енгил атлетика', N'335- 019', N'', N'', NULL, N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [Status], [AsosFile], [Year], [UniversityId])
VALUES 
  (27, N'Жўраева Зулхумор Ражабовна', N'512 0100- Филология ва тил ўргатиш', N'', 0, N'', N'', N'Основы филологического анализа художественного текста', N'', N'', N'', NULL, N'#', 2015, 24)
GO

SET IDENTITY_INSERT [dbo].[Jadval11] OFF
GO

--
-- Data for table dbo.Jadval5  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[Jadval5] ON
GO

INSERT INTO [dbo].[Jadval5] ([Id], [FullName], [Davlat_ishjoy], [Speciality], [Subject], [Status], [Asos], [Asos_fayl], [Year], [UniversityId])
VALUES 
  (1007, N'Ли Чул Су (Lee Chul Soo)', N'Жанубий Корея', N'Компьютер технологиялари', N'Электрон хукумат тизими ташкил этиш Ахборот коммуникация технологиялари бўйича маслаҳатчи', NULL, N'28.02.2014й.,131-02 сон –буйруқ 2ИГ, 20.02.2014й.-Шартнома 20.02.2014-18.02.2015', N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval5] ([Id], [FullName], [Davlat_ishjoy], [Speciality], [Subject], [Status], [Asos], [Asos_fayl], [Year], [UniversityId])
VALUES 
  (1008, N'Юн Ран-Хи (Yoon Ranhee)', N'Жанубий Корея', N'Санъатшунослик', N'Корейс тили', NULL, N'28.01.2014й.60 сон –буйруқ 22.01.2014-25.11.2015й.', N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval5] ([Id], [FullName], [Davlat_ishjoy], [Speciality], [Subject], [Status], [Asos], [Asos_fayl], [Year], [UniversityId])
VALUES 
  (1009, N'Шин Жонгжин (Shin Jongjin)', N'Жанубий Корея', N'Компьютер технологиялари', N'Ахборот технологиялари', NULL, N'20.11.2014й.60 сон –буйруқ 20.11.2014-08.08.2015й.', N'#', 2015, 24)
GO

SET IDENTITY_INSERT [dbo].[Jadval5] OFF
GO

--
-- Data for table dbo.Jadval6  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[Jadval6] ON
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Status], [Asos], [Asos_fayl], [Year], [UniversityId])
VALUES 
  (1, N'Jumakulyyeva Umidahan Beshimovna', N'Туркманисто?', N'Биология', N'-', NULL, N'№359-У', N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Status], [Asos], [Asos_fayl], [Year], [UniversityId])
VALUES 
  (2, N'Allakulov  Zakir Yusupovich', N'Туркманистон', N'Амалий математика ва информатика', N'-', NULL, N'№391-У', N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Status], [Asos], [Asos_fayl], [Year], [UniversityId])
VALUES 
  (3, N'Choyanova Mahrijemal Yolbarsovna', N'Туркманистон', N'Амалий математика ва информатика', N'-', NULL, N'№391-У', N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Status], [Asos], [Asos_fayl], [Year], [UniversityId])
VALUES 
  (4, N'Jumayeva Rana Shamuradovna', N'Туркманистон', N'Рус тили', N'-', NULL, N'№391-У', N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Status], [Asos], [Asos_fayl], [Year], [UniversityId])
VALUES 
  (5, N'Sattarov Murat Zakirdjanovich', N'Туркманистон', N'Инглиз тили', N'-', NULL, N'№391-У', N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Status], [Asos], [Asos_fayl], [Year], [UniversityId])
VALUES 
  (6, N'Annashova Jemal Reyimbayevna', N'Туркманистон', N'Инглиз тили', N'-', NULL, N'№391-У', N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Status], [Asos], [Asos_fayl], [Year], [UniversityId])
VALUES 
  (7, N'Bayramova Nurana Bayramovna', N'Туркманистон', N'Инглиз тили', N'-', NULL, N'№391-У', N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Status], [Asos], [Asos_fayl], [Year], [UniversityId])
VALUES 
  (8, N'Baltayeva Guller Berdimuradovna', N'Туркманистон', N'Инглиз тили', N'-', NULL, N'№391-У', N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Status], [Asos], [Asos_fayl], [Year], [UniversityId])
VALUES 
  (9, N'Yakshiyeva Gulustan Babaxanovna', N'Туркманистон', N'Инглиз тили', N'-', NULL, N'№340-У(01)', N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Status], [Asos], [Asos_fayl], [Year], [UniversityId])
VALUES 
  (10, N'Sobirova Inobat Ilxambayevna', N'Туркманистон', N'Инглиз тили', N'-', NULL, N'№340-У(01)', N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Status], [Asos], [Asos_fayl], [Year], [UniversityId])
VALUES 
  (11, N'Seyidov Mansur Shakirjanovich', N'Туркманистон', N'Инглиз тили', N'-', NULL, N'№340-У(01)', N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Status], [Asos], [Asos_fayl], [Year], [UniversityId])
VALUES 
  (12, N'Charyyeva Gozel Chariyevna', N'Туркманистон', N'Инглиз тили', N'-', NULL, N'№374-У', N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Status], [Asos], [Asos_fayl], [Year], [UniversityId])
VALUES 
  (13, N'Matnazarova Hilala Narmatovna', N'Туркманистон', N'Бошланғич таълим ва спорт-тарбиявий иш', N'-', NULL, N'№317-У', N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Status], [Asos], [Asos_fayl], [Year], [UniversityId])
VALUES 
  (14, N'Kaharova Zilola Usmanovna', N'Туркманистон', N'Бошланғич таълим ва спорт-тарбиявий иш', N'-', NULL, N'№317-У', N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Status], [Asos], [Asos_fayl], [Year], [UniversityId])
VALUES 
  (15, N'Azymov Ikram Agadjanovich', N'Туркманистон', N'Экология ва атроф-муҳит муҳофазаси', N'-', NULL, N'№374-У', N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Status], [Asos], [Asos_fayl], [Year], [UniversityId])
VALUES 
  (16, N'Bernayeva Aziza Aymuradovna', N'Туркманистон', N'Иқтисодиёт', N'-', NULL, N'№374-У', N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Status], [Asos], [Asos_fayl], [Year], [UniversityId])
VALUES 
  (17, N'Rahimbayeva Adolat Ilhomboyevna', N'Туркманистон', N'Инглиз тили', N'-', NULL, N'№288-У(01)', N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Status], [Asos], [Asos_fayl], [Year], [UniversityId])
VALUES 
  (18, N'Hurchyna Oksana', N'Украина', N'Инглиз тили', N'-', NULL, N'№317-У', N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Status], [Asos], [Asos_fayl], [Year], [UniversityId])
VALUES 
  (19, N'Salomov Firdavs Maxmadovich', N'Тожикистон', N'Чет тили ва адабиёти (инглиз тили)', N'-', NULL, N'№288-У(01)', N'#', 2015, 24)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Status], [Asos], [Asos_fayl], [Year], [UniversityId])
VALUES 
  (20, N'Solieva Nigora Gufronovna', N'Тожикистон', N'Иқтисодиёт', N'-', NULL, N'№288-У(01)', N'#', 2015, 24)
GO

SET IDENTITY_INSERT [dbo].[Jadval6] OFF
GO

--
-- Data for table dbo.Jadval7  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[Jadval7] ON
GO

INSERT INTO [dbo].[Jadval7] ([Id], [FullName_uzb], [State_uzb], [Mutaxassislik_uzb], [FullName_xorij], [State_xorij], [Mutaxassislik_xorij], [Asos], [Asos_fayl], [Bak_mag], [Year], [UniversityId])
VALUES 
  (1, N'Давронхўжа Истамов Олимович', N'Руминия, Иоан Куза номли университет', N'Меҳмонхона хўжалигини ташкил этиш ва бошқариш', N'-', N'-', N'-', N'Эрасмус Мундус дастури СИЛКРОУТ лойиҳаси грант келишуви,01.05.2014', N'#', 0, 2015, 24)
GO

INSERT INTO [dbo].[Jadval7] ([Id], [FullName_uzb], [State_uzb], [Mutaxassislik_uzb], [FullName_xorij], [State_xorij], [Mutaxassislik_xorij], [Asos], [Asos_fayl], [Bak_mag], [Year], [UniversityId])
VALUES 
  (2, N'Миршод Нарзуллаев Акмалович', N'Руминия, Иоан Куза номли университет', N'Иқтисодиёт', N'-', N'-', N'-', N'Эрасмус Мундус дастури СИЛКРОУТ лойиҳаси грант келишуви,01.05.2014', N'#', 0, 2015, 24)
GO

INSERT INTO [dbo].[Jadval7] ([Id], [FullName_uzb], [State_uzb], [Mutaxassislik_uzb], [FullName_xorij], [State_xorij], [Mutaxassislik_xorij], [Asos], [Asos_fayl], [Bak_mag], [Year], [UniversityId])
VALUES 
  (3, N'Умиджон Ғафуров Шарипович', N'Италия, Болония университети', N'Туроператорлик хизматларини ташкил этиш', N'-', N'-', N'-', N'Эрасмус Мундус дастури СИЛКРОУТ лойиҳаси грант келишуви,01.05.2014', N'#', 1, 2015, 24)
GO

SET IDENTITY_INSERT [dbo].[Jadval7] OFF
GO

--
-- Data for table dbo.kolichestvo_izdannih_mejdunarodnih_statey  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ON
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (120, N'Kuvnakov A.E.', N'Janubiy Koreya', N'IJCA Proceedings: Publication Updates', N'Methodological Aspects of Development Logical Inference Procedures in Diagnostic Expert System', N'2014y. 1-2b.', N'http://www. ijcaonline. org/.proceedings/icic/ number1', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (121, N'Мусаев М.М.', N'Хитой', N'International journal Information and Electronics Engineering (IJIEE)(ISSN: 2010-3719)', N'"Hardware & Software Solution Signal Compression Algorithms Based On The Chebyshev Polynomial"', N'2014, сентябрь', N'http://www.ijiee.org/index.php?m=content&c=index&a=show&catid=47&id=507', 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (122, N'Берданов У.А.', N'Хитой', N'International journal Information and Electronics Engineering (IJIEE)(ISSN: 2010-3719)', N'"Hardware & Software Solution Signal Compression Algorithms Based On The Chebyshev Polynomial"', N'2014, сентябрь', N'http://www.ijiee.org/index.php?m=content&c=index&a=show&catid=47&id=508', 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (123, N'Шукуров К.Э.', N'Хитой', N'International journal Information and Electronics Engineering (IJIEE)(ISSN: 2010-3719)', N'"Hardware & Software Solution Signal Compression Algorithms Based On The Chebyshev Polynomial"', N'2014, сентябрь', N'http://www.ijiee.org/index.php?m=content&c=index&a=show&catid=47&id=509', 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (124, N'Берданов У.А.', N'Жанубий Кореа', N'“The society of digital policy& management”', N'“Spectral Analysis Of Speech Signal On Adsp-Bf561 Signal Processor” инглиз тили', N'2014, июнь', N'www.asp.ac.kr/digitalpolicy/conferences.012363242.pdf', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (125, N'   Шукуров К.Э.', N'Жанубий Кореа', N'“The society of digital policy& management”', N'“Spectral Analysis Of Speech Signal On Adsp-Bf561 Signal Processor” инглиз тили', N'2014, июнь', N'www.asp.ac.kr/digitalpolicy/conferences.012363242.pdf', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (126, N'Берданов У.А.', N'Тошкент', N'Perspectives for the development of information technologies ITPA-2014', N'Analysis of performance with implementing algorithms of image processing', N'2014, ноябрь', N'http://tuit.uz/itpa2014/welcome/page/sps_sess', 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (127, N'Шукуров К.Э.', N'Тошкент', N'Perspectives for the development of information technologies ITPA-2015', N'Analysis of performance with implementing algorithms of image processing', N'2014, ноябрь', N'http://tuit.uz/itpa2014/welcome/page/sps_sess', 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (128, N'Рахимов М.Ф.', N'Тошкент', N'Perspectives for the development of information technologies ITPA-2016', N'Analysis of performance with implementing algorithms of image processing', N'2014, ноябрь', N'http://tuit.uz/itpa2014/welcome/page/sps_sess', 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (129, N'Хабирова д.Н.', N'Тошкент', N'Perspectives for the development of information technologies ITPA-2014', N'Formation of information culture of society as basis of effective implementing of the electronic government', N'2014, ноябрь', N'http://tuit.uz/itpa2014/welcome/page/sps_sess', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (130, N'Мирюсупов З.З.', N'Тошкент', N'Perspectives for the development of information technologies ITPA-2014', N'Language for describing signals structure and process of formations of its grammar', N'2014, ноябрь', N'http://tuit.uz/itpa2014/welcome/page/sps_sess', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (131, N'Усмонов Р.Н.', N'Тошкент', N'Perspectives for the development of information technologies ITPA-2014', N'Integration of gis in process of fuzzy-deterministic evaluation of electromagnetic safety of telecommunication systems', N'2014, ноябрь', N'http://tuit.uz/itpa2014/welcome/page/sps_sess', 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (132, N'Сейтназаров К.К.', N'Тошкент', N'Perspectives for the development of information technologies ITPA-2015', N'Integration of gis in process of fuzzy-deterministic evaluation of electromagnetic safety of telecommunication systems', N'2014, ноябрь', N'http://tuit.uz/itpa2014/welcome/page/sps_sess', 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (133, N' Отениязов Р.И.', N'Тошкент', N'Perspectives for the development of information technologies ITPA-2016', N'Integration of gis in process of fuzzy-deterministic evaluation of electromagnetic safety of telecommunication systems', N'2014, ноябрь', N'http://tuit.uz/itpa2014/welcome/page/sps_sess', 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (134, N'Усмонов Р.Н.', N'Тошкент', N'Perspectives for the development of information technologies ITPA-2014', N'The problems of intellectualization of digital image processing facilities', N'2014, ноябрь', N'http://tuit.uz/itpa2014/welcome/page/sps_sess', 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (135, N'Отениязов Р.И.', N'Тошкент', N'Perspectives for the development of information technologies ITPA-2015', N'The problems of intellectualization of digital image processing facilities', N'2014, ноябрь', N'http://tuit.uz/itpa2014/welcome/page/sps_sess', 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (136, N'Ибраимов Р.Р.', N'?озо?истон', N'Вестник Алматинского университета энергетики и связи', N'Интегральная функция распределения километрического затухания атмосферного канала связи в Самаркандском регионе', N'2014 йил, 45 - 53 бетлар', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (137, N'Раджабов Т.Д.', N'Марокко', N'INTERNATIONAL JOURNAL OF INNOVATION AND APPLIED STUDIES', N'Modified thin-film fabrication method using vacuum thermal evaporation and vacuum synthesis: application to preparation of Er-doped fiber amplifiers', N'2014 йил, 16 -22 бетлар', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (138, N'Усманова Н.Б.', N'Россия', N'Труды Северо-Кавказского филиала МТУСИ', N'Многомерные динамические объекты в распределенном пространстве: аспекты моделирования', N'2014 йил. 355-358 бетлар.', N'www.skf-mtusi.ru', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (139, N'Амирсаидов У.Б.', N'Россия', N'Труды Северо-Кавказского филиала МТУСИ', N'Модели и методы расчета сетевых характеристик с учетом
фрактальности трафика', N'2014 йил. 131-134 бетлар.', N'www.skf-mtusi.ru', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (140, N'Нишанбаев.Т.Н', N'А?Ш', N'The Advanced Science Journal', N'The System Research Of Reliability Indexes Of Infocommunication Networks With Distributed Structure', N'31.03.2014, 59-64 бетлар', N'www.advancedscience.org', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (141, N'Мурадова А.А.', N'А?Ш', N'Advanced Science', N'Calculation in the NGN networks of Indexes of Reliability of Tracts of Transmission of Packet Information', N'2014, 24-28', N'http://www.advancedscience.org/archive/volume-2014/issue-02-14/', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (142, N'Мурадова А.А.', N'А?Ш', N'Advanced Science', N'The system Research of Reliability Indexes of Infocommunication Networks with Distributed Structure', N'2014, 59-63', N'http://www.advancedscience.org/archive/volume-2014/issue-04-14/', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (143, N'Нишанбаев.Т.Н.', N'А?Ш', N'Advanced Science', N'The system Research of Reliability Indexes of Infocommunication Networks with Distributed Structure', N'2014, 59-63', N'http://www.advancedscience.org/archive/volume-2014/issue-04-14/', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (144, N'Сидди?ов И.', N'А?Ш', N'Advanced Science', N'Hybrid Model Management of Information Messages in Multiservice Networks', N'2014, 38-41', N'http://www.advancedscience.org/archive/volume-2014/issue-02-14/', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (145, N'Шербобоева Г.', N'А?Ш', N'Advanced Science', N'Hybrid Model Management of Information Messages in Multiservice Networks', N'2014, 38-41', N'http://www.advancedscience.org/archive/volume-2014/issue-02-14/', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (146, N'Ликонцев Д.Н.', N'Кози?истон', N'Вестник Алматинского университета энергетики и связи', N'Исследование  влияния  архитектуры Ташкента на  ослабление  уровней  поля сотовой связи', N'2014, №2, 11-17', N'http://www.aipet.kz/university/vestnik/14_225.pdf', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (147, N'Шахобиддинов А.Ш.', N'Кози?истон', N'Вестник Алматинского университета энергетики и связи', N'Исследование  влияния  архитектуры Ташкента на  ослабление  уровней  поля сотовой связи', N'2014, №2, 11-17', N'http://www.aipet.kz/university/vestnik/14_225.pdf', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (148, N'Гаврилов И.А.', N'Кози?истон', N'Вестник Алматинского университета энергетики и связи', N'Анализ методов и алгоритмов квантования вейвлет
коэффициентов видео кодека Дирак', N'2014, №2, 54-59', N'http://www.aipet.kz/university/vestnik/14_225.pdf', 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (149, N'Пузий А.Н.', N'Кози?истон', N'Вестник Алматинского университета энергетики и связи', N'Анализ методов и алгоритмов квантования вейвлет
коэффициентов видео кодека Дирак', N'2014, №2, 54-59', N'http://www.aipet.kz/university/vestnik/14_225.pdf', 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (150, N'Гаврилов И.А.', N'Россия', N'Электросвязь', N'Условия эффективности применения современных методов сжатия данных ТВ изображений', N'2014, №9, 29-33', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (151, N'Пузий А.Н.', N'Россия', N'Электросвязь', N'Условия эффективности применения современных методов сжатия данных ТВ изображений', N'2014, №9, 29-33', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (152, N'Абдуазизов А А.', N'Россия', N'Электросвязь. Научно  технические журнал по проводной связи и радиосвязи, телевидению, радиовешанию', N'Подготовка специалистов по инфокоммуникациям в Узбекистане', N'№12/2014.,9-10с.', N'www.elsv.ru', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (153, N'Тошпўлатов М.А', N'USA', N'Young scientist USA', N'Linguistic Modeling of the Theory of Indistinct Sets as the Basis of the Estimation of Quality of Formation', N'2014. 22-28 p.', NULL, 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (154, N'РўзибоевО.Б', N'AQSH', N'Computing Science and Technology International Journal', N'Finding optimal k based on errors in nearest neighbour algorithm', N'Volume 01, Number 01', N'www.researchpub.org/journal/cst', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (155, N'Агзамходжаева М.Р.', N'Россия', N'Естественные и технические науки', N'Построение модели нечеткого логического вывода на основе использования генетических алгоритмов с искусственным отбором', N'2013 йил, №2 сони, 285-289 бет', N'www.sputnikplus.com.', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (156, N'Агзамходжаева М.Р.', N'Россия', N'Естественные и технические науки', N'Условия сходимости генетических алгоритмов', N'2013 йил, №2 сони, 290-293 бет', N'www.sputnikplus.com.', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (157, N'Рахманов Ас?ар Тажибаевич', N'А?Ш', N'Abstract and Applied Analysis', N'An Approach for Solving Discrete Game Problems with Total Constraints on Controls', N'2014, 6 бет', N'http://www.hindawi.com/journals/aaa/2014/674651/', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (158, N'Рахманов Ас?ар Тажибаевич', N'А?Ш', N'The Scientific World Journal', N'Linear Discrete Pursuit Game with Phase Constraints', N'2014, 5 бет', N'http://www.hindawi.com/journals/tswj/2014/435103/abs/', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (159, N'Абдуллаева С.Х.', N'Российская Федерация', N'"Молодой ученый"', N'Личностный аспект восприятия специального текста', N'№3, 2014 йил. 863-865 бетлар', N'http://www.moluch.ru/archive/62/9567/', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (160, N'Ахмедова М.Х.', N'?озо?истон Республикаси', N'"Бilim jene gilim"', N'Ситуация как модель речевой коммуникации', N'2014 йил, 8-10 бетлар', NULL, 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (161, N'Ахмедова М.Х.', N'Российская Федерация', N'"Молодой ученый"', N'Психологические особенности обучению иноязычному говорению', N'№3, 2014 йил, 819-821 бетлар', N'http://www.moluch.ru/archive/62/9599/', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (162, N'Хамдам-Зода Л.Х.', N'Российская Федерация', N'"Молодой ученый"', N'Система работ по развитию речи на ситуациях', N'№3, 2014 йил,1016-1046 бетлар', N'http://www.moluch.ru/archive/62/9600/', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (163, N'Меденцева Н.П.', N'Российская Федерация', N'"Молодой ученый"', N'Лексическая интерференция в анлийской речи русскоязычных учащихся', N'№3, 2014 йил, 840-844 бетлар', N'http://www.moluch.ru/archive/62/9559/', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (164, N'Матенов Р.Б.', N'Российская Федерация', N'"Молодой ученый"', N'Речевые условия употребления синтаксических единиц сложного предложения и их вариантность', N'№3, 2014 йил, 837-840 бетлар', N'http://moluch.ru/archive/62/9642/', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (165, N'Меденцева Н.П.', N'Российская Федерация', N'"Молодой ученый"', N'Типические черты "токаревской героини" (по произведениям В.Токаревой)', N'№19 (78), 2014 йил,', NULL, 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (166, N'Меденцева Н.П.', N'Российская Федерация', N'"Молодой ученый"', N'Морфологически выраженные сравнения и их стилистические функции в идиолекте Анны Ахматовой', N'№19 (78), 2014 йил', NULL, 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (167, N'Матенов Р.Б.', N'Российская Федерация', N'"Молодой ученый"', N'Стиль художественной литературы в аспекте лингвистической и литературоведческой стилистики', N'№19 (78), 2014 йил', NULL, 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (168, N'Юланова Н.Д.', N'Российская Федерация', N'"Молодой ученый"', N'Информационная подготовка подрастающего поколения в условиях информатизации общества', N'№19 (78), 2014 йил', NULL, 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (169, N'Ганиева Барно Ильхамовна', N'Latviya', N'Society. Integration  Education.Proceedings of the Internationa lScientifical conference Volume 2. May, 23 th -24th', N'Методы развития культуры чтения всистеме непрерывного образования=Methods of Development the Culture of Reading in Continuous Education', N'2014 г.         с.73-84', NULL, 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (170, N'Рахматуллаев Марат Алимович', N'Россия', N'Вестник Библиотечной Ассамблеи ЕвроАзии', N'Информационная сеть библиотек высших учебных заведений Узбекистана', N'2014 г.       С.27-31', NULL, 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (171, N'Ганиева Барно Ильхамовна', N'Россия', N'Вестник Библиотечной Ассамблеи ЕвроАзии', N'Информационная сеть библиотек высших учебных заведений Узбекистана', N'2014 г.       С.27-31', NULL, 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (172, N'Ганиева Барно Ильхамовна', N'?ир?изистон', N'Библиопульс: Илимий-маалыматтык журнал', N'Подготовка кадров в?сшей кваллификации в условиях реформирования информационно-библиотечной деятельности в Узбекистане', N'2014.г.        С.29-32', NULL, 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (173, N'Рахматуллаев Марат Алиимович', N'?ир?изистон', N'Библиопульс: Илимий-маалыматтык журнал', N'Актуальные задачи библиотечной кооперации в условиях глобализации', N'2014 г.          С. 11-14', NULL, 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (174, N'Рахматуллаев Марат Алимович', N'Latviya', N'Society. Integration  Education.Proceedings of the Internationa lScientifical conference Volume 2. May, 23 th -24th', N'Информационное обеспечение университетов в корпоративной библиотечной сети=Information  Support of High Schools in Corporate Library Network', N'2014 г.         с.333-342', NULL, 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (175, N'Рысюкова Ю.В.', N'Канада, Онтарио', N'Intellectual archive, volume 3, number 5, September 2014, ISSN 1929-4700', N'The Role Of Computer-Mediated Education In Forming Of Scientific Methodical 
Web-Activity,
инглиз тили', N'2014, 5 бетлари', N'http://www.intellectualarchive.com/?link=iaj201409', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (176, N'Шамсутдинов Р.Р.', N'Россия', N'Молодой ученый, № 4 (63) 2014, ISSN 2072-0297', N'Роль тьютора в системе дистанционного обучения', N'2014, 2 бетлари', N'http://moluch.ru/archive/63/', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (177, N'Закирова Ф.М.', N'Россия', N'Информатика и образование № 1 (250) 2014 ISSN 0234-0453', N'Технология формирования компетентности в применении веб-технологий в системе методической подготовки (рус тили)', N'2014, 4 бетлари', N'www.infojournal.ru/wp-login.php?', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (178, N'Делов Т.Э.', N'Россия', N'Science and world №7 (11),2014 ISSN 2308-4804', N'Formation of professional competence of 
future it-engineers in the modern 
information society', N'2014, 85-86 бетлари', N'http://scienceph.ru/archives/
Science and world № 7 (11), July', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (179, N'Бабаджанов Х.Б.', N' Австрия (Вена)', N'Austrian Journal of Humanities and Social Sciences journal', N'Some notes about the trade and supply system of Uzbekistan during the Second World War', N'№ 2 2014 (March–April), 18-21 бетлар', N'www.ew-a.org', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (180, N'Бабаджанов Х.Б.', N'Россия  Федерацияси (Казань)', N'Молодой учёный ежемесячный научный журнал', N'Проблема кадров и пути её решенияв сельском хозяйстве Узбекистана в годывторой мировой войны', N'№ 2 (61) . Февраль, 2014 г. 631-634 бетлар', N'www.moluch.ru', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (181, N'Хамдамова А.Р.', N'Прагиа', N'The culture of tolerance in the context of globalization: methodology of research. reality and prospect', N'Дин ва маданият уй-унлашуви тинчликнинг му?им омили сифатида', N'Май 2014й. 112-113 бетлар', N'www.sociosphera.com', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (182, N'Кошбахтиев И.А.', N'Российская Федерация', N'Молодой учёный', N'Специализированный программно-аппаратный комплекс «Омега-С» как средство информационно-коммуникационной технологии подготовки футболистов высокой квалификации', N'2014, 6', N'www.moluch.ru', 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (183, N'Кошбахтиев И.А.', N'Российская Федерация', N'Молодой учёный', N'Комплексная оценка интегральной подготовленности студентов', N'2014, 18', N'www.moluch.ru', 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (184, N'Кошбахтиев И.А.', N'Российская Федерация', N'Молодой учёный', N'Оптимизация образовательного процесса по физическому совершенствованию студентов гуманитарного вуза', N'2014, 18', N'www.moluch.ru', 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (185, N'Кошбахтиев И.А.', N'Российская Федерация', N'Молодой учёный', N'Влияние природно-климатических факторов на здоровье человека', N'2014, 18', N'www.moluch.ru', 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (186, N'Кошбахтиев И.А.', N'Российская Федерация', N'Молодой учёный', N'Определение научно-обоснованных средств для занятий футболом студентов отделения спортивного совершенствования', N'2014, 18', N'www.moluch.ru', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (187, N'Кошбахтиев И.А.', N'Российская Федерация', N'Молодой учёный', N'Анализ интегральной подготовленности студентов отделения спортивного совершенствования, занимающихся футболом', N'2014, 18', N'www.moluch.ru', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (188, N'Эрдонов О.Л.', N'Российская Федерация', N'Молодой учёный', N'Построение тренировочного процесса спортсменок высокой квалификации, специализирующихся по мини-футболу', N'2014, 6', N'www.moluch.ru', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (189, N'Эрдонов О.Л.', N'Российская Федерация', N'Молодой учёный', N'Факторная структура подготовленности спортсменок высокой квалификации по мини-футболу', N'2014, 18', N'www.moluch.ru', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (190, N'Сафронов А.А.', N'Республика Казахстан', N'Теория и методика физической культуры', N'Иследование показателей физического развития и физической подготовленности учащихся – юношей старших классов общеобразовательных школ г.Ташкента', N'2014, 6', N'www.moluch.ru', 5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (191, N'Сафронов А.А.', N'Российская Федерация', N'Молодой учёный', N'Анализ возрастных особенностей учащихся как основной компонент построения процесса физического воспитания', N'2014, 18', N'www.moluch.ru', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (192, N'Бабичева И.В.', N'Российская Федерация', N'Молодой учёный', N'Иследование показателей физического развития и физической подготовленности учащихся – юношей старших классов общеобразовательных школ г.Ташкента', N'2014, 6', N'www.moluch.ru', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (193, N'Бабичева И.В.,', N'Российская Федерация', N'Молодой учёный', N'Физкультурно-оздоровительные технологии на занятиях по физическому воспитанию', N'2014, 18', N'www.moluch.ru', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (194, N'Васильева Е.Б.', N'Российская Федерация', N'Молодой учёный', N'Влияние природно-климатических факторов на здоровье человека', N'2014, 18', N'www.moluch.ru', 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (195, N'Исмагилов Д.К.', N'Российская Федерация', N'Молодой учёный', N'Комплексная оценка интегральной подготовленности студентов', N'2014, 18', N'www.moluch.ru', 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (196, N'Исмагилов Д.К.', N'Российская Федерация', N'Молодой учёный', N'Исследование интегральной подготовленности студентов занимающиеся мини-футболом в техническом вузе', N'2014, 6', N'www.moluch.ru', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (197, N'Назарова М.А.', N'Россия,             г.Ишим', N'Актуальные проблемы германистики (сборник научных статей)', N'Полисемантические слова при электронном переводе текста', N'2014г. – С. 20-25.', N'http://www.kaffol.site40.net/portal', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (198, N'Шарипова А. А', N'Ўзбекистон, Урганч ш.', N'Ilm sarchashmalari', N'Таржиманинг стилистик муаммолари', N'2014й. c 49-53', N'e-mail: ilmsarchashmalari@urdu.uz', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (199, N'Шарипова А. А', N'USA.   – 2014', N'The advanced science', N'Dependence of adequate translation on genre-stylistics norms ( 729)', N' 2014 p.66-68.', N'www.advancedscience.org', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (200, N'Шарипова А. А', N'Ўзбекистон, Тошкент - 2014', N'ЎзМУ Хабарлари', N'Синонимларнинг стилистик жихатдан турлари ва уларнинг таржима ходисаси сифатида урганилишига доир', N'2014й. 274-277 бетлар.', N'Web sayt: uzmuxabarlari.nuu.uz', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (201, N'Шарипова А. А', N'Россия, г.Москва 2014', N'Актуальные проблемы современной науки', N'Проблема перевода: зависимость от видов синонимов и их классификации', N'2014г с.55-57.', N'http://www.sputnikplus.ru', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (202, N'Саидова Ф.Б', N' USA - 2014', N'Interpretation and  modeling of quality of education', N'The advanced science journal', N' 2014 p.18-19', N'www.advancedscience.org', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (203, N'Саидова Ф.Б', N'Ўзбекистон, Ташкент – 2014й', N'Управленческий аспект и основные функции и принципы повышения качества образования', N'Система образования и обучение иностранным языкам (английский, корейский) в Корее и Узбекистане', N' 2014г., с.313-323', NULL, 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (204, N'Саидова Ф.Б', N'Россия, Москва - 2014г', N'Педагогические науки', N'Проблемы качества высшего образования в контексте трансформации образования', N'2014г., с. 7-9
', N'http://www.sputnikplus.ru', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (205, N'Бекназарова С.С.', N'
Россия федерацияси', N'«Дистанционное  и виртуальное образование»,  Научный журнал', N'Разработка мобильного приложения, определяющего достоверность найденной информации  в сети «Интернет»', N'Москва, №6(84), 2014,
С. 18-24', N'edit.muh.ru', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (206, N'Бекназарова С.С.', N'Англия', N'News of science and education № 14(14)2014, England, Sheffield
SCIENCE AND EDUCATION LTD, 2014, p.85-88', N'Mobile application for defines reliability
information kids found on the internet
', N'2014, p.85-88', N'science.uk', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (207, N'?аюмова Г.А.', N'Англия', N'News of science and education № 14(14)2014, England, Sheffield
SCIENCE AND EDUCATION LTD, 2014, p.85-88', N'Mobile application for defines reliability
information kids found on the internet
', N'2014, p.85-88', N'science.uk', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (208, N'R.K. Bazarov', N'Russia, Sochi', N'European Researcher', N'A Distributed Computational Infrastructure for Science and Education', N'2014, PP. 1051-1058.', N'http://www.erjournal.ru/', 0.25, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (209, N'D.D. Akhmedov', N'Russia, Sochi', N'European Researcher', N'A Distributed Computational Infrastructure for Science and Education', N'2014, PP. 1051-1058.', N'http://www.erjournal.ru/', 0.25, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (210, N'Mingliqulov Z.B.', N'India', N'International Journal of Research in Engineering and Technology (IJRET)', N'Method Of Solving Multi-objective Optimization Problem In The Presence Of Uncertainty', N'2014 y. P. 496-500.', N'http://www.ijret.org', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (211, N'Мukhamedieva D.Т.', N'Америка ?ўшма Штатлари', N'International Journal of Mathematics and  Computer Applications Research (IJMCAR)', N'Approach  to  problem  solving  multicriterial optimization  with  fuzzy  aim', N'2014, 55-68 pp.', N'http://www.tjprc.org/', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (212, N'Мukhamedieva D.T.', N'Хиндистон', N'IJRET: International Journal of Research in Engineering and Technology', N'Approaches to the numerical solving of fuzzy differential equations', N'Jul-2014, 335-342p.', N'http://www.ijret.org', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (213, N'Бекмуратов Т.Ф.', N'Россия', N'«Проблемы информатики»', N'Подходы к решению задачи многокритериальной оптимизации с нечеткой целью', N'2014, С.3-9', N'www.problem-info.ru', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (214, N'Мухамедиева Д.Т.', N'Россия', N'«Проблемы информатики»', N'Подходы к решению задачи многокритериальной оптимизации с нечеткой целью', N'2014, С.3-9', N'www.problem-info.ru', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (215, N'Мухамедиева Д.Т.', N'Россия', N'«Проблемы информатики»', N'Проблемы построения нечетко-корректных моделей задач принятия решений по оценки и прогнозированию состояния слабоформализуемого процесса', N'2014, С.82-91', N'www.problem-info.ru', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (216, N'Бекмуратов Т.Ф.', N'Россия', N'«Проблемы информатики»', N'Проблемы построения нечетко-корректных моделей задач принятия решений по оценки и прогнозированию состояния слабоформализуемого процесса', N'2014, С.82-91', N'www.problem-info.ru', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (217, N'Мukhamedieva D.K', N'Америка ?ўшма штатлари', N'International Journal  in Research in Applied, Natural and Social Science', N'Population models with nonlinear diffusion of Kolmogorov-Fisher type', N'2014, 1-10 p', N'http://www.tjprc.org/', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (218, N'Мukhamedieva D.K.', N'Хиндистон', N'IJRET: International Journal of Research in Engineering and Technology', N'System of quasilinear equations of reaction-diffusion tasks of kolmogorov-fisher type biological population task in two-dimensional case', N'Jul-2014, 327-334 p', N'http://www.ijret.org', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (219, N'Мukhamedieva D.Т.', N'Америка ?ўшма Штатлари', N'International Journal of Mathematics and  Computer Applications Research (IJMCAR)  ISSN(P)', N'Synthesis algorithms of fuzzy-neural models of decision making', N'2014, 125-136 pp.', N'http://www.tjprc.org/', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (220, N'Mirzaraxmedova A.H.', N'Америка ?ўшма Штатлари', N'International Journal of Mathematics and  Computer Applications Research (IJMCAR)  ISSN(P)', N'Synthesis algorithms of fuzzy-neural models of decision making', N'2014, 125-136 pp.', N'http://www.tjprc.org/', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (221, N'Abdugafarov A.', N'Америка ?ўшма Штатлари', N'International Journal of Accounting and Financial Management Research (IJAFMR)  ISSN(P)', N'Control of cash flow in the economic cycle: mutual settlement as a mechanism for the payment of resources', N' 2014, 7-12 pp.', N'http://www.tjprc.org/', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (222, N'Allayarov F. A.', N'Америка ?ўшма Штатлари', N'International Journal of Accounting and Financial Management Research (IJAFMR)  ISSN(P)', N'Control of cash flow in the economic cycle: mutual settlement as a mechanism for the payment of resources', N' 2014, 7-12 pp.', N'http://www.tjprc.org/', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (223, N' Allayarov T.', N'Америка ?ўшма Штатлари', N'International Journal of Information Systems Management  Research and Development (IJISMRD)', N'Information technology to reduce level of nonpayments.', N' 2014, 1-6 p', N'http://www.tjprc.org/', 0.25, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (224, N'Abdugafarov A.', N'Америка ?ўшма Штатлари', N'International Journal of Information Systems Management  Research and Development (IJISMRD)', N'Information technology to reduce level of nonpayments.', N' 2014, 1-6 p', N'http://www.tjprc.org/', 0.25, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (225, N'Мukhamedieva D.K.', N'Америка ?ўшма Штатлари', N'International Journal of Mathematics  and Computer Applications Research (IJMCAR)', N'Population Models of Kolmogorov-Fisher Type with Double Nonlinearity and Nonlinear Cross Diffusion', N'2014, 59-72 pp', N'http://www.tjprc.org/', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (226, N'Равшанов Н., Курбонов Н.', N'Россия, Москва', N'Технология материалов', N'Моделирование процесса фильтрации трехфазной смеси «нефть-газ-вода» в пористых средах', N'2014, С.3-13.', N'www.ingnpublishing.com', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (227, N'Ravshanov N., Polvonov B., Shermatova G.', N'Russia, Sochi', N'European Researcher', N'Mathematic model of technical process of heavy mixtures classifying on the basis of dispersion of particles flight path', N'2014, PP. 824-830.', N'http://www.erjournal.ru/', 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (228, N'Ravshanov N., Shertaev M.M., Ikramova S.K.', N'Russia, Sochi', N'European Researcher', N'A Mathematical Model and New Criteria for the Process of Separating Friable Mixtures', N'2014, PP. 1028-1037.', N'http://www.erjournal.ru/', 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (229, N'Фазылов Ш.Х., Мирзаев Н.М., Каримов И.К., Даминов О.Ф.', N'Россия', N'Вестник КамчатГТУ', N'Выделение признаков в задаче распознавания рукописных текстов', N'2013, 38-42 б.', N'http://www.kamchatgtu.ru/ndeyat/vestnik/nizdan/default.aspx', 0.25, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (230, N'Фазылов Ш.Х., Мирзаев О.Н., Каримов И.К., Даминов О.Ф.', N'Россия', N'Вестник КамчатГТУ', N'Алгоритмы диагностики заболеваний растений по изображению их листьев', N'2014, 32-40 б.', N'http://www.kamchatgtu.ru/ndeyat/vestnik/nizdan/default.aspx', 0.25, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (231, N'Saidalieva M., Hidirova M.B.', N'USA, Sweden, Kazakhstan', N'Theoretical & Applied Science', N'Functional-differential equations of biological communities regulatorika', N'2014,                        P. 7-11', N'http://www.t-science.org/conf/2014/04_2014_1.pdf', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (232, N'Хидирова М.Б.', N'Россия', N'Информатика и информационные технологии в образовании, науке и производстве: сборник научных статей', N'Информационные технологии для анализа уравнений регуляторики возбудимых сред', N'2014,                        С. 68-72.', N'http://vpi.volpi.ru/files/science/science_conference/13npkpps/13npkpps_pt2.pdf#page=143', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (233, N'Saidalieva M.', N'Bulgaria', N'Journal  Biomath Communications', N'On Mathematical Models of Regulatory Mechanisms of Cellular Communities', N'2014, P. 245.', N'http://biomathforum.org/biomath/index.php/conference/article/view/245', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (234, N'Saidalieva M.,             Hidirova M.', N'Bulgaria', N'Journal  Biomath Communications', N'The Differential-Delay Equations of Cancer Genetic Mechanisms', N'2014,  P. 243.', N'http://www.biomathforum.org/biomath/index.php/conference/article/view/243', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (235, N'Normatov I.H.', N'Russia, Volgograd', N'International scientific “Science and World”', N'Nonlinear boundary value problems for dynamical systems with continuous and discrete time', N'2014, PP. 35-38.', N'http://www.scienceph.ru/', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (236, N'Юлдашев Б.Э.', N'Россия, Москва', N'Автоматизация и IT в нефтегазовой области', N'Компьютерное моделирование гидравлического расчёта кольцевой сети с одним подводом газа и n отборами', N'2014, С. 12-17.', N'http://www.avite.ru/ngk/', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (237, N'Юлдашев Б.Э.', N'Россия, Москва', N'Газовая промышленность.', N'Создание компьютерной модели для оптимизации функционирования газопровод-ных сетей со сложной лучистой и многокольцевой структурами', N'2014, С. 86-89.', N'http://www.gas-journal.ru/gij/', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (238, N'Khujaev J.I.', N'India', N'International Journal of Computer Science Engineering and Information technologies Research.', N'An algorithm of calculating insolation for planets of the solar system without the account of atmospheric envelope', N'2014, PP. 125-132.', N'http://tjprc.org/computer-science-and-information-technology-engineering-international-journals-with-impact-factor.php', 1, NULL, 2015, 46, NULL)
GO

SET IDENTITY_INSERT [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] OFF
GO

--
-- Data for table dbo.kolichestvo_izdannih_mestnih_statey  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[kolichestvo_izdannih_mestnih_statey] ON
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (1, N'Каримова В.А.', N'ТАТУ Хабарлари', N'Разработка прогаммного обеспечения для расчета устойчивости трубопроводов, расположенных в водонасыщенном грунте', N'2014й. 76-82 б', N'http://jurnal.tuit.uz', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (2, N'Назирова Э.Ш.', N'ТАТУ Хабарлари', N'Методы, алгоритмы и программы для цифровой обработки гастроэнтерологических сигналов', N'2014й. 112-116 б', N'http://jurnal.tuit.uz', 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (3, N'Кувнаков А.Э.', N'?арДУ хабарлари', N'"Mobile number portability" Хизмати асосидаги мобил телефон ра?амларини моделлаштириш', N'2014й. 23-26 б', N' xabarlar.qarshidu.uz', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (4, N'Якубов М.С.', N'Ўзбекистон Республикаси Бош прокуратурасининг Олий ў?ув курслари', N'Давлат бош?арув идоралари ахборот ресурслари конфиденциаллигини таъминлашнинг ?у?у?ий асослари', N'2014й. 39-44 б', N'vuk.uz', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (5, N'Якубов М.С.', N'Ўзбекистон Республикаси Президенти ?узуридаги давлат бош?аруви академияси', N'Фу?ароларнинг электрон ?укумат тизимидаги информацион ресурслардан фойдаланиш ?у?у?ининг айрим масалалари', N'2014й. 64-72', N'dba.uz', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (6, N'Ганиев Абдухалил Абдужалилович', N'ТАТУ хабарлари (Вестник). 2014 йил, 1сон.', N'Approach designing a mathematical model of network traffic based on special mode filtering', N'2014 йил, 8 бет', N'jurnal.tuit.uz', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (7, N'Иргашева Дурдона Якубжановна', N'ТАТУ хабарлари (Вестник). 2014 йил, 1сон.', N'К вопросу анализа проблем информационной безопасности', N'2014йил, 6 бет', N'jurnal.tuit.uz', 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (8, N'Ташев Комил Ахматович', N'ТАТУ хабарлари (Вестник). 2014 йил, 1сон.', N'К вопросу анализа проблем информационной безопасности', N'2014йил, 6 бет', N'jurnal.tuit.uz', 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (9, N'Ташев Комил Ахматович', N'ТАТУ хабарлари (Вестник). 2014 йил, 1сон.', N'Системный подход при обеспечении информационной безопасности в информационно-библиотечных сетях', N'2014йил, 8 бет', N'jurnal.tuit.uz', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (10, N'?уломов Шерзод Ражабоевич', N'ТАТУ хабарлари (Вестник). 2014 йил, 1сон.', N'Approach designing a mathematical model of network traffic based on special mode filtering', N'2014 йил, 8 бет', N'jurnal.tuit.uz', 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (11, N'Юсупов Баходир Кароматович', N'ТАТУ хабарлари (Вестник). 2014 йил, 1сон.', N'Approach designing a mathematical model of network traffic based on special mode filtering', N'2014 йил, 8 бет', N'jurnal.tuit.uz', 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (12, N'?уломов Шерзод Ражабоевич', N'Кимёвий технология назорат ва бош?арув ISSN 1815-4840 Хал?аро илмий техникавий журнал 1/2014 Тошкент Давлат Техника Университети, “УЗ?УРИЛИШМАТЕРИАЛЛАР” ДАК “УЗКИМЁСАНОАТ” ДАК “СОВПЛАСТИТАЛ” ?К Ўзбекистон Республикаси мулк агентлиги', N'Definitions policy access differentiations to IP networks on bases algebra of filtering rules', N'2014 йил, 6 бет', N'jurnal.tuit.uz', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (13, N'Исламов Шахбоз', N'ТАТУ, ТАТУ хабарлари (Вестник). 2014 йил, 2 сон.', N'Analyses of face recognition methods and modifications by adding Gaussian-Noise', N'2014йил, 6 бет', N'jurnal.tuit.uz', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (14, N'Каримов Маджит Маликович', N'ТАТУ, ТАТУ хабарлари (Вестник). 2014 йил, 2 сон.', N'The use of hash functions in protecting informations', N'2014йил, 7 бет', N'jurnal.tuit.uz', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (15, N'Варисов Акмал', N'ТАТУ, ТАТУ хабарлари (Вестник). 2014 йил, 1сон.', N'Электрон ?укумат интерфаол хизмати ахборот ресурсларидан фойдаланишни ?у?у?ий тарбиблаш', N'2014йил, 8 бет', N'jurnal.tuit.uz', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (16, N'Касымова.Ш.Т', N'Государственный коммитет связи, информатизации и телекоммуникационных технологий Республики Узбекистан. Ташкентский университет информационных технологий. Вестник ТУИТ.', N'Алгоритм определения веса объекта в задаче распознования методом вычисления оценок.', N'2(29)/2014 82-87 бетлар', N'jurnal.tuit.uz', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (17, N' Марышева Л', N'Государственный коммитет связи, информатизации и телекоммуникационных технологий Республики Узбекистан. Ташкентский университет информационных технологий. Вестник ТУИТ.', N'Алгоритм определения веса объекта в задаче распознования методом вычисления оценок.', N'2(29)/2014 82-87 бетлар', N'jurnal.tuit.uz', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (18, N'Мўминов Б.Б.', N'Физика, математика ва информатика ilmiy-uslubiy jurnali. –T., -', N'Ta`limni avtomatlashtirishning tarmoq dasturiy majmualari.', N'2014. 1-son 50-53- betlar', N'jurnal.tuit.uz', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (19, N'Мўминов Б.Б.', N'“TATU xabarlari” журнали, Тошкент –', N'Stages of designing data mining', N'2014. 2 – сон., 72-75 бетлар (4бетдан)', N'jurnal.tuit.uz', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (20, N'Назиров Ш.А. Махмудов А.З.', N'ТАТУ хабарлари журнали  Тошкент.,', N'Икки тилли ?ора?алпо?-ўзбек (ўзбек-?ора?алпо?) электрон таржимон дастури', N'1(29) 2014й 14-19 бетлар(2бетдан)', N'jurnal.tuit.uz', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (21, N'Назиров Ш.А. Рахманов ?.С.', N'ТАТУ хабарлари журнали  Тошкент.,', N'Икки тилли ?ора?алпо?-ўзбек (ўзбек-?ора?алпо?) электрон таржимон дастури', N'1(29) 2014й 14-19 бетлар(2бетдан)', N'jurnal.tuit.uz', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (22, N'Назиров Ш.А. Рахманов ?.С. Эржанов М.О.', N'ТАТУ хабарлари журнали Тошкент.', N'Алгебро-логический метод построения уравнения объектов фрактальной геометрии', N'1(29) 2014й , 90-100 бетлар(3,3 бетдан)', N'jurnal.tuit.uz', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (23, N'Назиров Ш.А. Рахманов ?.С.', N'ТАТУ хабарлари журнали Тошкент.,', N'Вычисления значений N-мерных дифференциальных кортежей многомерной интервально-значной функции', N'2(30) 2014й  62-76(7,5бетдан)', N'jurnal.tuit.uz', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (24, N'Рахманов ?.С.
', N'Таълим технологиялари журнали, Тошкент', N'Дастурлашга оид фанларни ў?итишда ва олимпиадаларга таайтинингйёрланишда Acm.tuit.uz с айтининг ўрни', N'4(48) 2014  53-57', N'tt-uz.ru', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (25, N'Бекмирзаев О.Н.

', N'Журнал,  
“ТАТУ хабарлари” 
Тошкент ахборот технологиялари университетининг илмий-техника ва ахборот-та?лилий журнали.

', N'К ВОПРОСУ АНАЛИЗА ПРОБЛЕМ ИНФОРМАЦИОННОЙ БЕЗОПАСНОСТИ', N'1(29)/2014. 49-54 бетлар.', N'jurnal.tuit.uz', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (26, N'Давронбеков Д.А.', N'ТАТУ хабарлари', N'Международные стандарты в области управления рисками информационной безопасности сетей телекоммуникаций', N'2014 йил, 40-45 бетлар', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (27, N'Давронбеков Д.А.', N'ТАТУ хабарлари', N'Методика оценки надежности программного обеспечения МКСУ РЭА', N'2013 йил (№4), 80-91 бетлар (кеч чоп этилгани сабабли 2013 йилдаги рейтингда берилмаган)', NULL, 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (28, N'Мадаминов Х.Х.', N'ТАТУ хабарлари', N'Применение приркладных методик и программных средств для расчета зоны покрытия передатчиков цифрового ТВ', N'2013 йил (№4), 23-31 бетлар (кеч чоп этилгани сабабли 2013 йилдаги рейтингда берилмаган)', NULL, 0.200000002980232, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (29, N'Абдукадиров А.Х.', N'ТАТУ хабарлари', N'Применение приркладных методик и программных средств для расчета зоны покрытия передатчиков цифрового ТВ', N'2013 йил (№4), 23-31 бетлар (кеч чоп этилгани сабабли 2013 йилдаги рейтингда берилмаган)', NULL, 0.200000002980232, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (30, N'Азимов М.Р.', N'ТАТУ хабарлари', N'Применение приркладных методик и программных средств для расчета зоны покрытия передатчиков цифрового ТВ', N'2013 йил (№4), 23-31 бетлар (кеч чоп этилгани сабабли 2013 йилдаги рейтингда берилмаган)', NULL, 0.200000002980232, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (31, N'Джураев Р.Х', N'ТАТУ ХАБАРЛАРИ', N'МЕЖДУНАРОДНЫЕ СТАНДАРТЫ В ОБЛАСТИ УПРАВЛЕНИЯ РИСКАМИ ИНФОРМАЦИОННОЙ БЕЗОПАНОСТИ СЕТЕЙ ТЕЛЕКОММУНИКАЦИЙ', N'2014 ,40-45 бетлар', N'http://jurnal.tuit.uz', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (32, N'Джураев Р.Х', N'ТошДТУ ХАБАРЛАРИ', N'ВЗАИМОСВЯЗЪ ПОКОЗАТЕЛЕЙ КАЧЕСТВА ОБСЛУЖИВАНИЯ И ИНФОРМАЦИОННОЙ БЕЗОПАСНОСТИ В СЕТЯХ ПЕРЕДАЧИ ДАННЫХ', N'08.02.2014,42-46 бетлар', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (33, N'Нишанбаев.Т.Н', N'Ахбороткоььуникациялар: Тармо?лар-Технологиялар-Ечимлар', N'ФОРМАЛИЗАЦИЯ ЗАДАЧИ ОПТИМАЛЬНОГО ПРОЕКТИРОВАНИЯ СЕТЕЙ СЛЕДУЮЩЕГО ПОКОЛЕНИЯ', N'2014,8-12 бетлар', N'Unicon.uz', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (34, N'Абдуллаев М.М', N'Ахбороткоььуникациялар: Тармо?лар-Технологиялар-Ечимлар', N'ФОРМАЛИЗАЦИЯ ЗАДАЧИ ОПТИМАЛЬНОГО ПРОЕКТИРОВАНИЯ СЕТЕЙ СЛЕДУЮЩЕГО ПОКОЛЕНИЯ', N'2014,8-12 бетлар', N'Unicon.uz', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (35, N'Парсиев С.С.', N'Ўзбекистон Республикаси ?уролли кучлар Академияси Хабарлари', N'Разработка математических моделей мультисервисных сетей', N'2014 май, 70-73', NULL, 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (36, N'Парпиев М.П.', N'Ахбороткоммуникациялар : Тармо?лар,Технологиялар,ечимлар', N'Ахборот ўлчов тизимларида ?ўлланиладиган ўлчаш воситаларини калибрлашдаги ўлчашларнинг ноани?лигини бахолаш', N'2014 январ, 24-27', NULL, 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (37, N'Рахмонова Г.С.', N'Ахбороткоммуникациялар : Тармо?лар,Технологиялар,ечимлар', N'Ахборот ўлчов тизимларида ?ўлланиладиган ўлчаш воситаларини калибрлашдаги ўлчашларнинг ноани?лигини бахолаш', N'2014 январ, 24-27', NULL, 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (38, N'Абдуллаев У.М.', N'Ўзбекистон Республикаси ?уролли кучлар Академияси Хабарлари', N'Разработка математических моделей мультисервисных сетей', N'2014 май, 70-73', NULL, 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (39, N'Бадалов Ж.И.', N'Ўзбекистон Республикаси ?уролли кучлар Академияси Хабарлари', N'Разработка математических моделей мультисервисных сетей', N'2014 май, 70-73', NULL, 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (40, N'Ахмедова Х.Х.', N'Ахбороткоммуникациялар : Тармо?лар,Технологиялар,ечимлар', N'О проведении аудита системы тактовой сетевой синхронизации', N'2014 март, 11-15', NULL, 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (41, N'Тўлаганова В.А.', N'Ўзбекистон Республикаси ?уролли кучлар Академияси Хабарлари', N'*Электр Занжирлар Назарияси* фанидан лаборатория стенди', N'2014 май, 30-36', NULL, 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (42, N'Тўлаганова В.А.', N'Ўзбекистон Республикаси ?уролли кучлар Академияси Хабарлари', N'Оценка вероятности ошибок в линейных трактах и регенераторах цифровых систем передачи асинхронным методом', N'2014 май, 74-76', NULL, 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (43, N'Тўлаганова В.А.', N'Ахбороткоммуникациялар : Тармо?лар,Технологиялар,ечимлар', N'Защита информации и особенности её реализации', N'2014 январ, 59-62', NULL, 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (44, N'Козлов В.А.', N'Ахбороткоммуникациялар : Тармо?лар,Технологиялар,ечимлар', N'Защита информации и особенности её реализации', N'2014 январ, 59-62', NULL, 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (45, N'Абдуллаев У.М.', N'Ахбороткоммуникациялар : Тармо?лар,Технологиялар,ечимлар', N'Защита информации и особенности её реализации', N'2014 январ, 59-62', NULL, 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (46, N'Парпиев М.П.', N'Вакуумная наука и техника. Программа', N'Вакуумный способ очистки поликристаллического кремния для солнечных элементов', N'2014 октябр,', NULL, 0.119999997317791, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (47, N'Абдужаббарова М.Б., Каюмова Г.А.', N'ТАТУ хабарлари', N'Сравнительный анализ построения сети доступа GPONC различной длиной оптического кабеля', N'2014', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (48, N'Абдужаббарова М.Б., Курбанов А.Х.', N'ТАТУ хабарлари', N'Разработка кольцевой и древовидной схемы построения сетей с архитектурой "оптика до здания"', N'2014', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (49, N'Абдужаббарова М.Б.', N'ТошДТУ хабарлари', N'Разработка вариантов организации широкополосного доступа с архитектурой "оптика до шкафа"', N'2014', NULL, 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (50, N'Эшмурадов А.М.,      Соатов Х.Г.', N'ТАТУ хабарлари', N'Абонент кириш тармо?ининг ўтказувчанлик ?обилиятини та?лили', N'2014', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (51, N'Эшмурадов А.М., Норматова Д.Т.', N'ТошДТУ хабарлари', N'Кўп имконийликда ностационар сигналларни ?ўллаш масалалари', N'2014', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (52, N'Эшмурадов А.М., Норматова Д.Т.', N'ТошДТУ хабарлари', N'Ўта кенг полосали кириш тармо?и технологиясини яратишнинг асосий принциплари', N'2014', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (53, N'Эшмурадов А.М., Арифджанов А.З.', N'ТошДТУ хабарлари', N'Анализ перспективных решений по организации оптических сетей абонентского доступа АК "УЗТЕЛЕКОМ"', N'2014, 37-41', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (54, N'Юнусов Н.Ю., Рахматов К.Р.', N'ТАТУ хабарлари', N'Математическая модель передаточной характеристики оптоэлектронного логического элемента - инвертора на фоторезисторе и светодиоде в качестве компонентов', N'2014', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (55, N'Исаев Р.И.', N'Ахбороткоммуникациялар: Тармо?лар - Технологиялар - Ечимлар', N'Технико-экономическая эффективность использования автономных гибридных солнечных ветро-дизельных электростанции на объектах связи и информатизации', N'2014', NULL, 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (56, N'Ликонцев Д.Н.', N'Вестник ТУИТ', N'Применение прикладных методик и программных средств для расчета зоны покрытия передатчиков цифрового ТВ', N'2013, №4, 23-31 (2014 йилда нашрдан чи??ан, 2013 йилда рейтингга кўшилмаган)', N'http://jurnal.tuit.uz/', 0.200000002980232, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (57, N'Гаврилов И.А.', N'Вестник ТУИТ', N'Анализ эффективности сред программирования при обработке ТВ изображений', N'2014, №1, 70-75', N'http://jurnal.tuit.uz/', 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (58, N'Пузий А.Н.', N'Вестник ТУИТ', N'Анализ эффективности сред программирования при обработке ТВ изображений', N'2014, №1, 70-75', N'http://jurnal.tuit.uz/', 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (59, N'Соатов Х.С.', N'Вестник ТУИТ', N'Автоматизация процесса проектирования конструкция свода подземных сооружений', N'2014, №2, 92-96', N'http://jurnal.tuit.uz/', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (60, N'Ликонцев Д.Н.', N'O''zbekiston Respublikasi Qurolli Kuchlari Akademiyasi xabarlari', N'Исследование влияния архитектуры Ташкента на ослабление уровней поля сотовой связи', N'2014, №1, 76-80', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (61, N'Шахобиддинов А.Ш.', N'O''zbekiston Respublikasi Qurolli Kuchlari Akademiyasi xabarlari', N'Исследование влияния архитектуры Ташкента на ослабление уровней поля сотовой связи', N'2014, №1, 76-80', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (62, N'Мирхабибова Д.М.', N'Ахбороткоммуникациялар:  тармо?лар, технологиялар, ечимлар', N'Ўзбекистон телекоммуникациялар тармо?ларининг ра?амлаш тизими ва режасини такомиллаштириш', N'2014,16-19б', N'unicon.uz', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (63, N'Таджибаев Ш З', N'Ахбороткоммуникациялар:  тармо?лар, технологиялар, ечимлар', N'Состаяние и переспективы развития цифрового телевидения в Узбекистане', N'2014, 20-25б', N'unicon.uz', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (64, N'Фазилжанов И.Р.', N'ТАТУ хабарлари', N'Иследование параметрического стабилизатора постоянного напряжения на трехструктурном инжекционно? вольтаическом транзисторе', N'ISSN2010-9857 Тошкент Ахборот Технологиялари Университети 3/2013, 57-65б', N'tuit.uz', 0.25, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (65, N'Атаниязов А', N'ICT NEWS', N'Эффективность использования радиочастотного спектра и новые подходы к регулированию', N'ICTNEWS, Радиосвязь и ЭМС: тенденции и перспективы, 17-18 (91-92) 2013, ISSN 2181-6727, ст.28', N'ictnews.uz', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (66, N'Ядгарова Н А', N'ТАТУ хабарлари', N'Иследование параметрического стабилизатора постоянного напряжения на трехструктурном инжекционно? вольтаическом транзисторе', N'ISSN2010-9857 Тошкент Ахборот Технологиялари Университети 3/2013, 57-65б', N'tuit.uz', 0.25, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (67, N' Собирова У.Ш.', N'ТАТУ хабарлари', N'Иследование параметрического стабилизатора постоянного напряжения на трехструктурном инжекционно? вольтаическом транзисторе', N'ISSN2010-9857 Тошкент Ахборот Технологиялари Университети 3/2013, 57-65б', N'tuit.uz', 0.25, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (68, N'Шаюсупова Х.Х.', N'ТАТУ хабарлари', N'Иследование параметрического стабилизатора постоянного напряжения на трехструктурном инжекционно? вольтаическом транзисторе', N'ISSN2010-9857 Тошкент Ахборот Технологиялари Университети 3/2013, 57-65б', N'tuit.uz', 0.25, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (69, N'Арипов Х К', N'Ахбороткоммуникациялар:  тармо?лар, технологиялар, ечимлар', N'Паст кучланишли ра?амли схемалар негиз элементлари', N'Журнал «Инфокоммуникации: сети, технологии, решения» №3 (27) 2012, АК ТТЕ №3 (27) /2013, ст. 27', N'unicon.uz', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (70, N'Абдурахманова Ю.М', N'Журнал «Химическая технология. Контроль и управление». Ташкент, ТашГТУ. 2014,', N'Регуляризованные рекуррентно-итерационные алгоритмы оценивания состояния квазилинейных объектов управления в условиях априорной неопределенности', N'2014, №1 (55), 70-74 стр.', NULL, 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (71, N'Абдурахманова Ю.М', N'Вестник ТУИТ. №1.-с.70-74.', N'Регуляризованные субоптимальные оценки состояния динамических систем', N'2014, №1 (29), 107-112 стр', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (72, N'Али?улов Ё.К.', N'ТАТУ хабарлари', N'Регуляризованные субоптимальные оценки состояния динамических систем', N'2014, №1 (29), 107-112 стр', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (73, N'Рахимова Ф.С.', N'Физика, математика ва информатика журнали', N'"Беруний масалаларидан намуналар"', N'2014, № 2, 10-14-бетлар', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (74, N'О.Б.РЎЗИБАЕВ', N'Химическая технология. Контроль и управление', N'ИССЛЕДОВАНИЕ И ПРОГРАММНАЯ РЕАЛИЗАЦИЯ МЕТОДА БЛИЖАЙШИХ СОСЕДЕЙ', N'2014 йил, №2 сон,  84-90 бет', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (75, N' О.Б.Рўзибаев', N'ТАТУ хабарлари', N'Абонентларга техник ?измат кўрсатиш турлари таснифини ва уларнинг дастурий таъминотини яратиш', N'2014 йил, №1 сони,  3-7 бет', NULL, 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (76, N'О.Б.Рўзибаев', N'Информатика ва энергетика муомалари', N'Таянч векторлар усули асосида классификациялаш
хатоликлари та?лили

', N'2013 йил, №3 сон', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (77, N'К.Р.Абдиримов', N'ЎЗМУ хабарлари', N'Поиск логических закономерностей в форме полуплоскостей', N'2013 йил, №3 сон, 7-9 бет.', NULL, 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (78, N'К.Р.Абдиримов', N'ЎЗМУ хабарлари', N'Выбор IF-THEN правил с помощью логичесиких закономерностей в форме шаров', N'2013 йил, №2 сон, 218-222 бет.', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (79, N'К.Р.Абдиримов', N'Информатика ва энергетика муомалари', N'Визуализация многомерных данных и свойств объектов в задачах классификации', N'2013 йил, №2-3 сон, 75-80 бет.', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (80, N'Рахматов Р.Р.', N'ЎзФА Механика муаммолари', N'Равновесие упругого стержня при наличии на поверхности контакта его с внешней средой зон предварительного смещения и проскальзывания', N'2014, 24-26 бетлар', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (81, N'Керимов Комил Фикратович', N'ТАТУ хабарлари', N'Методы и алгоритмы защиты электронной почты от спам-сообщений', N'2014, 53-56', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (82, N'Мухсинов Шамиль Шавкатович', N'ТАТУ хабарлари', N'Методы и алгоритмы защиты электронной почты от спам-сообщений', N'2014, 53-56', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (83, N'Рахманов Аскар Тажибаевич', N'Кимёвий технология. Назорат ва бош?арув', N'Таснифлаш масалаларини ечишнинг такомиллаштирилган усули ?а?ида', N'2014, 85-92', NULL, 0.25, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (84, N'Абдуллаева С.Х.', N'Преподавание языка и литературы', N'Обучение специальной лексике на материале типовых текстов', N'№4, 2014 йил, 36-38 бетлар', NULL, 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (85, N'Гаюбова К.А.', N'Преподавание языка и литературы', N'Учет особенностей родного языка студентов специального факультета при обучении русскому языку', N'№4, 2014 йил, 33-36 бетлар', NULL, 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (86, N'Хамдам-Зода Л.Х.', N'Преподавание языка и литературы', N'Характеристика ошибок в письменной работе студентов', N'2014 йил, 40-42 бетлар', NULL, 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (87, N'Матенов Р.Б.', N'Гуманитарные научные исследования. 2014. № 4 [Электронный ресурс]. URL: http://human.snauka.ru/2014/04/6415 (дата обращения: 05.11.2014).', N'Мотивационные основы обучения студентов вариантности синтаксических единиц', NULL, N'http://human.snauka.ru/2014/04/6415', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (88, N'Закирова Ф.Т.', N'Таълим муаммолари', N'Технология создания и использования виртуальных лабораторий в учебном процессе', N'2014, 3 бетлари', N'www.devedu.uz/uz/interactive/talimmuammolari/2014-1', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (89, N'Мигранова Э.А.', N'Таълим технологиялари', N'«FEATURES OF CREATION AN ELECTRONIC EDUCATIONAL AND METHODICAL COMPLEX ON DISCIPLINE “THE TECHNIQUE OF TEACHING SPECIAL DISCIPLINES”»', N'2014', N'http://tt-uz.ru/2014-yil-3-soni', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (90, N'Салихова М.Ш.', N'Таълим технологиялари', N'“АХБОРОТ КОММУНИКАЦИЯ ТЕХНОЛОГИЯЛАРИ СО?АСИДА БЎЛАЖАК Ў?ИТУВЧИНИНГ КАСБИЙ КОМПИНТЕНТЛИГИНИ ШАКИЛЛАНТИРИШ”.', N'2014', N'http://tt-uz.ru/2014-yil-2-soni-2', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (91, N'Зарипова Д.А.', N'Таълим технологиялари', N'“ТАЪЛИМНИ  АХБОРОТЛАШТИРИШ ВОСИТАСИ СИФАТИДА АДАПТИВ  Ў?ИТИШ  ТИЗИМИ ВА УНИНГ А?АМИЯТИ”', N'2014', N'http://tt-uz.ru/2014-yil-2-soni-2', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (92, N'Рысюкова Ю.В.', N'Таълим технологиялари', N'Современные требования к формам и методам организации процесса обучения в современном ВУЗе', N'2014, 3 бетлари', N'http://tt-uz.ru/2014-yil-2-soni-2', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (93, N'Туленова Г.Дж.', N'Тошкент Ислом университети илмий – та?лилий буллетин', N'Глобаллашув шароитида ахборот хавфсизлигини таъминлашнинг ?у?у?ий кафолатлари', N'2/2014, 15-18 бетлар', NULL, 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (94, N'Бабаджанов Х.Б.', N'O''zbekiston tarixi', N'Иккинчи жа?он уриши  йилларида Ўзбекистонда нон  та?симоти  муаммолари', N'2/2014, 55-66 бетлар', NULL, 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (95, N'    Бабаханова Д.Р.', N'"Композицион материаллар" илмий-техникавий ва амалий журнали', N'Математико-статическая обработка результатов оптимизации состава антикоррозионного покрытия', N'2014 йил, 30-31 б.б.', NULL, 0.25, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (96, N'Насруллаева Д.А.', N'"Ахбороткоммуникациялар:тармо?лар,технологиялар,ечимлар" ?ар чораклик илмий-техник журнали', N'Ахборот рискларини су?урталаш', N'2014 йил, 44-48 б.б.', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (97, N'Алимова  Г.А.', N'"Бизнес-Эксперт" журнали', N'Актуальные вопросы повышения качества практических занятий.', N'№3, 2014 йил, 65-67 б.б.', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (98, N'Алимова  Г.А.', N'"Бизнес-Эксперт" журнали', N'Формирование структуры малого бизнеса и частного предпринимательства', N'№6,2014 йил, 68-69 б.б.', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (99, N'Базаров Фур?ат Одилович', N'" Молия" илмий журнали 2-сон', N'Зарубежный опыт налогооблажения малого предпринимтельства в инновационно-информационной сфере', N'Тошкент, 2014', NULL, 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (100, N'Маъмуров Бахтиёр', N'"Biznes-Эксперт" журнали 9-сон', N'Ўзбекистон ало?а хизматлари бозорида ра?обат му?итини ривожлантириш исти?боллари', N'Тошкент, 2014.   34-38 бетлар', NULL, 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (101, N'Маъмуров Бахтиёр', N'"Biznes-Эксперт" журнали 8-сон', N'АКТ со?аси корхоналарида сифатли, ра?обатбардош хизматлар кўрсатишда янги стратегия ва  бизнес-моделларини ?ўллаш исти?боллари', N'Тошкент, 2014.   27-30 бетлар', NULL, 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (102, N'Шарипова А.А', N'Ilm sarchashmalari', N'Таржиманинг стилистик муаммолари', N'2014й. c 49-53', NULL, 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (103, N'Шарипова А.А', N'ЎзМУ Хабарлари', N'Синонимларнинг стилистик жихатдан турлари ва уларнинг таржима ходисаси сифатида урганилишига доир', N'2014й. 274-277 бетлар.', N'www.uzmuxabarlari.nuu.uz', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (104, N'Саидова Ф.Б', N'Система образования и обучение иностранным языкам (английский, корейский) в Корее и Узбекистане', N'Управленческий аспект и основные функции и принципы повышения качества образования', N' 2014г., с.313-323', N'www.tdpu.uz', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (105, N'Саидова Ф.Б', N'Министерство высшего и среднего специального образования республики Узбекистан
Ташкентский государственный педагогический университет имени Низами
При поддержке
Ташкентского объединения преподавателей русского языка и литературы
Материалы  десятых Виногра', N'Роль межкультурного и межнациональной коммуникации в повышении качества обучения студентов', N'2014., с.388-392', N'www.tdpu.uz', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (106, N'Бекназарова С.С.', N'«ТАТУ xabarlari»', N'Проектирование программного обеспечения онлайн системы- Mediacourse builder', N'2013, №4, 63-70 б.', N'journal.tuit.uz', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (107, N'Бекназарова С.С.', N'Проблемы информатики и энергетики, №1-2-2014, Ташкент,  2014, С.109-113', N'Использование технологий медиаобразования (на примере медиаобразовательной системы http://mediaedu.uz) для развития медиаграммотности преподавателей', N'2014, С.109-113', N'academy.uz', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (108, N'Нуралиев Ф.М.', N'«ТАТУ xabarlari»', N'Описание модулей программного комплекса для расчета магнитоупругостин пластин и оболочек со сложной формой', N'2014, №2(30), 110-113 б.', N'journal.tuit.uz', 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (109, N'Умарова Д.Б.', N'San`at журнали', N'"Рассом ниго?идаги олам"', N'2014 й. №1. 36–39 б.', NULL, 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (110, N'Умарова Д.Б.', N'КOFUSO International Spring Conference, Хал?аро илмий конференция, Жанубий Корея республикаси', N'Furniture of Uzbekistan', N'2014 й. 11 – 15 б.', NULL, 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (111, N'Абдукадыров М.А.', N'Гелиотехника', N'Пути повышения выходного напряжения и удельной электрической мощности фотопреобразователей', N'2014 й., №2 (13-14 март   271-272 бет )', N'www.fti.fan.uz', 0.25, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (112, N'Джуманияов И.О.', N'Гелиотехника', N'Пути повышения выходного напряжения и удельной электрической мощности фотопреобразователей', N'2014 й., №2 (13-14 март   271-272 бет )', N'www.fti.fan.uz', 0.25, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (113, N' Ганиев А.С.', N'Гелиотехника', N'Пути повышения выходного напряжения и удельной электрической мощности фотопреобразователей', N'2014 й., №2 (13-14 март   271-272 бет )', N'www.fti.fan.uz', 0.25, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (114, N'Хамидов В.С.', N'Ta''lim texnologiyalari', N' O’rta maxsus, kasb-hunar ta’limi muassasalarida axborot kommunikatsiya texnologiyalaridan foydalangan holda mustaqil ta''lim jarayonini tashkillashtirish, Ta’lim texnologiyalari”', N' 2014 й., №1(45), (2-9 бет)', NULL, 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (115, N'Абдукадыров М.А., Ахмедова Н.А.', N'XXI -аср технологиялар илмий-техник журнали', N'Тўпланган ?уёш нуридан электр энергияси олиш исти?боллари', N' 2014 й., №2 (16-17 бет)', N'www.21asrtexnolog.uz', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (116, N'Абдукадыров М.А.', N'XXI -аср технологиялар илмий-техник журнали', N'Тўпланган ?уёш нуридан электр энергияси олиш исти?боллари', N' 2014 й., №2 (16-17 бет)', N'www.21asrtexnolog.uz', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (117, N' Ахмедова Н.А.', N'XXI -аср технологиялар илмий-техник журнали', N'Тўпланган ?уёш нуридан электр энергияси олиш исти?боллари', N' 2014 й., №2 (16-17 бет)', N'www.21asrtexnolog.uz', 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (118, N'Тигай О.Э.', N'Fizika, matematika va informatika', N'Интегрированные методы решение задач по физике с применением программ Mathcad Crocodile Technology 3D', N' 2014 й., № 2 (96-100 бет)', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (119, N'Абдукадыров М.А.', N'Гелиотехника', N'Влияние обработки поверхности на оптическую прозрачность монокристалов  GaP

', N' 2014 й., № 4 (53-55 бет)', N'www.fti.fan.uz', 0.25, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (120, N'Ганиев А.С.', N'Гелиотехника', N'Влияние обработки поверхности на оптическую прозрачность монокристалов  GaP

', N' 2014 й., № 4 (53-55 бет)', N'www.fti.fan.uz', 0.25, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (121, N'Джуманияов И.О.', N'Гелиотехника', N'Влияние обработки поверхности на оптическую прозрачность монокристалов  GaP

', N' 2014 й., № 4 (53-55 бет)', N'www.fti.fan.uz', 0.25, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (122, N'Ахмедова Н.А.', N'Гелиотехника', N'Влияние обработки поверхности на оптическую прозрачность монокристалов  GaP

', N' 2014 й., № 4 (53-55 бет)', N'www.fti.fan.uz', 0.25, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (123, N'Мухамедиева Д.Т.', N'Узбекский журнал «Проблемы информатики и энерге-тики»', N'Параллельный муравьиный алгоритм оптимизации', N'2014, С. 3-9', NULL, 0.25, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (124, N'Ахмедов Д.Д.', N'Узбекский журнал «Проблемы информатики и энерге-тики»', N'Параллельный муравьиный алгоритм оптимизации', N'2014, С. 3-9', NULL, 0.25, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (125, N'Арипов М.М.', N'Узбекский журнал «Проблемы информатики и энерге-тики»', N'Подходы к численному моделированию задачи реакции  диффузией   типа Колмогорова-Фишера в двумерном случае', N'2014. -С. 18-24', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (126, N' Мухамедиева Д.К.', N'Узбекский журнал «Проблемы информатики и энерге-тики»', N'Подходы к численному моделированию задачи реакции  диффузией   типа Колмогорова-Фишера в двумерном случае', N'2014. -С. 18-24', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (127, N'Арипов М.М., Мухамедиева Д.К.', N'Международный научно-технический журнал «Химическая технология.', N'Популяционные модели типа Колмогорова-Фишера с нелинейной кросс-диффузией', N'2014, Стр.46-52', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (128, N'Мухамедиева Д.Т', N'Международный научно-технический журнал «Химическая технология.', N'Применение мягких вычислений при построении моделей задач принятия решений по оценке состояния слабоформализуемого процесса', N'2014, Стр.73-83', NULL, 1, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (129, N'Мухамедиева Д.К.', N'Международный научно-технический журнал «Химическая технология.', N'К решению обобщенного уравнения в задаче биологической популяции конвективного переноса', N' 2014,  С.71-76', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (130, N'Арипов М.М.', N'Международный научно-технический журнал «Химическая технология.', N'К решению обобщенного уравнения в задаче биологической популяции конвективного переноса', N' 2014,  С.71-76', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (131, N'Фозилов Ш.Х., Маматов Н.С.', N'«Информатика ва энергетика муаммолари» Ўзбекистон журнали', N'L-Информатив белгиларни танлаб олиш усули', N'2014, 10-16 б.', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (132, N'Камилов М.М., Хамроев А.Ш.', N'Международный научно–технический журнал «Химическая технология. Контроль и управление».', N'Архитектура и основные структурно-функциональные блоки программно-распознающего комплекса частичной прецедентности', N'2014 йил, № 4.–С.49-58', NULL, 0.5, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (133, N'Сайдалиева М., Хидирова М.Б., Алиев Б.Р.', N'Инфекция, иммунитет и фармакология', N'Моделирование последовательного                                                     осуществления молекулярно-генетических процессов при инфекции гепатоцитов вирусами гепатита B', N'2014, С.106-112.', N'-', 0.330000013113022, NULL, 2015, 46, NULL)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university], [university_id])
VALUES 
  (134, N'Нуралиев Ф.М.', N'Вестник ТУИТ', N'Описание модулей программного комплекса для расчёта магнитоуп-ругости пластин и оболочек со сложной формой', N'2014,  С. 110-113.', N'http://www.tuit.uz/press-centr/izdatelskaja-rabota', 1, NULL, 2015, 46, NULL)
GO

SET IDENTITY_INSERT [dbo].[kolichestvo_izdannih_mestnih_statey] OFF
GO

--
-- Data for table dbo.majmua  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[majmua] ON
GO

INSERT INTO [dbo].[majmua] ([id], [fio], [kod_spec], [metodich_name], [metodich_number], [filename], [year], [id_university], [university_id], [university_id1])
VALUES 
  (16, N'Raxmanov Q.S., Mo‘minov B.B., Sh.T.Qosimova, A.Z.Mahmudov', N'05-13-06 Matematik modellashtirish. Sonli usullar va dasturlar majmui', N'“C/C++ da dasturlash” kursidan laboratoriya ishlari uchun uslubiy ko’rsatma', N'2014йил 1 апрель,8(69)', NULL, 2015, NULL, 46, NULL)
GO

INSERT INTO [dbo].[majmua] ([id], [fio], [kod_spec], [metodich_name], [metodich_number], [filename], [year], [id_university], [university_id], [university_id1])
VALUES 
  (17, N'Raxmanov Q.S., Qosimova Sh.T., Gapurova A.A.', N'05-13-06 Matematik modellashtirish. Sonli usullar va dasturlar majmui', N'Сборник заданий и методических указаний по предмету "Программирование на С/С++"', N'2014 йил 10 апрель, 8(69)', NULL, 2015, NULL, 46, NULL)
GO

INSERT INTO [dbo].[majmua] ([id], [fio], [kod_spec], [metodich_name], [metodich_number], [filename], [year], [id_university], [university_id], [university_id1])
VALUES 
  (18, N'Maksudova O.N.', NULL, N'Kids" Englbsh 2', N'№1 (режадан ташқари) 25.04.2014 (ХТВ)', NULL, 2015, NULL, 46, NULL)
GO

SET IDENTITY_INSERT [dbo].[majmua] OFF
GO

--
-- Data for table dbo.monografiya  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[monografiya] ON
GO

INSERT INTO [dbo].[monografiya] ([id], [fio], [kod_spec], [monograf_name], [monograf_year], [filename], [year], [id_university], [university_id], [university_id1])
VALUES 
  (40, N'Axmedova M.X.', N'130002 - Metodika prepodavaniya russkogo yazika', N'Роль ситуативно-коммуникативных заданий в развитии речи студентов нефилологических вузов', N'2014', NULL, 2015, NULL, 46, NULL)
GO

INSERT INTO [dbo].[monografiya] ([id], [fio], [kod_spec], [monograf_name], [monograf_year], [filename], [year], [id_university], [university_id], [university_id1])
VALUES 
  (41, N'Saidova F.B.', NULL, N'«Целостность управления качеством образования в высших учебных заведениях» (на примере педагогических вузов)', N'2014', NULL, 2015, NULL, 46, NULL)
GO

INSERT INTO [dbo].[monografiya] ([id], [fio], [kod_spec], [monograf_name], [monograf_year], [filename], [year], [id_university], [university_id], [university_id1])
VALUES 
  (42, N'Muxamedieva D.T.', N'05-13-06 Matematik modellashtirish. Sonli usullar va dasturlar majmui', N'Разработка нечетких моделей задач принятия решений', N'2014', NULL, 2015, NULL, 46, NULL)
GO

INSERT INTO [dbo].[monografiya] ([id], [fio], [kod_spec], [monograf_name], [monograf_year], [filename], [year], [id_university], [university_id], [university_id1])
VALUES 
  (43, N'Muxamedieva D.T', N'05-13-06 Matematik modellashtirish. Sonli usullar va dasturlar majmui', N'Применение  методов  мягких  вычислений  в слабоформали-зуемых системах', N'2014', NULL, 2015, NULL, 46, NULL)
GO

INSERT INTO [dbo].[monografiya] ([id], [fio], [kod_spec], [monograf_name], [monograf_year], [filename], [year], [id_university], [university_id], [university_id1])
VALUES 
  (44, N'Abdugafarov A., Abduvaxitov T.', N'05-13-06 Matematik modellashtirish. Sonli usullar va dasturlar majmui', N'Спиралевидные модели экономики', N'2014', NULL, 2015, NULL, 46, NULL)
GO

INSERT INTO [dbo].[monografiya] ([id], [fio], [kod_spec], [monograf_name], [monograf_year], [filename], [year], [id_university], [university_id], [university_id1])
VALUES 
  (45, N'Ravshanov N.,
Sharipov D.K.', N'05.13.06- Matematik modellashtirish. Sonli usullar va dasturlar majmui', N'Конструктивная системная методология математического моделирования и вычислительного эксперимента в проблеме охраны окружающей среды', N'2014', NULL, 2015, NULL, 46, NULL)
GO

INSERT INTO [dbo].[monografiya] ([id], [fio], [kod_spec], [monograf_name], [monograf_year], [filename], [year], [id_university], [university_id], [university_id1])
VALUES 
  (46, N'Ravshanov N.', N'05.13.06- Matematik modellashtirish. Sonli usullar va dasturlar majmui', N'Компьютерное моделирование технологических процессов сепарирования смесей', N'2014', NULL, 2015, NULL, 46, NULL)
GO

INSERT INTO [dbo].[monografiya] ([id], [fio], [kod_spec], [monograf_name], [monograf_year], [filename], [year], [id_university], [university_id], [university_id1])
VALUES 
  (47, N' Xidirov B.N.,  Saydalieva M.M.,   Xidirova M.B.', N'05.13.06- Matematik modellashtirish. Sonli usullar va dasturlar majmui', N'Регуляторика живых систем', N'2014', NULL, 2015, NULL, 46, NULL)
GO

INSERT INTO [dbo].[monografiya] ([id], [fio], [kod_spec], [monograf_name], [monograf_year], [filename], [year], [id_university], [university_id], [university_id1])
VALUES 
  (48, N'Yuldashev B.E., Xujaev I.K.', N'05.13.06- Matematik modellashtirish. Sonli usullar va dasturlar majmui', N'Усовершенствованные модели и методы расчёта трубопроводного транспорта реальных газов', N'2014', NULL, 2015, NULL, 46, NULL)
GO

SET IDENTITY_INSERT [dbo].[monografiya] OFF
GO

--
-- Data for table dbo.qullanma  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[qullanma] ON
GO

INSERT INTO [dbo].[qullanma] ([id], [fio], [kod_spec], [posobie_name], [posobie_number], [filename], [year], [id_university], [university_id], [university_id1])
VALUES 
  (37, N'Irgasheva D.Ya., Islomov Sh.Z.', N'3521901–“Axborot-kommunikatsiya tizimlari va axborot texnologiyalariga texnik xizmat ko`rsatish"', N'Network Infrastructure and Security Policy Windows 8 OS', N'ЎРААваТТДавлат Қўмитаси №35 буйруқ 3 илова 13-банд', NULL, 2015, NULL, 46, NULL)
GO

INSERT INTO [dbo].[qullanma] ([id], [fio], [kod_spec], [posobie_name], [posobie_number], [filename], [year], [id_university], [university_id], [university_id1])
VALUES 
  (38, N'Mo''minov B.B.', N'100000, 130000 - Matematika, 5130100 - matematika', N'Informatika', N'ОЎМТВ нинг 2013 йил 20 августдаги 312 сонли буйруқ (Гувоҳнома рақами 312-039). 2014 10-сентябрда чоп этишга рухсат этилган', NULL, 2015, NULL, 46, NULL)
GO

INSERT INTO [dbo].[qullanma] ([id], [fio], [kod_spec], [posobie_name], [posobie_number], [filename], [year], [id_university], [university_id], [university_id1])
VALUES 
  (39, N'Musaev M.M.', N'05-13-06 Matematik modellashtirish. Sonli usullar va dasturlar majmui', N'Компьютер тизимлари ва тармоқлари', N'Протокол № 9 Научно-технического совета УзАСИ 28 декабрь 2011 г.', NULL, 2015, NULL, 46, NULL)
GO

INSERT INTO [dbo].[qullanma] ([id], [fio], [kod_spec], [posobie_name], [posobie_number], [filename], [year], [id_university], [university_id], [university_id1])
VALUES 
  (40, N'Abduazizov A A Faziljanov I R  Yarmuxamedov A, Shayusupova X, Yusupov Ya', N'5311200 Televidenie radioaloka va radioeshittirish', N'Ахборот узатиш радиотехеник тизимлари', N'Рўйхатга олиш раками332/1, 26.08.12', NULL, 2015, NULL, 46, NULL)
GO

INSERT INTO [dbo].[qullanma] ([id], [fio], [kod_spec], [posobie_name], [posobie_number], [filename], [year], [id_university], [university_id], [university_id1])
VALUES 
  (41, N'Bazarov Furqat Odilovich', NULL, N'Инновационный менежмент', N'А457862214 15.06.13', NULL, 2015, NULL, 46, NULL)
GO

INSERT INTO [dbo].[qullanma] ([id], [fio], [kod_spec], [posobie_name], [posobie_number], [filename], [year], [id_university], [university_id], [university_id1])
VALUES 
  (42, N'Shaxakimova M.T', NULL, N'Scale up', N'335-105 23.08.2014', NULL, 2015, NULL, 46, NULL)
GO

SET IDENTITY_INSERT [dbo].[qullanma] OFF
GO

--
-- Data for table dbo.raiting  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[raiting] ON
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (1, 1, 2013, 623, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 119, 1, 0, 0, 6994, 0, 6, 2, 3, 0, 2, 0, 0, 223, 510, 150, 310, 0, 16, 0, 1, 60.8, 63, 1321, 1488, 0, 3, 10, 0, 10, 64, 18, 3, 124, 0, 190, 6, 0, 0, 129.52, 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 2990, 633, 3171, 405, 6588, 160, 50, 121, 0.5, 0.8, 6, 432, 66, 508, 0.5, 0.5, 0.5, 0.5, 0, 43, 14, 0.65, 576, 788, 25, 218, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (2, 2, 2013, 232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 115, 0, 0, 0, 2384, 0, 1, 0, 0, 0, 0, 0, 0, 165, 187, 30, 130, 0, 4, 0, 1, 42.9, 13, 182, 561, 0, 1, 0, 0, 2, 1, 1, 1, 24, 0, 66, 0, 30.95, 3.4, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 1872, 473, 1927, 325, 2684, 232, 232, 107, 1, 0.6, 28, 20, 28, 214, 0.5, 0.5, 0.5, 0.5, 0, 49, 43, 0.7, 594, 612, 16, 96, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (3, 3, 2013, 493, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92.7, 125, 1, 3, 0, 3043, 0, 6, 0, 0, 0, 0, 0, 0, 126, 471, 145, 307, 0, 8, 0, 1, 53.3, 67, 491, 522, 0, 0, 0, 0, 86, 0, 28, 1, 126, 0, 194, 0, 0, 272.57, 51, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1019, 987, 1195, 457, 3010, 87, 87, 120, 0.5, 0.6, 6, 0, 24, 480, 0.5, 0.5, 1, 1, 0, 22, 31, 0.7, 85, 97, 65, 286, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (4, 4, 2013, 240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.9, 84, 1, 0, 0, 2827, 0, 0, 1, 6, 0, 10, 0, 0, 245, 225, 42, 130, 0, 12, 0, 1, 54.3, 5, 268, 353, 0, 2, 0, 0, 0, 0, 4, 0, 14, 0, 81, 0, 0, 41.13, 93, 0, 1, 0, 0, 6, 0, 0, 0, 0, 0, 0, 1315, 1315, 1486, 211, 2694, 90, 90, 50, 0.5, 0.2, 10, 22, 21, 243, 0.5, 0.5, 0.5, 0.5, 0, 7, 30, 0.74, 785, 829, 9, 127, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (5, 5, 2013, 620, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91.9, 79, 0, 9, 0, 5640, 0, 9, 15, 16, 7, 0, 0, 0, 284, 407, 137, 259, 1, 12, 0, 1, 58.7, 9, 1137, 1468, 0, 9, 0, 0, 0, 1, 8, 3, 188, 3, 147, 0, 0, 4.76, 120, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 1592, 736, 2172, 625, 6245, 424, 226, 95, 0.5, 0.4, 36, 1, 36, 470, 1, 0.5, 1, 1, 0, 42, 44, 0.6, 1116, 1305, 42, 331, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (6, 6, 2013, 520, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89.7, 93, 0, 0, 0, 5183, 0, 0, 2, 8, 0, 8, 0, 0, 407, 386, 101, 254, 3, 20, 0, 1, 63.5, 5, 1087, 1139, 0, 4, 0, 2, 4, 16, 20, 4, 27, 3, 148, 3, 0, 24.2, 201.5, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2582, 494, 2967, 395, 5241, 340, 310, 65, 1, 0.2, 10, 17, 52, 338, 1, 0.5, 1, 1, 0, 49, 38, 0.54, 1452, 1474, 20, 132, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (7, 7, 2013, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95.7, 90, 1, 1, 0, 1603, 0, 12, 2, 2, 0, 0, 0, 0, 161, 190, 39, 123, 0, 2, 0, 1, 56.7, 8, 375, 389, 0, 6, 0, 0, 0, 0, 31, 0, 42, 0, 101, 0, 0, 0, 75, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 982, 698, 1080, 246, 1487, 132, 90, 60, 0.2, 0.6, 26, 24, 26, 230, 0.5, 0.5, 0.5, 0.5, 0, 27, 21, 0.76, 69, 69, 24, 233, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (8, 8, 2013, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88.6, 37, 0, 0, 0, 188, 0, 0, 0, 0, 0, 0, 0, 0, 54, 25, 0, 5, 0, 1, 0, 1, 59.5, 2, 28, 36, 4, 1, 0, 0, 0, 0, 0, 0, 11, 0, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 156, 19, 176, 61, 197, 54, 48, 19, 1, 0.4, 1, 0, 24, 52, 0.5, 0.5, 0.5, 0.5, 0, 49, 44, 0.34, 0, 0, 3, 16, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (9, 9, 2013, 299, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95.5, 75, 0, 1, 0, 1435, 0, 14, 8, 0, 1, 9, 1, 0, 176, 225, 37, 134, 0, 89, 0, 1, 57.5, 10, 234, 334, 6, 0, 0, 0, 14, 2, 0, 0, 5, 0, 48, 79, 0, 30.81, 25, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 851, 763, 1583, 142, 1457, 52, 52, 61, 0.2, 0.2, 10, 3, 37, 368, 0, 0, 0.5, 0.5, 0, 30, 44, 0.35, 1313, 1313, 20, 185, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (10, 10, 2013, 392, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91.8, 72, 0, 2, 0, 3617, 0, 1, 3, 0, 0, 3, 0, 0, 444, 274, 55, 135, 0, 16, 0, 1, 54, 126, 699, 864, 0, 2, 1, 3, 36, 79, 33, 4, 22, 1, 66, 0, 0, 5, 339.1, 0, 3, 0, 0, 4, 0, 0, 0, 0, 0, 0, 1528, 1534, 1681, 805, 3641, 497, 497, 121, 1, 0.6, 37, 48, 37, 309, 0.5, 0.5, 1, 1, 0, 26, 28, 0.65, 847, 952, 73, 171, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (11, 11, 2013, 454, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88.4, 150, 13, 0, 0, 6506, 0, 0, 0, 1, 0, 1, 0, 0, 467, 354, 34, 190, 0, 4, 0, 1, 48.4, 72, 1379, 1418, 0, 5, 0, 0, 12, 1, 32, 3, 101, 0, 119, 2, 0, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1114, 915, 2247, 564, 6598, 478, 478, 146, 0.5, 0.8, 9, 8, 50, 380, 1, 1, 1, 1, 0, 34, 44, 0.65, 1228, 1308, 50, 203, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (12, 12, 2013, 268, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.4, 61, 0, 0, 0, 2606, 0, 1, 1, 7, 0, 1, 0, 3, 435, 202, 12, 110, 0, 15, 0, 1, 52, 35, 379, 570, 0, 1, 0, 1, 0, 0, 3, 1, 25, 0, 56, 0, 0, 40.71, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1610, 734, 2010, 425, 2944, 200, 180, 390, 0.5, 0.2, 2, 0, 29, 249, 1, 1, 1, 1, 0, 41, 27, 0.59, 919, 1417, 40, 100, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (13, 13, 2013, 204, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88.2, 78, 1, 1, 0, 1096, 0, 7, 3, 0, 0, 17, 0, 0, 166, 156, 5, 44, 0, 7, 0, 1, 66.7, 4, 178, 266, 0, 0, 0, 0, 0, 0, 1, 1, 11, 0, 15, 39, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 806, 352, 1560, 177, 1088, 70, 52, 11, 0.5, 0.4, 0, 0, 29, 175, 1, 1, 1, 1, 0, 39, 23, 0.58, 0, 0, 11, 84, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (14, 14, 2013, 722, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 85.1, 141, 0, 0, 0, 7213, 0, 32, 5, 3, 0, 7, 1, 0, 1140, 563, 176, 355, 0, 0, 0, 1, 53.9, 120, 1262, 1725, 0, 2, 0, 1, 34, 272, 24, 0, 147, 0, 220, 2, 0, 0, 272, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 3902, 2312, 4760, 477, 6976, 400, 400, 61, 1, 0.4, 33, 320, 33, 631, 0.5, 0.5, 0.5, 0.5, 0, 8, 22, 0.61, 922, 1248, 52, 227, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (15, 15, 2013, 519, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.2, 97, 0, 2, 0, 5302, 0, 6, 0, 0, 0, 0, 0, 0, 544, 437, 149, 216, 0, 20, 0, 1, 43.5, 60, 1081, 1231, 0, 3, 0, 0, 16, 7, 23, 4, 19, 0, 172, 0, 0, 8.47, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1604, 756, 2160, 316, 5361, 140, 72, 85, 0.5, 0.6, 2, 486, 43, 486, 1, 1, 0.5, 1, 0, 31, 39, 0.45, 1367, 1456, 38, 169, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (16, 16, 2013, 483, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91.2, 103, 0, 1, 0, 5358, 0, 0, 4, 4, 2, 1, 2, 0, 490, 286, 83, 182, 0, 2, 0, 1, 54.7, 21, 1044, 1093, 0, 5, 0, 0, 32, 0, 16, 4, 37, 0, 114, 0, 0, 22.73, 220.6, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1855, 1266, 2574, 566, 5580, 386, 385, 192, 1, 1, 33, 283, 33, 341, 1, 1, 1, 1, 0, 49, 19, 0.82, 1434, 1563, 48, 170, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (17, 17, 2013, 535, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.5, 175, 0, 1, 0, 5511, 0, 1, 0, 0, 0, 0, 0, 0, 407, 420, 45, 198, 0, 9, 0, 1, 61.3, 14, 890, 1340, 0, 6, 0, 0, 4, 37, 10, 2, 27, 0, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1080, 370, 1728, 488, 5345, 149, 149, 155, 0.5, 0.8, 6, 29, 43, 416, 1, 1, 1, 1, 0, 4, 36, 0.41, 1091, 1112, 21, 269, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (18, 18, 2013, 283, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97.6, 119, 0, 1, 0, 3165, 0, 2, 5, 1, 0, 0, 0, 0, 260, 199, 49, 141, 0, 3, 0, 1, 53.7, 27, 654, 841, 0, 3, 0, 0, 4, 12, 7, 2, 76, 0, 82, 0, 0, 110, 418.05, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1227, 401, 1659, 664, 2985, 468, 468, 425, 1, 0.6, 12, 10, 47, 221, 0.5, 0, 1, 1, 0, 47, 32, 0.62, 847, 1499, 34, 134, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (19, 19, 2013, 506, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88.7, 188, 1, 1, 0, 5885, 0, 0, 0, 0, 0, 0, 0, 0, 510, 332, 104, 205, 0, 9, 0, 1, 57.2, 100, 1144, 2475, 0, 5, 0, 28, 4, 0, 11, 2, 5, 1, 88, 0, 0, 60, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1120, 380, 1615, 470, 5882, 338, 338, 104, 0.2, 0.2, 4, 4, 47, 384, 0.5, 0.5, 1, 1, 0, 40, 37, 0.62, 674, 804, 54, 196, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (20, 20, 2013, 55, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99.6, 29, 0, 0, 0, 335, 0, 0, 0, 0, 0, 0, 0, 0, 64, 24, 13, 24, 0, 0, 0, 1, 76.2, 3, 93, 94, 0, 0, 0, 0, 2, 3, 5, 2, 10, 0, 13, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 614, 310, 929, 185, 336, 137, 137, 57, 1, 0.8, 21, 27, 21, 45, 1, 1, 1, 1, 0, 32, 44, 0.45, 0, 0, 16, 18, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (21, 21, 2013, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94.2, 91, 0, 1, 0, 5313, 2, 0, 1, 3, 0, 6, 13, 0, 419, 361, 128, 219, 1, 13, 0, 1, 49.4, 75, 845, 1132, 0, 6, 2, 3, 0, 13, 22, 3, 48, 1, 123, 6, 0, 2.68, 153.45, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2604, 2014, 3380, 501, 5114, 301, 301, 280, 0.5, 0.4, 2, 1, 27, 434, 0.5, 1, 1, 0.5, 0, 33, 33, 0.87, 935, 1128, 28, 233, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (22, 22, 2013, 377, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 80, 1, 0, 0, 4030, 0, 0, 3, 4, 0, 4, 0, 0, 385, 270, 50, 181, 0, 12, 0, 1, 49.4, 51, 763, 936, 0, 4, 0, 0, 35, 55, 7, 2, 30, 0, 129, 0, 0, 0.68, 80, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1642, 1070, 1965, 620, 3785, 580, 580, 260, 0.5, 0.6, 54, 66, 55, 280, 0.5, 0.5, 1, 0.5, 0, 35, 12, 0.64, 1123, 1143, 76, 151, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (23, 23, 2013, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.1, 67, 0, 0, 0, 1886, 0, 0, 11, 14, 0, 0, 0, 0, 103, 124, 10, 79, 3, 10, 0, 1, 54.5, 27, 200, 400, 0, 4, 0, 0, 12, 26, 7, 2, 17, 0, 74, 0, 0, 5, 255.58, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 838, 572, 859, 225, 1886, 180, 180, 55, 0.5, 0.6, 2, 0, 46, 146, 0.5, 0.5, 0.5, 0.5, 0, 46, 26, 0.72, 1540, 1540, 27, 70, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (24, 24, 2013, 885, 25, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.3, 98, 8, 6, 0, 8383, 6, 36, 20, 24, 20, 24, 15, 0, 835, 728, 201, 485, 14, 19, 0, 1, 56.2, 41, 1404, 2329, 0, 14, 0, 0, 607, 1521, 73, 18, 412, 8, 530, 3, 0, 994, 1857.87, 0, 10, 7, 3, 4, 0, 0, 0, 0, 0, 0, 3716, 663, 3912, 1223, 7681, 815, 815, 250, 1, 0.8, 56, 15, 68, 1091, 1, 1, 1, 1, 0, 1, 2, 0.86, 1403, 1448, 59, 242, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (25, 25, 2013, 517, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92.7, 157, 0, 0, 0, 5138, 0, 6, 1, 1, 0, 0, 3, 0, 598, 424, 86, 207, 0, 2, 0, 1, 50.8, 62, 1003, 1371, 0, 6, 0, 2, 4, 67, 19, 0, 74, 1, 153, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2024, 1474, 2657, 645, 4989, 391, 382, 403, 1, 0.4, 7, 482, 38, 482, 0.5, 0.5, 0.5, 0.5, 0, 23, 17, 0.76, 1103, 1107, 28, 171, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (26, 26, 2013, 341, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 128, 0, 1, 0, 3266, 0, 0, 2, 5, 0, 0, 0, 0, 317, 304, 47, 195, 0, 15, 0, 1, 47.6, 7, 371, 546, 0, 5, 0, 2, 8, 22, 6, 4, 47, 0, 129, 5, 0, 26.72, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 782, 779, 917, 293, 3405, 154, 154, 76, 0.5, 0.6, 2, 0, 31, 401, 0.5, 0.5, 0.5, 0.5, 0, 28, 35, 0.78, 375, 380, 11, 182, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (27, 27, 2013, 246, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88.1, 100, 0, 1, 0, 2121, 16, 5, 21, 0, 0, 15, 16, 0, 123, 243, 123, 165, 10, 17, 0, 1, 42.4, 7, 474, 511, 0, 4, 0, 1, 77, 0, 4, 3, 41, 0, 70, 1, 0, 0, 15.4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1448, 514, 1616, 256, 2067, 210, 210, 127, 0.5, 0.6, 46, 216, 46, 225, 1, 0.5, 0.5, 1, 0, 24, 24, 0.75, 0, 0, 12, 127, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (28, 28, 2013, 703, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94.7, 111, 0, 6, 0, 6262, 0, 1, 2, 2, 0, 17, 1, 0, 453, 529, 162, 374, 16, 26, 0, 1, 62.2, 65, 1625, 1825, 0, 11, 0, 0, 122, 2030, 40, 11, 154, 3, 400, 7, 80.76, 5.2, 466.6, 0, 2, 0, 5, 1, 0, 0, 0, 0, 0, 0, 3150, 1764, 3270, 917, 7565, 512, 551, 174, 0.5, 1, 53, 751, 53, 763, 1, 1, 1, 1, 0, 11, 10, 0.71, 1367, 1385, 62, 334, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (29, 29, 2013, 184, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87.4, 88, 1, 0, 0, 1966, 0, 0, 3, 5, 0, 5, 0, 0, 257, 179, 64, 148, 0, 13, 0, 1, 60.1, 16, 414, 488, 0, 4, 0, 1, 19, 10, 2, 6, 18, 1, 96, 0, 0, 9.05, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1064, 1064, 1130, 326, 1937, 280, 280, 104, 0.5, 0.8, 35, 143, 35, 234, 0.5, 0.5, 0.5, 0.5, 0, 20, 25, 0.57, 66, 67, 15, 52, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (30, 30, 2013, 529, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95.4, 101, 1, 1, 0, 3396, 0, 0, 5, 9, 1, 11, 1, 8, 219, 467, 20, 240, 0, 26, 0, 1, 63.3, 33, 406, 452, 0, 2, 0, 2, 135, 0, 30, 0, 191, 2, 215, 0, 0, 20, 70, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 1809, 952, 1809, 478, 3394, 130, 230, 277, 0.5, 1, 40, 523, 40, 523, 1, 1, 1, 1, 0, 36, 18, 0.77, 86, 86, 66, 207, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (31, 31, 2013, 327, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.5, 101, 1, 1, 0, 4081, 0, 0, 44, 11, 0, 8, 0, 0, 304, 273, 39, 187, 0, 1, 0, 1, 54.7, 29, 705, 795, 0, 4, 0, 5, 34, 80, 7, 6, 48, 1, 150, 0, 0, 95.7, 475.37, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1297, 1138, 1315, 468, 4139, 180, 180, 149, 0.5, 1, 2, 278, 37, 298, 1, 1, 1, 1, 0, 3, 44, 0.62, 1707, 1835, 35, 176, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (32, 32, 2013, 1013, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.2, 136, 5, 3, 0, 6446, 0, 39, 18, 30, 0, 30, 0, 46, 139, 841, 92, 482, 0, 14, 0, 1, 54.3, 91, 1279, 1417, 0, 5, 0, 0, 229, 1932, 87, 1, 207, 10, 537, 0, 0, 108.47, 962.98, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1226, 1157, 1324, 1120, 4820, 815, 786, 223, 0.5, 0.4, 30, 58, 32, 796, 0.5, 0.5, 0.5, 0.5, 0, 16, 3, 0.89, 298, 306, 411, 694, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (33, 33, 2013, 347, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91.7, 187, 0, 1, 0, 3372, 0, 6, 2, 7, 0, 2, 0, 0, 307, 292, 31, 176, 0, 27, 0, 1, 56.7, 8, 790, 964, 0, 6, 3, 1, 6, 24, 8, 6, 37, 2, 128, 0, 0, 179.14, 471.7, 0, 2, 6, 0, 3, 0, 0, 0, 0, 0, 0, 1170, 86, 1521, 389, 3050, 371, 239, 11, 0.5, 0.6, 12, 23, 46, 399, 1, 1, 1, 1, 0, 5, 15, 0.61, 974, 1076, 21, 128, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (34, 34, 2013, 388, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89.7, 123, 8, 48, 0, 3525, 0, 10, 13, 3, 0, 16, 8, 0, 316, 285, 14, 153, 0, 10, 0, 1, 54.6, 7, 620, 771, 0, 7, 1, 3, 28, 50, 3, 3, 44, 0, 116, 5, 0, 132.89, 337.1, 0, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 983, 420, 1140, 284, 3525, 155, 155, 279, 0.2, 0.2, 35, 240, 40, 490, 0.5, 0.5, 1, 1, 0, 37, 16, 0.74, 155, 158, 16, 120, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (35, 35, 2013, 535, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 86.2, 161, 3, 2, 0, 7560, 0, 0, 56, 9, 0, 5, 0, 0, 508, 456, 26, 269, 0, 24, 0, 1, 53.6, 24, 886, 1531, 0, 3, 0, 2, 41, 51, 3, 7, 93, 0, 174, 1, 0, 15, 536.62, 0, 6, 5, 0, 4, 0, 0, 0, 0, 0, 0, 1375, 478, 2459, 714, 5967, 130, 126, 370, 1, 0.2, 0, 0, 63, 514, 0.5, 0.5, 0.5, 0.5, 0, 49, 44, 0.49, 2736, 2936, 95, 288, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (36, 36, 2013, 264, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89.7, 186, 0, 0, 0, 2065, 15, 32, 83, 8, 1, 18, 0, 3, 323, 221, 41, 119, 0, 9, 0, 1, 60.8, 6, 375, 591, 4, 3, 0, 0, 110, 30, 22, 7, 98, 0, 64, 4, 43.81, 1, 183.8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1008, 840, 1069, 348, 2100, 187, 158, 80, 1, 0.8, 24, 40, 31, 320, 1, 1, 1, 1, 0, 15, 8, 0.72, 0, 0, 19, 112, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (37, 37, 2013, 844, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 175, 12, 16, 0, 7009, 3, 19, 5, 16, 0, 9, 0, 3, 854, 696, 28, 305, 0, 24, 0, 1, 56.7, 85, 1851, 2197, 0, 9, 1, 2, 42, 106, 67, 7, 122, 4, 303, 5, 0, 0, 758.1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2480, 2110, 2561, 720, 8064, 513, 513, 616, 0.5, 1, 6, 0, 56, 740, 0.5, 0.5, 0.5, 0.5, 0, 19, 40, 0.85, 1706, 1816, 41, 208, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (38, 38, 2013, 1092, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88.2, 141, 5, 6, 0, 11549, 0, 10, 19, 10, 0, 8, 0, 0, 924, 710, 29, 379, 4, 7, 0, 1, 49.6, 34, 1758, 2390, 0, 9, 0, 0, 479, 517, 47, 6, 291, 4, 346, 0, 10.09, 1143.91, 812.06, 0, 11, 11, 15, 19, 1, 0, 0, 0, 0, 0, 2905, 691, 3412, 1962, 10783, 1270, 978, 1380, 0.5, 0.4, 67, 157, 71, 873, 0, 1, 0.5, 1, 0, 29, 44, 0.63, 1632, 1843, 31, 316, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (39, 39, 2013, 534, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88.5, 132, 5, 15, 0, 5661, 5, 24, 28, 12, 15, 0, 0, 6, 329, 510, 152, 313, 0, 26, 0, 1, 62.7, 60, 1303, 1737, 0, 2, 0, 0, 55, 0, 52, 3, 246, 4, 194, 0, 27.48, 73.76, 412.6, 0, 3, 0, 0, 8, 0, 0, 0, 0, 0, 0, 2838, 2017, 3114, 1080, 5486, 840, 840, 569, 1, 0.8, 48, 611, 48, 611, 1, 1, 1, 1, 0, 48, 29, 0.73, 0, 0, 197, 210, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (40, 40, 2013, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89.9, 47, 11, 4, 0, 2047, 2, 2, 11, 0, 0, 5, 6, 0, 117, 184, 32, 139, 0, 5, 0, 1, 61.1, 6, 607, 668, 0, 2, 0, 0, 14, 0, 27, 13, 84, 2, 130, 0, 0, 0, 311.38, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 575, 150, 752, 732, 1993, 470, 470, 175, 1, 0.2, 30, 22, 35, 163, 0.5, 0.5, 0.5, 0.5, 0, 18, 11, 0.54, 0, 0, 41, 52, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (41, 41, 2013, 349, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 79, 0, 0, 0, 4082, 0, 2, 11, 0, 0, 3, 0, 0, 435, 311, 20, 217, 0, 6, 0, 1, 37.9, 51, 887, 950, 0, 7, 7, 0, 29, 80, 19, 1, 36, 1, 154, 0, 0, 293, 366.8, 0, 0, 5, 1, 2, 0, 0, 0, 0, 0, 0, 1491, 888, 1591, 968, 4082, 801, 801, 145, 1, 0.6, 9, 302, 9, 302, 0.5, 1, 1, 1, 0, 49, 44, 0.49, 848, 848, 35, 281, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (42, 42, 2013, 430, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99.2, 111, 0, 0, 0, 5562, 0, 2, 15, 0, 0, 14, 0, 4, 478, 392, 108, 302, 0, 8, 0, 1, 61.8, 15, 571, 1151, 1, 6, 0, 0, 65, 105, 18, 4, 75, 0, 162, 0, 0, 518, 615.66, 0, 3, 15, 0, 0, 0, 0, 0, 0, 0, 0, 1031, 310, 1118, 479, 5179, 287, 287, 348, 0.5, 0.2, 9, 30, 32, 345, 0.5, 0.5, 0.5, 1, 0, 6, 13, 0.78, 1128, 1128, 98, 193, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (43, 43, 2013, 364, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89.6, 126, 1, 1, 0, 3612, 0, 9, 8, 9, 4, 9, 4, 0, 663, 257, 17, 177, 0, 9, 0, 1, 60.2, 18, 336, 828, 0, 1, 0, 1, 58, 120, 26, 3, 110, 1, 160, 0, 30.95, 93.86, 933.85, 0, 5, 23, 15, 5, 0, 0, 0, 0, 0, 0, 1780, 827, 1839, 610, 3612, 478, 92, 135, 0.5, 0.2, 40, 60, 42, 369, 0.5, 0.5, 1, 1, 0, 21, 4, 0.61, 2220, 2220, 37, 234, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (44, 44, 2013, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92.6, 62, 0, 0, 0, 471, 1, 0, 0, 0, 0, 0, 0, 3, 231, 45, 9, 30, 0, 4, 0, 1, 42.2, 5, 109, 120, 0, 3, 0, 3, 9, 0, 4, 3, 20, 0, 20, 0, 0, 0, 175, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590, 158, 621, 265, 509, 199, 199, 265, 0.5, 0.4, 32, 57, 32, 119, 1, 1, 1, 1, 0, 10, 5, 0.79, 19, 49, 22, 53, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (45, 45, 2013, 696, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94.3, 147, 1, 0, 0, 5011, 0, 42, 31, 6, 4, 6, 6, 30, 170, 591, 77, 286, 0, 6, 0, 1, 50.6, 36, 698, 790, 0, 6, 0, 0, 103, 85, 49, 3, 169, 4, 306, 1, 0, 0, 579.93, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 956, 956, 983, 478, 3139, 290, 290, 444, 1, 0.4, 42, 436, 72, 507, 0.5, 0.5, 1, 1, 0, 13, 9, 0.68, 59, 59, 245, 427, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (46, 46, 2013, 953, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 206, 7, 5, 0, 10345, 0, 15, 30, 8, 6, 4, 0, 0, 343, 551, 61, 426, 0, 4, 0, 1, 55.7, 43, 1511, 2389, 0, 3, 0, 0, 82, 302, 24, 0, 86, 0, 164, 0, 0, 470.26, 1171.31, 0, 6, 28, 5, 1, 0, 0, 0, 0, 0, 0, 1279, 1186, 1489, 1480, 6150, 1320, 1320, 312, 1, 1, 74, 22, 74, 464, 1, 1, 0.5, 1, 0, 2, 1, 0.96, 669, 1027, 76, 190, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (47, 47, 2013, 219, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97.7, 94, 4, 3, 0, 1510, 0, 4, 4, 0, 0, 8, 1, 0, 72, 178, 45, 120, 0, 3, 0, 1, 60.7, 4, 385, 449, 0, 1, 0, 1, 102, 130, 5, 1, 115, 0, 113, 0, 0, 36.74, 275.87, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 479, 184, 479, 415, 1530, 250, 250, 365, 0.5, 0.8, 1, 7, 23, 181, 1, 1, 1, 1, 0, 17, 7, 0.54, 1627, 1627, 16, 95, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (48, 48, 2013, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92.4, 155, 4, 1, 0, 6043, 1, 10, 5, 0, 0, 19, 28, 9, 237, 451, 95, 301, 0, 1, 0, 1, 64.8, 91, 1637, 1753, 0, 8, 0, 3, 2, 46, 3, 5, 127, 0, 235, 0, 0, 0, 164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1123, 667, 1367, 607, 5975, 607, 607, 312, 1, 0.8, 40, 244, 45, 460, 1, 0.5, 1, 1, 0, 9, 44, 0.77, 0, 0, 61, 217, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (49, 49, 2013, 351, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90.9, 126, 0, 0, 0, 3922, 0, 5, 8, 1, 0, 1, 0, 0, 194, 243, 41, 134, 0, 9, 0, 1, 47.6, 28, 523, 1014, 0, 3, 0, 1, 16, 41, 8, 1, 74, 0, 122, 0, 37.51, 163.91, 1224.89, 0, 10, 7, 0, 2, 1, 0, 0, 0, 0, 0, 1728, 868, 1931, 454, 3537, 410, 410, 331, 0.5, 0.4, 12, 150, 42, 342, 1, 0.5, 1, 1, 0, 44, 44, 0.55, 1081, 1257, 52, 118, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (50, 50, 2013, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96.6, 104, 0, 0, 0, 6485, 0, 1, 7, 3, 0, 1, 0, 0, 232, 424, 164, 273, 0, 25, 0, 1, 44.4, 5, 1308, 1504, 0, 1, 0, 0, 15, 2, 5, 1, 23, 0, 75, 0, 0, 7, 139.04, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2067, 1104, 3930, 616, 6513, 228, 228, 321, 0.5, 0.4, 3, 2, 50, 399, 1, 1, 0.5, 0.5, 0, 38, 44, 0.52, 893, 910, 35, 295, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (51, 51, 2013, 371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92.6, 97, 0, 2, 0, 1921, 0, 3, 1, 0, 0, 0, 0, 0, 54, 206, 29, 133, 0, 10, 0, 1, 57.4, 21, 393, 509, 0, 1, 1, 1, 0, 18, 12, 0, 35, 1, 46, 29, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1426, 1026, 1656, 158, 1809, 143, 143, 68, 0.5, 0.4, 10, 0, 25, 228, 0.5, 0.5, 0.5, 0.5, 0, 45, 41, 0.44, 689, 836, 35, 52, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (52, 52, 2013, 428, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92.8, 105, 0, 0, 0, 4130, 1, 4, 5, 0, 0, 5, 0, 0, 118, 260, 13, 105, 0, 1, 0, 1, 52.8, 17, 733, 878, 13, 44, 0, 0, 0, 0, 23, 0, 40, 0, 52, 12, 0, 19.4, 22, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 547, 244, 728, 248, 4130, 90, 90, 40, 1, 0.2, 22, 37, 22, 318, 0.5, 0.5, 0.5, 0.5, 0, 49, 44, 0.74, 158, 158, 21, 72, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (53, 53, 2013, 738, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 82.5, 336, 4, 11, 0, 5933, 16, 32, 46, 18, 0, 12, 1, 5, 135, 490, 255, 361, 2, 9, 0, 1, 54.2, 23, 1401, 1474, 0, 9, 0, 0, 30, 374, 30, 7, 47, 3, 98, 4, 0, 0, 284.6, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 656, 291, 1780, 717, 5860, 200, 200, 93, 1, 0.2, 25, 0, 36, 477, 0.5, 0, 1, 1, 0, 49, 44, 0.59, 0, 0, 23, 400, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (54, 54, 2013, 181, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92.3, 136, 0, 0, 0, 1171, 9, 2, 24, 0, 0, 16, 23, 14, 162, 127, 64, 81, 3, 0, 0, 1, 50, 4, 160, 276, 1, 7, 0, 0, 53, 137, 17, 15, 9, 0, 65, 1, 0, 54, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1425, 962, 1618, 500, 1187, 300, 300, 60, 1, 0.2, 31, 197, 31, 197, 0.5, 0.5, 1, 0.5, 0, 14, 6, 0.55, 0, 0, 31, 104, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (55, 55, 2013, 678, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95.3, 76, 0, 1, 0, 6638, 1, 69, 11, 12, 7, 0, 0, 0, 830, 411, 100, 266, 1, 12, 0, 1, 50.4, 80, 1332, 1633, 0, 9, 0, 0, 0, 96, 19, 11, 108, 1, 138, 1, 53.57, 111.77, 302.71, 0, 4, 6, 12, 15, 0, 0, 0, 0, 0, 0, 2302, 2302, 2552, 1033, 6694, 717, 717, 213, 1, 1, 39, 443, 39, 443, 1, 1, 1, 1, 0, 49, 34, 0.55, 1537, 1993, 76, 227, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (56, 56, 2013, 611, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.5, 113, 0, 1, 0, 5502, 0, 6, 0, 0, 0, 1, 0, 0, 576, 397, 34, 172, 0, 7, 0, 1, 64.4, 93, 1051, 1412, 0, 4, 0, 0, 80, 228, 14, 3, 39, 0, 161, 1, 0, 13, 73.45, 0, 1, 0, 0, 4, 0, 0, 0, 0, 0, 0, 1782, 1163, 2104, 640, 6280, 270, 270, 320, 0.5, 0.8, 21, 300, 44, 456, 0.5, 0.5, 1, 1, 0, 25, 44, 0.57, 775, 817, 34, 275, NULL)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20], [university_id])
VALUES 
  (57, 57, 2013, 480, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89.5, 103, 1, 2, 0, 5141, 0, 0, 0, 13, 4, 2, 0, 0, 454, 181, 1, 106, 0, 8, 0, 1, 52.2, 30, 832, 1126, 0, 0, 0, 0, 22, 101, 16, 1, 38, 0, 120, 0, 0, 49.75, 127.14, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2010, 1756, 2260, 404, 5116, 310, 296, 63, 1, 0.2, 28, 215, 38, 385, 0.5, 0.5, 1, 1, 0, 12, 20, 0.49, 1372, 1753, 24, 309, NULL)
GO

SET IDENTITY_INSERT [dbo].[raiting] OFF
GO

--
-- Data for table dbo.region  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[region] ON
GO

INSERT INTO [dbo].[region] ([id], [name_RU], [name_UZ])
VALUES 
  (1, N'Ташкент', N'Toshkent')
GO

INSERT INTO [dbo].[region] ([id], [name_RU], [name_UZ])
VALUES 
  (2, N'Республика Каракалпакстан', N'Qoraqalpog’iston Respublikasi')
GO

INSERT INTO [dbo].[region] ([id], [name_RU], [name_UZ])
VALUES 
  (3, N'Андижанская область', N'Andijon viloyati')
GO

INSERT INTO [dbo].[region] ([id], [name_RU], [name_UZ])
VALUES 
  (4, N'Бухарская область', N'Buxoro viloyati')
GO

INSERT INTO [dbo].[region] ([id], [name_RU], [name_UZ])
VALUES 
  (5, N'Джизакская область', N'Jizzah viloyati')
GO

INSERT INTO [dbo].[region] ([id], [name_RU], [name_UZ])
VALUES 
  (6, N'Кашкадарьинская область', N'Qashqadaryo viloyati')
GO

INSERT INTO [dbo].[region] ([id], [name_RU], [name_UZ])
VALUES 
  (7, N'Навоийская область', N'Navoiy viloyati')
GO

INSERT INTO [dbo].[region] ([id], [name_RU], [name_UZ])
VALUES 
  (8, N'Наманганская область', N'Namangan viloyati')
GO

INSERT INTO [dbo].[region] ([id], [name_RU], [name_UZ])
VALUES 
  (9, N'Самаркандская область', N'Samarqand viloyati')
GO

INSERT INTO [dbo].[region] ([id], [name_RU], [name_UZ])
VALUES 
  (10, N'Сурхандарьинская область', N'Surxondaryo viloyati')
GO

INSERT INTO [dbo].[region] ([id], [name_RU], [name_UZ])
VALUES 
  (11, N'Сырдарьинская область', N'Sirdaryo viloyati')
GO

INSERT INTO [dbo].[region] ([id], [name_RU], [name_UZ])
VALUES 
  (12, N'Ташкентская область', N'Toshkent viloyati')
GO

INSERT INTO [dbo].[region] ([id], [name_RU], [name_UZ])
VALUES 
  (13, N'Ферганская область', N'Farg’ona viloyati')
GO

INSERT INTO [dbo].[region] ([id], [name_RU], [name_UZ])
VALUES 
  (14, N'Хорезмская область', N'Xorazm viloyati')
GO

SET IDENTITY_INSERT [dbo].[region] OFF
GO

--
-- Definition for indices : 
--

ALTER TABLE [dbo].[__MigrationHistory]
ADD CONSTRAINT [PK_dbo.__MigrationHistory] 
PRIMARY KEY CLUSTERED ([MigrationId], [ContextKey])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[branch]
ADD CONSTRAINT [PK_dbo.branch] 
PRIMARY KEY CLUSTERED ([id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[region]
ADD CONSTRAINT [PK_dbo.region] 
PRIMARY KEY CLUSTERED ([id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_branch_id] ON [dbo].[university]
  ([branch_id])
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

CREATE NONCLUSTERED INDEX [IX_region_id] ON [dbo].[university]
  ([region_id])
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

ALTER TABLE [dbo].[university]
ADD CONSTRAINT [PK_dbo.university] 
PRIMARY KEY CLUSTERED ([id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_university_id] ON [dbo].[chislennost_pps_vuza]
  ([university_id])
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

CREATE NONCLUSTERED INDEX [IX_university_id1] ON [dbo].[chislennost_pps_vuza]
  ([university_id1])
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

ALTER TABLE [dbo].[chislennost_pps_vuza]
ADD CONSTRAINT [PK_dbo.chislennost_pps_vuza] 
PRIMARY KEY CLUSTERED ([id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_university_id] ON [dbo].[citiruemost_publikaciy_pps_vuza]
  ([university_id])
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

CREATE NONCLUSTERED INDEX [IX_university_id1] ON [dbo].[citiruemost_publikaciy_pps_vuza]
  ([university_id1])
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

ALTER TABLE [dbo].[citiruemost_publikaciy_pps_vuza]
ADD CONSTRAINT [PK_dbo.citiruemost_publikaciy_pps_vuza] 
PRIMARY KEY CLUSTERED ([id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_university_id] ON [dbo].[darslik]
  ([university_id])
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

CREATE NONCLUSTERED INDEX [IX_university_id1] ON [dbo].[darslik]
  ([university_id1])
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

ALTER TABLE [dbo].[darslik]
ADD CONSTRAINT [PK_dbo.darslik] 
PRIMARY KEY CLUSTERED ([id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_university_id] ON [dbo].[effektivnost_nir_dalolatnoma]
  ([university_id])
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

CREATE NONCLUSTERED INDEX [IX_university_id1] ON [dbo].[effektivnost_nir_dalolatnoma]
  ([university_id1])
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

ALTER TABLE [dbo].[effektivnost_nir_dalolatnoma]
ADD CONSTRAINT [PK_dbo.effektivnost_nir_dalolatnoma] 
PRIMARY KEY CLUSTERED ([id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_university_id] ON [dbo].[effektivnost_nir_patent]
  ([university_id])
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

CREATE NONCLUSTERED INDEX [IX_university_id1] ON [dbo].[effektivnost_nir_patent]
  ([university_id1])
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

ALTER TABLE [dbo].[effektivnost_nir_patent]
ADD CONSTRAINT [PK_dbo.effektivnost_nir_patent] 
PRIMARY KEY CLUSTERED ([id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_university_id] ON [dbo].[effektivnost_nir_sertifikat]
  ([university_id])
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

CREATE NONCLUSTERED INDEX [IX_university_id1] ON [dbo].[effektivnost_nir_sertifikat]
  ([university_id1])
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

ALTER TABLE [dbo].[effektivnost_nir_sertifikat]
ADD CONSTRAINT [PK_dbo.effektivnost_nir_sertifikat] 
PRIMARY KEY CLUSTERED ([id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_university_id] ON [dbo].[granti_po_vidam_issledovaniy]
  ([university_id])
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

CREATE NONCLUSTERED INDEX [IX_university_id1] ON [dbo].[granti_po_vidam_issledovaniy]
  ([university_id1])
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

ALTER TABLE [dbo].[granti_po_vidam_issledovaniy]
ADD CONSTRAINT [PK_dbo.granti_po_vidam_issledovaniy] 
PRIMARY KEY CLUSTERED ([id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_university_id] ON [dbo].[informaciya_o_dissertaciyah]
  ([university_id])
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

ALTER TABLE [dbo].[informaciya_o_dissertaciyah]
ADD CONSTRAINT [PK_dbo.informaciya_o_dissertaciyah] 
PRIMARY KEY CLUSTERED ([id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Jadval_AKTdaraja_1_7]
ADD CONSTRAINT [PK_dbo.Jadval_AKTdaraja_1_7] 
PRIMARY KEY CLUSTERED ([Id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Jadval_bitiruvchi_2_2]
ADD CONSTRAINT [PK_dbo.Jadval_bitiruvchi_2_2] 
PRIMARY KEY CLUSTERED ([Id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Jadval_talababilim_2_1]
ADD CONSTRAINT [PK_dbo.Jadval_talababilim_2_1] 
PRIMARY KEY CLUSTERED ([Id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Jadval_talimsifati_1_2]
ADD CONSTRAINT [PK_dbo.Jadval_talimsifati_1_2] 
PRIMARY KEY CLUSTERED ([Id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Jadval1]
ADD CONSTRAINT [PK_dbo.Jadval1] 
PRIMARY KEY CLUSTERED ([Id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Jadval10]
ADD CONSTRAINT [PK_dbo.Jadval10] 
PRIMARY KEY CLUSTERED ([Id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Jadval11]
ADD CONSTRAINT [PK_dbo.Jadval11] 
PRIMARY KEY CLUSTERED ([Id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Jadval18]
ADD CONSTRAINT [PK_dbo.Jadval18] 
PRIMARY KEY CLUSTERED ([Id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Jadval19]
ADD CONSTRAINT [PK_dbo.Jadval19] 
PRIMARY KEY CLUSTERED ([Id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Jadval2]
ADD CONSTRAINT [PK_dbo.Jadval2] 
PRIMARY KEY CLUSTERED ([Id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Jadval20]
ADD CONSTRAINT [PK_dbo.Jadval20] 
PRIMARY KEY CLUSTERED ([Id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Jadval21]
ADD CONSTRAINT [PK_dbo.Jadval21] 
PRIMARY KEY CLUSTERED ([Id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Jadval32]
ADD CONSTRAINT [PK_dbo.Jadval32] 
PRIMARY KEY CLUSTERED ([Id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Jadval5]
ADD CONSTRAINT [PK_dbo.Jadval5] 
PRIMARY KEY CLUSTERED ([Id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Jadval6]
ADD CONSTRAINT [PK_dbo.Jadval6] 
PRIMARY KEY CLUSTERED ([Id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Jadval7]
ADD CONSTRAINT [PK_dbo.Jadval7] 
PRIMARY KEY CLUSTERED ([Id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Jadval8]
ADD CONSTRAINT [PK_dbo.Jadval8] 
PRIMARY KEY CLUSTERED ([Id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Jadval9]
ADD CONSTRAINT [PK_dbo.Jadval9] 
PRIMARY KEY CLUSTERED ([Id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_university_id] ON [dbo].[kolichestvo_izdannih_mejdunarodnih_statey]
  ([university_id])
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

ALTER TABLE [dbo].[kolichestvo_izdannih_mejdunarodnih_statey]
ADD CONSTRAINT [PK_dbo.kolichestvo_izdannih_mejdunarodnih_statey] 
PRIMARY KEY CLUSTERED ([id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_university_id] ON [dbo].[kolichestvo_izdannih_mestnih_statey]
  ([university_id])
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

ALTER TABLE [dbo].[kolichestvo_izdannih_mestnih_statey]
ADD CONSTRAINT [PK_dbo.kolichestvo_izdannih_mestnih_statey] 
PRIMARY KEY CLUSTERED ([id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_university_id] ON [dbo].[majmua]
  ([university_id])
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

CREATE NONCLUSTERED INDEX [IX_university_id1] ON [dbo].[majmua]
  ([university_id1])
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

ALTER TABLE [dbo].[majmua]
ADD CONSTRAINT [PK_dbo.majmua] 
PRIMARY KEY CLUSTERED ([id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Monitorings]
ADD CONSTRAINT [PK_dbo.Monitorings] 
PRIMARY KEY CLUSTERED ([Id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_university_id] ON [dbo].[monografiya]
  ([university_id])
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

CREATE NONCLUSTERED INDEX [IX_university_id1] ON [dbo].[monografiya]
  ([university_id1])
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

ALTER TABLE [dbo].[monografiya]
ADD CONSTRAINT [PK_dbo.monografiya] 
PRIMARY KEY CLUSTERED ([id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_university_id] ON [dbo].[nalichie_elektronnoy_literaturi]
  ([university_id])
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

CREATE NONCLUSTERED INDEX [IX_university_id1] ON [dbo].[nalichie_elektronnoy_literaturi]
  ([university_id1])
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

ALTER TABLE [dbo].[nalichie_elektronnoy_literaturi]
ADD CONSTRAINT [PK_dbo.nalichie_elektronnoy_literaturi] 
PRIMARY KEY CLUSTERED ([id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_university_id] ON [dbo].[nalichie_informacii_o_vuze_v_internete]
  ([university_id])
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

CREATE NONCLUSTERED INDEX [IX_university_id1] ON [dbo].[nalichie_informacii_o_vuze_v_internete]
  ([university_id1])
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

ALTER TABLE [dbo].[nalichie_informacii_o_vuze_v_internete]
ADD CONSTRAINT [PK_dbo.nalichie_informacii_o_vuze_v_internete] 
PRIMARY KEY CLUSTERED ([id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_university_id] ON [dbo].[nalichie_multimedia_v_auditorii]
  ([university_id])
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

CREATE NONCLUSTERED INDEX [IX_university_id1] ON [dbo].[nalichie_multimedia_v_auditorii]
  ([university_id1])
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

ALTER TABLE [dbo].[nalichie_multimedia_v_auditorii]
ADD CONSTRAINT [PK_dbo.nalichie_multimedia_v_auditorii] 
PRIMARY KEY CLUSTERED ([id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_university_id] ON [dbo].[osnashennost_laboratoriy]
  ([university_id])
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

CREATE NONCLUSTERED INDEX [IX_university_id1] ON [dbo].[osnashennost_laboratoriy]
  ([university_id1])
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

ALTER TABLE [dbo].[osnashennost_laboratoriy]
ADD CONSTRAINT [PK_dbo.osnashennost_laboratoriy] 
PRIMARY KEY CLUSTERED ([id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_university_id] ON [dbo].[qullanma]
  ([university_id])
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

CREATE NONCLUSTERED INDEX [IX_university_id1] ON [dbo].[qullanma]
  ([university_id1])
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

ALTER TABLE [dbo].[qullanma]
ADD CONSTRAINT [PK_dbo.qullanma] 
PRIMARY KEY CLUSTERED ([id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_university_id] ON [dbo].[raiting]
  ([university_id])
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

ALTER TABLE [dbo].[raiting]
ADD CONSTRAINT [PK_dbo.raiting] 
PRIMARY KEY CLUSTERED ([id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[raiting]
ADD CONSTRAINT [unique_comulms] 
UNIQUE NONCLUSTERED ([year], [id_university])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_university_id] ON [dbo].[stepen_vnedreniya_ikt]
  ([university_id])
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

CREATE NONCLUSTERED INDEX [IX_university_id1] ON [dbo].[stepen_vnedreniya_ikt]
  ([university_id1])
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

ALTER TABLE [dbo].[stepen_vnedreniya_ikt]
ADD CONSTRAINT [PK_dbo.stepen_vnedreniya_ikt] 
PRIMARY KEY CLUSTERED ([id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_university_id] ON [dbo].[summi_mejdunarodnih_grantov]
  ([university_id])
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

CREATE NONCLUSTERED INDEX [IX_university_id1] ON [dbo].[summi_mejdunarodnih_grantov]
  ([university_id1])
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

ALTER TABLE [dbo].[summi_mejdunarodnih_grantov]
ADD CONSTRAINT [PK_dbo.summi_mejdunarodnih_grantov] 
PRIMARY KEY CLUSTERED ([id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_university_id] ON [dbo].[summi_respublikanskih_grantov]
  ([university_id])
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

CREATE NONCLUSTERED INDEX [IX_university_id1] ON [dbo].[summi_respublikanskih_grantov]
  ([university_id1])
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

ALTER TABLE [dbo].[summi_respublikanskih_grantov]
ADD CONSTRAINT [PK_dbo.summi_respublikanskih_grantov] 
PRIMARY KEY CLUSTERED ([id])
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

ALTER TABLE [dbo].[university]
ADD FOREIGN KEY ([id_branch]) 
  REFERENCES [dbo].[branch] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[university]
ADD FOREIGN KEY ([id_region]) 
  REFERENCES [dbo].[region] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[university]
ADD CONSTRAINT [FK_dbo.university_dbo.branch_branch_id] FOREIGN KEY ([branch_id]) 
  REFERENCES [dbo].[branch] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[university]
ADD CONSTRAINT [FK_dbo.university_dbo.region_region_id] FOREIGN KEY ([region_id]) 
  REFERENCES [dbo].[region] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[chislennost_pps_vuza]
ADD CONSTRAINT [FK_dbo.chislennost_pps_vuza_dbo.universities_university_id] FOREIGN KEY ([university_id]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[chislennost_pps_vuza]
ADD CONSTRAINT [FK_dbo.chislennost_pps_vuza_dbo.university_university_id1] FOREIGN KEY ([university_id1]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[citiruemost_publikaciy_pps_vuza]
ADD CONSTRAINT [FK_dbo.citiruemost_publikaciy_pps_vuza_dbo.universities_university_id] FOREIGN KEY ([university_id]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[citiruemost_publikaciy_pps_vuza]
ADD CONSTRAINT [FK_dbo.citiruemost_publikaciy_pps_vuza_dbo.university_university_id1] FOREIGN KEY ([university_id1]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[darslik]
ADD CONSTRAINT [FK_dbo.darslik_dbo.university_university_id1] FOREIGN KEY ([university_id1]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[darslik]
ADD CONSTRAINT [FK_dbo.darsliks_dbo.universities_university_id] FOREIGN KEY ([university_id]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[effektivnost_nir_dalolatnoma]
ADD CONSTRAINT [FK_dbo.effektivnost_nir_dalolatnoma_dbo.universities_university_id] FOREIGN KEY ([university_id]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[effektivnost_nir_dalolatnoma]
ADD CONSTRAINT [FK_dbo.effektivnost_nir_dalolatnoma_dbo.university_university_id1] FOREIGN KEY ([university_id1]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[effektivnost_nir_patent]
ADD CONSTRAINT [FK_dbo.effektivnost_nir_patent_dbo.universities_university_id] FOREIGN KEY ([university_id]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[effektivnost_nir_patent]
ADD CONSTRAINT [FK_dbo.effektivnost_nir_patent_dbo.university_university_id1] FOREIGN KEY ([university_id1]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[effektivnost_nir_sertifikat]
ADD CONSTRAINT [FK_dbo.effektivnost_nir_sertifikat_dbo.universities_university_id] FOREIGN KEY ([university_id]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[effektivnost_nir_sertifikat]
ADD CONSTRAINT [FK_dbo.effektivnost_nir_sertifikat_dbo.university_university_id1] FOREIGN KEY ([university_id1]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[granti_po_vidam_issledovaniy]
ADD CONSTRAINT [FK_dbo.granti_po_vidam_issledovaniy_dbo.universities_university_id] FOREIGN KEY ([university_id]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[granti_po_vidam_issledovaniy]
ADD CONSTRAINT [FK_dbo.granti_po_vidam_issledovaniy_dbo.university_university_id1] FOREIGN KEY ([university_id1]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[informaciya_o_dissertaciyah]
ADD FOREIGN KEY ([id_university]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[informaciya_o_dissertaciyah]
ADD CONSTRAINT [FK_dbo.informaciya_o_dissertaciyah_dbo.university_university_id] FOREIGN KEY ([university_id]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[kolichestvo_izdannih_mejdunarodnih_statey]
ADD FOREIGN KEY ([id_university]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[kolichestvo_izdannih_mejdunarodnih_statey]
ADD CONSTRAINT [FK_dbo.kolichestvo_izdannih_mejdunarodnih_statey_dbo.university_university_id] FOREIGN KEY ([university_id]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[kolichestvo_izdannih_mestnih_statey]
ADD FOREIGN KEY ([id_university]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[kolichestvo_izdannih_mestnih_statey]
ADD CONSTRAINT [FK_dbo.kolichestvo_izdannih_mestnih_statey_dbo.university_university_id] FOREIGN KEY ([university_id]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[majmua]
ADD CONSTRAINT [FK_dbo.majmua_dbo.university_university_id1] FOREIGN KEY ([university_id1]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[majmua]
ADD CONSTRAINT [FK_dbo.majmuas_dbo.universities_university_id] FOREIGN KEY ([university_id]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[monografiya]
ADD CONSTRAINT [FK_dbo.monografiya_dbo.university_university_id1] FOREIGN KEY ([university_id1]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[monografiya]
ADD CONSTRAINT [FK_dbo.monografiyas_dbo.universities_university_id] FOREIGN KEY ([university_id]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[nalichie_elektronnoy_literaturi]
ADD CONSTRAINT [FK_dbo.nalichie_elektronnoy_literaturi_dbo.universities_university_id] FOREIGN KEY ([university_id]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[nalichie_elektronnoy_literaturi]
ADD CONSTRAINT [FK_dbo.nalichie_elektronnoy_literaturi_dbo.university_university_id1] FOREIGN KEY ([university_id1]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[nalichie_informacii_o_vuze_v_internete]
ADD CONSTRAINT [FK_dbo.nalichie_informacii_o_vuze_v_internete_dbo.universities_university_id] FOREIGN KEY ([university_id]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[nalichie_informacii_o_vuze_v_internete]
ADD CONSTRAINT [FK_dbo.nalichie_informacii_o_vuze_v_internete_dbo.university_university_id1] FOREIGN KEY ([university_id1]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[nalichie_multimedia_v_auditorii]
ADD CONSTRAINT [FK_dbo.nalichie_multimedia_v_auditorii_dbo.universities_university_id] FOREIGN KEY ([university_id]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[nalichie_multimedia_v_auditorii]
ADD CONSTRAINT [FK_dbo.nalichie_multimedia_v_auditorii_dbo.university_university_id1] FOREIGN KEY ([university_id1]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[osnashennost_laboratoriy]
ADD CONSTRAINT [FK_dbo.osnashennost_laboratoriy_dbo.universities_university_id] FOREIGN KEY ([university_id]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[osnashennost_laboratoriy]
ADD CONSTRAINT [FK_dbo.osnashennost_laboratoriy_dbo.university_university_id1] FOREIGN KEY ([university_id1]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[qullanma]
ADD CONSTRAINT [FK_dbo.qullanma_dbo.university_university_id1] FOREIGN KEY ([university_id1]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[qullanma]
ADD CONSTRAINT [FK_dbo.qullanmas_dbo.universities_university_id] FOREIGN KEY ([university_id]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[raiting]
ADD FOREIGN KEY ([id_university]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[raiting]
ADD CONSTRAINT [FK_dbo.raiting_dbo.university_university_id] FOREIGN KEY ([university_id]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[stepen_vnedreniya_ikt]
ADD CONSTRAINT [FK_dbo.stepen_vnedreniya_ikt_dbo.universities_university_id] FOREIGN KEY ([university_id]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[stepen_vnedreniya_ikt]
ADD CONSTRAINT [FK_dbo.stepen_vnedreniya_ikt_dbo.university_university_id1] FOREIGN KEY ([university_id1]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[summi_mejdunarodnih_grantov]
ADD CONSTRAINT [FK_dbo.summi_mejdunarodnih_grantov_dbo.universities_university_id] FOREIGN KEY ([university_id]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[summi_mejdunarodnih_grantov]
ADD CONSTRAINT [FK_dbo.summi_mejdunarodnih_grantov_dbo.university_university_id1] FOREIGN KEY ([university_id1]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[summi_respublikanskih_grantov]
ADD CONSTRAINT [FK_dbo.summi_respublikanskih_grantov_dbo.universities_university_id] FOREIGN KEY ([university_id]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[summi_respublikanskih_grantov]
ADD CONSTRAINT [FK_dbo.summi_respublikanskih_grantov_dbo.university_university_id1] FOREIGN KEY ([university_id1]) 
  REFERENCES [dbo].[university] ([id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

