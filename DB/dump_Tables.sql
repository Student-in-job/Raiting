-- SQL Manager 2011 for SQL Server 3.7.0.2
-- ---------------------------------------
-- Host      : (local)
-- Database  : Tables
-- Version   : Microsoft SQL Server  11.0.2100.60


DROP USER [DEVELOPER-PC\DEVELOPER]
GO

DROP USER [IIS APPPOOL\DefaultAppPool]
GO

DROP USER [WIN-SOLBTCC0PCI\Администратор]
GO

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
-- Dropping view I3_kolichestvo_uchebnikov_i_posobiy : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I3_kolichestvo_uchebnikov_i_posobiy]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I3_kolichestvo_uchebnikov_i_posobiy]
GO

--
-- Dropping view I3 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I3]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I3]
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
-- Dropping view I5 : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I5]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I5]
GO

--
-- Dropping view I5_uchastie_v_programme_obmena : 
--

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[I5_uchastie_v_programme_obmena]') AND OBJECTPROPERTY(id, N'IsView') = 1)
  DROP VIEW [dbo].[I5_uchastie_v_programme_obmena]
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
-- Definition for user DEVELOPER-PC\DEVELOPER : 
--

IF NOT EXISTS (SELECT * FROM dbo.sysusers WHERE name = N'DEVELOPER-PC\DEVELOPER')
BEGIN
  CREATE USER [DEVELOPER-PC\DEVELOPER]
    WITHOUT LOGIN 
    WITH DEFAULT_SCHEMA = [dbo]
END
GO

--
-- Definition for user IIS APPPOOL\DefaultAppPool : 
--

IF NOT EXISTS (SELECT * FROM dbo.sysusers WHERE name = N'IIS APPPOOL\DefaultAppPool')
BEGIN
  CREATE USER [IIS APPPOOL\DefaultAppPool]
    FOR LOGIN  [IIS APPPOOL\DefaultAppPool]
    WITH DEFAULT_SCHEMA = [dbo]
END
GO

--
-- Definition for user WIN-SOLBTCC0PCI\Администратор : 
--

IF NOT EXISTS (SELECT * FROM dbo.sysusers WHERE name = N'WIN-SOLBTCC0PCI\Администратор')
BEGIN
  CREATE USER [WIN-SOLBTCC0PCI\Администратор]
    FOR LOGIN  [WIN-SOLBTCC0PCI\Администратор]
    WITH DEFAULT_SCHEMA = [dbo]
END
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
  [name] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL
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
  [name_UZ] varchar(500) COLLATE Cyrillic_General_CI_AS NULL
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
  [university_id] int NULL
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
  [university_id] int NULL
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
  [university_id] int NULL
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
  [university_id] int NULL
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
  [university_id] int NULL
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
  [university_id] int NULL
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
  [university_id] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table informaciya_o_dissertaciyah : 
--

CREATE TABLE [dbo].[informaciya_o_dissertaciyah] (
  [id] int IDENTITY(1, 1) NOT NULL,
  [fio] varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  [work_place] varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  [iht_shifr] varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  [iht_nomi] varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  [disser_name] varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  [kengash_shifr] varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  [kengash_email] varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  [date] varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  [year] int NULL,
  [id_university] int NULL
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
  [UniversityId] int NULL,
  [status] int NULL
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
  [status] int NULL
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
  [AsosFile] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Year] smallint NOT NULL,
  [UniversityId] int NOT NULL,
  [status] int NULL
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
  [status] int NULL
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
  [AsosFile] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Year] smallint NOT NULL,
  [UniversityId] int NOT NULL,
  [TanlovTuri] int NOT NULL,
  [status] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Jadval2 : 
--

CREATE TABLE [dbo].[Jadval2] (
  [Id] int IDENTITY(1, 1) NOT NULL,
  [FullName] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Jadval1_Id] int NOT NULL,
  [Phd_seriya] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Phd_nomer] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Mag_seriya] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Mag_nomer] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Speciality] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Ishga_qabul_buyruq] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Year] smallint NOT NULL,
  [UniversityId] int NOT NULL,
  [AsosFile] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [status] int NULL
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
  [status] int NULL
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
  [status] int NULL
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
  [status] int NULL
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
  [Asos] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Asos_fayl] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Year] smallint NOT NULL,
  [UniversityId] int NOT NULL,
  [status] int NULL
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
  [Asos] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Asos_fayl] nvarchar(max) COLLATE Cyrillic_General_CI_AS NULL,
  [Year] smallint NOT NULL,
  [UniversityId] int NOT NULL,
  [status] int NULL
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
  [status] int NULL
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
  [status] int NULL
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
  [status] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table kolichestvo_izdannih_mejdunarodnih_statey : 
--

CREATE TABLE [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] (
  [id] int IDENTITY(1, 1) NOT NULL,
  [fio] varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  [country] varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  [journal] varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  [paper] varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  [paper_year] varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  [link] varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  [coauthor_count] float NULL,
  [filename] varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  [year] int NULL,
  [id_university] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table kolichestvo_izdannih_mestnih_statey : 
--

CREATE TABLE [dbo].[kolichestvo_izdannih_mestnih_statey] (
  [id] int IDENTITY(1, 1) NOT NULL,
  [fio] varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  [journal] varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  [paper] varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  [paper_year] varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  [link] varchar(1000) COLLATE Cyrillic_General_CI_AS NULL,
  [coauthor_count] float NULL,
  [filename] varchar(100) COLLATE Cyrillic_General_CI_AS NULL,
  [year] int NULL,
  [id_university] int NULL
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
  [university_id] int NULL
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
  [university_id] int NULL
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
  [university_id] int NULL
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
  [university_id] int NULL
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
  [university_id] int NULL
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
  [university_id] int NULL
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
  [university_id] int NULL
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
  [p] float DEFAULT 0 NULL,
  [px] float DEFAULT 0 NULL,
  [py] float DEFAULT 0 NULL,
  [n1] float DEFAULT 0 NULL,
  [n2] float DEFAULT 0 NULL,
  [n3] float DEFAULT 0 NULL,
  [n41] float DEFAULT 0 NULL,
  [n51] float DEFAULT 0 NULL,
  [n42] float DEFAULT 0 NULL,
  [n52] float DEFAULT 0 NULL,
  [n43] float DEFAULT 0 NULL,
  [n53] float DEFAULT 0 NULL,
  [i2] float DEFAULT 0 NULL,
  [t] float DEFAULT 0 NULL,
  [s1] float DEFAULT 0 NULL,
  [s2] float DEFAULT 0 NULL,
  [s3] float DEFAULT 0 NULL,
  [p1] float DEFAULT 0 NULL,
  [p2] float DEFAULT 0 NULL,
  [p3] float DEFAULT 0 NULL,
  [p4] float DEFAULT 0 NULL,
  [p5] float DEFAULT 0 NULL,
  [p5_1] float DEFAULT 0 NULL,
  [p6] float DEFAULT 0 NULL,
  [p6_1] float DEFAULT 0 NULL,
  [k1] float DEFAULT 0 NULL,
  [k] float DEFAULT 0 NULL,
  [ty] float DEFAULT 0 NULL,
  [p7] float DEFAULT 0 NULL,
  [p8] float DEFAULT 0 NULL,
  [pz] float DEFAULT 0 NULL,
  [p9] float DEFAULT 0 NULL,
  [tsi] float DEFAULT 0 NULL,
  [tsti] float DEFAULT 0 NULL,
  [r1] float DEFAULT 0 NULL,
  [r] float DEFAULT 0 NULL,
  [p10] float DEFAULT 0 NULL,
  [p11] float DEFAULT 0 NULL,
  [p1_2] float DEFAULT 0 NULL,
  [p1_3] float DEFAULT 0 NULL,
  [p1_4] float DEFAULT 0 NULL,
  [p1_5] float DEFAULT 0 NULL,
  [s4] float DEFAULT 0 NULL,
  [s5] float DEFAULT 0 NULL,
  [s7] float DEFAULT 0 NULL,
  [s8] float DEFAULT 0 NULL,
  [s9] float DEFAULT 0 NULL,
  [d] float DEFAULT 0 NULL,
  [z] float DEFAULT 0 NULL,
  [v] float DEFAULT 0 NULL,
  [t4] float DEFAULT 0 NULL,
  [t5] float DEFAULT 0 NULL,
  [t6] float DEFAULT 0 NULL,
  [tL] float DEFAULT 0 NULL,
  [i] float DEFAULT 0 NULL,
  [t7] float DEFAULT 0 NULL,
  [t8] float DEFAULT 0 NULL,
  [ya] float DEFAULT 0 NULL,
  [kL] float DEFAULT 0 NULL,
  [a1] float DEFAULT 0 NULL,
  [a2] float DEFAULT 0 NULL,
  [a3] float DEFAULT 0 NULL,
  [a4] float DEFAULT 0 NULL,
  [a5] float DEFAULT 0 NULL,
  [k2] float DEFAULT 0 NULL,
  [m] float DEFAULT 0 NULL,
  [L] float DEFAULT 0 NULL,
  [x1] float DEFAULT 0 NULL,
  [x2] float DEFAULT 0 NULL,
  [x3] float DEFAULT 0 NULL,
  [x4] float DEFAULT 0 NULL,
  [x5] float DEFAULT 0 NULL,
  [x6] float DEFAULT 0 NULL,
  [x7] float DEFAULT 0 NULL,
  [x8] float DEFAULT 0 NULL,
  [x9] float DEFAULT 0 NULL,
  [x10] float DEFAULT 0 NULL,
  [x11] float DEFAULT 0 NULL,
  [x12] float DEFAULT 0 NULL,
  [x13] float DEFAULT 0 NULL,
  [x14] float DEFAULT 0 NULL,
  [x15] float DEFAULT 0 NULL,
  [x16] float DEFAULT 0 NULL,
  [ra] float DEFAULT 0 NULL,
  [u] float DEFAULT 0 NULL,
  [s] float DEFAULT 0 NULL,
  [p17] float DEFAULT 0 NULL,
  [p18] float DEFAULT 0 NULL,
  [p19] float DEFAULT 0 NULL,
  [p20] float DEFAULT 0 NULL
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
  [university_id] int NULL
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
  [university_id] int NULL
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
  [university_id] int NULL
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

--- 1.1  Local@dmin!
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
-- Definition for view I3 : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

--- 1.3
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

--- 1.9
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

--- 1.8
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

--- 1.7
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

--- 1.6
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
-- Definition for view I5 : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

--- 1.5
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

--- 1.4
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
-- Definition for view I1_TOTAL : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

--- 1 Уровень качества преподавания

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

--- 2.1
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

--- 2.2
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

--- 2.3
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

--- 2.4
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

--- 3.1
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

--- 3.2
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

--- 3.3
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

--- 3.4
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

--- 3.5
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

--- 3.6
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

--- 1.2
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

		
--- 2 Уровень знания студентов и квалификация выпускников

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

--- 4.1
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

--- 4.2
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

--- 4.3
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

--- 4.4
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

		
--- 3 Уровень научного потенциала высшего учебного заведения

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

		
--- 4 Уровень оснащенности материально-технической базы и внедрения ИКТ

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

--- Общий рейтинг

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
  (N'201510301227293_InitialCreate', N'RatingUniversity.Models.TablesContext', 0x1F8B0800000000000400ED7DDB72DB38B7E6FD54CD3BB87C3533F5EF3892E374D295EC5DE9A4F357D23974C7EE5DF35FB120919210910443908AE5A979B2B998479A571890D481C481C422409A96599DAAB600AC0F0B0B6B2D80382CFCBFFFF37F5FFDC76DE09F6DBC986212BE3E9F3C797A7EE68573E2E270F9FA3C4D16FFF6E2FC3FFEFDBFFE9757BFBBC1EDD97FEECB5D66E51865485F9FAF9224FAF5E282CE575E80E89300CF6342C922793227C10572C9C5F4E9D3971793C985C720CE19D6D9D9AB6F6998E0C0CB7FB09F6F4938F7A22445FE67E27A3EDDA5B39CEB1CF5EC0B0A3C1AA1B9F7FAFC1B4A186F7F8738673AD93E2948CECFDEF8183176AE3D7F717E86C29024AC24097FFD9B7AD7494CC2E575C412907FB38D3C566E817CEAED1AF1EBB1B86E7B9E4EB3F65C1C09F750F394262400024E2E7702BAE0C95B89F9FC204026C2DF99A8936DD6EA5C8CAFCF3F2277837CE7CD1F372E8AD177E44C9C5FCECFF88A7F7DEBC7199152E24F6438FF38E34BFFE3A0354CB9B2FFFE71F636F59334F65E875E9AC4C8FFC7D99FE9CCC7F33FBCED0D597BE1EB30F5FD72135823585E258125FD1993C88B93ED376FB16BD807F7FCECA24A77C1131EC84A3445333F84C9E5F4FCEC0BAB1CCD7CEFA02125915C2724F6FEE9855E8C12CFFD1325891787198697CB58A89DABEBCFA6AA1AC87F31A47F6146FF2F0FC52584C97330C2512B9AC55E467A757154621DD59EE104C7E966BEC2CED4991AE876156854EE9ABABE9929D7B789197D5BD5325773A872268861A119F671C0946A62A09D1CD2A89E3575DD386F58C38C14E3C6F98BCD50F0027B861AF66074D54039476DACABEB6B12647FEC2B64F35326A9F3B3CFE8F693172E93D5EB73F6E7F9D97B7CEBB9FB941D134C9E6C7ACE8892386DD48F6BC66EF7B57CF3B6498E3CD8D985890D3C353082A7A315D4D4F50EC7DE3C037ACB84D6B9961E6AEBC7F2D2D977565D2F75BD67BD8097E127142E53B4ECBEBEDFDD748E8A7E4B63EA99D9FD759266EAC2A0C2C40CE90D25B4F3B66795BCC77EF7427E305F5B139359C2384DA8356C06DD8FB78ABC396673DB8CA58EABFA4C42B28C51B4EAA561ACB665511D674F2DFCCB3B14531FAF7BE17B57D75B96C43E38E67DCCE2BEFE48373F32898401EAA58DE50AFB6E6880BE07697FCD2CAAEBB391E338258C532F0CC6A917E338358471EA8FD5DA416BA797BAFE2434E9EB33A17B27C4705D4257DD3788A06486BA9F468C93FDFB71A22F0D9CE8CBD1890EC189DEA0D0279B1EAB72BE93ADE3F631EBE973D5E5F72562BAB044211B2870B155DFF90A56E493E0DA8B31EAA9AE2F6930F3E21E068D0D43EEE7C3CAA3F31847BDF4D723183E54267F93C6B8C361C8604F7FDCC51FC420B49B1238A6EAF6E7CA7528F388DBEE5D62565548821EFCE167B4ECAB515955FD34AAC735C60F74B544CE0F344B7D67966EE3F4C7A372C11D8D3B501F6DB0713A1D374E07E1A56F5076B6684B42F67FBA72E80A2F8EE37A5FB532F7D47D9D1FFAACC8471B72877BA82CF304CE026DFD5EC611920427EC67A1EECF605B743A6E8BD6D5B5C0A47B7D4E13748B28C5D9365CE1F87AAE73747B0FC0ED3D18777469F0C97C397E330F6236F61B8E93D5BBD23A6AF6F70D0E86B1954513B4591F3E58DF11D6F91ED81AFE192337CD7AE16B0F7389628DD3C1B709660E83F9DCBE6A0CCA8EBE7BD7EB07385B7FCFEE68F554591A6E7A585FFD0B6D2976B6D87751E8ACD1C27399F620877D33F868EB82D61F253BA6B7385E6227403E5A2387B01940BC64D5B0DA0C81777B14DDEF5E0E6949A2E3F5E0ABF683DBD538B60D616C7B87363E4A32DBFD4EBA5F20EC712DB2AF131EBD1D881827D615D7F3BCBDEB793EBA9E21B89E7E2E49FD6BB79CD9CB4A5CBF13CCD1F5DC8FEB3188DA30066AD0713D4E7A37EBC7FDF45253757DB18F1A0F82BC2531FEDE9328FBA9AB2ACC7EEA3C3147FB1B5AB3EFEB21DF1BB6E9AD0DAE1F8CB70F863351CC7639FBD932A96E83775EDD27B2C52BD44FD3FE20E1C28BBD90E26D4F35EEAE193BE4074EF2803E0FE4AEF138E5AD385183EB07E3ED836139D17191EFD14F001F8CDBC9426DE180E205B335676214528E431A9D52DD0C88ABAABEF4173E845C43F129ACF825ACF833203757C0F2CF80EC5F01CB3F03B6F70A56FE038C1D7B3B919D854CFB4C42CCD43DF79470EF70A41E3D424D5D1F6156F211A6651F613AFCF119ACF815ACF87358713E3A6C43713E186C43F197B0E259D434507960BF4E801D3B01F6EC04D8B51360DF4E809D3B01F6EE04D8BD1360FF4E81FD3B85DA2DB07FA7C0FE9D02FB770AECDF29B07FA7C0FE9D02FB770AECDF4B60FF5E02FBF7126ABF0E98002A5107AAA24096CC0350153302D309D0754C0E5BC2F203A4DA539EF430456933E5494B139C7B9CF2E016531EDCE39427EC635506BBCE2C46E17C05526946157BCBD2557A39D517B4C1CB5C161CFDBECA6F9E9F67D3158E8A171C9E14594E59C3DEC724F846FC035D29D3B941F1D2CBD65F88AAC43549E3B92807256FF315A6BEC77A91264E14516793DE2129A7B2820ABE1B8A0AAD682A0F6E531ECEDE0B72BCCC7AD6688EB70DCDABA751B5549B4A6CB43E29B4FD6E11554FDACE5D9EA23D62AEC0B7A408943F6FB1F0D609DEE41D1EE2D871914F18A72173AC52A6EB08142DD124119AA74B67DCE68879C92C14AC4E738BB2BA2D154A37375224316E1FF5F228806BA4D9C66379DD764A299ADB2A2783B677C93C6F829D88381BECA2C0C194B930976C5088B7D206D711285AAC49223459970EDA661C2E481C646E0A39C471192CCBCC7FCA07B79AF28A16EB51080DD62483B6774DD8C46BE5D164431C7CE7B2B90E5E3981F7DD4D43141337FB45B36D1E79876B532B64D1865E904C2B104B72A2493B0995E960B25150EA4A45450E9547110655DAE4224BD12A2153605C2C01E6AD884BBCC883AEC8183CE6ABB894961059951783F29B9D0A61F343CFF17CE6C663C266895BC7C749F695915FB691B4A18146D12E7D2AA1AD00D2D6ED3FF838CC5C1C9B217ACE86A565DF585E76ACBB4E0CB5A44DD2D025560B451BA1B56C02F6CDCC3EEF5D8C18344ADD7C8BA14137E4344DD268A4528BA19914DA7E42434457BB0F27F65D4E98BA314CB9B3551556B458A3B8D0541D1A681BF791B3A56DDA672ADA20C91678969581F218235C3C0C23617197A7E050CC1518941401F3B75BBC90B19767A9B8E33345E6841250DE68E2455EE86C42CF8DBD301B2CF05AFEC5202DA9E0BCA9ACD090460270BBD220C0DC4C2B9F97938DBC75EAF2AA366A51882DD5236BD7DED8A3BBB58C90AEB55AACA0A86D73338DA2D51A84B2766B2F14EF17FAE08BC405E5B840DCFB02B152A1CB0A68BE70BB572BF5C2ED5E635B299E7C1517AE86329C51296BEA42943A749520FE4DA77AAA940B53AF45441129879CD7A241D909C7303B7ADE86CC2573285914930594C62577509235EB270425627D05EC257873180D546A8C04DE1C46046D0E25F0E6301A68731809BC398C08DA1CEC569C2F80722BEE505B1A142CEE91F10386EE9E5ABBE1A369C3ACC548520F390E2A3575F511F88FEEF5ABE30DF770D17D5B7C1C767FFB3FA5A537272DF999F62EADB587EA7A9B5BF05BF01DF2562EECB0E70D77553BD2D125DDB34B5A13D7A19137EFDE94E72B6FE6F472E06857553FEF8B2C309B21F4D1AA217A36F0C116DE53D59C7D69E591EA4FB9C0DD541DDEE8BB6AEACA6FB2F76116BDCCDB8EA7577A6953A9BE5E9EB62AB7EFC4BCE610BF583B3C59C7FB57E8893C3B4E777FCCCE82BF2DA046573BBADAD1D58EAED6DCD59A9EEA6D74B0EA83C0767C6BF988AF05FF7A841B7DECE863471F3BFA58731F6BEB5641A3AFADBF8CD0CADFD65F31803BDC3ABCD1E3D6D4C5A803B2ECC741CDD26D1A27EC8BA81F179F864C139814D0210AD26F8429380A1BF7D303E4E32D9008B32ED9A08496AE526A52FAF8CE0BEF4A2F856AD26D511CA0780D25CB8E8B096FBCDC9F3BECCDC5B7F5BB1D5E6EE23D2FF452542BD75B7BD309EE796BE046C77BCF33D09F245E3B918FFAD80C5F253D3DB197D5D44BBCD14297FB19AC98A62FD1FE79D6DE6AF30284BB0F1158FE18D17DEE6C88BB709D5DF9E48701E04DD156A300E0FE277C4CD0061F47887B1E21E6240D93B8FBE8AADF998A87A87B5F13A1A8877588BC16A7ECA31EF6F9AF394169B222B193ABC3E92CE30C7114B997ABF3FC086374FFDEE67853BD476F6DA429C38E63CC3D8F31A3EF1F7DFFE8FB7B0D0AA2E9EF9B628AB4F2F4FB082170675E508EFEFAB19C550EBC84B84C2FFB596239D676629B9543F474C05840BCBF52470B6AE792CA81815AF8A523F9E89C1E8D73DA757A4FCE695F5B2F13CBC7ED9ADA4601139C547DB0B0569EAA312418DC7B35408E1E6D181BDF218A62B4617689BB37CB10DDE57BCAC88962CFCD26469BCEEB24343C6A1DEAA1893BAD2FBD91AB7940E2401AA7B42D290A978DA74EDA3AB0CE4300F28EAE45F44033E7D7100FD0C007D6228FAE7018AE90F54B3FB3AEACA29FDEC13FE81D86CA8898CA3871795B5B9B92FDD32034760DFD84C5543A0A70604D337FA18A9169E028E490A38778641E222624A04EC224E45717C8B5D82CA87FE26455D2A76EBE6A3A8FFDAAB475FDB0B1AD8C5C1D08166EDD2AACD1AC8761D6793CB73ECC9AC9CA4174467A8A949155B7CAEE0377BFE042E2ECE0708F6DDBD5D851F3DABAC30E2242F30E101245BA95E73B8687867BBA3DEDE8D91ECB7A75442899B1E1B817A33F54366EA575BE5EDD22103CEFAAEA82C5B7724D87A8F070CFB4231D1DD330A65C116C0923BA0596DFC2CA871360F929B0FC25B0FC33284357508267D0265C41099E411B7D0524C0408E1258710A142905B24381CD8D80FC44407E22283FCF80E5AFA0E51D688B9F43CB436B5843CB033514E8B7A25F80E55F00CBDF01CBBF04B69762284102A488813D16438DF2299400AAD4A517ACB529C0AEC5811AF3C4019A3305D640A1F8405BA0405BA040DD7661C58196B601DA0D50F80950F809D0F3269F80433D101EA80B095017B6C048066B607311D04720A0874040FF8080EA8380EAB306F21FC08A3749BFED3732F82532FE0BB9E6B1B2761FC8BB67C95A7C1FE794E3E771DDF749274B41AD750FF6CC9CA079CA87E85A299EE2CD39B81E4A8146B51CC8AACDBCC56E3423C2A1E39339F29DD04B7EB683C877B3B3B31C0CA205828F68921F72A64EAB46EC4F91648BEA1E706687DC8009200F7A41DB343EA2ED897F7AB32C8EDA06CF3D27616414C63A4D5277EB0424CC77D7338707FA94F22893F87CD51A206BFA0CDD01275B19D359904E38E50287283C46AD01746FDB8E8553ED5AA745DA766CB1FA2E283FF2683F24DA6E20AA7B24B4C570A4861B07A59ABA7219F5B3295854D522BC5CBF71010FB58D81F080CEA8AB677C05C7047BFDD7C03D29DFF46DEBA01480A38BAAABEB47822971F196244E82B270A4DDC7767B382EE72138F0D12D76F5D6B7DC35021E09D7718E6F2825739CB76BAFB0C20BD05559FD1EBA678DCF4117FD737C509A7552765438623E8D957B7DFEF4C99389D00B75C88787CF8FC865F156D1FF07DFF6522BEB1BDFF4D2A98A61ED674F8FECCBDFB6AE6D08A84A90C4C4FE80084DFFF14565635ABCC4581265D33BAF00A9C2DF75EC5EC09237E054FCD73D0877E4F3F0AAA4BE606A9E91EB5E00BACF39A99807BFED746C51FD7377FAF2833E13750F42151F6ED16E4CCD2B2E35A2DC3F62652045F55B30F72040F9AB0CDA6D6978A2A14690E5176B0C8459FFD843F702D50DB7AE6A1038F6FAB145F58F52E8CB141AC6BD7BA16A862E5635081AC7F8D89EDA60F3FA12054644EE5EA0ADA278AA5A6716D2F3D856404C677DD11B850ABDB78E5085D403B6B231BE5EA3F0AB014E8DC5DE14B1AF7B818B91BD544DA809F375E4721F2D505F32EAD8603D345E1E3B48C96A4320A19218CA11CA00B2A80F41D4BD4000B148546D681398E4D8AEC68049FAC26C11E6A447016B4774686C1E3CBC8344DC0D215A5A481D1C33A247E1375FAA6F6C1EE086BD44DCAA08172DE4AC7F5FBF7B01EB5CD35535087467F7D812753C017D5942AEFE762F44D9054115E7B5B7058F9C1EAF1EEB0BA5EE9261F742909C0055315A771CF4C8E7E18AA3BE046A0E91F62000E118A2924DF599C452F3770758414BF6EAB38C1D2FD9379E935171AC7F68E6D800C5114B7D3DD13E78D3BDD668EEE92B5B02DCE02F09B1EE78104094B0A3027D09546337B0BE4590AD415EA8CA430D50B102B6196D0BB6D8A87C4BC204E1D08B77C2BDC94E20D02CD5BB951D6AFE9B7ABB731A74B7C9CB373043BDF6921DDE47E46E90EFBCF9E3C64531FA8E9C89F3CBF9D9719374D7227931417852EC59BE97B461332F679A5D1F5381F3E5F4D013C4661F68867D1C30B2891A5E28A885AF06D44678AA8678AA8B51C386361F2FD4182F74315EAA315E6A62A83540B7CFA76A894E75253A554B74AA2BD14B755324A738E418574A882B4D84E74A84E79A086A83D7B571B56AE96A965AB174F58AD9370E285E303FE84CEAFC8C50B001FE73E9C4B88059CE6CC0F9BB342A0838E521A301A73815921D9F1750F6A74C1A10E4672E043479B126ECA6430862354D140D35EEB6E465F2386CF03740D4EF6E0BB0F5C5A175EDB77F9BABD99784D650DE176DAEA55CBAA1A6FAED42A1AAFAE20D75D5EEA30955D5966EA809B08924D40BA06DC745753745B7FE2A5543CDC5F682CC9EF65B154D00C73579294A79A5BF01AA71715B406FA4D0ADB1617D575D7103A16EFDAA054F75C52A8A861AD5EB814255EAA20D75EC97C664FA705C6A6B00D9AD2EC9300E6B554D10F9FA8C1461B7DCD300A058FA10E014E59AD0EBD604C43AEA4A6BD5A4FC5056D4A52CCFD556FAA6E5272E95F3C0A57295298C7299A0F28DAE3E797B686D79BA740141DA7FD69790FE56CFD12EAA0DD61046D3115B896840A7722BCDD33D975B6AACCEE40F5447E702D53F7E2B936DCBC3BB5511C08FEF96250E9B07B7ADB9EB7E909CD295C8BBE92C6FA57535A7794BAD387E07D408AAE6FC6E5702D13DB52B9152AB03BFF5871B1B8EFC968400F9CA695567EF82174FF6EAC8BCE13C707DD3D52782EB242DFFD083D6D4BB7CE5077F7564AC7164B8BEF5F58786EB64ADFEDC6D5363D732D73D1B2C117AAB63C51519400F16978400F9F46F5567D782D73C3F2C917B9B93C7151100CF1E9724005805695363D7326F75C458D203E647952BD2313AAC5C9255EBB522736EEEA9E794CF7C6BF799D6A9661DF9349D6B6EEEA7BA3535130EBAEE1BC9C3C4A2F81BCE3857DAA73EE55C6AC26151B14650EA73CD9DC942F112AA44201AE79EAB8DA93FF95C164D65B9B44E3EF5679DBB1212E4B54551706DCF47CB8F6EEA9F902E4903B824DCB6E6DEFA41FF69BB9AEE68779A5A2E1BF0796A59E78096CD0DF9E8ADAB34DE22ABE923E0A16BB950F48F5DCB7A456F4FA16DCD5DF783D623486207800F6557DA0F39965D6AB8EEDE0AB8AEAE852C7D9E45146AE321ED4AC3EA8E69971A52DA57AA9152DDC1ECAEA4220BC82B0AA5E9D076A51935C7B64BAD38EE92D548A4E6A076670211A3C44AE4517F86BBDA06E529EEB234F61B7E75C2501EDAEE4A16CD510D45D1C04E78570FB3EA9EF12EB5576B0313564BE752D50CCF26916D8B43E0D5B6C38E8197E5ACBF89DBA6C67E64AE13FB492575E8497189140067C505C96B6E69B7ABD596F4F771AB0EC7C10F79AF2EAEE72B2F40BB845717ACC8DC8B9214F94558BE7DC6671445D9B070A4DCA59C5D4768CE1AF5F6DFAECFCF6E033FA4AFCF574912FD7A71417368FA24C0F39850B2489ECC4970815C72317DFAF4E5C5647211141817735AEE24FEF0FAA1263637414B8FCB6555334EDFE39826EF508266288B54F6D60D8462D5C3EF8AF30DFBBA6ACEB78B1DBB3FECB027CEFE2E0054C10E75808F327ECF9A1D7861924BC02B69831E0C03BA9E231FC55C5CB60F2E1314F1D3203CFEE6D5564DFD6795F84F10ED2F1CB17054B896FA05472D1C13AEA3FE571E31AF4C5FA4E8231CBB9397603547447C75C1F528AF4B1782327136CE2B2A448DB92B1216F5B81E595F919B70BAD1E46F55E26F20DA09472C1CFFEF4693CCB5FB7E7591BF4F6351191BA0F5B5B111A81B75BC71DEF87E15609704C1F88B0DE178813D97472A658C8A7AD6A4A83635B3BD2AF6A67B5F9320FBA30A7148D4C7B9CEF6A5AA28BB24806BF5B6C5A1DC8A7FDD278E03FE59A3EE3EB5A9BC0298BEF64A48BB51DF7738F6E6D9F74FF6495005E2B25A608A86C16501CC239D7D6794226225431FEF3D133B5E869F50B84CD917521553C8D4C7FDDD4DE7A8105A1A530E57C884B887FCE98FB7C5C31F552F51CED1477C4309AD2215293084F7D8F7449422757438678D0EC7EA6869305CF6365EBE4F7D5FB4E2632AC024226F8ED9CC2C5BD8A91844295D1FED73B1D71FAD44E6B82C10E6B2A014159CCF03B8D7E248B5C4B99633C0786F8BF39573611A22CB07CC8F7EA49BFD769064A224E4B6435632AF2C04ABA7382923E7BF9CD706B596774991D141F7E9A05FD874D00298BE8396900EDD41FFB15A3B68ED8860950CC02A26A1DCDCA74801CF22A5334890F1C63874095D71F67A48057044503243FC08B64F1C67730FCB59BCB4E92C04307D6721211DBAB3B841A14F362256391D8AE67C275BC715C65521F3FE3E437F5F22363759A29079329CE4F7A12B1F8C6236E4333CF24970EDC518F11FE1A50C28DE97349879B10C709F03717E1BE63225C22CA503F8F3E83CC69128C54AC6637388F51672931FC7158DE3467A4CF79EDDABCD0DB8F65B6EBD6DB2D9F3ADBB51C1E1F929A703A6612B37BB8C974713A94CC64AE930B49004BC4B292503BEB7D152CA59391D8626E1AC947C5F6B151FE86A899C1F6896FACE2CDDC6E90F4ECF24F90FDB5BC17DF1FD7A2A9BFB082298BEAFEA6D1FC1E64430DB3DDE92EC543B5D39748517E218252DD2BA0E66CEF535140540062A01FDD012C9471B72876568C71C9829390BB4F5455BDA25C35C244902D141E6890FC3E5DCAFA3B0B9FE2F82E93B8ADED6FF179854C9F30480CAA509BA4594E23CAC486EFA9CFAC90AB4C5178D58963F3A86D1A08F316AED19B408A66DD032D2A18FFCBFE13859BD13966B4AC97DAE15D3046DD6DC87C43E4D1FE59F3172D3EC8DF2AFFC3059CD812EC338F8367BC2BC88B62AAEC554B2C1D841D9C749E1B91200B7E507385B76CBCE5E735A57C98122A6E1865FF6A964E8E3FD85B6143B5BECBB2874D668E1B9ACA390C3A6813EDABA9CAF6D2C0CD853B8C5F1123B01CB5A2387B0812B5E325086CDD5595B10BC94C9ED1A1C531F86B357CEF0C585AD212E695D591C2D042CEDC1424239F4B1E21DDAF828C90CED3BE1D654B8ACFB5AA4B1B5D76867676F9CD8195AEA738B962A60695BAA8472E8966AE360F3BF760B319CE61D52612B1635D31B49F668A90FCC526DDE376C7FC5B0B75B857B9B74D2BB99DC5A8B1CA0C58A70A5E4B6CB2902A624BB45CB6F498CBF2BDABECB83B65E0259C9682B0109AEB4C043F53ABFA135FB32E1AEA01C1247EF75D6E4BD6C9E376C7FDCF0019E362CCC932481648195CF6BBB5354B7490441FD44B67885248C563200272D49B8F0622FA45910101155920DBE79E2901F38C92F1A4BAF9F94B31FAAEF7AB43EC7E6B1C5F6A7161FE0A1C5835F51B89B71F561B4503EBF9585F26FE8D9B357E179BEB6E6DB0CD48D35DF70833284F60B178BE20B2816C59729472DBC6D584B7DC9515F82A89FF1AC3F83F17EC5D35FC1E89FF18D7F066BFD154F7F05A37FC68BEF194C7E573CFD1588FE03C7FE0710F78F3038C4E7E3C39D369C971A4EC361D51177E3A43E72D6F611646C1F3965FB0852B68F9CA67F0429FAC7671CF53310F515472DBCB25B4BFD9CA3165ED8ADA5E642667D0485CCFAC885CCFA080A99F5F125472DBCAA5BAF2D4F797511DE59AEA717D40DA66F135EE126308D9BF02A3781E9DC8457BA094CEB26BCDA4D607A37E1156F02D3BC09AF7A1398EE4D78E5135F0CAFA7E7D54F7C2DBC967ECAEB9FF8CE773D3DAF7FE21BDFF5F482C383E9DF94D7BF294CFFA6BCFE4D61FA37E5F56F0AD3BF29AF7F5398FE4D79FD9BC2F46FCAEBDF14A67F535EFFA630FDBBE4F5EF12A67F97BCFE5DC2F4EF92D73FF17DF95AFAFC99F3AA018A0F9F3720082EC401F6A12318A103B442A11553582B6C7DAECB27C9B019D8754CB8BDDE22653013E4529C5A1B136475345F8D09721DB14AC098EB240CEA9E10F1EB71458A3E02769DE255599E8D4332086BFF3C3187257FB5F81ED5E6F0DCAE0DA5D9490AAE302AC2FB56967BEA14E963BE363A480758A3BBF460BAE93C44A9435709E2D6A64BC9FA58A9340E47DA220E0745448CC3714884B4CE59A030DB64E39B774C07A3B9642E45CBD34168514C1602549108C271C99D0093A78150D628499080B34B052131ED1170F234882E49A4734804E108FDB54F03A148A4734C052109D2D9A701EC8348A4734804E108D2D9A7815024D239A6829004E9ECD340F385F2CB0BDC9CA19CA58FB91526CFDB61ADE836BD9F6E65BC83D5A133F44111BB19054DAF41D2DDF31A55BD2DD2007A1B2E38368A147D041F87DC67559102F04F5488BFBA4BEAC256BAB0E07BB23FB788CB6867E6BF036B61504ACA611ACE9AB80E8D3C6E083AA60214977D76CD1CF15BA49C0E46934457AAE64024C5A6F80277C7D4D1BC8A6C8579090FD0BBC8273E4AD814DECED806A940C30E6170DD18677EC25250B9636A8FE3A397474C65F341094342662B5C31B09C90D98E5F890F9064DF87237894F35CC1B022D6B761D28D0F9063B7317F15D268F9A3E58F96DFCEF28F9DD18DF5ABF1DB78803AB4D10B8C5E60F4025A5E207F66143B117136D845818329F53D976C5088ED6CD5422AD0F00330B86E1C016329204B89E95532F4F166E9368D93004910B92C8059A421130F9320E2AE26543200DB1001F2316715FB34C8925CC8BA2AA1E2E6733903B24077E785774248D45232C054511CA0980F8A744C05B8BB3408F8D5FB22E9A138237BCEF69EDC5AB6D2CB3A6E9EDD09248ECBBC046B45FE53D8C76FE5D500F81A4E0D8436CC95C79F245E3B918FF865FB723A40FB57892CFA6129198625DE1A3DA6EA23151D23F1D2950CC06AAD172ED13EC42BB7645BCD82637A01C2BE1C73970568B73017844E001FE51AEB9AF8383BBC946C8883EF5C148678E504DE77370D514CDCEC17CDEE52DA9967B5AE4DC33F19600FD35BCDB3F704634E8F0E89FA38DF491A87FC0CEB90A88F13A188FF28DA2501311CD1D2CAE97D6E7DCE094A9315899DB9F8AC239F37EEFBDCAF4FA2493FDEA8AE9EF67EA81E75981E68F41C6A84D1730CD073146F35DA398F5160B570002AC261DAB8BDD31881971097B93EC9B70797D50653B2242B648E76D6979D15EFF12ED8C7BF25633B02B6B1B83AEA9337BB5DE3656657CD6A81296A3797359A5C4F269785389BAFB0E778BEB74E62128664EBF838F162946471B56D5821B00E0DCB04237663ADC35CA80E5114A30DD37F2CDCA52A6540F0EEF22D26E444B1E766A3E386C7951400EC2DD3F0D877DCDE019F07E17AA7224268D26A4E0BC438A50AC43CA705220A97BE02B2C81A9EBF38ACDB63876407EC3D67C3D2584F855EE2D9751BA0AA20DE0308FC989C08938664E43FA6C2907E7A3311284F84E1B0CE71626145BE9A034364FFE480878CE1995E90FA090E3C1723A6AF2875F3904796876ABD3A20C6A68B385A591B2B8B0909A8939004F9B2A523493614FB274E56A54E94E10B4506633B6C1E81E86A7731DA4733C26C9BA99F9D055F5D700D6BD1877A4C66925FB016BFF10EA980055A3473109D11D9F51E3E0F86BACAAE648880BB6480B4489C9DED523129C906634B58ADE60CC66C7FA4BE8FC2C0D26AD01EAD855DAA494F7D1D282294CCD8F02DAA6235A705A264ED95CF1BD7817AB2B418E1CC68EC18DA0EAC859D29291FD37017713601A2BDE5886F41D49C102250CB432E2E59088A4A167231C9425044B2900B0C1882E202867CD0E510167439E4832E87B0A0CB211F743984055D0EF9A0CB212CE872C8075D0E614197433EE872080BBA8C39F631887B6E2E037B0C96EB380AEA37CAF14D417C534E681424B388E33C02711E719C4720CE238EF308C63917843302C5E08CB8109C1128026774C5474F2C5200085C08CF0814C1337A2ED4FF1C56FF9AA35FC3A83962909D71A3036C5C8CB8B8971128EA65C4052E8D40714B232EA855040A681571414F2350CCD38472C7AFF304087D220024208498D39818A431DC64063693E1E35D47B078D7111FEF3A82C5BB8E8478AD11305E2B2BCFFBBA3C0584C0FBBB3C0584C0FBBC3C0530D2701C5050FD94AB9DC2EAE6EC9E82EC9E72764F41764F39CBA520CBE53E2D405F169CC301F91B6E7B15B4999A703D9D807A3AE17A3A01F574C28D8C0968644C3E71D49F4033486E0209AA99D3D004A4A109A7A1094843F9EB7BB07B7B6B4E666B90CC10E75C11C8B722CEB322905F459C5745209F8A382D47202D479C96239096AFB976AF41EDE6A287828286729D2DEDEBFB5A3ECAA3275B5A3D2A2231B7583C521076B37614A281C72AA6891779A1B3093D37F6F2E339786D27BC8516B2468769E23CAAB5BFB96CFBF6980A42C2A1E31396E7845EF253812B2D03AA25DFF5CD8ECD30044525B22290ED359AE4E742A923178FB400401376477EB2BD118FD7292E0F30CAB801936D7EE194CA9896E503E41ED11A6C31571FF9A737CB02CC6CF0DC7312E60AB8B36E926CC07C3C49DDAD131C5FE9AACECE855CC057AA4759FFCF574A70690198BC67E80E89722E52613260CE508256CD816C7D8528E42F9F1F12811AABD6D5965AAA504F30D64E3A52403E6F3863701A0498BB2E9C8771211B3B23B13EBECE780C41EB6654CEAB936C3697D3A168929824950C7DBC2EA2D51C08256CF2790F7D76F36062A81496C0C68C5D24F190AE3BB15CCD1AB46D571BAFA339F58F0453E2E22D499C046501A1F87519598153B4BF61FBB1D13B54F355DEE10DA5648E99059350F13E534558BAEF305588F49FE8627EC6E59597C773AE8BB70244516999FB0E4F66F599AC0ED5B7E1EC06C54B4FB64CD0DA11D5B2F496842ECE7AEEEC03FD92FA7E7660D4A7BCD750B5F7D585B4EFF5D543F6121350591A21DABCFE24E9AA867A0C3BAE046441AD9A783553FF6E94AC5602E68A56FFEE0954E70068862FB0C87A57BBF66129A53EDB8F4F3F77CF8800F55046A5F94089A48344B441E98F84BDC7A72775CF5C0095471BCAE4A90D493F6AD63B28DDD3E57954C8DDC30BA6BA284169F9E4834E6F0AB50D5BF9447647BD2B85FB37D53D0592C183033A9D2AAD75D87A2867F9F1E9625DC879A0326A439984BD97F4AD66BD83D2475D9E1F9F42D6840B07EAA32E9241C07249CFEAD53A2865D464F9F1E9A2766868A066B6C3B516B85AA2026D381A940EB76AC0A8D19220C3767459896821ECB17EF72BB878089AAB62FDF1E96C111717A8961222BD78BB921E12B006A53F22778F50458E815CA17AA2A004848A95F5891475586A2367F1F1E94E43A851A03E41D00C839E4A3A55BFF641E92280ED47AC9FB5C12CDBAAA93EA89D209B75BDAFCBCB3075579BFB47ACC2F210916D755703CD3058655D7F37D63E4C356D66FBF1E9A72A28235031B560DA068494F4A9467D83D2411D7E1F9FF2ED230F02954D4AA61BD550D23912BC41298F8CBFC7A72CBBF079405D91516906E693F4848836284591B0F708F524BF290F551391C8E8ECBA8067D8113B3C1B3A227036C4B3EBCAF61AAB87F45E3E505B9A315A450390F456534D83723F8DCC3E3E675473EB14AA739A4806F75E655DAA55EBB0B4508FE5C7AA8B8A5B94ADB45107CBE82EA7B27B9B6B1EA04E6A307D825AB9BF87C8EA4A100EBD982F72B8E8B84B39FCA6FB844C87D0D22B74EF48773D5F7901CA6541233467ACBE6525DEE39826EF508266887A4591F33326800D76BDF8F5F9F5960D53C193ACC093EB1FFE5B1F67A78F0F053EA3102F3C9ADC90B517BE3E9F3E9D4CCFCFDEF8185146EAF98BF3B3DBC00FE9AFF394262440EC833EC99BFEFA7C9524D1AF171734AF913E09F03C26942C922773125C20975C30ACCB8BC9E4C273830B9E7C07AB85F2F4E51E8552D72FEB4AE9B2F64E433E2277837CE7CD1F372E8AD177E44C9C5FAADAF5EA0F4F508BBDBA7CF3163B9C0F928EE7095F71DA99D164ACE48166768EE09F5E98ED6C78EE9F28C9D687B3525ECEF4F959A68068E67B0725BCA885FFB3820E25FEC588FA8509F5BFF2ABC3053D0D90EFB70139BA644ECCB538E53BC33A7A33CB2F7F6DE62BEC4C9DE98928CE3793CEFB3631A16ED76B565408DAF5091B6F6668867D1CB0BE9F9C48DFDF386F7CDF44F237CE5F29F2F1027B461DF87014E1547AFE6B12647FECEB083759C02C14FFB700DDFEF7325812A78D58D749FE7A9E05A46FDE365F7A7C00C389D81CA8263D3D11557A87636F9ECDDAB2E9A615353820DA53D174F69D415AC37BCF448897E127142E533615B782F9BB9BCE5121C734A69E89115C1741D2DE1621D2DAE3BCA1845A695B06F41EFB7604F570668C9353192EDEB3E2F68C31F2D817B27F585B3184FB5C9C5F8C56D6186488CB02B2AC6A6DB4EC5D71DDDF1A673BBCB75E7E67716E6BDCFDFA23DDECB755ADF15A06ED82E1E2B8B355760B48DBCC3E56E7F762747E22D81FABB583D68E35BC3F094D6C4E91ECD8528C4397D0951DC6084A66C8CE58314E680C6DFAE568D392551014FA646319CEF94EB68E6B6B0CB2FD01F4FB92A9295AA290F91F5C2CD95BF9F08B7C125C7B71F6A2B835BC2FBB1766ADF8A20D736DF6A6731E9DC738B226BF53F14A2A9BB8C92EBF74E5DB4E6541DFAA6BDBB97DC7ACF7FE5CB9599C95ECCA9C95390F830B4960C9A63FA3A54DE632387BCC59FE56FE40574BE4FC40B3D47766E9364E7F9C9EAB307082508F712A4BB8966743D926D99664174DE8CAA12BBC387A6D9BC8CCCAECE07EB00DE6A30DB9C39600337D761668EB5B734F24091EBAD9432DF55416621798D851833441B788529C4723CD6DB403DCD1424FDAAA2EC729B304EC371C27AB77A50FF7EC233EBB69796F4B7B34419BF56176BBF009822BD43F63E4A699B4BF5A1A3C8A6F7307DF66CF84E4C19D2DA206653764C769F801CED663B263831601D37063E9DBFF2FB4A5D8D962DF45A1B3460BCF653D861C3651F2D1D6057C364B96736F71BCC40EF345688D1CC2468B78C92A617519C1EED6A4EC2CC80EEA13A4D3758AABD1E9CA3646373E4A326DFF4EEC7C2A5BFEF2B6B9BD627517E3314E5C9E8F2624D1506BC7F8FEB5FB42B7F6C16A7F381F4DC8D0844EE5DEC4DE849CF46E66CF8CACA155BFA76DA11E1A7D4B62FCDD62B3EDE1551B6E0F77A086FF1B5AB3F9F58338F96CEE3BC683414A032249606FA1ABBA5E6E05F213D9E215B2C7E21F245C78B117D2EC7EBC35D4DDF96787FCC0497E5F6B3087A01FE354613C335467EEE3C7EA683EB5E693DD3DC401C50B9460677232F74E6F1402D3E9BC2FAA6BA75AC45313E24B13E267467C5F19513F336AF69511F53323A95D99507F3061FC21DC4BFD4CC23C72271FB1EDC13A868F266AFED1A4BB3F9A28DAC76726C45726C4CF4D8855A11FB48855911FB4885F9A104F9E1A511BE9D8C448C926465A363152B389919E4D8C146D62A4691323559B18E9DAD448D7A666FECC48D7A646BA3635D2B5A991AE4D8D746D6AA46B53235D9B1AE9DAA591AE5D1AE9DAA5995F730CC9CDFACC31333323E64DAF0917F34CB339E6754C0E5B637A278EB4A798AA58AF7A534C5994B4A62926EE768A19DA5AC5C1AE338B51385F19280FC328E2BB1A60144C389CD8F8B06ABF7E085DEFF6F5F9FFCAA97E3DFBF03F9D03E13FCEBEC6AE17FF7AF6F4EC7F436B2F85A785D57E20D4AF5D5B6977FDF2A815565B58F315A6FE2E1E7F14D1ECD5127422A243943A7495205520141D054FB9FBCC2D202822E55BCC2D1050B6FA19669B24E6202E999B814431599821B8E4CE0C60CD5403994130DD30D20A53313004B39E6000A66260106662A0C4540C0CC14C0C0CC0540C0CC24C0C6C18E78306B7C2D9AAE7925ADD590D4F0B1B8F2BC41D8CC9F33C80A617E4C34C11FB778EB7A736E2D8BAA3438BE8C756E6A9E1C20E4F3E0EED1CC04B69296E5AFF6662CB5A076D6E6E112D6A34AB0ACE9AB80E8DBCB91D359EAFBC9963ED7B7207672F60C502B369BD2DEE469B6BB6396FB1F0D609DEE49F522166133CE4131F256CDA7E2AE35B7E46CD964E591B2CBD3C681B9B06DAE3AD84692D104F99CF819AF938936D61E611539030192D7CB4F0D1C24FD3C28FFD3A5AF968E5A3959F8495E78F4E612722CE06BB287030A5BEE7920D0AF987971FAC9933B8802CED59D32CDDA67112208BBE230D99EC59F3D0E16CF70CC3D7F303E4E3AD0100668AB841092D6DC5B640F1F19D17DE95A2C9B5C0D8A23840F1DA04227B634D1DF2E301B90FAB2E71D0BE285BA465FD3ECFAE4211C765AE88719EFF3C956D6C5B93849F245E3B918F6CAD8EAF128B21B032346B37D90A2DB0E76AD75EB844FBA87C5611BD00613B57735C0BB193C6A5CA667FB3263E9EAF3C9A6C8883EF5CC60B5E712FC5D2EC96DAA94C846C799F79F6AC4E6CE7A6DD7792C621B26337118A2C7D86E4484ED98686B1693827284D562476E6E5978D86F3C5357A9DD65E8726A3BF197DC4E823461FC1488B77984637D0DDB985C04B88CBFCB0BD2F8B23E240974347C3D330BCE22DBD45B67C355A5F77D6B713B345EBDB235A1B9047DBEBD9F6B2284DF315F61CCFF7D6494C182F5BC7C7496609593CD9D3B0C781AC2A87288AD1866938B6A3E021BACBF78C9013C59E9B8D851B2BB88486471DB01378FAA067A568822D36180E30714A6DC0A07069B2FBF3304CFBB0C48F1D921D79F79C0D4BCB4CCA4BBCD1C26D5A3893AEBDE13503FBE91DCCA5D57E5A86C1DAE1C4A5E5EDD640EC9F31CEC3309920F5B30D001723662B2875F36037E368385C5B890909A89330D5F1AB6B302D182BB07EE26455D283539D00B2B11ED1D5EE162E83234CC998AE9FCA72E840743DBF436B4BD7595107D119B1780524835C653706EC7C7891383BD66499C71DAA3D36076D97FB47EC4FC40E07B92212114A666CB4B7A6A207C07135F2C11A5E8C70D232AEE100ED6E20E35F64F4CD10DD9A916F8DC8C38919F9D48CFCD28CFC9921F75786F4CF0C9B7F6548FFCC507E5766F4D88CFDC4889A9AF51D35E39D9A492E32633E32633E3264FE9919F99521B96328BCE786E486F5AF0DC9CD6CCE6CB8887E31237F61467E6746FED24C74141BD2276600B199E2C4861EEBA921BDA1D5968261B60530F5D98EA1E39B3866AE8F9AD54F0D6B37B37D6A66FBD4CC785D236A33BFB331731B669D9E98757A623658269FCC269866959B296C62A6B05BB3BB626B33C921336F8BCC7C2D32F3B4C84CE59199CAAFCDDA1E18519BF5FAB0D79E8A90BCA7B1F4D472D5525B5834F1222F7436A1E7C65E7E0A06AF4F254AC25096EDE6C69BA90C02878E4FE6C877422FF9690330DF9ACD4EB03040633C1FD1243FC0481D0BCDDD9FABC936293CB31915720326B9FC862335975A446D41FDF4665958920D9E7B4EC240A8512B6992BA5B2738BE2764F4FDE6512F7334B6F032A9CDD09DD93485EEDE8534065AE01085C7DBC7ED95CA8E3A9962ECE4620E34E8213D0B8980B90BAE79FC0FB23991B12A6F8DBD3DD402CE3C9284FD882107C431CCC5033543363EEC224087747D7286887F249812176F49E224288BBF63271CC4A02D69A0DE6734F06E0DFC0DA5648EF3CAF63A553C2AA37C36E8F7D03DFB46FC43C97D03AE3D7FF1649FF4393BEF19F978CEE85F9F3F7DF2642208E5882376708E554EAEE2FD0F018CF993EC21F20423FF2D09691223264FD1F9E0708E23E457F9E78A697AA94CA407403EE75DF6459DB91FB1853AB5951E04122B3D60734EB34904AF2E4A7D5DAF02B20765741402DC910D8A217DD8A68C2C2FD089B200BBD050619A9FF451D4CBF996FB519FFA8722EE45931ADEAEA8285553D953D02FC85B1E0356B5DD2309F7A152FBF719CA6087B4135011E9FB13035685BAD8FDF7A11FB56F09946BA82F78029AA4FFAAC24352AF2266FC20346B17BEBE56A9F6654E519F64E1FB1F922A95C2510F419D4AB1D26B55AA5CEE14D54A15337EC0AA551711FB3E74AB364277B986FA8227A05DFAB1CA07AC5E35418EEF43BBEA622E972BA82D7702BAA51D7B7AC0AAA51DCFF63E144D3FD86EB93A00D5092861CB80C40F4F25CBC14E07A48C9518AC1A6A582D7FBA0AA88E4D3B60D52B6268DE8776EDA27796B1F64927A023B2D8A44356836344C77BD1855240C98A4294D34F412B54813307AC1A0D0107EF435D9A6220962B692C7B026A058A09F91054AD3600DEBD6A5C7D683EA9E235909C92FE0102173E0435940795BB57FD53C4B9932A9EAAEC29699C4EDCBF01AB9A2A98DB7DE89832B05C195D5DE804B44A2FB4DE80D5691F83EC3ED4E710FFAC8C764C3C01F59047781BB03AEC2263DD8736EC837295C10E6927A00BD2A063435685FCA2AA8E26ECAEB4563A6E97F4200EDBCAAEE476A303408DDB75C1BDA980F4FAED7DF806F93DE032B4A2C409F80D8D3BD08A8A87E0456AEEC6DD8B22D55CD5ABA8535DB953502ADD2B8B83572DC57DAFFB532ED5053451BD94254F46C1B42EE30D46C58A6B488C2661145EBCE3E32D71BDF738A6C93B94A019A2FC731A05D5B597ECCA7F44EE06F9CE9B3F6E5C14A3EFC89938BF9C9F1DAF38ED54405EEC7ABEF202F4FADC9D65B1948B1B53F29282164AB998E587E937F31576A659E430151B7CB91A3EF8A27A8C24887D1DA319F671C0C8266A4E848235AC0865B57851575E5B9B36FC5335FED3DA0A9EEAD650D382FA2668B7E185BA8617B535BCD0ADE1A5BA8697B535BCD4AC41ADEDB5FAADABD15375374F6BBB79AADBCD5375374F6BBB79AADBCD976A195DD60AE952574A57CA0AAEEAF0AF34E19F2BE19FD7C13FD78457FBED5A57ADEB9DD546566B63BA26A6B6B05A03D3B5AFCCFBE280E2051B479D49DDE02214AC77E9D5B20DBC7C2E458111EA2F67CAEA3CE6D3C68ACAB342A1A272A6ACA2433EF69A6BDA5F54166AD967C86A28F234D0E5F75285BAE4C56435CB4B3671D174915164A88942CA5B1351039B874B73023B871C59B5BBCCE6CEA8BF5F25545A5F5CC6493D0594BBFD459D66C6F625B578DA1786B253BEE4D1CC52B9B4165B658206D6EAAF0808BCD5179731574FD1C05DED197381B9DAD232DE6A091A58039C43161805D0CAD80690B76B44F514AB2EFB552A00E355C20696F7E72605AEF619B28A8BBC66AF56398327D650CE9556732CD05C57E3612DA1FE460A194F8D44BA6C361CED5173DB4058CB7403AD2EEFAAD3216AA65514B5DCAA881AD8549F3310F853179531A62EDDC0D1712B5BE0E09825AB719FDBACFE870D52A186438EAC825DA606FE6E1F4F84DF6548D1F3BC6670C59E8D5097A29CAC6A45D12646EA56FB4576EA4A4B99AA23D0624DB952AC604E595ECD9E928463B0B476CA7FB254C26195CA553E5F940BF395A5F4EA3710ABE898242C04CB17F44B94E564AE3517D5E66834B5290091A4E1A09845660DAA50D77DEAE5385A9F6E2D44A41F644726AD96217A6C0A4EEFEBB49021F013132E4E49201989D89AC2CD58140FF7559C931ED28C9BAB1B2C4522835671562C0A46E7733EC7037D965B10A1181044477A0D6144BA145C75A5412E33C5B2810571C9835EE8884C235C469762135744E4A2AB59DA808B4F37B083447EAD62425814A0CEBA4D8E075A7F818B5033788144826DC21E5814A0C6D2520E075923828BAFD5057D8930CD2FFA5B142D78692C076FBFAA654DECAA4BE8FA02D7BAC6DEBDA8650B787542AE5D81838B57BC682D9160C36D6C8B42AA2E19E694FB24F3A6CA2F13CBDAAB71EDD866A3C5A5CCA2E5E574E3E6032ECC4A44D2F6BAAD453169AEC2E690D0A55403716A5F0AAD936ABB9BA55D08576BEDB82A63D8CAAF81A89B2F3ED6C918786DB20BE1D62F6E57A5AAB9420D17A7CEE53E891CC177022D0AB069D93DC7D25E42878B4C76814D22A2C67B6E1645C2AFFBE7B4C744E3264B2E69495ADC7495CB6283B95D889CF49066DE5CE12292ACB5F5B795AAEC5636350A6E7749F7BCB8DC78E146D272D8251D8BBD5EBB7D9303E9EDC6B41093DEA51299B05A5C47B129B2E68DA64270801DA3B6E2D3B838A11420F4D2857511366C889584A8BBAFA516E3FE7D92C3C58043DEAB8B623F6D97C07EB2510D2DBDCFC4F57C9AA7BEBAF89686D964A1F8F5CEA378798478C530436F5EB9887028F381CDDDF6D722388EF645B8D75B3E7B09725182DE64AB7B689EB0ECB94769EE86FF13F9292BF27B30F3DC0FE1D73489D28435D90B667E45E0D9BD8ABAFA5F5D083CBFFA1A65BFA88D263036316B82F735FC2DC5BE7BE0FBBDF83A920A22BBB0B17B7229EBCB247B7A69B93D207D21A126D04E7C877B26375E10F90C8C7E0DAFD1C66BC3DBDFD4FBE42DD17CCBD237D8F5623548734754C5FEEA1D464CB903BAC338D2B39F4C87DDE0F6DFFF3F76593E36A0530300, N'6.1.1-30610')
GO

--
-- Data for table dbo.chislennost_pps_vuza  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[chislennost_pps_vuza] ON
GO

INSERT INTO [dbo].[chislennost_pps_vuza] ([id], [ass_shtat], [urindosh], [saotbay], [as_fan_nom], [as_fan_doc], [as_prof], [as_doz], [as_katta], [as_ass], [ur_prof], [ur_doc], [ur_katta], [ur_ass], [so_prof], [so_doc], [so_katta], [so_ass], [id_university], [year], [university_id])
VALUES 
  (5, 428, 62, 1, 87, 16, 4, 2, 102, 224, 7, 15, 16, 24, 2, 34, 57, 99, NULL, 2015, 46)
GO

SET IDENTITY_INSERT [dbo].[chislennost_pps_vuza] OFF
GO

--
-- Data for table dbo.darslik  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[darslik] ON
GO

INSERT INTO [dbo].[darslik] ([id], [fio], [kod_spec], [ucheb_name], [ucheb_number], [filename], [year], [id_university], [university_id])
VALUES 
  (23, N'V.Karimova, M.Zaynutdinova, E.Nazirova, Sh.Sodikova', N'3521901–“Axborot-kommunikatsiya tizimlari va axborot texnologiyalariga texnik xizmat ko`rsatish"', N'Tizimli tahlil asoslari', N'9.09.14 № 220', NULL, 2015, NULL, 46)
GO

INSERT INTO [dbo].[darslik] ([id], [fio], [kod_spec], [ucheb_name], [ucheb_number], [filename], [year], [id_university], [university_id])
VALUES 
  (24, N'Aripov X K, A.A. Abdullaev., N. Alimova., N. Bustanov, Sh. Toshmatov', N'5311300 Telekommunikatsiya', N'Схемотехника', N'Рўйхатга олиш раками 107-12 . 14.03.2012', NULL, 2015, NULL, 46)
GO

INSERT INTO [dbo].[darslik] ([id], [fio], [kod_spec], [ucheb_name], [ucheb_number], [filename], [year], [id_university], [university_id])
VALUES 
  (25, N'Abduazizov A A', N'5522100 Radiotexnika radioaloka va radioeshittirish', N'Elekrt aloqa nazariyasi', N'Рўйхатга олиш раками 507-055., 26.12.12', NULL, 2015, NULL, 46)
GO

INSERT INTO [dbo].[darslik] ([id], [fio], [kod_spec], [ucheb_name], [ucheb_number], [filename], [year], [id_university], [university_id])
VALUES 
  (26, N'Abduazizov A A', N'5311300 Telekommunikatsiya', N'Signallarga raqamli ishlov berish', N'Рўйхатга олиш раками 392-1., 17.09.2012', NULL, 2015, NULL, 46)
GO

SET IDENTITY_INSERT [dbo].[darslik] OFF
GO

--
-- Data for table dbo.effektivnost_nir_dalolatnoma  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[effektivnost_nir_dalolatnoma] ON
GO

INSERT INTO [dbo].[effektivnost_nir_dalolatnoma] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id])
VALUES 
  (5, N'TATU', N'Zaynidinov X.N.  Zaynutdinova M.B.', N'Разработка методов оперативной обработки кардиологической информации и создание средств их аппаратной поддержки', N'04.09.2014г', NULL, NULL, NULL, 2015, 46)
GO

INSERT INTO [dbo].[effektivnost_nir_dalolatnoma] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id])
VALUES 
  (6, N'TATU', N'Eshmuradov A.M., Sadchikova S.A.', N'Исследование и разработка метода планирования уровня оптического доступа телекоммуникационной сети Узбекистана', N'АК "Узбектелеком"', N'10.10.2014', NULL, NULL, 2015, 46)
GO

INSERT INTO [dbo].[effektivnost_nir_dalolatnoma] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id])
VALUES 
  (7, N'TATU', N'Mirzaraximova Aziza Azimdjanovna', N'Развитие страхования ответственности лицензиатов в сфере ИКТ', N'"ALSKOM" Cуғурта компанияси', N'11/05/', NULL, NULL, 2015, 46)
GO

INSERT INTO [dbo].[effektivnost_nir_dalolatnoma] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id])
VALUES 
  (8, N'TATU', N'Korchieva Aziza Ulug`bekovna', N'Economic efficience improvement of governmental electronic services in Uzbekistan', N'04.06.2014 й.  ТАТУ', N'1707/19-01', NULL, NULL, 2015, 46)
GO

SET IDENTITY_INSERT [dbo].[effektivnost_nir_dalolatnoma] OFF
GO

--
-- Data for table dbo.effektivnost_nir_patent  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[effektivnost_nir_patent] ON
GO

INSERT INTO [dbo].[effektivnost_nir_patent] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id])
VALUES 
  (3, N'TATU', N' Radjabov T.D.   
Davranbekov D.A.
Inagamov A.M.
Kamardin A.A.
Tajenov K.E.
Simonov A.A.', N'Способ изготовления заготовки активированных оптических волокон', N'07.08.2014 й.', N'№ IAP 04944', NULL, NULL, 2015, 46)
GO

INSERT INTO [dbo].[effektivnost_nir_patent] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id])
VALUES 
  (4, N'TATU', N'Abdukadirov M.A., Axmedova N.A., Ganiev A.S.', N'Патент на изобретение "Интегральный фотоприемник и способ его изготовления', N'15.10.2014  Агенство по интелектуальной собственности', N'№IAP 20140441', NULL, NULL, 2015, 46)
GO

SET IDENTITY_INSERT [dbo].[effektivnost_nir_patent] OFF
GO

--
-- Data for table dbo.effektivnost_nir_sertifikat  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[effektivnost_nir_sertifikat] ON
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id])
VALUES 
  (24, N'TATU', N'Nazirov Sh.A.
Raxmanov K.S.
Maxmudov A.Z.', N'Двухязычный электронный перевод узбекского-каракалпакского языка', N'10.01. 2014 й.', N'1682', NULL, NULL, 2015, 46)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id])
VALUES 
  (25, N'TATU', N'Nazirov Sh.A.
Abduazizov A.A.', N'Программный комплекс для расчета тепловых режимов радиоэлектронных аппаратур', N'10.01. 2014 й.', N'1678', NULL, NULL, 2015, 46)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id])
VALUES 
  (26, N'TATU', N'Davranbekov D.A.
Xakimov Z.T.
Pisetskiy Yu.V., 
Tursunov B.B.
Irgashev R.Yu.', N'Calculating of REA software reliability', N'10.01. 2014 й.', N'1681', NULL, NULL, 2015, 46)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id])
VALUES 
  (27, N'TATU', N'Burxonov R.A.
Kabulov R.V.', N'Программный комплекс для  анализа и оптимизации мобильных сетей связи', N'10.01. 2014 й.', N'1679', NULL, NULL, 2015, 46)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id])
VALUES 
  (28, N'TATU', N'Ruzibaev O.B.
Allamov O.T.
Xujaev O.K.
Saidrasulov Sh.N.', N'Программа для решения задачи маршрутизации в динамическом многопараметрном графе', N'10.01. 2014 й.', N'1680', NULL, NULL, 2015, 46)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id])
VALUES 
  (29, N'TATU', N'Musaev M.M.
 Berdanov U.A.
 Kardashev M.S.', N'“Параллелная обработка речевых сигналов”', N'12.02.2014 й.', N'1724', NULL, NULL, 2015, 46)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id])
VALUES 
  (30, N'TATU', N'Musaev M.M.
 Berdanov U.A.
 Yuldasheva N.A.', N'«Анализ элементов речевых сигналов»', N'24.03.2014 й.', N'1807', NULL, NULL, 2015, 46)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id])
VALUES 
  (31, N'TATU', N'Usmanov R.N.
Djumanov J.X.
Seytnazarov K.K.
Oteniyazov R.I.', N'Программный комплекс моделирования геофильтрационных процессов в однослойных пластах', N'12.02.2014 й.', N'1723', NULL, NULL, 2015, 46)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id])
VALUES 
  (32, N'TATU', N'Usmanov R.N.
Djumanov J.X.
Digaev A.X.
Seytnazarov K.K.
Oteniyazov R.I.', N'Программный комплекс для устройства автоматизированного измерения уровня и температуры подземных вод в гидрогеологических скважинах', N'06.03.2014 й.', N'1764', NULL, NULL, 2015, 46)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id])
VALUES 
  (33, N'TATU', N'Kadirov A.M.
Tursunov Sh.A.
Axmedieva A.T.
Radjabov O.S.', N'Создание электронно-учебно методического комплекса по предмету «Инновационный менеджмент»', N'04.09.2014 й.', N'2081', NULL, NULL, 2015, 46)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id])
VALUES 
  (34, N'TATU', N'Kabulov R.V.', N'Программный комплекс для  решения двумерных краевых задач в произвольных областях', N'04.09.2014 й.', N'2078', NULL, NULL, 2015, 46)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id])
VALUES 
  (35, N'TATU', N'Kabulov R.V.', N'Программный комплекс для анализа конструкций методом конечных элементов. Программа для ЭВМ', N'04.09.2014 й.', N'2079', NULL, NULL, 2015, 46)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id])
VALUES 
  (36, N'TATU', N'Kabulov R.V.
Ruzibaev O.B.', N'Программное обеспечение для анализа сетей  связи с использованием техмерного моделирования.  Программа для ЭВМ', N'04.09.2014 й.', N'2080', NULL, NULL, 2015, 46)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id])
VALUES 
  (37, N'TATU', N'Toirov O.S.
Kabulov R.V.
Xachaturova Ye.M.', N'«Библиотека классов для реализации интервальных вычислений» Программа для ЭВМ', N'04.09.2014 й.', N'2082', NULL, NULL, 2015, 46)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id])
VALUES 
  (38, N'TATU', N'K.A.Tashev.
 Sh.Sh.Kayumov.
 A.A.Varisov.
 O.N.Djuraev.
 A.I.Abdullaev.', N'Система “ARM-UZ”', N'08.10. 2014 й.', N'2123', NULL, NULL, 2015, 46)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id])
VALUES 
  (39, N'TATU', N'Kayumov Sh.Sh.
 Tashev K.A. 
Varisov A.A.', N'Архитектура безопасности информационных ресурсов и базы данных”', N'08.10. 2014 й.', N'2124', NULL, NULL, 2015, 46)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id])
VALUES 
  (40, N'TATU', N'M.S.Yakubov.
  J.S. Nishanbaev.
 X. S. Atadjanov.
 A.A. Davronbekov.
  A.S.Kiriakidi.', N'“ACCOUNT”', N'03.10.2014 й.', N'2116', NULL, NULL, 2015, 46)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id])
VALUES 
  (41, N'TATU', N'M.S.Yakubov.
  J.S. Nishanbaev.
 X. S. Atadjanov.
 A.A. Davronbekov.
   A.S.Kiriakidi.', N'“VIRTUAL”', N'07.10.2014 й.', N'2118', NULL, NULL, 2015, 46)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id])
VALUES 
  (42, N'TATU', N'Migranova E.A.', N'Автоматизированная экспертная система профессиального отбора оперативно-диспечерского персонала при управлении сложными технологическими процессами', N'13.10.2014 й.', N'2127', NULL, NULL, 2015, 46)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id])
VALUES 
  (43, N'TATU', N'Migranova E.A.
 Babamuxamedova M.Z.
 Xaitov T.M.', N'«Мультимедийный обучающий комплекс по операционной системе Linux (на государственном и русском языках)»', N'14.10.2014 й.', N'2128', NULL, NULL, 2015, 46)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id])
VALUES 
  (44, N'TATU', N'Bendik  V. A.
 Tigay  O. E.
 Xamidov V. S.
 Zakirova F. M.', N'«Интеллектуальная система структурирования библиотечных ресурсов »', N'30.09.2014 й.', N'2107', NULL, NULL, 2015, 46)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id])
VALUES 
  (45, N'TATU', N'Kerimov K.
Zakirova F.M.', N'FLYSTUDY', N'03.11.2014 й.', N'2147', NULL, NULL, 2015, 46)
GO

INSERT INTO [dbo].[effektivnost_nir_sertifikat] ([id], [otm_name], [fio], [sertifikat_name], [sertifikat_date], [sertifikat_number], [filename], [id_university], [year], [university_id])
VALUES 
  (46, N'TATU', N'Ruzibaev O.B.
Karaxonov N.A.
Egamberdiev N.A.
Yuldashev Z.B.
Narziev N.B.', N'Программа разделения объектов на классы с помощью алгоритма «Шар Апполона»', N'10.07.2014 й.', N'1942', NULL, NULL, 2015, 46)
GO

SET IDENTITY_INSERT [dbo].[effektivnost_nir_sertifikat] OFF
GO

--
-- Data for table dbo.Jadval10  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[Jadval10] ON
GO

INSERT INTO [dbo].[Jadval10] ([Id], [DirectionCode], [DirectionName], [SubjectName], [ForeignLanguage], [EducationCourse], [StudentCount], [Asos], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (1, N'5610200', N'Меҳмонхона хўжалигини ташкил этиш ва бошқариш', N'Меҳмонхона хўжалиги менежменти', N'инглиз тили', 4, 23, N'БухДУ ректорининг
 2014 йил 22 сентябрдаги
 294-У(01)сонли буйруғи', N'1_2004_10.7BBAD6EFC6554E8791CCBF730A438BA8_2015_11_30__04_46_36.pdf', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval10] ([Id], [DirectionCode], [DirectionName], [SubjectName], [ForeignLanguage], [EducationCourse], [StudentCount], [Asos], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (2, N'5610200', N'Меҳмонхона хўжалигини ташкил этиш ва бошқариш', N'Сервис тизими фаолияти асослари', N'инглиз тили', 4, 23, N'БухДУ ректорининг
 2014 йил 22 сентябрдаги
 294-У(01)сонли буйруғи', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval10] ([Id], [DirectionCode], [DirectionName], [SubjectName], [ForeignLanguage], [EducationCourse], [StudentCount], [Asos], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (3, N'5610200', N'Меҳмонхона хўжалигини ташкил этиш ва бошқариш', N'Жахон иқтисодиёти ва халқаро иқтисодий муносабатлар', N'инглиз тили', 3, 25, N'БухДУ ректорининг
 2014 йил 22 сентябрдаги
 294-У(01)сонли буйруғи', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval10] ([Id], [DirectionCode], [DirectionName], [SubjectName], [ForeignLanguage], [EducationCourse], [StudentCount], [Asos], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (4, N'5610200', N'Меҳмонхона хўжалигини ташкил этиш ва бошқариш', N'Олий математика', N'инглиз тили', 1, 25, N'БухДУ ректорининг
 2014 йил 22 сентябрдаги
 294-У(01)сонли буйруғи', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval10] ([Id], [DirectionCode], [DirectionName], [SubjectName], [ForeignLanguage], [EducationCourse], [StudentCount], [Asos], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (5, N'5610200', N'Меҳмонхона хўжалигини ташкил этиш ва бошқариш', N'Сиёсатшунослик', N'инглиз тили', 4, 23, N'БухДУ ректорининг
 2014 йил 22 сентябрдаги
 294-У(01)сонли буйруғи', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval10] ([Id], [DirectionCode], [DirectionName], [SubjectName], [ForeignLanguage], [EducationCourse], [StudentCount], [Asos], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (6, N'5230100', N'Иктисодиёт (тармоклар ва сохалар)', N'Микроиқтисодиёт', N'инглиз тили', 2, 19, N'БухДУ ректорининг
 2014 йил 22 сентябрдаги
 294-У(01)сонли буйруғи', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval10] ([Id], [DirectionCode], [DirectionName], [SubjectName], [ForeignLanguage], [EducationCourse], [StudentCount], [Asos], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (7, N'5230100', N'Иктисодиёт (тармоклар ва сохалар)', N'Менеджмент', N'инглиз тили', 2, 19, N'БухДУ ректорининг
 2014 йил 22 сентябрдаги
 294-У(01)сонли буйруғи', N'#', 2015, 24, NULL)
GO

SET IDENTITY_INSERT [dbo].[Jadval10] OFF
GO

--
-- Data for table dbo.Jadval11  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[Jadval11] ON
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (1, N'Ихтиярова Гулнора Акмаловна', N'05.19.03', N'Многофункциональные смешанные загустители для печатания ткани”', 2014, N'', N'', N'', N'', N'', N'', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (2, N'Ёдгоров Нодир Джалолович', N'13.00.02', N'Чизмачиликда фазовий алмаштиришларни ўқитиш жараёнида ўқувчиларнинг билиш фаолиятини ривожлантириш', 2014, N'', N'', N'', N'', N'', N'', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (3, N'Чориев Таваккал Равшанович', N'10.00.02', N'Забон ва услуби асарҳои публитсистии Садриддин Айнй', 2014, N'', N'', N'', N'', N'', N'', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (4, N'Қаххарова Дилдора Сиддиковна', N'10.00.07', N'Инклюзив таълим технологияси', 2014, N'', N'', N'', N'', N'', N'', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (5, N'Қувватова Дилрабо Хабибовна', N'10.00.02', N'ХХ аср иккинчи ярмида ўзбек поэмаси', 2014, N'', N'', N'', N'', N'', N'', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (6, N'Жўраева Малоҳат Мухаммадиевна', N'10.00.07', N'Француз ва ўзбек эртаклари матнида модаллик категориясининг лингвокогнитив тадқиқи', 2014, N'', N'', N'', N'', N'', N'', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (7, N'Назаров Ўткир Ўктамович', N'10.00.02', N'Романда бадиий хронотопнинг ўзига хослиги', 2014, N'', N'', N'', N'', N'', N'', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (8, N'Музаффаров Фируз Давронович', N'09.00.03', N'Ғаззолий инсонга оид таълимотининг илмий-фалсафий асослари', 2014, N'', N'', N'', N'', N'', N'', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (9, N'Қаҳҳоров Сиддик Қаҳҳорович, Самиев Камолиддин Аъзамович, Жўраев Ҳусниддин Олтинбойевич', N'15.06.04.', N'Қуёш қурилмаларидаги жараёнларни моделлаштириш', 2014, N'', N'', N'', N'', N'', N'', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (10, N'Абдукабил Абдунабиевич Тўлаганогв', N'ББК 38.39', N'', 0, N'', N'', N'Местная Сырьевая база строительных материалов', N'2014 йил', N'', N'', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (11, N'Мавлонов А, Қодиров А', N'', N'Ўлкашунослик атласи Бухоро вилояти', 2014, N'', N'', N'', N'', N'', N'', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (12, N'Таваккал Чориев', N'', N'', 0, N'Забони модари 3', N'', N'', N'', N'', N'', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (13, N'Таваккал Чориев', N'', N'', 0, N'Забони модари 2', N'', N'', N'', N'', N'', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (14, N'Таваккал Чориев', N'', N'', 0, N'Забони тожики 8', N'', N'', N'', N'', N'', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (15, N'Абдуллаев Сухроб Саайфуллаевич', N'5110800- Тасвирий санъат ва мухандислик графикаси', N'', 0, N'', N'', N'Инклюзивтаълим технологияси', N'', N'', N'', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (16, N'Л.Олимов, Эшонов Э. Махмудова З.', N'5110800- тасвирий санъат ва мухандислик графикаси', N'', 0, N'', N'', N'Тасвирий санъат ўқитиш методика', N'', N'', N'', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (17, N'Қобилов Шавкат Рашидович', N'психология, педагогика ва психология', N'', 0, N'', N'', N'Психодиагностика', N'', N'', N'', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (18, N'Ғанижон Худоев', N'Мусиқий таълим', N'', 0, N'', N'', N'Ғижжак чолғуси ижрочилик анъаналари', N'', N'', N'', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (19, N'Тулаганов Абдукабил Абдунабиевич', N'', N'', 0, N'', N'', N'Воздействие  сульфатов на бетон(Й.Штарк,Ф.Беллман,П. Нобест,Б.Вихт)', N'220-085', N'', N'', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (20, N'Тулаганов Абдукабил Абдунабиевич', N'511000,5340200, 52 30 200,5340 400,5341000', N'', 0, N'', N'', N'"Немисча-ўзбекча-русча" қурилиш луғати', N'312-077', N'', N'', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (21, N'Тулаганов Абдукабил Абдунабиевич', N'архитектура ва қурилиш йўналиш бакалавр ва магистратура', N'', 0, N'', N'', N'Замонавий қурилиш материаллари,буюмлари ва технологиялари', N'220-082', N'', N'', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (22, N'Маъмуров Баходир Бахшуллаевич', N'5111700-БТСТТ,511800-МТ', N'', 0, N'', N'', N'Оилада соғлом бола тарбияси', N'335-022', N'', N'', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (23, N'Маъмуров Баходир Бахшуллаевич', N'5111700-БТСТТ,511800-МТ', N'', 0, N'', N'', N'Болалар ривожланишида жисмоний тарбия назарияси ва методикаси', N'335-015', N'', N'', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (24, N'Ибрагимов Алишер Каромативич', N'5 111 200-Жисмоний маданият', N'', 0, N'', N'', N'Ёш қўл тўпичиларни тайёрлаш методикаси', N'335-017', N'', N'', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (25, N'Мехриддин Абдуллаев,Л.Смургина', N'5 111 200-Жисмоний маданият', N'', 0, N'', N'', N'Организация физкультурно оздоровительных и спортивных мероприятий общеобразовательной школе', N'335-025', N'', N'', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (26, N'Мехридин Абдуллаев', N'5 111 200-Жисмоний маданият', N'', 0, N'', N'', N'Енгил атлетика', N'335- 019', N'', N'', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval11] ([Id], [FullName], [Speciality], [MonographName], [MongographYear], [DarslikName], [DarslikCertificate], [OquvqullanmaName], [OquvqullanmaCertificate], [OquvmajmuaName], [OquvmajmuaCertificate], [AsosFile], [Year], [UniversityId], [status])
VALUES 
  (27, N'Жўраева Зулхумор Ражабовна', N'512 0100- Филология ва тил ўргатиш', N'', 0, N'', N'', N'Основы филологического анализа художественного текста', N'', N'', N'', N'#', 2015, 24, NULL)
GO

SET IDENTITY_INSERT [dbo].[Jadval11] OFF
GO

--
-- Data for table dbo.Jadval5  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[Jadval5] ON
GO

INSERT INTO [dbo].[Jadval5] ([Id], [FullName], [Davlat_ishjoy], [Speciality], [Subject], [Asos], [Asos_fayl], [Year], [UniversityId], [status])
VALUES 
  (1007, N'Ли Чул Су (Lee Chul Soo)', N'Жанубий Корея', N'Компьютер технологиялари', N'Электрон хукумат тизими ташкил этиш Ахборот коммуникация технологиялари бўйича маслаҳатчи', N'28.02.2014й.,131-02 сон –буйруқ 2ИГ, 20.02.2014й.-Шартнома 20.02.2014-18.02.2015', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval5] ([Id], [FullName], [Davlat_ishjoy], [Speciality], [Subject], [Asos], [Asos_fayl], [Year], [UniversityId], [status])
VALUES 
  (1008, N'Юн Ран-Хи (Yoon Ranhee)', N'Жанубий Корея', N'Санъатшунослик', N'Корейс тили', N'28.01.2014й.60 сон –буйруқ 22.01.2014-25.11.2015й.', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval5] ([Id], [FullName], [Davlat_ishjoy], [Speciality], [Subject], [Asos], [Asos_fayl], [Year], [UniversityId], [status])
VALUES 
  (1009, N'Шин Жонгжин (Shin Jongjin)', N'Жанубий Корея', N'Компьютер технологиялари', N'Ахборот технологиялари', N'20.11.2014й.60 сон –буйруқ 20.11.2014-08.08.2015й.', N'#', 2015, 24, NULL)
GO

SET IDENTITY_INSERT [dbo].[Jadval5] OFF
GO

--
-- Data for table dbo.Jadval6  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[Jadval6] ON
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Asos], [Asos_fayl], [Year], [UniversityId], [status])
VALUES 
  (1, N'Jumakulyyeva Umidahan Beshimovna', N'Туркманистон', N'Биология', N'-', N'№359-У', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Asos], [Asos_fayl], [Year], [UniversityId], [status])
VALUES 
  (2, N'Allakulov  Zakir Yusupovich', N'Туркманистон', N'Амалий математика ва информатика', N'-', N'№391-У', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Asos], [Asos_fayl], [Year], [UniversityId], [status])
VALUES 
  (3, N'Choyanova Mahrijemal Yolbarsovna', N'Туркманистон', N'Амалий математика ва информатика', N'-', N'№391-У', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Asos], [Asos_fayl], [Year], [UniversityId], [status])
VALUES 
  (4, N'Jumayeva Rana Shamuradovna', N'Туркманистон', N'Рус тили', N'-', N'№391-У', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Asos], [Asos_fayl], [Year], [UniversityId], [status])
VALUES 
  (5, N'Sattarov Murat Zakirdjanovich', N'Туркманистон', N'Инглиз тили', N'-', N'№391-У', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Asos], [Asos_fayl], [Year], [UniversityId], [status])
VALUES 
  (6, N'Annashova Jemal Reyimbayevna', N'Туркманистон', N'Инглиз тили', N'-', N'№391-У', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Asos], [Asos_fayl], [Year], [UniversityId], [status])
VALUES 
  (7, N'Bayramova Nurana Bayramovna', N'Туркманистон', N'Инглиз тили', N'-', N'№391-У', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Asos], [Asos_fayl], [Year], [UniversityId], [status])
VALUES 
  (8, N'Baltayeva Guller Berdimuradovna', N'Туркманистон', N'Инглиз тили', N'-', N'№391-У', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Asos], [Asos_fayl], [Year], [UniversityId], [status])
VALUES 
  (9, N'Yakshiyeva Gulustan Babaxanovna', N'Туркманистон', N'Инглиз тили', N'-', N'№340-У(01)', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Asos], [Asos_fayl], [Year], [UniversityId], [status])
VALUES 
  (10, N'Sobirova Inobat Ilxambayevna', N'Туркманистон', N'Инглиз тили', N'-', N'№340-У(01)', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Asos], [Asos_fayl], [Year], [UniversityId], [status])
VALUES 
  (11, N'Seyidov Mansur Shakirjanovich', N'Туркманистон', N'Инглиз тили', N'-', N'№340-У(01)', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Asos], [Asos_fayl], [Year], [UniversityId], [status])
VALUES 
  (12, N'Charyyeva Gozel Chariyevna', N'Туркманистон', N'Инглиз тили', N'-', N'№374-У', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Asos], [Asos_fayl], [Year], [UniversityId], [status])
VALUES 
  (13, N'Matnazarova Hilala Narmatovna', N'Туркманистон', N'Бошланғич таълим ва спорт-тарбиявий иш', N'-', N'№317-У', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Asos], [Asos_fayl], [Year], [UniversityId], [status])
VALUES 
  (14, N'Kaharova Zilola Usmanovna', N'Туркманистон', N'Бошланғич таълим ва спорт-тарбиявий иш', N'-', N'№317-У', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Asos], [Asos_fayl], [Year], [UniversityId], [status])
VALUES 
  (15, N'Azymov Ikram Agadjanovich', N'Туркманистон', N'Экология ва атроф-муҳит муҳофазаси', N'-', N'№374-У', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Asos], [Asos_fayl], [Year], [UniversityId], [status])
VALUES 
  (16, N'Bernayeva Aziza Aymuradovna', N'Туркманистон', N'Иқтисодиёт', N'-', N'№374-У', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Asos], [Asos_fayl], [Year], [UniversityId], [status])
VALUES 
  (17, N'Rahimbayeva Adolat Ilhomboyevna', N'Туркманистон', N'Инглиз тили', N'-', N'№288-У(01)', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Asos], [Asos_fayl], [Year], [UniversityId], [status])
VALUES 
  (18, N'Hurchyna Oksana', N'Украина', N'Инглиз тили', N'-', N'№317-У', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Asos], [Asos_fayl], [Year], [UniversityId], [status])
VALUES 
  (19, N'Salomov Firdavs Maxmadovich', N'Тожикистон', N'Чет тили ва адабиёти (инглиз тили)', N'-', N'№288-У(01)', N'#', 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval6] ([Id], [FullName], [State], [Yonalish], [Mag_mutaxassislik], [Asos], [Asos_fayl], [Year], [UniversityId], [status])
VALUES 
  (20, N'Solieva Nigora Gufronovna', N'Тожикистон', N'Иқтисодиёт', N'-', N'№288-У(01)', N'#', 2015, 24, NULL)
GO

SET IDENTITY_INSERT [dbo].[Jadval6] OFF
GO

--
-- Data for table dbo.Jadval7  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[Jadval7] ON
GO

INSERT INTO [dbo].[Jadval7] ([Id], [FullName_uzb], [State_uzb], [Mutaxassislik_uzb], [FullName_xorij], [State_xorij], [Mutaxassislik_xorij], [Asos], [Asos_fayl], [Bak_mag], [Year], [UniversityId], [status])
VALUES 
  (1, N'Давронхўжа Истамов Олимович', N'Руминия, Иоан Куза номли университет', N'Меҳмонхона хўжалигини ташкил этиш ва бошқариш', N'-', N'-', N'-', N'Эрасмус Мундус дастури СИЛКРОУТ лойиҳаси грант келишуви,01.05.2014', N'#', 0, 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval7] ([Id], [FullName_uzb], [State_uzb], [Mutaxassislik_uzb], [FullName_xorij], [State_xorij], [Mutaxassislik_xorij], [Asos], [Asos_fayl], [Bak_mag], [Year], [UniversityId], [status])
VALUES 
  (2, N'Миршод Нарзуллаев Акмалович', N'Руминия, Иоан Куза номли университет', N'Иқтисодиёт', N'-', N'-', N'-', N'Эрасмус Мундус дастури СИЛКРОУТ лойиҳаси грант келишуви,01.05.2014', N'#', 0, 2015, 24, NULL)
GO

INSERT INTO [dbo].[Jadval7] ([Id], [FullName_uzb], [State_uzb], [Mutaxassislik_uzb], [FullName_xorij], [State_xorij], [Mutaxassislik_xorij], [Asos], [Asos_fayl], [Bak_mag], [Year], [UniversityId], [status])
VALUES 
  (3, N'Умиджон Ғафуров Шарипович', N'Италия, Болония университети', N'Туроператорлик хизматларини ташкил этиш', N'-', N'-', N'-', N'Эрасмус Мундус дастури СИЛКРОУТ лойиҳаси грант келишуви,01.05.2014', N'#', 1, 2015, 24, NULL)
GO

SET IDENTITY_INSERT [dbo].[Jadval7] OFF
GO

--
-- Data for table dbo.kolichestvo_izdannih_mejdunarodnih_statey  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ON
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (120, N'Kuvnakov A.E.', N'Janubiy Koreya', N'IJCA Proceedings: Publication Updates', N'Methodological Aspects of Development Logical Inference Procedures in Diagnostic Expert System', N'2014y. 1-2b.', N'http://www. ijcaonline. org/.proceedings/icic/ number1', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (121, N'Мусаев М.М.', N'Хитой', N'International journal Information and Electronics Engineering (IJIEE)(ISSN: 2010-3719)', N'"Hardware & Software Solution Signal Compression Algorithms Based On The Chebyshev Polynomial"', N'2014, сентябрь', N'http://www.ijiee.org/index.php?m=content&c=index&a=show&catid=47&id=507', 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (122, N'Берданов У.А.', N'Хитой', N'International journal Information and Electronics Engineering (IJIEE)(ISSN: 2010-3719)', N'"Hardware & Software Solution Signal Compression Algorithms Based On The Chebyshev Polynomial"', N'2014, сентябрь', N'http://www.ijiee.org/index.php?m=content&c=index&a=show&catid=47&id=508', 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (123, N'Шукуров К.Э.', N'Хитой', N'International journal Information and Electronics Engineering (IJIEE)(ISSN: 2010-3719)', N'"Hardware & Software Solution Signal Compression Algorithms Based On The Chebyshev Polynomial"', N'2014, сентябрь', N'http://www.ijiee.org/index.php?m=content&c=index&a=show&catid=47&id=509', 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (124, N'Берданов У.А.', N'Жанубий Кореа', N'“The society of digital policy& management”', N'“Spectral Analysis Of Speech Signal On Adsp-Bf561 Signal Processor” инглиз тили', N'2014, июнь', N'www.asp.ac.kr/digitalpolicy/conferences.012363242.pdf', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (125, N'   Шукуров К.Э.', N'Жанубий Кореа', N'“The society of digital policy& management”', N'“Spectral Analysis Of Speech Signal On Adsp-Bf561 Signal Processor” инглиз тили', N'2014, июнь', N'www.asp.ac.kr/digitalpolicy/conferences.012363242.pdf', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (126, N'Берданов У.А.', N'Тошкент', N'Perspectives for the development of information technologies ITPA-2014', N'Analysis of performance with implementing algorithms of image processing', N'2014, ноябрь', N'http://tuit.uz/itpa2014/welcome/page/sps_sess', 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (127, N'Шукуров К.Э.', N'Тошкент', N'Perspectives for the development of information technologies ITPA-2015', N'Analysis of performance with implementing algorithms of image processing', N'2014, ноябрь', N'http://tuit.uz/itpa2014/welcome/page/sps_sess', 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (128, N'Рахимов М.Ф.', N'Тошкент', N'Perspectives for the development of information technologies ITPA-2016', N'Analysis of performance with implementing algorithms of image processing', N'2014, ноябрь', N'http://tuit.uz/itpa2014/welcome/page/sps_sess', 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (129, N'Хабирова д.Н.', N'Тошкент', N'Perspectives for the development of information technologies ITPA-2014', N'Formation of information culture of society as basis of effective implementing of the electronic government', N'2014, ноябрь', N'http://tuit.uz/itpa2014/welcome/page/sps_sess', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (130, N'Мирюсупов З.З.', N'Тошкент', N'Perspectives for the development of information technologies ITPA-2014', N'Language for describing signals structure and process of formations of its grammar', N'2014, ноябрь', N'http://tuit.uz/itpa2014/welcome/page/sps_sess', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (131, N'Усмонов Р.Н.', N'Тошкент', N'Perspectives for the development of information technologies ITPA-2014', N'Integration of gis in process of fuzzy-deterministic evaluation of electromagnetic safety of telecommunication systems', N'2014, ноябрь', N'http://tuit.uz/itpa2014/welcome/page/sps_sess', 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (132, N'Сейтназаров К.К.', N'Тошкент', N'Perspectives for the development of information technologies ITPA-2015', N'Integration of gis in process of fuzzy-deterministic evaluation of electromagnetic safety of telecommunication systems', N'2014, ноябрь', N'http://tuit.uz/itpa2014/welcome/page/sps_sess', 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (133, N' Отениязов Р.И.', N'Тошкент', N'Perspectives for the development of information technologies ITPA-2016', N'Integration of gis in process of fuzzy-deterministic evaluation of electromagnetic safety of telecommunication systems', N'2014, ноябрь', N'http://tuit.uz/itpa2014/welcome/page/sps_sess', 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (134, N'Усмонов Р.Н.', N'Тошкент', N'Perspectives for the development of information technologies ITPA-2014', N'The problems of intellectualization of digital image processing facilities', N'2014, ноябрь', N'http://tuit.uz/itpa2014/welcome/page/sps_sess', 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (135, N'Отениязов Р.И.', N'Тошкент', N'Perspectives for the development of information technologies ITPA-2015', N'The problems of intellectualization of digital image processing facilities', N'2014, ноябрь', N'http://tuit.uz/itpa2014/welcome/page/sps_sess', 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (136, N'Ибраимов Р.Р.', N'?озо?истон', N'Вестник Алматинского университета энергетики и связи', N'Интегральная функция распределения километрического затухания атмосферного канала связи в Самаркандском регионе', N'2014 йил, 45 - 53 бетлар', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (137, N'Раджабов Т.Д.', N'Марокко', N'INTERNATIONAL JOURNAL OF INNOVATION AND APPLIED STUDIES', N'Modified thin-film fabrication method using vacuum thermal evaporation and vacuum synthesis: application to preparation of Er-doped fiber amplifiers', N'2014 йил, 16 -22 бетлар', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (138, N'Усманова Н.Б.', N'Россия', N'Труды Северо-Кавказского филиала МТУСИ', N'Многомерные динамические объекты в распределенном пространстве: аспекты моделирования', N'2014 йил. 355-358 бетлар.', N'www.skf-mtusi.ru', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (139, N'Амирсаидов У.Б.', N'Россия', N'Труды Северо-Кавказского филиала МТУСИ', N'Модели и методы расчета сетевых характеристик с учетом
фрактальности трафика', N'2014 йил. 131-134 бетлар.', N'www.skf-mtusi.ru', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (140, N'Нишанбаев.Т.Н', N'А?Ш', N'The Advanced Science Journal', N'The System Research Of Reliability Indexes Of Infocommunication Networks With Distributed Structure', N'31.03.2014, 59-64 бетлар', N'www.advancedscience.org', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (141, N'Мурадова А.А.', N'А?Ш', N'Advanced Science', N'Calculation in the NGN networks of Indexes of Reliability of Tracts of Transmission of Packet Information', N'2014, 24-28', N'http://www.advancedscience.org/archive/volume-2014/issue-02-14/', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (142, N'Мурадова А.А.', N'А?Ш', N'Advanced Science', N'The system Research of Reliability Indexes of Infocommunication Networks with Distributed Structure', N'2014, 59-63', N'http://www.advancedscience.org/archive/volume-2014/issue-04-14/', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (143, N'Нишанбаев.Т.Н.', N'А?Ш', N'Advanced Science', N'The system Research of Reliability Indexes of Infocommunication Networks with Distributed Structure', N'2014, 59-63', N'http://www.advancedscience.org/archive/volume-2014/issue-04-14/', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (144, N'Сидди?ов И.', N'А?Ш', N'Advanced Science', N'Hybrid Model Management of Information Messages in Multiservice Networks', N'2014, 38-41', N'http://www.advancedscience.org/archive/volume-2014/issue-02-14/', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (145, N'Шербобоева Г.', N'А?Ш', N'Advanced Science', N'Hybrid Model Management of Information Messages in Multiservice Networks', N'2014, 38-41', N'http://www.advancedscience.org/archive/volume-2014/issue-02-14/', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (146, N'Ликонцев Д.Н.', N'Кози?истон', N'Вестник Алматинского университета энергетики и связи', N'Исследование  влияния  архитектуры Ташкента на  ослабление  уровней  поля сотовой связи', N'2014, №2, 11-17', N'http://www.aipet.kz/university/vestnik/14_225.pdf', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (147, N'Шахобиддинов А.Ш.', N'Кози?истон', N'Вестник Алматинского университета энергетики и связи', N'Исследование  влияния  архитектуры Ташкента на  ослабление  уровней  поля сотовой связи', N'2014, №2, 11-17', N'http://www.aipet.kz/university/vestnik/14_225.pdf', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (148, N'Гаврилов И.А.', N'Кози?истон', N'Вестник Алматинского университета энергетики и связи', N'Анализ методов и алгоритмов квантования вейвлет
коэффициентов видео кодека Дирак', N'2014, №2, 54-59', N'http://www.aipet.kz/university/vestnik/14_225.pdf', 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (149, N'Пузий А.Н.', N'Кози?истон', N'Вестник Алматинского университета энергетики и связи', N'Анализ методов и алгоритмов квантования вейвлет
коэффициентов видео кодека Дирак', N'2014, №2, 54-59', N'http://www.aipet.kz/university/vestnik/14_225.pdf', 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (150, N'Гаврилов И.А.', N'Россия', N'Электросвязь', N'Условия эффективности применения современных методов сжатия данных ТВ изображений', N'2014, №9, 29-33', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (151, N'Пузий А.Н.', N'Россия', N'Электросвязь', N'Условия эффективности применения современных методов сжатия данных ТВ изображений', N'2014, №9, 29-33', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (152, N'Абдуазизов А А.', N'Россия', N'Электросвязь. Научно  технические журнал по проводной связи и радиосвязи, телевидению, радиовешанию', N'Подготовка специалистов по инфокоммуникациям в Узбекистане', N'№12/2014.,9-10с.', N'www.elsv.ru', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (153, N'Тошпўлатов М.А', N'USA', N'Young scientist USA', N'Linguistic Modeling of the Theory of Indistinct Sets as the Basis of the Estimation of Quality of Formation', N'2014. 22-28 p.', NULL, 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (154, N'РўзибоевО.Б', N'AQSH', N'Computing Science and Technology International Journal', N'Finding optimal k based on errors in nearest neighbour algorithm', N'Volume 01, Number 01', N'www.researchpub.org/journal/cst', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (155, N'Агзамходжаева М.Р.', N'Россия', N'Естественные и технические науки', N'Построение модели нечеткого логического вывода на основе использования генетических алгоритмов с искусственным отбором', N'2013 йил, №2 сони, 285-289 бет', N'www.sputnikplus.com.', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (156, N'Агзамходжаева М.Р.', N'Россия', N'Естественные и технические науки', N'Условия сходимости генетических алгоритмов', N'2013 йил, №2 сони, 290-293 бет', N'www.sputnikplus.com.', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (157, N'Рахманов Ас?ар Тажибаевич', N'А?Ш', N'Abstract and Applied Analysis', N'An Approach for Solving Discrete Game Problems with Total Constraints on Controls', N'2014, 6 бет', N'http://www.hindawi.com/journals/aaa/2014/674651/', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (158, N'Рахманов Ас?ар Тажибаевич', N'А?Ш', N'The Scientific World Journal', N'Linear Discrete Pursuit Game with Phase Constraints', N'2014, 5 бет', N'http://www.hindawi.com/journals/tswj/2014/435103/abs/', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (159, N'Абдуллаева С.Х.', N'Российская Федерация', N'"Молодой ученый"', N'Личностный аспект восприятия специального текста', N'№3, 2014 йил. 863-865 бетлар', N'http://www.moluch.ru/archive/62/9567/', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (160, N'Ахмедова М.Х.', N'?озо?истон Республикаси', N'"Бilim jene gilim"', N'Ситуация как модель речевой коммуникации', N'2014 йил, 8-10 бетлар', NULL, 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (161, N'Ахмедова М.Х.', N'Российская Федерация', N'"Молодой ученый"', N'Психологические особенности обучению иноязычному говорению', N'№3, 2014 йил, 819-821 бетлар', N'http://www.moluch.ru/archive/62/9599/', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (162, N'Хамдам-Зода Л.Х.', N'Российская Федерация', N'"Молодой ученый"', N'Система работ по развитию речи на ситуациях', N'№3, 2014 йил,1016-1046 бетлар', N'http://www.moluch.ru/archive/62/9600/', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (163, N'Меденцева Н.П.', N'Российская Федерация', N'"Молодой ученый"', N'Лексическая интерференция в анлийской речи русскоязычных учащихся', N'№3, 2014 йил, 840-844 бетлар', N'http://www.moluch.ru/archive/62/9559/', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (164, N'Матенов Р.Б.', N'Российская Федерация', N'"Молодой ученый"', N'Речевые условия употребления синтаксических единиц сложного предложения и их вариантность', N'№3, 2014 йил, 837-840 бетлар', N'http://moluch.ru/archive/62/9642/', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (165, N'Меденцева Н.П.', N'Российская Федерация', N'"Молодой ученый"', N'Типические черты "токаревской героини" (по произведениям В.Токаревой)', N'№19 (78), 2014 йил,', NULL, 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (166, N'Меденцева Н.П.', N'Российская Федерация', N'"Молодой ученый"', N'Морфологически выраженные сравнения и их стилистические функции в идиолекте Анны Ахматовой', N'№19 (78), 2014 йил', NULL, 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (167, N'Матенов Р.Б.', N'Российская Федерация', N'"Молодой ученый"', N'Стиль художественной литературы в аспекте лингвистической и литературоведческой стилистики', N'№19 (78), 2014 йил', NULL, 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (168, N'Юланова Н.Д.', N'Российская Федерация', N'"Молодой ученый"', N'Информационная подготовка подрастающего поколения в условиях информатизации общества', N'№19 (78), 2014 йил', NULL, 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (169, N'Ганиева Барно Ильхамовна', N'Latviya', N'Society. Integration  Education.Proceedings of the Internationa lScientifical conference Volume 2. May, 23 th -24th', N'Методы развития культуры чтения всистеме непрерывного образования=Methods of Development the Culture of Reading in Continuous Education', N'2014 г.         с.73-84', NULL, 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (170, N'Рахматуллаев Марат Алимович', N'Россия', N'Вестник Библиотечной Ассамблеи ЕвроАзии', N'Информационная сеть библиотек высших учебных заведений Узбекистана', N'2014 г.       С.27-31', NULL, 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (171, N'Ганиева Барно Ильхамовна', N'Россия', N'Вестник Библиотечной Ассамблеи ЕвроАзии', N'Информационная сеть библиотек высших учебных заведений Узбекистана', N'2014 г.       С.27-31', NULL, 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (172, N'Ганиева Барно Ильхамовна', N'?ир?изистон', N'Библиопульс: Илимий-маалыматтык журнал', N'Подготовка кадров в?сшей кваллификации в условиях реформирования информационно-библиотечной деятельности в Узбекистане', N'2014.г.        С.29-32', NULL, 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (173, N'Рахматуллаев Марат Алиимович', N'?ир?изистон', N'Библиопульс: Илимий-маалыматтык журнал', N'Актуальные задачи библиотечной кооперации в условиях глобализации', N'2014 г.          С. 11-14', NULL, 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (174, N'Рахматуллаев Марат Алимович', N'Latviya', N'Society. Integration  Education.Proceedings of the Internationa lScientifical conference Volume 2. May, 23 th -24th', N'Информационное обеспечение университетов в корпоративной библиотечной сети=Information  Support of High Schools in Corporate Library Network', N'2014 г.         с.333-342', NULL, 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (175, N'Рысюкова Ю.В.', N'Канада, Онтарио', N'Intellectual archive, volume 3, number 5, September 2014, ISSN 1929-4700', N'The Role Of Computer-Mediated Education In Forming Of Scientific Methodical 
Web-Activity,
инглиз тили', N'2014, 5 бетлари', N'http://www.intellectualarchive.com/?link=iaj201409', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (176, N'Шамсутдинов Р.Р.', N'Россия', N'Молодой ученый, № 4 (63) 2014, ISSN 2072-0297', N'Роль тьютора в системе дистанционного обучения', N'2014, 2 бетлари', N'http://moluch.ru/archive/63/', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (177, N'Закирова Ф.М.', N'Россия', N'Информатика и образование № 1 (250) 2014 ISSN 0234-0453', N'Технология формирования компетентности в применении веб-технологий в системе методической подготовки (рус тили)', N'2014, 4 бетлари', N'www.infojournal.ru/wp-login.php?', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (178, N'Делов Т.Э.', N'Россия', N'Science and world №7 (11),2014 ISSN 2308-4804', N'Formation of professional competence of 
future it-engineers in the modern 
information society', N'2014, 85-86 бетлари', N'http://scienceph.ru/archives/
Science and world № 7 (11), July', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (179, N'Бабаджанов Х.Б.', N' Австрия (Вена)', N'Austrian Journal of Humanities and Social Sciences journal', N'Some notes about the trade and supply system of Uzbekistan during the Second World War', N'№ 2 2014 (March–April), 18-21 бетлар', N'www.ew-a.org', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (180, N'Бабаджанов Х.Б.', N'Россия  Федерацияси (Казань)', N'Молодой учёный ежемесячный научный журнал', N'Проблема кадров и пути её решенияв сельском хозяйстве Узбекистана в годывторой мировой войны', N'№ 2 (61) . Февраль, 2014 г. 631-634 бетлар', N'www.moluch.ru', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (181, N'Хамдамова А.Р.', N'Прагиа', N'The culture of tolerance in the context of globalization: methodology of research. reality and prospect', N'Дин ва маданият уй-унлашуви тинчликнинг му?им омили сифатида', N'Май 2014й. 112-113 бетлар', N'www.sociosphera.com', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (182, N'Кошбахтиев И.А.', N'Российская Федерация', N'Молодой учёный', N'Специализированный программно-аппаратный комплекс «Омега-С» как средство информационно-коммуникационной технологии подготовки футболистов высокой квалификации', N'2014, 6', N'www.moluch.ru', 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (183, N'Кошбахтиев И.А.', N'Российская Федерация', N'Молодой учёный', N'Комплексная оценка интегральной подготовленности студентов', N'2014, 18', N'www.moluch.ru', 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (184, N'Кошбахтиев И.А.', N'Российская Федерация', N'Молодой учёный', N'Оптимизация образовательного процесса по физическому совершенствованию студентов гуманитарного вуза', N'2014, 18', N'www.moluch.ru', 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (185, N'Кошбахтиев И.А.', N'Российская Федерация', N'Молодой учёный', N'Влияние природно-климатических факторов на здоровье человека', N'2014, 18', N'www.moluch.ru', 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (186, N'Кошбахтиев И.А.', N'Российская Федерация', N'Молодой учёный', N'Определение научно-обоснованных средств для занятий футболом студентов отделения спортивного совершенствования', N'2014, 18', N'www.moluch.ru', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (187, N'Кошбахтиев И.А.', N'Российская Федерация', N'Молодой учёный', N'Анализ интегральной подготовленности студентов отделения спортивного совершенствования, занимающихся футболом', N'2014, 18', N'www.moluch.ru', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (188, N'Эрдонов О.Л.', N'Российская Федерация', N'Молодой учёный', N'Построение тренировочного процесса спортсменок высокой квалификации, специализирующихся по мини-футболу', N'2014, 6', N'www.moluch.ru', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (189, N'Эрдонов О.Л.', N'Российская Федерация', N'Молодой учёный', N'Факторная структура подготовленности спортсменок высокой квалификации по мини-футболу', N'2014, 18', N'www.moluch.ru', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (190, N'Сафронов А.А.', N'Республика Казахстан', N'Теория и методика физической культуры', N'Иследование показателей физического развития и физической подготовленности учащихся – юношей старших классов общеобразовательных школ г.Ташкента', N'2014, 6', N'www.moluch.ru', 5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (191, N'Сафронов А.А.', N'Российская Федерация', N'Молодой учёный', N'Анализ возрастных особенностей учащихся как основной компонент построения процесса физического воспитания', N'2014, 18', N'www.moluch.ru', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (192, N'Бабичева И.В.', N'Российская Федерация', N'Молодой учёный', N'Иследование показателей физического развития и физической подготовленности учащихся – юношей старших классов общеобразовательных школ г.Ташкента', N'2014, 6', N'www.moluch.ru', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (193, N'Бабичева И.В.,', N'Российская Федерация', N'Молодой учёный', N'Физкультурно-оздоровительные технологии на занятиях по физическому воспитанию', N'2014, 18', N'www.moluch.ru', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (194, N'Васильева Е.Б.', N'Российская Федерация', N'Молодой учёный', N'Влияние природно-климатических факторов на здоровье человека', N'2014, 18', N'www.moluch.ru', 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (195, N'Исмагилов Д.К.', N'Российская Федерация', N'Молодой учёный', N'Комплексная оценка интегральной подготовленности студентов', N'2014, 18', N'www.moluch.ru', 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (196, N'Исмагилов Д.К.', N'Российская Федерация', N'Молодой учёный', N'Исследование интегральной подготовленности студентов занимающиеся мини-футболом в техническом вузе', N'2014, 6', N'www.moluch.ru', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (197, N'Назарова М.А.', N'Россия,             г.Ишим', N'Актуальные проблемы германистики (сборник научных статей)', N'Полисемантические слова при электронном переводе текста', N'2014г. – С. 20-25.', N'http://www.kaffol.site40.net/portal', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (198, N'Шарипова А. А', N'Ўзбекистон, Урганч ш.', N'Ilm sarchashmalari', N'Таржиманинг стилистик муаммолари', N'2014й. c 49-53', N'e-mail: ilmsarchashmalari@urdu.uz', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (199, N'Шарипова А. А', N'USA.   – 2014', N'The advanced science', N'Dependence of adequate translation on genre-stylistics norms ( 729)', N' 2014 p.66-68.', N'www.advancedscience.org', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (200, N'Шарипова А. А', N'Ўзбекистон, Тошкент - 2014', N'ЎзМУ Хабарлари', N'Синонимларнинг стилистик жихатдан турлари ва уларнинг таржима ходисаси сифатида урганилишига доир', N'2014й. 274-277 бетлар.', N'Web sayt: uzmuxabarlari.nuu.uz', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (201, N'Шарипова А. А', N'Россия, г.Москва 2014', N'Актуальные проблемы современной науки', N'Проблема перевода: зависимость от видов синонимов и их классификации', N'2014г с.55-57.', N'http://www.sputnikplus.ru', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (202, N'Саидова Ф.Б', N' USA - 2014', N'Interpretation and  modeling of quality of education', N'The advanced science journal', N' 2014 p.18-19', N'www.advancedscience.org', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (203, N'Саидова Ф.Б', N'Ўзбекистон, Ташкент – 2014й', N'Управленческий аспект и основные функции и принципы повышения качества образования', N'Система образования и обучение иностранным языкам (английский, корейский) в Корее и Узбекистане', N' 2014г., с.313-323', NULL, 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (204, N'Саидова Ф.Б', N'Россия, Москва - 2014г', N'Педагогические науки', N'Проблемы качества высшего образования в контексте трансформации образования', N'2014г., с. 7-9
', N'http://www.sputnikplus.ru', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (205, N'Бекназарова С.С.', N'
Россия федерацияси', N'«Дистанционное  и виртуальное образование»,  Научный журнал', N'Разработка мобильного приложения, определяющего достоверность найденной информации  в сети «Интернет»', N'Москва, №6(84), 2014,
С. 18-24', N'edit.muh.ru', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (206, N'Бекназарова С.С.', N'Англия', N'News of science and education № 14(14)2014, England, Sheffield
SCIENCE AND EDUCATION LTD, 2014, p.85-88', N'Mobile application for defines reliability
information kids found on the internet
', N'2014, p.85-88', N'science.uk', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (207, N'?аюмова Г.А.', N'Англия', N'News of science and education № 14(14)2014, England, Sheffield
SCIENCE AND EDUCATION LTD, 2014, p.85-88', N'Mobile application for defines reliability
information kids found on the internet
', N'2014, p.85-88', N'science.uk', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (208, N'R.K. Bazarov', N'Russia, Sochi', N'European Researcher', N'A Distributed Computational Infrastructure for Science and Education', N'2014, PP. 1051-1058.', N'http://www.erjournal.ru/', 0.25, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (209, N'D.D. Akhmedov', N'Russia, Sochi', N'European Researcher', N'A Distributed Computational Infrastructure for Science and Education', N'2014, PP. 1051-1058.', N'http://www.erjournal.ru/', 0.25, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (210, N'Mingliqulov Z.B.', N'India', N'International Journal of Research in Engineering and Technology (IJRET)', N'Method Of Solving Multi-objective Optimization Problem In The Presence Of Uncertainty', N'2014 y. P. 496-500.', N'http://www.ijret.org', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (211, N'Мukhamedieva D.Т.', N'Америка ?ўшма Штатлари', N'International Journal of Mathematics and  Computer Applications Research (IJMCAR)', N'Approach  to  problem  solving  multicriterial optimization  with  fuzzy  aim', N'2014, 55-68 pp.', N'http://www.tjprc.org/', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (212, N'Мukhamedieva D.T.', N'Хиндистон', N'IJRET: International Journal of Research in Engineering and Technology', N'Approaches to the numerical solving of fuzzy differential equations', N'Jul-2014, 335-342p.', N'http://www.ijret.org', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (213, N'Бекмуратов Т.Ф.', N'Россия', N'«Проблемы информатики»', N'Подходы к решению задачи многокритериальной оптимизации с нечеткой целью', N'2014, С.3-9', N'www.problem-info.ru', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (214, N'Мухамедиева Д.Т.', N'Россия', N'«Проблемы информатики»', N'Подходы к решению задачи многокритериальной оптимизации с нечеткой целью', N'2014, С.3-9', N'www.problem-info.ru', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (215, N'Мухамедиева Д.Т.', N'Россия', N'«Проблемы информатики»', N'Проблемы построения нечетко-корректных моделей задач принятия решений по оценки и прогнозированию состояния слабоформализуемого процесса', N'2014, С.82-91', N'www.problem-info.ru', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (216, N'Бекмуратов Т.Ф.', N'Россия', N'«Проблемы информатики»', N'Проблемы построения нечетко-корректных моделей задач принятия решений по оценки и прогнозированию состояния слабоформализуемого процесса', N'2014, С.82-91', N'www.problem-info.ru', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (217, N'Мukhamedieva D.K', N'Америка ?ўшма штатлари', N'International Journal  in Research in Applied, Natural and Social Science', N'Population models with nonlinear diffusion of Kolmogorov-Fisher type', N'2014, 1-10 p', N'http://www.tjprc.org/', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (218, N'Мukhamedieva D.K.', N'Хиндистон', N'IJRET: International Journal of Research in Engineering and Technology', N'System of quasilinear equations of reaction-diffusion tasks of kolmogorov-fisher type biological population task in two-dimensional case', N'Jul-2014, 327-334 p', N'http://www.ijret.org', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (219, N'Мukhamedieva D.Т.', N'Америка ?ўшма Штатлари', N'International Journal of Mathematics and  Computer Applications Research (IJMCAR)  ISSN(P)', N'Synthesis algorithms of fuzzy-neural models of decision making', N'2014, 125-136 pp.', N'http://www.tjprc.org/', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (220, N'Mirzaraxmedova A.H.', N'Америка ?ўшма Штатлари', N'International Journal of Mathematics and  Computer Applications Research (IJMCAR)  ISSN(P)', N'Synthesis algorithms of fuzzy-neural models of decision making', N'2014, 125-136 pp.', N'http://www.tjprc.org/', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (221, N'Abdugafarov A.', N'Америка ?ўшма Штатлари', N'International Journal of Accounting and Financial Management Research (IJAFMR)  ISSN(P)', N'Control of cash flow in the economic cycle: mutual settlement as a mechanism for the payment of resources', N' 2014, 7-12 pp.', N'http://www.tjprc.org/', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (222, N'Allayarov F. A.', N'Америка ?ўшма Штатлари', N'International Journal of Accounting and Financial Management Research (IJAFMR)  ISSN(P)', N'Control of cash flow in the economic cycle: mutual settlement as a mechanism for the payment of resources', N' 2014, 7-12 pp.', N'http://www.tjprc.org/', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (223, N' Allayarov T.', N'Америка ?ўшма Штатлари', N'International Journal of Information Systems Management  Research and Development (IJISMRD)', N'Information technology to reduce level of nonpayments.', N' 2014, 1-6 p', N'http://www.tjprc.org/', 0.25, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (224, N'Abdugafarov A.', N'Америка ?ўшма Штатлари', N'International Journal of Information Systems Management  Research and Development (IJISMRD)', N'Information technology to reduce level of nonpayments.', N' 2014, 1-6 p', N'http://www.tjprc.org/', 0.25, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (225, N'Мukhamedieva D.K.', N'Америка ?ўшма Штатлари', N'International Journal of Mathematics  and Computer Applications Research (IJMCAR)', N'Population Models of Kolmogorov-Fisher Type with Double Nonlinearity and Nonlinear Cross Diffusion', N'2014, 59-72 pp', N'http://www.tjprc.org/', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (226, N'Равшанов Н., Курбонов Н.', N'Россия, Москва', N'Технология материалов', N'Моделирование процесса фильтрации трехфазной смеси «нефть-газ-вода» в пористых средах', N'2014, С.3-13.', N'www.ingnpublishing.com', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (227, N'Ravshanov N., Polvonov B., Shermatova G.', N'Russia, Sochi', N'European Researcher', N'Mathematic model of technical process of heavy mixtures classifying on the basis of dispersion of particles flight path', N'2014, PP. 824-830.', N'http://www.erjournal.ru/', 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (228, N'Ravshanov N., Shertaev M.M., Ikramova S.K.', N'Russia, Sochi', N'European Researcher', N'A Mathematical Model and New Criteria for the Process of Separating Friable Mixtures', N'2014, PP. 1028-1037.', N'http://www.erjournal.ru/', 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (229, N'Фазылов Ш.Х., Мирзаев Н.М., Каримов И.К., Даминов О.Ф.', N'Россия', N'Вестник КамчатГТУ', N'Выделение признаков в задаче распознавания рукописных текстов', N'2013, 38-42 б.', N'http://www.kamchatgtu.ru/ndeyat/vestnik/nizdan/default.aspx', 0.25, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (230, N'Фазылов Ш.Х., Мирзаев О.Н., Каримов И.К., Даминов О.Ф.', N'Россия', N'Вестник КамчатГТУ', N'Алгоритмы диагностики заболеваний растений по изображению их листьев', N'2014, 32-40 б.', N'http://www.kamchatgtu.ru/ndeyat/vestnik/nizdan/default.aspx', 0.25, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (231, N'Saidalieva M., Hidirova M.B.', N'USA, Sweden, Kazakhstan', N'Theoretical & Applied Science', N'Functional-differential equations of biological communities regulatorika', N'2014,                        P. 7-11', N'http://www.t-science.org/conf/2014/04_2014_1.pdf', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (232, N'Хидирова М.Б.', N'Россия', N'Информатика и информационные технологии в образовании, науке и производстве: сборник научных статей', N'Информационные технологии для анализа уравнений регуляторики возбудимых сред', N'2014,                        С. 68-72.', N'http://vpi.volpi.ru/files/science/science_conference/13npkpps/13npkpps_pt2.pdf#page=143', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (233, N'Saidalieva M.', N'Bulgaria', N'Journal  Biomath Communications', N'On Mathematical Models of Regulatory Mechanisms of Cellular Communities', N'2014, P. 245.', N'http://biomathforum.org/biomath/index.php/conference/article/view/245', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (234, N'Saidalieva M.,             Hidirova M.', N'Bulgaria', N'Journal  Biomath Communications', N'The Differential-Delay Equations of Cancer Genetic Mechanisms', N'2014,  P. 243.', N'http://www.biomathforum.org/biomath/index.php/conference/article/view/243', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (235, N'Normatov I.H.', N'Russia, Volgograd', N'International scientific “Science and World”', N'Nonlinear boundary value problems for dynamical systems with continuous and discrete time', N'2014, PP. 35-38.', N'http://www.scienceph.ru/', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (236, N'Юлдашев Б.Э.', N'Россия, Москва', N'Автоматизация и IT в нефтегазовой области', N'Компьютерное моделирование гидравлического расчёта кольцевой сети с одним подводом газа и n отборами', N'2014, С. 12-17.', N'http://www.avite.ru/ngk/', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (237, N'Юлдашев Б.Э.', N'Россия, Москва', N'Газовая промышленность.', N'Создание компьютерной модели для оптимизации функционирования газопровод-ных сетей со сложной лучистой и многокольцевой структурами', N'2014, С. 86-89.', N'http://www.gas-journal.ru/gij/', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] ([id], [fio], [country], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (238, N'Khujaev J.I.', N'India', N'International Journal of Computer Science Engineering and Information technologies Research.', N'An algorithm of calculating insolation for planets of the solar system without the account of atmospheric envelope', N'2014, PP. 125-132.', N'http://tjprc.org/computer-science-and-information-technology-engineering-international-journals-with-impact-factor.php', 1, NULL, 2015, 46)
GO

SET IDENTITY_INSERT [dbo].[kolichestvo_izdannih_mejdunarodnih_statey] OFF
GO

--
-- Data for table dbo.kolichestvo_izdannih_mestnih_statey  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[kolichestvo_izdannih_mestnih_statey] ON
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (1, N'Каримова В.А.', N'ТАТУ Хабарлари', N'Разработка прогаммного обеспечения для расчета устойчивости трубопроводов, расположенных в водонасыщенном грунте', N'2014й. 76-82 б', N'http://jurnal.tuit.uz', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (2, N'Назирова Э.Ш.', N'ТАТУ Хабарлари', N'Методы, алгоритмы и программы для цифровой обработки гастроэнтерологических сигналов', N'2014й. 112-116 б', N'http://jurnal.tuit.uz', 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (3, N'Кувнаков А.Э.', N'?арДУ хабарлари', N'"Mobile number portability" Хизмати асосидаги мобил телефон ра?амларини моделлаштириш', N'2014й. 23-26 б', N' xabarlar.qarshidu.uz', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (4, N'Якубов М.С.', N'Ўзбекистон Республикаси Бош прокуратурасининг Олий ў?ув курслари', N'Давлат бош?арув идоралари ахборот ресурслари конфиденциаллигини таъминлашнинг ?у?у?ий асослари', N'2014й. 39-44 б', N'vuk.uz', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (5, N'Якубов М.С.', N'Ўзбекистон Республикаси Президенти ?узуридаги давлат бош?аруви академияси', N'Фу?ароларнинг электрон ?укумат тизимидаги информацион ресурслардан фойдаланиш ?у?у?ининг айрим масалалари', N'2014й. 64-72', N'dba.uz', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (6, N'Ганиев Абдухалил Абдужалилович', N'ТАТУ хабарлари (Вестник). 2014 йил, 1сон.', N'Approach designing a mathematical model of network traffic based on special mode filtering', N'2014 йил, 8 бет', N'jurnal.tuit.uz', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (7, N'Иргашева Дурдона Якубжановна', N'ТАТУ хабарлари (Вестник). 2014 йил, 1сон.', N'К вопросу анализа проблем информационной безопасности', N'2014йил, 6 бет', N'jurnal.tuit.uz', 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (8, N'Ташев Комил Ахматович', N'ТАТУ хабарлари (Вестник). 2014 йил, 1сон.', N'К вопросу анализа проблем информационной безопасности', N'2014йил, 6 бет', N'jurnal.tuit.uz', 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (9, N'Ташев Комил Ахматович', N'ТАТУ хабарлари (Вестник). 2014 йил, 1сон.', N'Системный подход при обеспечении информационной безопасности в информационно-библиотечных сетях', N'2014йил, 8 бет', N'jurnal.tuit.uz', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (10, N'?уломов Шерзод Ражабоевич', N'ТАТУ хабарлари (Вестник). 2014 йил, 1сон.', N'Approach designing a mathematical model of network traffic based on special mode filtering', N'2014 йил, 8 бет', N'jurnal.tuit.uz', 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (11, N'Юсупов Баходир Кароматович', N'ТАТУ хабарлари (Вестник). 2014 йил, 1сон.', N'Approach designing a mathematical model of network traffic based on special mode filtering', N'2014 йил, 8 бет', N'jurnal.tuit.uz', 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (12, N'?уломов Шерзод Ражабоевич', N'Кимёвий технология назорат ва бош?арув ISSN 1815-4840 Хал?аро илмий техникавий журнал 1/2014 Тошкент Давлат Техника Университети, “УЗ?УРИЛИШМАТЕРИАЛЛАР” ДАК “УЗКИМЁСАНОАТ” ДАК “СОВПЛАСТИТАЛ” ?К Ўзбекистон Республикаси мулк агентлиги', N'Definitions policy access differentiations to IP networks on bases algebra of filtering rules', N'2014 йил, 6 бет', N'jurnal.tuit.uz', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (13, N'Исламов Шахбоз', N'ТАТУ, ТАТУ хабарлари (Вестник). 2014 йил, 2 сон.', N'Analyses of face recognition methods and modifications by adding Gaussian-Noise', N'2014йил, 6 бет', N'jurnal.tuit.uz', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (14, N'Каримов Маджит Маликович', N'ТАТУ, ТАТУ хабарлари (Вестник). 2014 йил, 2 сон.', N'The use of hash functions in protecting informations', N'2014йил, 7 бет', N'jurnal.tuit.uz', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (15, N'Варисов Акмал', N'ТАТУ, ТАТУ хабарлари (Вестник). 2014 йил, 1сон.', N'Электрон ?укумат интерфаол хизмати ахборот ресурсларидан фойдаланишни ?у?у?ий тарбиблаш', N'2014йил, 8 бет', N'jurnal.tuit.uz', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (16, N'Касымова.Ш.Т', N'Государственный коммитет связи, информатизации и телекоммуникационных технологий Республики Узбекистан. Ташкентский университет информационных технологий. Вестник ТУИТ.', N'Алгоритм определения веса объекта в задаче распознования методом вычисления оценок.', N'2(29)/2014 82-87 бетлар', N'jurnal.tuit.uz', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (17, N' Марышева Л', N'Государственный коммитет связи, информатизации и телекоммуникационных технологий Республики Узбекистан. Ташкентский университет информационных технологий. Вестник ТУИТ.', N'Алгоритм определения веса объекта в задаче распознования методом вычисления оценок.', N'2(29)/2014 82-87 бетлар', N'jurnal.tuit.uz', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (18, N'Мўминов Б.Б.', N'Физика, математика ва информатика ilmiy-uslubiy jurnali. –T., -', N'Ta`limni avtomatlashtirishning tarmoq dasturiy majmualari.', N'2014. 1-son 50-53- betlar', N'jurnal.tuit.uz', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (19, N'Мўминов Б.Б.', N'“TATU xabarlari” журнали, Тошкент –', N'Stages of designing data mining', N'2014. 2 – сон., 72-75 бетлар (4бетдан)', N'jurnal.tuit.uz', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (20, N'Назиров Ш.А. Махмудов А.З.', N'ТАТУ хабарлари журнали  Тошкент.,', N'Икки тилли ?ора?алпо?-ўзбек (ўзбек-?ора?алпо?) электрон таржимон дастури', N'1(29) 2014й 14-19 бетлар(2бетдан)', N'jurnal.tuit.uz', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (21, N'Назиров Ш.А. Рахманов ?.С.', N'ТАТУ хабарлари журнали  Тошкент.,', N'Икки тилли ?ора?алпо?-ўзбек (ўзбек-?ора?алпо?) электрон таржимон дастури', N'1(29) 2014й 14-19 бетлар(2бетдан)', N'jurnal.tuit.uz', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (22, N'Назиров Ш.А. Рахманов ?.С. Эржанов М.О.', N'ТАТУ хабарлари журнали Тошкент.', N'Алгебро-логический метод построения уравнения объектов фрактальной геометрии', N'1(29) 2014й , 90-100 бетлар(3,3 бетдан)', N'jurnal.tuit.uz', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (23, N'Назиров Ш.А. Рахманов ?.С.', N'ТАТУ хабарлари журнали Тошкент.,', N'Вычисления значений N-мерных дифференциальных кортежей многомерной интервально-значной функции', N'2(30) 2014й  62-76(7,5бетдан)', N'jurnal.tuit.uz', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (24, N'Рахманов ?.С.
', N'Таълим технологиялари журнали, Тошкент', N'Дастурлашга оид фанларни ў?итишда ва олимпиадаларга таайтинингйёрланишда Acm.tuit.uz с айтининг ўрни', N'4(48) 2014  53-57', N'tt-uz.ru', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (25, N'Бекмирзаев О.Н.

', N'Журнал,  
“ТАТУ хабарлари” 
Тошкент ахборот технологиялари университетининг илмий-техника ва ахборот-та?лилий журнали.

', N'К ВОПРОСУ АНАЛИЗА ПРОБЛЕМ ИНФОРМАЦИОННОЙ БЕЗОПАСНОСТИ', N'1(29)/2014. 49-54 бетлар.', N'jurnal.tuit.uz', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (26, N'Давронбеков Д.А.', N'ТАТУ хабарлари', N'Международные стандарты в области управления рисками информационной безопасности сетей телекоммуникаций', N'2014 йил, 40-45 бетлар', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (27, N'Давронбеков Д.А.', N'ТАТУ хабарлари', N'Методика оценки надежности программного обеспечения МКСУ РЭА', N'2013 йил (№4), 80-91 бетлар (кеч чоп этилгани сабабли 2013 йилдаги рейтингда берилмаган)', NULL, 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (28, N'Мадаминов Х.Х.', N'ТАТУ хабарлари', N'Применение приркладных методик и программных средств для расчета зоны покрытия передатчиков цифрового ТВ', N'2013 йил (№4), 23-31 бетлар (кеч чоп этилгани сабабли 2013 йилдаги рейтингда берилмаган)', NULL, 0.200000002980232, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (29, N'Абдукадиров А.Х.', N'ТАТУ хабарлари', N'Применение приркладных методик и программных средств для расчета зоны покрытия передатчиков цифрового ТВ', N'2013 йил (№4), 23-31 бетлар (кеч чоп этилгани сабабли 2013 йилдаги рейтингда берилмаган)', NULL, 0.200000002980232, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (30, N'Азимов М.Р.', N'ТАТУ хабарлари', N'Применение приркладных методик и программных средств для расчета зоны покрытия передатчиков цифрового ТВ', N'2013 йил (№4), 23-31 бетлар (кеч чоп этилгани сабабли 2013 йилдаги рейтингда берилмаган)', NULL, 0.200000002980232, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (31, N'Джураев Р.Х', N'ТАТУ ХАБАРЛАРИ', N'МЕЖДУНАРОДНЫЕ СТАНДАРТЫ В ОБЛАСТИ УПРАВЛЕНИЯ РИСКАМИ ИНФОРМАЦИОННОЙ БЕЗОПАНОСТИ СЕТЕЙ ТЕЛЕКОММУНИКАЦИЙ', N'2014 ,40-45 бетлар', N'http://jurnal.tuit.uz', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (32, N'Джураев Р.Х', N'ТошДТУ ХАБАРЛАРИ', N'ВЗАИМОСВЯЗЪ ПОКОЗАТЕЛЕЙ КАЧЕСТВА ОБСЛУЖИВАНИЯ И ИНФОРМАЦИОННОЙ БЕЗОПАСНОСТИ В СЕТЯХ ПЕРЕДАЧИ ДАННЫХ', N'08.02.2014,42-46 бетлар', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (33, N'Нишанбаев.Т.Н', N'Ахбороткоььуникациялар: Тармо?лар-Технологиялар-Ечимлар', N'ФОРМАЛИЗАЦИЯ ЗАДАЧИ ОПТИМАЛЬНОГО ПРОЕКТИРОВАНИЯ СЕТЕЙ СЛЕДУЮЩЕГО ПОКОЛЕНИЯ', N'2014,8-12 бетлар', N'Unicon.uz', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (34, N'Абдуллаев М.М', N'Ахбороткоььуникациялар: Тармо?лар-Технологиялар-Ечимлар', N'ФОРМАЛИЗАЦИЯ ЗАДАЧИ ОПТИМАЛЬНОГО ПРОЕКТИРОВАНИЯ СЕТЕЙ СЛЕДУЮЩЕГО ПОКОЛЕНИЯ', N'2014,8-12 бетлар', N'Unicon.uz', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (35, N'Парсиев С.С.', N'Ўзбекистон Республикаси ?уролли кучлар Академияси Хабарлари', N'Разработка математических моделей мультисервисных сетей', N'2014 май, 70-73', NULL, 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (36, N'Парпиев М.П.', N'Ахбороткоммуникациялар : Тармо?лар,Технологиялар,ечимлар', N'Ахборот ўлчов тизимларида ?ўлланиладиган ўлчаш воситаларини калибрлашдаги ўлчашларнинг ноани?лигини бахолаш', N'2014 январ, 24-27', NULL, 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (37, N'Рахмонова Г.С.', N'Ахбороткоммуникациялар : Тармо?лар,Технологиялар,ечимлар', N'Ахборот ўлчов тизимларида ?ўлланиладиган ўлчаш воситаларини калибрлашдаги ўлчашларнинг ноани?лигини бахолаш', N'2014 январ, 24-27', NULL, 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (38, N'Абдуллаев У.М.', N'Ўзбекистон Республикаси ?уролли кучлар Академияси Хабарлари', N'Разработка математических моделей мультисервисных сетей', N'2014 май, 70-73', NULL, 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (39, N'Бадалов Ж.И.', N'Ўзбекистон Республикаси ?уролли кучлар Академияси Хабарлари', N'Разработка математических моделей мультисервисных сетей', N'2014 май, 70-73', NULL, 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (40, N'Ахмедова Х.Х.', N'Ахбороткоммуникациялар : Тармо?лар,Технологиялар,ечимлар', N'О проведении аудита системы тактовой сетевой синхронизации', N'2014 март, 11-15', NULL, 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (41, N'Тўлаганова В.А.', N'Ўзбекистон Республикаси ?уролли кучлар Академияси Хабарлари', N'*Электр Занжирлар Назарияси* фанидан лаборатория стенди', N'2014 май, 30-36', NULL, 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (42, N'Тўлаганова В.А.', N'Ўзбекистон Республикаси ?уролли кучлар Академияси Хабарлари', N'Оценка вероятности ошибок в линейных трактах и регенераторах цифровых систем передачи асинхронным методом', N'2014 май, 74-76', NULL, 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (43, N'Тўлаганова В.А.', N'Ахбороткоммуникациялар : Тармо?лар,Технологиялар,ечимлар', N'Защита информации и особенности её реализации', N'2014 январ, 59-62', NULL, 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (44, N'Козлов В.А.', N'Ахбороткоммуникациялар : Тармо?лар,Технологиялар,ечимлар', N'Защита информации и особенности её реализации', N'2014 январ, 59-62', NULL, 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (45, N'Абдуллаев У.М.', N'Ахбороткоммуникациялар : Тармо?лар,Технологиялар,ечимлар', N'Защита информации и особенности её реализации', N'2014 январ, 59-62', NULL, 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (46, N'Парпиев М.П.', N'Вакуумная наука и техника. Программа', N'Вакуумный способ очистки поликристаллического кремния для солнечных элементов', N'2014 октябр,', NULL, 0.119999997317791, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (47, N'Абдужаббарова М.Б., Каюмова Г.А.', N'ТАТУ хабарлари', N'Сравнительный анализ построения сети доступа GPONC различной длиной оптического кабеля', N'2014', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (48, N'Абдужаббарова М.Б., Курбанов А.Х.', N'ТАТУ хабарлари', N'Разработка кольцевой и древовидной схемы построения сетей с архитектурой "оптика до здания"', N'2014', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (49, N'Абдужаббарова М.Б.', N'ТошДТУ хабарлари', N'Разработка вариантов организации широкополосного доступа с архитектурой "оптика до шкафа"', N'2014', NULL, 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (50, N'Эшмурадов А.М.,      Соатов Х.Г.', N'ТАТУ хабарлари', N'Абонент кириш тармо?ининг ўтказувчанлик ?обилиятини та?лили', N'2014', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (51, N'Эшмурадов А.М., Норматова Д.Т.', N'ТошДТУ хабарлари', N'Кўп имконийликда ностационар сигналларни ?ўллаш масалалари', N'2014', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (52, N'Эшмурадов А.М., Норматова Д.Т.', N'ТошДТУ хабарлари', N'Ўта кенг полосали кириш тармо?и технологиясини яратишнинг асосий принциплари', N'2014', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (53, N'Эшмурадов А.М., Арифджанов А.З.', N'ТошДТУ хабарлари', N'Анализ перспективных решений по организации оптических сетей абонентского доступа АК "УЗТЕЛЕКОМ"', N'2014, 37-41', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (54, N'Юнусов Н.Ю., Рахматов К.Р.', N'ТАТУ хабарлари', N'Математическая модель передаточной характеристики оптоэлектронного логического элемента - инвертора на фоторезисторе и светодиоде в качестве компонентов', N'2014', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (55, N'Исаев Р.И.', N'Ахбороткоммуникациялар: Тармо?лар - Технологиялар - Ечимлар', N'Технико-экономическая эффективность использования автономных гибридных солнечных ветро-дизельных электростанции на объектах связи и информатизации', N'2014', NULL, 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (56, N'Ликонцев Д.Н.', N'Вестник ТУИТ', N'Применение прикладных методик и программных средств для расчета зоны покрытия передатчиков цифрового ТВ', N'2013, №4, 23-31 (2014 йилда нашрдан чи??ан, 2013 йилда рейтингга кўшилмаган)', N'http://jurnal.tuit.uz/', 0.200000002980232, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (57, N'Гаврилов И.А.', N'Вестник ТУИТ', N'Анализ эффективности сред программирования при обработке ТВ изображений', N'2014, №1, 70-75', N'http://jurnal.tuit.uz/', 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (58, N'Пузий А.Н.', N'Вестник ТУИТ', N'Анализ эффективности сред программирования при обработке ТВ изображений', N'2014, №1, 70-75', N'http://jurnal.tuit.uz/', 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (59, N'Соатов Х.С.', N'Вестник ТУИТ', N'Автоматизация процесса проектирования конструкция свода подземных сооружений', N'2014, №2, 92-96', N'http://jurnal.tuit.uz/', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (60, N'Ликонцев Д.Н.', N'O''zbekiston Respublikasi Qurolli Kuchlari Akademiyasi xabarlari', N'Исследование влияния архитектуры Ташкента на ослабление уровней поля сотовой связи', N'2014, №1, 76-80', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (61, N'Шахобиддинов А.Ш.', N'O''zbekiston Respublikasi Qurolli Kuchlari Akademiyasi xabarlari', N'Исследование влияния архитектуры Ташкента на ослабление уровней поля сотовой связи', N'2014, №1, 76-80', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (62, N'Мирхабибова Д.М.', N'Ахбороткоммуникациялар:  тармо?лар, технологиялар, ечимлар', N'Ўзбекистон телекоммуникациялар тармо?ларининг ра?амлаш тизими ва режасини такомиллаштириш', N'2014,16-19б', N'unicon.uz', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (63, N'Таджибаев Ш З', N'Ахбороткоммуникациялар:  тармо?лар, технологиялар, ечимлар', N'Состаяние и переспективы развития цифрового телевидения в Узбекистане', N'2014, 20-25б', N'unicon.uz', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (64, N'Фазилжанов И.Р.', N'ТАТУ хабарлари', N'Иследование параметрического стабилизатора постоянного напряжения на трехструктурном инжекционно? вольтаическом транзисторе', N'ISSN2010-9857 Тошкент Ахборот Технологиялари Университети 3/2013, 57-65б', N'tuit.uz', 0.25, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (65, N'Атаниязов А', N'ICT NEWS', N'Эффективность использования радиочастотного спектра и новые подходы к регулированию', N'ICTNEWS, Радиосвязь и ЭМС: тенденции и перспективы, 17-18 (91-92) 2013, ISSN 2181-6727, ст.28', N'ictnews.uz', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (66, N'Ядгарова Н А', N'ТАТУ хабарлари', N'Иследование параметрического стабилизатора постоянного напряжения на трехструктурном инжекционно? вольтаическом транзисторе', N'ISSN2010-9857 Тошкент Ахборот Технологиялари Университети 3/2013, 57-65б', N'tuit.uz', 0.25, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (67, N' Собирова У.Ш.', N'ТАТУ хабарлари', N'Иследование параметрического стабилизатора постоянного напряжения на трехструктурном инжекционно? вольтаическом транзисторе', N'ISSN2010-9857 Тошкент Ахборот Технологиялари Университети 3/2013, 57-65б', N'tuit.uz', 0.25, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (68, N'Шаюсупова Х.Х.', N'ТАТУ хабарлари', N'Иследование параметрического стабилизатора постоянного напряжения на трехструктурном инжекционно? вольтаическом транзисторе', N'ISSN2010-9857 Тошкент Ахборот Технологиялари Университети 3/2013, 57-65б', N'tuit.uz', 0.25, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (69, N'Арипов Х К', N'Ахбороткоммуникациялар:  тармо?лар, технологиялар, ечимлар', N'Паст кучланишли ра?амли схемалар негиз элементлари', N'Журнал «Инфокоммуникации: сети, технологии, решения» №3 (27) 2012, АК ТТЕ №3 (27) /2013, ст. 27', N'unicon.uz', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (70, N'Абдурахманова Ю.М', N'Журнал «Химическая технология. Контроль и управление». Ташкент, ТашГТУ. 2014,', N'Регуляризованные рекуррентно-итерационные алгоритмы оценивания состояния квазилинейных объектов управления в условиях априорной неопределенности', N'2014, №1 (55), 70-74 стр.', NULL, 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (71, N'Абдурахманова Ю.М', N'Вестник ТУИТ. №1.-с.70-74.', N'Регуляризованные субоптимальные оценки состояния динамических систем', N'2014, №1 (29), 107-112 стр', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (72, N'Али?улов Ё.К.', N'ТАТУ хабарлари', N'Регуляризованные субоптимальные оценки состояния динамических систем', N'2014, №1 (29), 107-112 стр', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (73, N'Рахимова Ф.С.', N'Физика, математика ва информатика журнали', N'"Беруний масалаларидан намуналар"', N'2014, № 2, 10-14-бетлар', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (74, N'О.Б.РЎЗИБАЕВ', N'Химическая технология. Контроль и управление', N'ИССЛЕДОВАНИЕ И ПРОГРАММНАЯ РЕАЛИЗАЦИЯ МЕТОДА БЛИЖАЙШИХ СОСЕДЕЙ', N'2014 йил, №2 сон,  84-90 бет', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (75, N' О.Б.Рўзибаев', N'ТАТУ хабарлари', N'Абонентларга техник ?измат кўрсатиш турлари таснифини ва уларнинг дастурий таъминотини яратиш', N'2014 йил, №1 сони,  3-7 бет', NULL, 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (76, N'О.Б.Рўзибаев', N'Информатика ва энергетика муомалари', N'Таянч векторлар усули асосида классификациялаш
хатоликлари та?лили

', N'2013 йил, №3 сон', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (77, N'К.Р.Абдиримов', N'ЎЗМУ хабарлари', N'Поиск логических закономерностей в форме полуплоскостей', N'2013 йил, №3 сон, 7-9 бет.', NULL, 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (78, N'К.Р.Абдиримов', N'ЎЗМУ хабарлари', N'Выбор IF-THEN правил с помощью логичесиких закономерностей в форме шаров', N'2013 йил, №2 сон, 218-222 бет.', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (79, N'К.Р.Абдиримов', N'Информатика ва энергетика муомалари', N'Визуализация многомерных данных и свойств объектов в задачах классификации', N'2013 йил, №2-3 сон, 75-80 бет.', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (80, N'Рахматов Р.Р.', N'ЎзФА Механика муаммолари', N'Равновесие упругого стержня при наличии на поверхности контакта его с внешней средой зон предварительного смещения и проскальзывания', N'2014, 24-26 бетлар', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (81, N'Керимов Комил Фикратович', N'ТАТУ хабарлари', N'Методы и алгоритмы защиты электронной почты от спам-сообщений', N'2014, 53-56', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (82, N'Мухсинов Шамиль Шавкатович', N'ТАТУ хабарлари', N'Методы и алгоритмы защиты электронной почты от спам-сообщений', N'2014, 53-56', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (83, N'Рахманов Аскар Тажибаевич', N'Кимёвий технология. Назорат ва бош?арув', N'Таснифлаш масалаларини ечишнинг такомиллаштирилган усули ?а?ида', N'2014, 85-92', NULL, 0.25, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (84, N'Абдуллаева С.Х.', N'Преподавание языка и литературы', N'Обучение специальной лексике на материале типовых текстов', N'№4, 2014 йил, 36-38 бетлар', NULL, 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (85, N'Гаюбова К.А.', N'Преподавание языка и литературы', N'Учет особенностей родного языка студентов специального факультета при обучении русскому языку', N'№4, 2014 йил, 33-36 бетлар', NULL, 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (86, N'Хамдам-Зода Л.Х.', N'Преподавание языка и литературы', N'Характеристика ошибок в письменной работе студентов', N'2014 йил, 40-42 бетлар', NULL, 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (87, N'Матенов Р.Б.', N'Гуманитарные научные исследования. 2014. № 4 [Электронный ресурс]. URL: http://human.snauka.ru/2014/04/6415 (дата обращения: 05.11.2014).', N'Мотивационные основы обучения студентов вариантности синтаксических единиц', NULL, N'http://human.snauka.ru/2014/04/6415', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (88, N'Закирова Ф.Т.', N'Таълим муаммолари', N'Технология создания и использования виртуальных лабораторий в учебном процессе', N'2014, 3 бетлари', N'www.devedu.uz/uz/interactive/talimmuammolari/2014-1', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (89, N'Мигранова Э.А.', N'Таълим технологиялари', N'«FEATURES OF CREATION AN ELECTRONIC EDUCATIONAL AND METHODICAL COMPLEX ON DISCIPLINE “THE TECHNIQUE OF TEACHING SPECIAL DISCIPLINES”»', N'2014', N'http://tt-uz.ru/2014-yil-3-soni', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (90, N'Салихова М.Ш.', N'Таълим технологиялари', N'“АХБОРОТ КОММУНИКАЦИЯ ТЕХНОЛОГИЯЛАРИ СО?АСИДА БЎЛАЖАК Ў?ИТУВЧИНИНГ КАСБИЙ КОМПИНТЕНТЛИГИНИ ШАКИЛЛАНТИРИШ”.', N'2014', N'http://tt-uz.ru/2014-yil-2-soni-2', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (91, N'Зарипова Д.А.', N'Таълим технологиялари', N'“ТАЪЛИМНИ  АХБОРОТЛАШТИРИШ ВОСИТАСИ СИФАТИДА АДАПТИВ  Ў?ИТИШ  ТИЗИМИ ВА УНИНГ А?АМИЯТИ”', N'2014', N'http://tt-uz.ru/2014-yil-2-soni-2', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (92, N'Рысюкова Ю.В.', N'Таълим технологиялари', N'Современные требования к формам и методам организации процесса обучения в современном ВУЗе', N'2014, 3 бетлари', N'http://tt-uz.ru/2014-yil-2-soni-2', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (93, N'Туленова Г.Дж.', N'Тошкент Ислом университети илмий – та?лилий буллетин', N'Глобаллашув шароитида ахборот хавфсизлигини таъминлашнинг ?у?у?ий кафолатлари', N'2/2014, 15-18 бетлар', NULL, 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (94, N'Бабаджанов Х.Б.', N'O''zbekiston tarixi', N'Иккинчи жа?он уриши  йилларида Ўзбекистонда нон  та?симоти  муаммолари', N'2/2014, 55-66 бетлар', NULL, 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (95, N'    Бабаханова Д.Р.', N'"Композицион материаллар" илмий-техникавий ва амалий журнали', N'Математико-статическая обработка результатов оптимизации состава антикоррозионного покрытия', N'2014 йил, 30-31 б.б.', NULL, 0.25, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (96, N'Насруллаева Д.А.', N'"Ахбороткоммуникациялар:тармо?лар,технологиялар,ечимлар" ?ар чораклик илмий-техник журнали', N'Ахборот рискларини су?урталаш', N'2014 йил, 44-48 б.б.', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (97, N'Алимова  Г.А.', N'"Бизнес-Эксперт" журнали', N'Актуальные вопросы повышения качества практических занятий.', N'№3, 2014 йил, 65-67 б.б.', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (98, N'Алимова  Г.А.', N'"Бизнес-Эксперт" журнали', N'Формирование структуры малого бизнеса и частного предпринимательства', N'№6,2014 йил, 68-69 б.б.', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (99, N'Базаров Фур?ат Одилович', N'" Молия" илмий журнали 2-сон', N'Зарубежный опыт налогооблажения малого предпринимтельства в инновационно-информационной сфере', N'Тошкент, 2014', NULL, 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (100, N'Маъмуров Бахтиёр', N'"Biznes-Эксперт" журнали 9-сон', N'Ўзбекистон ало?а хизматлари бозорида ра?обат му?итини ривожлантириш исти?боллари', N'Тошкент, 2014.   34-38 бетлар', NULL, 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (101, N'Маъмуров Бахтиёр', N'"Biznes-Эксперт" журнали 8-сон', N'АКТ со?аси корхоналарида сифатли, ра?обатбардош хизматлар кўрсатишда янги стратегия ва  бизнес-моделларини ?ўллаш исти?боллари', N'Тошкент, 2014.   27-30 бетлар', NULL, 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (102, N'Шарипова А.А', N'Ilm sarchashmalari', N'Таржиманинг стилистик муаммолари', N'2014й. c 49-53', NULL, 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (103, N'Шарипова А.А', N'ЎзМУ Хабарлари', N'Синонимларнинг стилистик жихатдан турлари ва уларнинг таржима ходисаси сифатида урганилишига доир', N'2014й. 274-277 бетлар.', N'www.uzmuxabarlari.nuu.uz', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (104, N'Саидова Ф.Б', N'Система образования и обучение иностранным языкам (английский, корейский) в Корее и Узбекистане', N'Управленческий аспект и основные функции и принципы повышения качества образования', N' 2014г., с.313-323', N'www.tdpu.uz', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (105, N'Саидова Ф.Б', N'Министерство высшего и среднего специального образования республики Узбекистан
Ташкентский государственный педагогический университет имени Низами
При поддержке
Ташкентского объединения преподавателей русского языка и литературы
Материалы  десятых Виногра', N'Роль межкультурного и межнациональной коммуникации в повышении качества обучения студентов', N'2014., с.388-392', N'www.tdpu.uz', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (106, N'Бекназарова С.С.', N'«ТАТУ xabarlari»', N'Проектирование программного обеспечения онлайн системы- Mediacourse builder', N'2013, №4, 63-70 б.', N'journal.tuit.uz', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (107, N'Бекназарова С.С.', N'Проблемы информатики и энергетики, №1-2-2014, Ташкент,  2014, С.109-113', N'Использование технологий медиаобразования (на примере медиаобразовательной системы http://mediaedu.uz) для развития медиаграммотности преподавателей', N'2014, С.109-113', N'academy.uz', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (108, N'Нуралиев Ф.М.', N'«ТАТУ xabarlari»', N'Описание модулей программного комплекса для расчета магнитоупругостин пластин и оболочек со сложной формой', N'2014, №2(30), 110-113 б.', N'journal.tuit.uz', 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (109, N'Умарова Д.Б.', N'San`at журнали', N'"Рассом ниго?идаги олам"', N'2014 й. №1. 36–39 б.', NULL, 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (110, N'Умарова Д.Б.', N'КOFUSO International Spring Conference, Хал?аро илмий конференция, Жанубий Корея республикаси', N'Furniture of Uzbekistan', N'2014 й. 11 – 15 б.', NULL, 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (111, N'Абдукадыров М.А.', N'Гелиотехника', N'Пути повышения выходного напряжения и удельной электрической мощности фотопреобразователей', N'2014 й., №2 (13-14 март   271-272 бет )', N'www.fti.fan.uz', 0.25, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (112, N'Джуманияов И.О.', N'Гелиотехника', N'Пути повышения выходного напряжения и удельной электрической мощности фотопреобразователей', N'2014 й., №2 (13-14 март   271-272 бет )', N'www.fti.fan.uz', 0.25, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (113, N' Ганиев А.С.', N'Гелиотехника', N'Пути повышения выходного напряжения и удельной электрической мощности фотопреобразователей', N'2014 й., №2 (13-14 март   271-272 бет )', N'www.fti.fan.uz', 0.25, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (114, N'Хамидов В.С.', N'Ta''lim texnologiyalari', N' O’rta maxsus, kasb-hunar ta’limi muassasalarida axborot kommunikatsiya texnologiyalaridan foydalangan holda mustaqil ta''lim jarayonini tashkillashtirish, Ta’lim texnologiyalari”', N' 2014 й., №1(45), (2-9 бет)', NULL, 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (115, N'Абдукадыров М.А., Ахмедова Н.А.', N'XXI -аср технологиялар илмий-техник журнали', N'Тўпланган ?уёш нуридан электр энергияси олиш исти?боллари', N' 2014 й., №2 (16-17 бет)', N'www.21asrtexnolog.uz', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (116, N'Абдукадыров М.А.', N'XXI -аср технологиялар илмий-техник журнали', N'Тўпланган ?уёш нуридан электр энергияси олиш исти?боллари', N' 2014 й., №2 (16-17 бет)', N'www.21asrtexnolog.uz', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (117, N' Ахмедова Н.А.', N'XXI -аср технологиялар илмий-техник журнали', N'Тўпланган ?уёш нуридан электр энергияси олиш исти?боллари', N' 2014 й., №2 (16-17 бет)', N'www.21asrtexnolog.uz', 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (118, N'Тигай О.Э.', N'Fizika, matematika va informatika', N'Интегрированные методы решение задач по физике с применением программ Mathcad Crocodile Technology 3D', N' 2014 й., № 2 (96-100 бет)', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (119, N'Абдукадыров М.А.', N'Гелиотехника', N'Влияние обработки поверхности на оптическую прозрачность монокристалов  GaP

', N' 2014 й., № 4 (53-55 бет)', N'www.fti.fan.uz', 0.25, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (120, N'Ганиев А.С.', N'Гелиотехника', N'Влияние обработки поверхности на оптическую прозрачность монокристалов  GaP

', N' 2014 й., № 4 (53-55 бет)', N'www.fti.fan.uz', 0.25, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (121, N'Джуманияов И.О.', N'Гелиотехника', N'Влияние обработки поверхности на оптическую прозрачность монокристалов  GaP

', N' 2014 й., № 4 (53-55 бет)', N'www.fti.fan.uz', 0.25, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (122, N'Ахмедова Н.А.', N'Гелиотехника', N'Влияние обработки поверхности на оптическую прозрачность монокристалов  GaP

', N' 2014 й., № 4 (53-55 бет)', N'www.fti.fan.uz', 0.25, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (123, N'Мухамедиева Д.Т.', N'Узбекский журнал «Проблемы информатики и энерге-тики»', N'Параллельный муравьиный алгоритм оптимизации', N'2014, С. 3-9', NULL, 0.25, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (124, N'Ахмедов Д.Д.', N'Узбекский журнал «Проблемы информатики и энерге-тики»', N'Параллельный муравьиный алгоритм оптимизации', N'2014, С. 3-9', NULL, 0.25, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (125, N'Арипов М.М.', N'Узбекский журнал «Проблемы информатики и энерге-тики»', N'Подходы к численному моделированию задачи реакции  диффузией   типа Колмогорова-Фишера в двумерном случае', N'2014. -С. 18-24', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (126, N' Мухамедиева Д.К.', N'Узбекский журнал «Проблемы информатики и энерге-тики»', N'Подходы к численному моделированию задачи реакции  диффузией   типа Колмогорова-Фишера в двумерном случае', N'2014. -С. 18-24', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (127, N'Арипов М.М., Мухамедиева Д.К.', N'Международный научно-технический журнал «Химическая технология.', N'Популяционные модели типа Колмогорова-Фишера с нелинейной кросс-диффузией', N'2014, Стр.46-52', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (128, N'Мухамедиева Д.Т', N'Международный научно-технический журнал «Химическая технология.', N'Применение мягких вычислений при построении моделей задач принятия решений по оценке состояния слабоформализуемого процесса', N'2014, Стр.73-83', NULL, 1, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (129, N'Мухамедиева Д.К.', N'Международный научно-технический журнал «Химическая технология.', N'К решению обобщенного уравнения в задаче биологической популяции конвективного переноса', N' 2014,  С.71-76', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (130, N'Арипов М.М.', N'Международный научно-технический журнал «Химическая технология.', N'К решению обобщенного уравнения в задаче биологической популяции конвективного переноса', N' 2014,  С.71-76', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (131, N'Фозилов Ш.Х., Маматов Н.С.', N'«Информатика ва энергетика муаммолари» Ўзбекистон журнали', N'L-Информатив белгиларни танлаб олиш усули', N'2014, 10-16 б.', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (132, N'Камилов М.М., Хамроев А.Ш.', N'Международный научно–технический журнал «Химическая технология. Контроль и управление».', N'Архитектура и основные структурно-функциональные блоки программно-распознающего комплекса частичной прецедентности', N'2014 йил, № 4.–С.49-58', NULL, 0.5, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (133, N'Сайдалиева М., Хидирова М.Б., Алиев Б.Р.', N'Инфекция, иммунитет и фармакология', N'Моделирование последовательного                                                     осуществления молекулярно-генетических процессов при инфекции гепатоцитов вирусами гепатита B', N'2014, С.106-112.', N'-', 0.330000013113022, NULL, 2015, 46)
GO

INSERT INTO [dbo].[kolichestvo_izdannih_mestnih_statey] ([id], [fio], [journal], [paper], [paper_year], [link], [coauthor_count], [filename], [year], [id_university])
VALUES 
  (134, N'Нуралиев Ф.М.', N'Вестник ТУИТ', N'Описание модулей программного комплекса для расчёта магнитоуп-ругости пластин и оболочек со сложной формой', N'2014,  С. 110-113.', N'http://www.tuit.uz/press-centr/izdatelskaja-rabota', 1, NULL, 2015, 46)
GO

SET IDENTITY_INSERT [dbo].[kolichestvo_izdannih_mestnih_statey] OFF
GO

--
-- Data for table dbo.majmua  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[majmua] ON
GO

INSERT INTO [dbo].[majmua] ([id], [fio], [kod_spec], [metodich_name], [metodich_number], [filename], [year], [id_university], [university_id])
VALUES 
  (16, N'Raxmanov Q.S., Mo‘minov B.B., Sh.T.Qosimova, A.Z.Mahmudov', N'05-13-06 Matematik modellashtirish. Sonli usullar va dasturlar majmui', N'“C/C++ da dasturlash” kursidan laboratoriya ishlari uchun uslubiy ko’rsatma', N'2014йил 1 апрель,8(69)', NULL, 2015, NULL, 46)
GO

INSERT INTO [dbo].[majmua] ([id], [fio], [kod_spec], [metodich_name], [metodich_number], [filename], [year], [id_university], [university_id])
VALUES 
  (17, N'Raxmanov Q.S., Qosimova Sh.T., Gapurova A.A.', N'05-13-06 Matematik modellashtirish. Sonli usullar va dasturlar majmui', N'Сборник заданий и методических указаний по предмету "Программирование на С/С++"', N'2014 йил 10 апрель, 8(69)', NULL, 2015, NULL, 46)
GO

INSERT INTO [dbo].[majmua] ([id], [fio], [kod_spec], [metodich_name], [metodich_number], [filename], [year], [id_university], [university_id])
VALUES 
  (18, N'Maksudova O.N.', NULL, N'Kids" Englbsh 2', N'№1 (режадан ташқари) 25.04.2014 (ХТВ)', NULL, 2015, NULL, 46)
GO

SET IDENTITY_INSERT [dbo].[majmua] OFF
GO

--
-- Data for table dbo.Monitorings  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[Monitorings] ON
GO

INSERT INTO [dbo].[Monitorings] ([Id], [J1], [J2], [J3], [J4], [J5], [J6], [J7], [J8], [J9], [J10], [J11], [J12], [J13], [J14], [J15], [J16], [J17], [J18], [J19], [J20], [J21], [J22], [J23], [J24], [J25], [J26], [J27], [J28], [J29], [J30], [J31], [J32], [J1_2], [J1_7], [J2_1], [J2_2], [Year], [UniverId], [Srok])
VALUES 
  (1, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2015, 24, NULL)
GO

SET IDENTITY_INSERT [dbo].[Monitorings] OFF
GO

--
-- Data for table dbo.monografiya  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[monografiya] ON
GO

INSERT INTO [dbo].[monografiya] ([id], [fio], [kod_spec], [monograf_name], [monograf_year], [filename], [year], [id_university], [university_id])
VALUES 
  (40, N'Axmedova M.X.', N'130002 - Metodika prepodavaniya russkogo yazika', N'Роль ситуативно-коммуникативных заданий в развитии речи студентов нефилологических вузов', N'2014', NULL, 2015, NULL, 46)
GO

INSERT INTO [dbo].[monografiya] ([id], [fio], [kod_spec], [monograf_name], [monograf_year], [filename], [year], [id_university], [university_id])
VALUES 
  (41, N'Saidova F.B.', NULL, N'«Целостность управления качеством образования в высших учебных заведениях» (на примере педагогических вузов)', N'2014', NULL, 2015, NULL, 46)
GO

INSERT INTO [dbo].[monografiya] ([id], [fio], [kod_spec], [monograf_name], [monograf_year], [filename], [year], [id_university], [university_id])
VALUES 
  (42, N'Muxamedieva D.T.', N'05-13-06 Matematik modellashtirish. Sonli usullar va dasturlar majmui', N'Разработка нечетких моделей задач принятия решений', N'2014', NULL, 2015, NULL, 46)
GO

INSERT INTO [dbo].[monografiya] ([id], [fio], [kod_spec], [monograf_name], [monograf_year], [filename], [year], [id_university], [university_id])
VALUES 
  (43, N'Muxamedieva D.T', N'05-13-06 Matematik modellashtirish. Sonli usullar va dasturlar majmui', N'Применение  методов  мягких  вычислений  в слабоформали-зуемых системах', N'2014', NULL, 2015, NULL, 46)
GO

INSERT INTO [dbo].[monografiya] ([id], [fio], [kod_spec], [monograf_name], [monograf_year], [filename], [year], [id_university], [university_id])
VALUES 
  (44, N'Abdugafarov A., Abduvaxitov T.', N'05-13-06 Matematik modellashtirish. Sonli usullar va dasturlar majmui', N'Спиралевидные модели экономики', N'2014', NULL, 2015, NULL, 46)
GO

INSERT INTO [dbo].[monografiya] ([id], [fio], [kod_spec], [monograf_name], [monograf_year], [filename], [year], [id_university], [university_id])
VALUES 
  (45, N'Ravshanov N.,
Sharipov D.K.', N'05.13.06- Matematik modellashtirish. Sonli usullar va dasturlar majmui', N'Конструктивная системная методология математического моделирования и вычислительного эксперимента в проблеме охраны окружающей среды', N'2014', NULL, 2015, NULL, 46)
GO

INSERT INTO [dbo].[monografiya] ([id], [fio], [kod_spec], [monograf_name], [monograf_year], [filename], [year], [id_university], [university_id])
VALUES 
  (46, N'Ravshanov N.', N'05.13.06- Matematik modellashtirish. Sonli usullar va dasturlar majmui', N'Компьютерное моделирование технологических процессов сепарирования смесей', N'2014', NULL, 2015, NULL, 46)
GO

INSERT INTO [dbo].[monografiya] ([id], [fio], [kod_spec], [monograf_name], [monograf_year], [filename], [year], [id_university], [university_id])
VALUES 
  (47, N' Xidirov B.N.,  Saydalieva M.M.,   Xidirova M.B.', N'05.13.06- Matematik modellashtirish. Sonli usullar va dasturlar majmui', N'Регуляторика живых систем', N'2014', NULL, 2015, NULL, 46)
GO

INSERT INTO [dbo].[monografiya] ([id], [fio], [kod_spec], [monograf_name], [monograf_year], [filename], [year], [id_university], [university_id])
VALUES 
  (48, N'Yuldashev B.E., Xujaev I.K.', N'05.13.06- Matematik modellashtirish. Sonli usullar va dasturlar majmui', N'Усовершенствованные модели и методы расчёта трубопроводного транспорта реальных газов', N'2014', NULL, 2015, NULL, 46)
GO

SET IDENTITY_INSERT [dbo].[monografiya] OFF
GO

--
-- Data for table dbo.qullanma  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[qullanma] ON
GO

INSERT INTO [dbo].[qullanma] ([id], [fio], [kod_spec], [posobie_name], [posobie_number], [filename], [year], [id_university], [university_id])
VALUES 
  (37, N'Irgasheva D.Ya., Islomov Sh.Z.', N'3521901–“Axborot-kommunikatsiya tizimlari va axborot texnologiyalariga texnik xizmat ko`rsatish"', N'Network Infrastructure and Security Policy Windows 8 OS', N'ЎРААваТТДавлат Қўмитаси №35 буйруқ 3 илова 13-банд', NULL, 2015, NULL, 46)
GO

INSERT INTO [dbo].[qullanma] ([id], [fio], [kod_spec], [posobie_name], [posobie_number], [filename], [year], [id_university], [university_id])
VALUES 
  (38, N'Mo''minov B.B.', N'100000, 130000 - Matematika, 5130100 - matematika', N'Informatika', N'ОЎМТВ нинг 2013 йил 20 августдаги 312 сонли буйруқ (Гувоҳнома рақами 312-039). 2014 10-сентябрда чоп этишга рухсат этилган', NULL, 2015, NULL, 46)
GO

INSERT INTO [dbo].[qullanma] ([id], [fio], [kod_spec], [posobie_name], [posobie_number], [filename], [year], [id_university], [university_id])
VALUES 
  (39, N'Musaev M.M.', N'05-13-06 Matematik modellashtirish. Sonli usullar va dasturlar majmui', N'Компьютер тизимлари ва тармоқлари', N'Протокол № 9 Научно-технического совета УзАСИ 28 декабрь 2011 г.', NULL, 2015, NULL, 46)
GO

INSERT INTO [dbo].[qullanma] ([id], [fio], [kod_spec], [posobie_name], [posobie_number], [filename], [year], [id_university], [university_id])
VALUES 
  (40, N'Abduazizov A A Faziljanov I R  Yarmuxamedov A, Shayusupova X, Yusupov Ya', N'5311200 Televidenie radioaloka va radioeshittirish', N'Ахборот узатиш радиотехеник тизимлари', N'Рўйхатга олиш раками332/1, 26.08.12', NULL, 2015, NULL, 46)
GO

INSERT INTO [dbo].[qullanma] ([id], [fio], [kod_spec], [posobie_name], [posobie_number], [filename], [year], [id_university], [university_id])
VALUES 
  (41, N'Bazarov Furqat Odilovich', NULL, N'Инновационный менежмент', N'А457862214 15.06.13', NULL, 2015, NULL, 46)
GO

INSERT INTO [dbo].[qullanma] ([id], [fio], [kod_spec], [posobie_name], [posobie_number], [filename], [year], [id_university], [university_id])
VALUES 
  (42, N'Shaxakimova M.T', NULL, N'Scale up', N'335-105 23.08.2014', NULL, 2015, NULL, 46)
GO

SET IDENTITY_INSERT [dbo].[qullanma] OFF
GO

--
-- Data for table dbo.raiting  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[raiting] ON
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (1, 1, 2013, 623, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 119, 1, 0, 0, 6994, 0, 6, 2, 3, 0, 2, 0, 0, 223, 510, 150, 310, 0, 16, 0, 1, 60.8, 63, 1321, 1488, 0, 3, 10, 0, 10, 64, 18, 3, 124, 0, 190, 6, 0, 0, 129.52, 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 2990, 633, 3171, 405, 6588, 160, 50, 121, 0.5, 0.8, 6, 432, 66, 508, 0.5, 0.5, 0.5, 0.5, 0, 43, 14, 0.65, 576, 788, 25, 218)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (2, 2, 2013, 232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 115, 0, 0, 0, 2384, 0, 1, 0, 0, 0, 0, 0, 0, 165, 187, 30, 130, 0, 4, 0, 1, 42.9, 13, 182, 561, 0, 1, 0, 0, 2, 1, 1, 1, 24, 0, 66, 0, 30.95, 3.4, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 1872, 473, 1927, 325, 2684, 232, 232, 107, 1, 0.6, 28, 20, 28, 214, 0.5, 0.5, 0.5, 0.5, 0, 49, 43, 0.7, 594, 612, 16, 96)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (3, 3, 2013, 493, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92.7, 125, 1, 3, 0, 3043, 0, 6, 0, 0, 0, 0, 0, 0, 126, 471, 145, 307, 0, 8, 0, 1, 53.3, 67, 491, 522, 0, 0, 0, 0, 86, 0, 28, 1, 126, 0, 194, 0, 0, 272.57, 51, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1019, 987, 1195, 457, 3010, 87, 87, 120, 0.5, 0.6, 6, 0, 24, 480, 0.5, 0.5, 1, 1, 0, 22, 31, 0.7, 85, 97, 65, 286)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (4, 4, 2013, 240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.9, 84, 1, 0, 0, 2827, 0, 0, 1, 6, 0, 10, 0, 0, 245, 225, 42, 130, 0, 12, 0, 1, 54.3, 5, 268, 353, 0, 2, 0, 0, 0, 0, 4, 0, 14, 0, 81, 0, 0, 41.13, 93, 0, 1, 0, 0, 6, 0, 0, 0, 0, 0, 0, 1315, 1315, 1486, 211, 2694, 90, 90, 50, 0.5, 0.2, 10, 22, 21, 243, 0.5, 0.5, 0.5, 0.5, 0, 7, 30, 0.74, 785, 829, 9, 127)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (5, 5, 2013, 620, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91.9, 79, 0, 9, 0, 5640, 0, 9, 15, 16, 7, 0, 0, 0, 284, 407, 137, 259, 1, 12, 0, 1, 58.7, 9, 1137, 1468, 0, 9, 0, 0, 0, 1, 8, 3, 188, 3, 147, 0, 0, 4.76, 120, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 1592, 736, 2172, 625, 6245, 424, 226, 95, 0.5, 0.4, 36, 1, 36, 470, 1, 0.5, 1, 1, 0, 42, 44, 0.6, 1116, 1305, 42, 331)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (6, 6, 2013, 520, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89.7, 93, 0, 0, 0, 5183, 0, 0, 2, 8, 0, 8, 0, 0, 407, 386, 101, 254, 3, 20, 0, 1, 63.5, 5, 1087, 1139, 0, 4, 0, 2, 4, 16, 20, 4, 27, 3, 148, 3, 0, 24.2, 201.5, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2582, 494, 2967, 395, 5241, 340, 310, 65, 1, 0.2, 10, 17, 52, 338, 1, 0.5, 1, 1, 0, 49, 38, 0.54, 1452, 1474, 20, 132)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (7, 7, 2013, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95.7, 90, 1, 1, 0, 1603, 0, 12, 2, 2, 0, 0, 0, 0, 161, 190, 39, 123, 0, 2, 0, 1, 56.7, 8, 375, 389, 0, 6, 0, 0, 0, 0, 31, 0, 42, 0, 101, 0, 0, 0, 75, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 982, 698, 1080, 246, 1487, 132, 90, 60, 0.2, 0.6, 26, 24, 26, 230, 0.5, 0.5, 0.5, 0.5, 0, 27, 21, 0.76, 69, 69, 24, 233)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (8, 8, 2013, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88.6, 37, 0, 0, 0, 188, 0, 0, 0, 0, 0, 0, 0, 0, 54, 25, 0, 5, 0, 1, 0, 1, 59.5, 2, 28, 36, 4, 1, 0, 0, 0, 0, 0, 0, 11, 0, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 156, 19, 176, 61, 197, 54, 48, 19, 1, 0.4, 1, 0, 24, 52, 0.5, 0.5, 0.5, 0.5, 0, 49, 44, 0.34, 0, 0, 3, 16)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (9, 9, 2013, 299, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95.5, 75, 0, 1, 0, 1435, 0, 14, 8, 0, 1, 9, 1, 0, 176, 225, 37, 134, 0, 89, 0, 1, 57.5, 10, 234, 334, 6, 0, 0, 0, 14, 2, 0, 0, 5, 0, 48, 79, 0, 30.81, 25, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 851, 763, 1583, 142, 1457, 52, 52, 61, 0.2, 0.2, 10, 3, 37, 368, 0, 0, 0.5, 0.5, 0, 30, 44, 0.35, 1313, 1313, 20, 185)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (10, 10, 2013, 392, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91.8, 72, 0, 2, 0, 3617, 0, 1, 3, 0, 0, 3, 0, 0, 444, 274, 55, 135, 0, 16, 0, 1, 54, 126, 699, 864, 0, 2, 1, 3, 36, 79, 33, 4, 22, 1, 66, 0, 0, 5, 339.1, 0, 3, 0, 0, 4, 0, 0, 0, 0, 0, 0, 1528, 1534, 1681, 805, 3641, 497, 497, 121, 1, 0.6, 37, 48, 37, 309, 0.5, 0.5, 1, 1, 0, 26, 28, 0.65, 847, 952, 73, 171)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (11, 11, 2013, 454, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88.4, 150, 13, 0, 0, 6506, 0, 0, 0, 1, 0, 1, 0, 0, 467, 354, 34, 190, 0, 4, 0, 1, 48.4, 72, 1379, 1418, 0, 5, 0, 0, 12, 1, 32, 3, 101, 0, 119, 2, 0, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1114, 915, 2247, 564, 6598, 478, 478, 146, 0.5, 0.8, 9, 8, 50, 380, 1, 1, 1, 1, 0, 34, 44, 0.65, 1228, 1308, 50, 203)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (12, 12, 2013, 268, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.4, 61, 0, 0, 0, 2606, 0, 1, 1, 7, 0, 1, 0, 3, 435, 202, 12, 110, 0, 15, 0, 1, 52, 35, 379, 570, 0, 1, 0, 1, 0, 0, 3, 1, 25, 0, 56, 0, 0, 40.71, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1610, 734, 2010, 425, 2944, 200, 180, 390, 0.5, 0.2, 2, 0, 29, 249, 1, 1, 1, 1, 0, 41, 27, 0.59, 919, 1417, 40, 100)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (13, 13, 2013, 204, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88.2, 78, 1, 1, 0, 1096, 0, 7, 3, 0, 0, 17, 0, 0, 166, 156, 5, 44, 0, 7, 0, 1, 66.7, 4, 178, 266, 0, 0, 0, 0, 0, 0, 1, 1, 11, 0, 15, 39, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 806, 352, 1560, 177, 1088, 70, 52, 11, 0.5, 0.4, 0, 0, 29, 175, 1, 1, 1, 1, 0, 39, 23, 0.58, 0, 0, 11, 84)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (14, 14, 2013, 722, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 85.1, 141, 0, 0, 0, 7213, 0, 32, 5, 3, 0, 7, 1, 0, 1140, 563, 176, 355, 0, 0, 0, 1, 53.9, 120, 1262, 1725, 0, 2, 0, 1, 34, 272, 24, 0, 147, 0, 220, 2, 0, 0, 272, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 3902, 2312, 4760, 477, 6976, 400, 400, 61, 1, 0.4, 33, 320, 33, 631, 0.5, 0.5, 0.5, 0.5, 0, 8, 22, 0.61, 922, 1248, 52, 227)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (15, 15, 2013, 519, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.2, 97, 0, 2, 0, 5302, 0, 6, 0, 0, 0, 0, 0, 0, 544, 437, 149, 216, 0, 20, 0, 1, 43.5, 60, 1081, 1231, 0, 3, 0, 0, 16, 7, 23, 4, 19, 0, 172, 0, 0, 8.47, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1604, 756, 2160, 316, 5361, 140, 72, 85, 0.5, 0.6, 2, 486, 43, 486, 1, 1, 0.5, 1, 0, 31, 39, 0.45, 1367, 1456, 38, 169)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (16, 16, 2013, 483, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91.2, 103, 0, 1, 0, 5358, 0, 0, 4, 4, 2, 1, 2, 0, 490, 286, 83, 182, 0, 2, 0, 1, 54.7, 21, 1044, 1093, 0, 5, 0, 0, 32, 0, 16, 4, 37, 0, 114, 0, 0, 22.73, 220.6, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1855, 1266, 2574, 566, 5580, 386, 385, 192, 1, 1, 33, 283, 33, 341, 1, 1, 1, 1, 0, 49, 19, 0.82, 1434, 1563, 48, 170)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (17, 17, 2013, 535, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.5, 175, 0, 1, 0, 5511, 0, 1, 0, 0, 0, 0, 0, 0, 407, 420, 45, 198, 0, 9, 0, 1, 61.3, 14, 890, 1340, 0, 6, 0, 0, 4, 37, 10, 2, 27, 0, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1080, 370, 1728, 488, 5345, 149, 149, 155, 0.5, 0.8, 6, 29, 43, 416, 1, 1, 1, 1, 0, 4, 36, 0.41, 1091, 1112, 21, 269)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (18, 18, 2013, 283, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97.6, 119, 0, 1, 0, 3165, 0, 2, 5, 1, 0, 0, 0, 0, 260, 199, 49, 141, 0, 3, 0, 1, 53.7, 27, 654, 841, 0, 3, 0, 0, 4, 12, 7, 2, 76, 0, 82, 0, 0, 110, 418.05, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1227, 401, 1659, 664, 2985, 468, 468, 425, 1, 0.6, 12, 10, 47, 221, 0.5, 0, 1, 1, 0, 47, 32, 0.62, 847, 1499, 34, 134)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (19, 19, 2013, 506, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88.7, 188, 1, 1, 0, 5885, 0, 0, 0, 0, 0, 0, 0, 0, 510, 332, 104, 205, 0, 9, 0, 1, 57.2, 100, 1144, 2475, 0, 5, 0, 28, 4, 0, 11, 2, 5, 1, 88, 0, 0, 60, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1120, 380, 1615, 470, 5882, 338, 338, 104, 0.2, 0.2, 4, 4, 47, 384, 0.5, 0.5, 1, 1, 0, 40, 37, 0.62, 674, 804, 54, 196)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (20, 20, 2013, 55, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99.6, 29, 0, 0, 0, 335, 0, 0, 0, 0, 0, 0, 0, 0, 64, 24, 13, 24, 0, 0, 0, 1, 76.2, 3, 93, 94, 0, 0, 0, 0, 2, 3, 5, 2, 10, 0, 13, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 614, 310, 929, 185, 336, 137, 137, 57, 1, 0.8, 21, 27, 21, 45, 1, 1, 1, 1, 0, 32, 44, 0.45, 0, 0, 16, 18)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (21, 21, 2013, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94.2, 91, 0, 1, 0, 5313, 2, 0, 1, 3, 0, 6, 13, 0, 419, 361, 128, 219, 1, 13, 0, 1, 49.4, 75, 845, 1132, 0, 6, 2, 3, 0, 13, 22, 3, 48, 1, 123, 6, 0, 2.68, 153.45, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2604, 2014, 3380, 501, 5114, 301, 301, 280, 0.5, 0.4, 2, 1, 27, 434, 0.5, 1, 1, 0.5, 0, 33, 33, 0.87, 935, 1128, 28, 233)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (22, 22, 2013, 377, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 80, 1, 0, 0, 4030, 0, 0, 3, 4, 0, 4, 0, 0, 385, 270, 50, 181, 0, 12, 0, 1, 49.4, 51, 763, 936, 0, 4, 0, 0, 35, 55, 7, 2, 30, 0, 129, 0, 0, 0.68, 80, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1642, 1070, 1965, 620, 3785, 580, 580, 260, 0.5, 0.6, 54, 66, 55, 280, 0.5, 0.5, 1, 0.5, 0, 35, 12, 0.64, 1123, 1143, 76, 151)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (23, 23, 2013, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.1, 67, 0, 0, 0, 1886, 0, 0, 11, 14, 0, 0, 0, 0, 103, 124, 10, 79, 3, 10, 0, 1, 54.5, 27, 200, 400, 0, 4, 0, 0, 12, 26, 7, 2, 17, 0, 74, 0, 0, 5, 255.58, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 838, 572, 859, 225, 1886, 180, 180, 55, 0.5, 0.6, 2, 0, 46, 146, 0.5, 0.5, 0.5, 0.5, 0, 46, 26, 0.72, 1540, 1540, 27, 70)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (24, 24, 2013, 885, 25, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.3, 98, 8, 6, 0, 8383, 6, 36, 20, 24, 20, 24, 15, 0, 835, 728, 201, 485, 14, 19, 0, 1, 56.2, 41, 1404, 2329, 0, 14, 0, 0, 607, 1521, 73, 18, 412, 8, 530, 3, 0, 994, 1857.87, 0, 10, 7, 3, 4, 0, 0, 0, 0, 0, 0, 3716, 663, 3912, 1223, 7681, 815, 815, 250, 1, 0.8, 56, 15, 68, 1091, 1, 1, 1, 1, 0, 1, 2, 0.86, 1403, 1448, 59, 242)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (25, 25, 2013, 517, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92.7, 157, 0, 0, 0, 5138, 0, 6, 1, 1, 0, 0, 3, 0, 598, 424, 86, 207, 0, 2, 0, 1, 50.8, 62, 1003, 1371, 0, 6, 0, 2, 4, 67, 19, 0, 74, 1, 153, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2024, 1474, 2657, 645, 4989, 391, 382, 403, 1, 0.4, 7, 482, 38, 482, 0.5, 0.5, 0.5, 0.5, 0, 23, 17, 0.76, 1103, 1107, 28, 171)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (26, 26, 2013, 341, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 128, 0, 1, 0, 3266, 0, 0, 2, 5, 0, 0, 0, 0, 317, 304, 47, 195, 0, 15, 0, 1, 47.6, 7, 371, 546, 0, 5, 0, 2, 8, 22, 6, 4, 47, 0, 129, 5, 0, 26.72, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 782, 779, 917, 293, 3405, 154, 154, 76, 0.5, 0.6, 2, 0, 31, 401, 0.5, 0.5, 0.5, 0.5, 0, 28, 35, 0.78, 375, 380, 11, 182)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (27, 27, 2013, 246, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88.1, 100, 0, 1, 0, 2121, 16, 5, 21, 0, 0, 15, 16, 0, 123, 243, 123, 165, 10, 17, 0, 1, 42.4, 7, 474, 511, 0, 4, 0, 1, 77, 0, 4, 3, 41, 0, 70, 1, 0, 0, 15.4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1448, 514, 1616, 256, 2067, 210, 210, 127, 0.5, 0.6, 46, 216, 46, 225, 1, 0.5, 0.5, 1, 0, 24, 24, 0.75, 0, 0, 12, 127)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (28, 28, 2013, 703, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94.7, 111, 0, 6, 0, 6262, 0, 1, 2, 2, 0, 17, 1, 0, 453, 529, 162, 374, 16, 26, 0, 1, 62.2, 65, 1625, 1825, 0, 11, 0, 0, 122, 2030, 40, 11, 154, 3, 400, 7, 80.76, 5.2, 466.6, 0, 2, 0, 5, 1, 0, 0, 0, 0, 0, 0, 3150, 1764, 3270, 917, 7565, 512, 551, 174, 0.5, 1, 53, 751, 53, 763, 1, 1, 1, 1, 0, 11, 10, 0.71, 1367, 1385, 62, 334)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (29, 29, 2013, 184, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87.4, 88, 1, 0, 0, 1966, 0, 0, 3, 5, 0, 5, 0, 0, 257, 179, 64, 148, 0, 13, 0, 1, 60.1, 16, 414, 488, 0, 4, 0, 1, 19, 10, 2, 6, 18, 1, 96, 0, 0, 9.05, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1064, 1064, 1130, 326, 1937, 280, 280, 104, 0.5, 0.8, 35, 143, 35, 234, 0.5, 0.5, 0.5, 0.5, 0, 20, 25, 0.57, 66, 67, 15, 52)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (30, 30, 2013, 529, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95.4, 101, 1, 1, 0, 3396, 0, 0, 5, 9, 1, 11, 1, 8, 219, 467, 20, 240, 0, 26, 0, 1, 63.3, 33, 406, 452, 0, 2, 0, 2, 135, 0, 30, 0, 191, 2, 215, 0, 0, 20, 70, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 1809, 952, 1809, 478, 3394, 130, 230, 277, 0.5, 1, 40, 523, 40, 523, 1, 1, 1, 1, 0, 36, 18, 0.77, 86, 86, 66, 207)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (31, 31, 2013, 327, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.5, 101, 1, 1, 0, 4081, 0, 0, 44, 11, 0, 8, 0, 0, 304, 273, 39, 187, 0, 1, 0, 1, 54.7, 29, 705, 795, 0, 4, 0, 5, 34, 80, 7, 6, 48, 1, 150, 0, 0, 95.7, 475.37, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1297, 1138, 1315, 468, 4139, 180, 180, 149, 0.5, 1, 2, 278, 37, 298, 1, 1, 1, 1, 0, 3, 44, 0.62, 1707, 1835, 35, 176)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (32, 32, 2013, 1013, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.2, 136, 5, 3, 0, 6446, 0, 39, 18, 30, 0, 30, 0, 46, 139, 841, 92, 482, 0, 14, 0, 1, 54.3, 91, 1279, 1417, 0, 5, 0, 0, 229, 1932, 87, 1, 207, 10, 537, 0, 0, 108.47, 962.98, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1226, 1157, 1324, 1120, 4820, 815, 786, 223, 0.5, 0.4, 30, 58, 32, 796, 0.5, 0.5, 0.5, 0.5, 0, 16, 3, 0.89, 298, 306, 411, 694)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (33, 33, 2013, 347, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91.7, 187, 0, 1, 0, 3372, 0, 6, 2, 7, 0, 2, 0, 0, 307, 292, 31, 176, 0, 27, 0, 1, 56.7, 8, 790, 964, 0, 6, 3, 1, 6, 24, 8, 6, 37, 2, 128, 0, 0, 179.14, 471.7, 0, 2, 6, 0, 3, 0, 0, 0, 0, 0, 0, 1170, 86, 1521, 389, 3050, 371, 239, 11, 0.5, 0.6, 12, 23, 46, 399, 1, 1, 1, 1, 0, 5, 15, 0.61, 974, 1076, 21, 128)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (34, 34, 2013, 388, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89.7, 123, 8, 48, 0, 3525, 0, 10, 13, 3, 0, 16, 8, 0, 316, 285, 14, 153, 0, 10, 0, 1, 54.6, 7, 620, 771, 0, 7, 1, 3, 28, 50, 3, 3, 44, 0, 116, 5, 0, 132.89, 337.1, 0, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 983, 420, 1140, 284, 3525, 155, 155, 279, 0.2, 0.2, 35, 240, 40, 490, 0.5, 0.5, 1, 1, 0, 37, 16, 0.74, 155, 158, 16, 120)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (35, 35, 2013, 535, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 86.2, 161, 3, 2, 0, 7560, 0, 0, 56, 9, 0, 5, 0, 0, 508, 456, 26, 269, 0, 24, 0, 1, 53.6, 24, 886, 1531, 0, 3, 0, 2, 41, 51, 3, 7, 93, 0, 174, 1, 0, 15, 536.62, 0, 6, 5, 0, 4, 0, 0, 0, 0, 0, 0, 1375, 478, 2459, 714, 5967, 130, 126, 370, 1, 0.2, 0, 0, 63, 514, 0.5, 0.5, 0.5, 0.5, 0, 49, 44, 0.49, 2736, 2936, 95, 288)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (36, 36, 2013, 264, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89.7, 186, 0, 0, 0, 2065, 15, 32, 83, 8, 1, 18, 0, 3, 323, 221, 41, 119, 0, 9, 0, 1, 60.8, 6, 375, 591, 4, 3, 0, 0, 110, 30, 22, 7, 98, 0, 64, 4, 43.81, 1, 183.8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1008, 840, 1069, 348, 2100, 187, 158, 80, 1, 0.8, 24, 40, 31, 320, 1, 1, 1, 1, 0, 15, 8, 0.72, 0, 0, 19, 112)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (37, 37, 2013, 844, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 175, 12, 16, 0, 7009, 3, 19, 5, 16, 0, 9, 0, 3, 854, 696, 28, 305, 0, 24, 0, 1, 56.7, 85, 1851, 2197, 0, 9, 1, 2, 42, 106, 67, 7, 122, 4, 303, 5, 0, 0, 758.1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2480, 2110, 2561, 720, 8064, 513, 513, 616, 0.5, 1, 6, 0, 56, 740, 0.5, 0.5, 0.5, 0.5, 0, 19, 40, 0.85, 1706, 1816, 41, 208)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (38, 38, 2013, 1092, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88.2, 141, 5, 6, 0, 11549, 0, 10, 19, 10, 0, 8, 0, 0, 924, 710, 29, 379, 4, 7, 0, 1, 49.6, 34, 1758, 2390, 0, 9, 0, 0, 479, 517, 47, 6, 291, 4, 346, 0, 10.09, 1143.91, 812.06, 0, 11, 11, 15, 19, 1, 0, 0, 0, 0, 0, 2905, 691, 3412, 1962, 10783, 1270, 978, 1380, 0.5, 0.4, 67, 157, 71, 873, 0, 1, 0.5, 1, 0, 29, 44, 0.63, 1632, 1843, 31, 316)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (39, 39, 2013, 534, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88.5, 132, 5, 15, 0, 5661, 5, 24, 28, 12, 15, 0, 0, 6, 329, 510, 152, 313, 0, 26, 0, 1, 62.7, 60, 1303, 1737, 0, 2, 0, 0, 55, 0, 52, 3, 246, 4, 194, 0, 27.48, 73.76, 412.6, 0, 3, 0, 0, 8, 0, 0, 0, 0, 0, 0, 2838, 2017, 3114, 1080, 5486, 840, 840, 569, 1, 0.8, 48, 611, 48, 611, 1, 1, 1, 1, 0, 48, 29, 0.73, 0, 0, 197, 210)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (40, 40, 2013, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89.9, 47, 11, 4, 0, 2047, 2, 2, 11, 0, 0, 5, 6, 0, 117, 184, 32, 139, 0, 5, 0, 1, 61.1, 6, 607, 668, 0, 2, 0, 0, 14, 0, 27, 13, 84, 2, 130, 0, 0, 0, 311.38, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 575, 150, 752, 732, 1993, 470, 470, 175, 1, 0.2, 30, 22, 35, 163, 0.5, 0.5, 0.5, 0.5, 0, 18, 11, 0.54, 0, 0, 41, 52)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (41, 41, 2013, 349, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 79, 0, 0, 0, 4082, 0, 2, 11, 0, 0, 3, 0, 0, 435, 311, 20, 217, 0, 6, 0, 1, 37.9, 51, 887, 950, 0, 7, 7, 0, 29, 80, 19, 1, 36, 1, 154, 0, 0, 293, 366.8, 0, 0, 5, 1, 2, 0, 0, 0, 0, 0, 0, 1491, 888, 1591, 968, 4082, 801, 801, 145, 1, 0.6, 9, 302, 9, 302, 0.5, 1, 1, 1, 0, 49, 44, 0.49, 848, 848, 35, 281)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (42, 42, 2013, 430, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99.2, 111, 0, 0, 0, 5562, 0, 2, 15, 0, 0, 14, 0, 4, 478, 392, 108, 302, 0, 8, 0, 1, 61.8, 15, 571, 1151, 1, 6, 0, 0, 65, 105, 18, 4, 75, 0, 162, 0, 0, 518, 615.66, 0, 3, 15, 0, 0, 0, 0, 0, 0, 0, 0, 1031, 310, 1118, 479, 5179, 287, 287, 348, 0.5, 0.2, 9, 30, 32, 345, 0.5, 0.5, 0.5, 1, 0, 6, 13, 0.78, 1128, 1128, 98, 193)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (43, 43, 2013, 364, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89.6, 126, 1, 1, 0, 3612, 0, 9, 8, 9, 4, 9, 4, 0, 663, 257, 17, 177, 0, 9, 0, 1, 60.2, 18, 336, 828, 0, 1, 0, 1, 58, 120, 26, 3, 110, 1, 160, 0, 30.95, 93.86, 933.85, 0, 5, 23, 15, 5, 0, 0, 0, 0, 0, 0, 1780, 827, 1839, 610, 3612, 478, 92, 135, 0.5, 0.2, 40, 60, 42, 369, 0.5, 0.5, 1, 1, 0, 21, 4, 0.61, 2220, 2220, 37, 234)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (44, 44, 2013, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92.6, 62, 0, 0, 0, 471, 1, 0, 0, 0, 0, 0, 0, 3, 231, 45, 9, 30, 0, 4, 0, 1, 42.2, 5, 109, 120, 0, 3, 0, 3, 9, 0, 4, 3, 20, 0, 20, 0, 0, 0, 175, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590, 158, 621, 265, 509, 199, 199, 265, 0.5, 0.4, 32, 57, 32, 119, 1, 1, 1, 1, 0, 10, 5, 0.79, 19, 49, 22, 53)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (45, 45, 2013, 696, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94.3, 147, 1, 0, 0, 5011, 0, 42, 31, 6, 4, 6, 6, 30, 170, 591, 77, 286, 0, 6, 0, 1, 50.6, 36, 698, 790, 0, 6, 0, 0, 103, 85, 49, 3, 169, 4, 306, 1, 0, 0, 579.93, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 956, 956, 983, 478, 3139, 290, 290, 444, 1, 0.4, 42, 436, 72, 507, 0.5, 0.5, 1, 1, 0, 13, 9, 0.68, 59, 59, 245, 427)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (46, 46, 2013, 953, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 206, 7, 5, 0, 10345, 0, 15, 30, 8, 6, 4, 0, 0, 343, 551, 61, 426, 0, 4, 0, 1, 55.7, 43, 1511, 2389, 0, 3, 0, 0, 82, 302, 24, 0, 86, 0, 164, 0, 0, 470.26, 1171.31, 0, 6, 28, 5, 1, 0, 0, 0, 0, 0, 0, 1279, 1186, 1489, 1480, 6150, 1320, 1320, 312, 1, 1, 74, 22, 74, 464, 1, 1, 0.5, 1, 0, 2, 1, 0.96, 669, 1027, 76, 190)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (47, 47, 2013, 219, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97.7, 94, 4, 3, 0, 1510, 0, 4, 4, 0, 0, 8, 1, 0, 72, 178, 45, 120, 0, 3, 0, 1, 60.7, 4, 385, 449, 0, 1, 0, 1, 102, 130, 5, 1, 115, 0, 113, 0, 0, 36.74, 275.87, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 479, 184, 479, 415, 1530, 250, 250, 365, 0.5, 0.8, 1, 7, 23, 181, 1, 1, 1, 1, 0, 17, 7, 0.54, 1627, 1627, 16, 95)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (48, 48, 2013, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92.4, 155, 4, 1, 0, 6043, 1, 10, 5, 0, 0, 19, 28, 9, 237, 451, 95, 301, 0, 1, 0, 1, 64.8, 91, 1637, 1753, 0, 8, 0, 3, 2, 46, 3, 5, 127, 0, 235, 0, 0, 0, 164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1123, 667, 1367, 607, 5975, 607, 607, 312, 1, 0.8, 40, 244, 45, 460, 1, 0.5, 1, 1, 0, 9, 44, 0.77, 0, 0, 61, 217)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (49, 49, 2013, 351, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90.9, 126, 0, 0, 0, 3922, 0, 5, 8, 1, 0, 1, 0, 0, 194, 243, 41, 134, 0, 9, 0, 1, 47.6, 28, 523, 1014, 0, 3, 0, 1, 16, 41, 8, 1, 74, 0, 122, 0, 37.51, 163.91, 1224.89, 0, 10, 7, 0, 2, 1, 0, 0, 0, 0, 0, 1728, 868, 1931, 454, 3537, 410, 410, 331, 0.5, 0.4, 12, 150, 42, 342, 1, 0.5, 1, 1, 0, 44, 44, 0.55, 1081, 1257, 52, 118)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (50, 50, 2013, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96.6, 104, 0, 0, 0, 6485, 0, 1, 7, 3, 0, 1, 0, 0, 232, 424, 164, 273, 0, 25, 0, 1, 44.4, 5, 1308, 1504, 0, 1, 0, 0, 15, 2, 5, 1, 23, 0, 75, 0, 0, 7, 139.04, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2067, 1104, 3930, 616, 6513, 228, 228, 321, 0.5, 0.4, 3, 2, 50, 399, 1, 1, 0.5, 0.5, 0, 38, 44, 0.52, 893, 910, 35, 295)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (51, 51, 2013, 371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92.6, 97, 0, 2, 0, 1921, 0, 3, 1, 0, 0, 0, 0, 0, 54, 206, 29, 133, 0, 10, 0, 1, 57.4, 21, 393, 509, 0, 1, 1, 1, 0, 18, 12, 0, 35, 1, 46, 29, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1426, 1026, 1656, 158, 1809, 143, 143, 68, 0.5, 0.4, 10, 0, 25, 228, 0.5, 0.5, 0.5, 0.5, 0, 45, 41, 0.44, 689, 836, 35, 52)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (52, 52, 2013, 428, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92.8, 105, 0, 0, 0, 4130, 1, 4, 5, 0, 0, 5, 0, 0, 118, 260, 13, 105, 0, 1, 0, 1, 52.8, 17, 733, 878, 13, 44, 0, 0, 0, 0, 23, 0, 40, 0, 52, 12, 0, 19.4, 22, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 547, 244, 728, 248, 4130, 90, 90, 40, 1, 0.2, 22, 37, 22, 318, 0.5, 0.5, 0.5, 0.5, 0, 49, 44, 0.74, 158, 158, 21, 72)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (53, 53, 2013, 738, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 82.5, 336, 4, 11, 0, 5933, 16, 32, 46, 18, 0, 12, 1, 5, 135, 490, 255, 361, 2, 9, 0, 1, 54.2, 23, 1401, 1474, 0, 9, 0, 0, 30, 374, 30, 7, 47, 3, 98, 4, 0, 0, 284.6, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 656, 291, 1780, 717, 5860, 200, 200, 93, 1, 0.2, 25, 0, 36, 477, 0.5, 0, 1, 1, 0, 49, 44, 0.59, 0, 0, 23, 400)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (54, 54, 2013, 181, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92.3, 136, 0, 0, 0, 1171, 9, 2, 24, 0, 0, 16, 23, 14, 162, 127, 64, 81, 3, 0, 0, 1, 50, 4, 160, 276, 1, 7, 0, 0, 53, 137, 17, 15, 9, 0, 65, 1, 0, 54, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1425, 962, 1618, 500, 1187, 300, 300, 60, 1, 0.2, 31, 197, 31, 197, 0.5, 0.5, 1, 0.5, 0, 14, 6, 0.55, 0, 0, 31, 104)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (55, 55, 2013, 678, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95.3, 76, 0, 1, 0, 6638, 1, 69, 11, 12, 7, 0, 0, 0, 830, 411, 100, 266, 1, 12, 0, 1, 50.4, 80, 1332, 1633, 0, 9, 0, 0, 0, 96, 19, 11, 108, 1, 138, 1, 53.57, 111.77, 302.71, 0, 4, 6, 12, 15, 0, 0, 0, 0, 0, 0, 2302, 2302, 2552, 1033, 6694, 717, 717, 213, 1, 1, 39, 443, 39, 443, 1, 1, 1, 1, 0, 49, 34, 0.55, 1537, 1993, 76, 227)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (56, 56, 2013, 611, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93.5, 113, 0, 1, 0, 5502, 0, 6, 0, 0, 0, 1, 0, 0, 576, 397, 34, 172, 0, 7, 0, 1, 64.4, 93, 1051, 1412, 0, 4, 0, 0, 80, 228, 14, 3, 39, 0, 161, 1, 0, 13, 73.45, 0, 1, 0, 0, 4, 0, 0, 0, 0, 0, 0, 1782, 1163, 2104, 640, 6280, 270, 270, 320, 0.5, 0.8, 21, 300, 44, 456, 0.5, 0.5, 1, 1, 0, 25, 44, 0.57, 775, 817, 34, 275)
GO

INSERT INTO [dbo].[raiting] ([id], [id_university], [year], [p], [px], [py], [n1], [n2], [n3], [n41], [n51], [n42], [n52], [n43], [n53], [i2], [t], [s1], [s2], [s3], [p1], [p2], [p3], [p4], [p5], [p5_1], [p6], [p6_1], [k1], [k], [ty], [p7], [p8], [pz], [p9], [tsi], [tsti], [r1], [r], [p10], [p11], [p1_2], [p1_3], [p1_4], [p1_5], [s4], [s5], [s7], [s8], [s9], [d], [z], [v], [t4], [t5], [t6], [tL], [i], [t7], [t8], [ya], [kL], [a1], [a2], [a3], [a4], [a5], [k2], [m], [L], [x1], [x2], [x3], [x4], [x5], [x6], [x7], [x8], [x9], [x10], [x11], [x12], [x13], [x14], [x15], [x16], [ra], [u], [s], [p17], [p18], [p19], [p20])
VALUES 
  (57, 57, 2013, 480, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89.5, 103, 1, 2, 0, 5141, 0, 0, 0, 13, 4, 2, 0, 0, 454, 181, 1, 106, 0, 8, 0, 1, 52.2, 30, 832, 1126, 0, 0, 0, 0, 22, 101, 16, 1, 38, 0, 120, 0, 0, 49.75, 127.14, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2010, 1756, 2260, 404, 5116, 310, 296, 63, 1, 0.2, 28, 215, 38, 385, 0.5, 0.5, 1, 1, 0, 12, 20, 0.49, 1372, 1753, 24, 309)
GO

SET IDENTITY_INSERT [dbo].[raiting] OFF
GO

--
-- Data for table dbo.university  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[university] ON
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (1, N'Андижанский государственный университет', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (2, N'Андижанский машиностроительный институт', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (3, N'Андижанский медицинский институт', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (4, N'Андижанский сельскохозяйственный институт', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (5, N'Бухарский государственный университет', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (6, N'Бухарский инженерно-технологический институт', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (7, N'Бухарский медицинский институт', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (8, N'Высшая школа национального танца и хареографии', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (9, N'Государственная консерватория Узбекистана', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (10, N'Гулистанский государственный университет', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (11, N'Джизакский государственный педагогический институт', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (12, N'Джизакский политехнический институт', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (13, N'Институт национального художества и дизайна', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (14, N'Каракалпакский государственный университет', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (15, N'Каршинский государственный университет', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (16, N'Каршинский инженерно-экономический институт', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (17, N'Кокандский государственный педагогический институт', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (18, N'Навоинский государственный горный институт', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (19, N'Навоинский государственный педагогический институт', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (20, N'Налоговая академия', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (21, N'Наманганский государственный университет', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (22, N'Наманганский инженерно-педагогический институт', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (23, N'Наманганский инженерно-технологический институт', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (24, N'Национальный университет Узбекистана', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (25, N'Нукусский государственный педагогический институт', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (26, N'Самаркандский государственный архитектурно-строительный институт', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (27, N'Самаркандский государственный институт иностранных языков', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (28, N'Самаркандский государственный университет', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (29, N'Самаркандский институт экономики и сервиса', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (30, N'Самаркандский медицинский институт', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (31, N'Самаркандский сельскохозяйственный институт', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (32, N'Ташкентская медицинская академия', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (33, N'Ташкентский автомобильно-дорожный институт', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (34, N'Ташкентский архитектурно-строительный институт', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (35, N'Ташкентский государственный аграрный университет', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (36, N'Ташкентский государственный институт востоковедения', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (37, N'Ташкентский государственный педагогический университет', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (38, N'Ташкентский государственный технический университет', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (39, N'Ташкентский государственный экономический университет', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (40, N'Ташкентский государственный юридический университет', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (41, N'Ташкентский институт инженеров железнодорожного транспорта', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (42, N'Ташкентский институт ирригации и мелиорации', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (43, N'Ташкентский институт текстильной и легкой промышленности', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (44, N'Ташкентский исламский университет', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (45, N'Ташкентский медицинский педиатрический институт', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (46, N'Ташкентский университет информационных технологий', NULL, NULL, N'Toshkent axborot texnologiyalari universiteti')
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (47, N'Ташкентский фармацевтический институт', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (48, N'Ташкентский финансовый институт', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (49, N'Ташкентский химико-технологический институт', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (50, N'Термезский государственный университет', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (51, N'Узбекский государственный институт искусства и культуры', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (52, N'Узбекский государственный институт физической культуры', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (53, N'Узбекский государственный университет мировых языков', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (54, N'Университет мировой экономики и дипломатии', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (55, N'Ургенчский государственный университет', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (56, N'Ферганский государственный университет', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[university] ([id], [name_RU], [id_region], [id_branch], [name_UZ])
VALUES 
  (57, N'Ферганский политехнический институт', NULL, NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[university] OFF
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
ADD CONSTRAINT [PK_dbo.branches] 
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
ADD CONSTRAINT [PK_dbo.regions] 
PRIMARY KEY CLUSTERED ([id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[university]
ADD CONSTRAINT [PK_dbo.universities] 
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

ALTER TABLE [dbo].[darslik]
ADD CONSTRAINT [PK_dbo.darsliks] 
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

ALTER TABLE [dbo].[informaciya_o_dissertaciyah]
ADD PRIMARY KEY CLUSTERED ([id])
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

ALTER TABLE [dbo].[kolichestvo_izdannih_mejdunarodnih_statey]
ADD PRIMARY KEY CLUSTERED ([id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[kolichestvo_izdannih_mestnih_statey]
ADD PRIMARY KEY CLUSTERED ([id])
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

ALTER TABLE [dbo].[majmua]
ADD CONSTRAINT [PK_dbo.majmuas] 
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

ALTER TABLE [dbo].[monografiya]
ADD CONSTRAINT [PK_dbo.monografiyas] 
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

ALTER TABLE [dbo].[qullanma]
ADD CONSTRAINT [PK_dbo.qullanmas] 
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
ADD PRIMARY KEY CLUSTERED ([id])
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
ADD FOREIGN KEY ([id_region]) 
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

ALTER TABLE [dbo].[citiruemost_publikaciy_pps_vuza]
ADD CONSTRAINT [FK_dbo.citiruemost_publikaciy_pps_vuza_dbo.universities_university_id] FOREIGN KEY ([university_id]) 
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

ALTER TABLE [dbo].[effektivnost_nir_patent]
ADD CONSTRAINT [FK_dbo.effektivnost_nir_patent_dbo.universities_university_id] FOREIGN KEY ([university_id]) 
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

ALTER TABLE [dbo].[granti_po_vidam_issledovaniy]
ADD CONSTRAINT [FK_dbo.granti_po_vidam_issledovaniy_dbo.universities_university_id] FOREIGN KEY ([university_id]) 
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
ADD FOREIGN KEY ([id_university]) 
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
ADD FOREIGN KEY ([id_university]) 
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
ADD FOREIGN KEY ([id_university]) 
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

ALTER TABLE [dbo].[nalichie_informacii_o_vuze_v_internete]
ADD CONSTRAINT [FK_dbo.nalichie_informacii_o_vuze_v_internete_dbo.universities_university_id] FOREIGN KEY ([university_id]) 
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

ALTER TABLE [dbo].[osnashennost_laboratoriy]
ADD CONSTRAINT [FK_dbo.osnashennost_laboratoriy_dbo.universities_university_id] FOREIGN KEY ([university_id]) 
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
ADD FOREIGN KEY ([id_university]) 
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

ALTER TABLE [dbo].[summi_mejdunarodnih_grantov]
ADD CONSTRAINT [FK_dbo.summi_mejdunarodnih_grantov_dbo.universities_university_id] FOREIGN KEY ([university_id]) 
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

--
-- Role Membership
--

EXEC sp_addrolemember N'db_owner', N'DEVELOPER-PC\DEVELOPER'
GO

EXEC sp_addrolemember N'db_owner', N'IIS APPPOOL\DefaultAppPool'
GO

EXEC sp_addrolemember N'db_owner', N'WIN-SOLBTCC0PCI\Администратор'
GO

