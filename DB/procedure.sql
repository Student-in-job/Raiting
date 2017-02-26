--EXEC P3_11 @year = 2014, @id_university=1

--1.1
CREATE PROCEDURE P1_1_kachestvo_uchebnoy_raboti
@id_university int,
@year int
AS
DECLARE  @count int, @id int, @count_master int, @count_phd int
begin
SET @id=(SELECT id FROM raiting
	WHERE id_university=@id_university AND year=@year)
SET @count_phd=(SELECT count(id) FROM Jadval2 
	WHERE UniversityId=@id_university AND year=@year AND Phd_nomer IS NOT NULL)
SET @count_master=(SELECT count(id) FROM Jadval2 
	WHERE UniversityId=@id_university AND year=@year AND Mag_nomer IS NOT NULL)
SET @count=(SELECT count(id) FROM raiting
	WHERE id_university=@id_university AND year=@year)
if(@count=0)
	INSERT INTO raiting(px, py, year, id_university) VALUES (@count_phd, @count_master, @year, @id_university)
else
	UPDATE raiting set px=@count_phd, py=@count_master WHERE id=@id
end

GO

--1.2 TODO

--1.3
CREATE PROCEDURE P1_3_kolvo_uchebnikov_posobiy_umk
@id_university int,
@year int
AS
DECLARE  @count int, @id int, @count_uchebniki int, @count_posobiya int, @count_umk int
begin
SET @id=(SELECT id FROM raiting
	WHERE id_university=@id_university AND year=@year)
SET @count_uchebniki = (SELECT count(id) FROM darslik
	WHERE id_university=@id_university AND year=@year)
SET @count_posobiya = (SELECT count(id) FROM qullanma
	WHERE id_university=@id_university AND year=@year)
SET @count_umk = (SELECT count(id) FROM majmua
	WHERE id_university=@id_university AND year=@year)
SET @count=(SELECT count(id) FROM raiting
	WHERE id_university=@id_university AND year=@year)
if (@count=0)
	INSERT INTO raiting(s1, s2, s3, year, id_university) VALUES (@count_uchebniki, @count_posobiya, @count_umk, @year, @id_university)
else
	UPDATE raiting set s1=@count_uchebniki, s2=@count_posobiya, s3=@count_umk WHERE id=@id
end

GO

--1.4
CREATE PROCEDURE P1_4_dolya_inostrancev
@id_university int,
@year int
AS
DECLARE  @count int, @id int, @count_foreign_teachers int, @count_foreign_students int
begin
SET @id=(SELECT id FROM raiting
	WHERE id_university=@id_university AND year=@year)
SET @count_foreign_teachers = (SELECT count(id) FROM Jadval5
	WHERE UniversityId=@id_university AND year=@year)
SET @count_foreign_students = (SELECT count(id) FROM Jadval6
	WHERE UniversityId=@id_university AND year=@year)
SET @count=(SELECT count(id) FROM raiting
	WHERE id_university=@id_university AND year=@year)
if (@count=0)
	INSERT INTO raiting(p2, p3, year, id_university) VALUES (@count_foreign_teachers, @count_foreign_teachers, @year, @id_university)
else
	UPDATE raiting set p2=@count_foreign_teachers, p3=@count_foreign_students WHERE id=@id
end

GO

--1.5
CREATE PROCEDURE P1_5_programmi_obmena
@id_university int,
@year int
AS
DECLARE  @count int, @id int, @count_students_abroad int, @count_teachers_abroad int
begin
SET @id=(SELECT id FROM raiting
	WHERE id_university=@id_university AND year=@year)
SET @count_students_abroad  = (SELECT count(id) FROM Jadval7
	WHERE UniversityId=@id_university AND year=@year)
SET @count_teachers_abroad = (SELECT count(id) FROM Jadval8
	WHERE UniversityId=@id_university AND year=@year)
SET @count=(SELECT count(id) FROM raiting
	WHERE id_university=@id_university AND year=@year)
if (@count=0)
	INSERT INTO raiting(p4, p5, year, id_university) VALUES (@count_students_abroad, @count_teachers_abroad, @year, @id_university)
else
	UPDATE raiting set p4=@count_students_abroad, p5=@count_teachers_abroad WHERE id=@id
end

GO

--1.6
CREATE PROCEDURE P1_6_inostranniye_kursi
@id_university int,
@year int
AS
DECLARE  @count int, @id int, @count_cources int
begin
SET @id=(SELECT id FROM raiting
	WHERE id_university=@id_university AND year=@year)
SET @count_cources = (SELECT count(id) FROM Jadval10
	WHERE UniversityId=@id_university AND year=@year)
SET @count=(SELECT count(id) FROM raiting
	WHERE id_university=@id_university AND year=@year)
if (@count=0)
	INSERT INTO raiting(k1, year, id_university) VALUES (@count_cources, @year, @id_university)
else
	UPDATE raiting set k1=@count_cources WHERE id=@id
end

GO

--1.7 TODO

--1.8
CREATE PROCEDURE P1_8_prepodavaniye_v_top_vuzah
@id_university int,
@year int
AS
DECLARE  @count int, @id int, @count_cources int
begin
SET @id=(SELECT id FROM raiting
	WHERE id_university=@id_university AND year=@year)
SET @count_cources = (SELECT count(id) FROM Jadval9
	WHERE UniversityId=@id_university AND year=@year)
SET @count=(SELECT count(id) FROM raiting
	WHERE id_university=@id_university AND year=@year)
if (@count=0)
	INSERT INTO raiting(pz, year, id_university) VALUES (@count_cources, @year, @id_university)
else
	UPDATE raiting set pz=@count_cources WHERE id=@id
end

GO

--1.9
CREATE PROCEDURE P1_9_prepodavaniye_v_sspo
@id_university int,
@year int
AS
DECLARE  @count int, @id int, @count_cources int
begin
SET @id=(SELECT id FROM raiting
	WHERE id_university=@id_university AND year=@year)
SET @count_cources = (SELECT count(id) FROM Jadval18
	WHERE UniversityId=@id_university AND year=@year)
SET @count=(SELECT count(id) FROM raiting
	WHERE id_university=@id_university AND year=@year)
if (@count=0)
	INSERT INTO raiting(p9, year, id_university) VALUES (@count_cources, @year, @id_university)
else
	UPDATE raiting set p9=@count_cources WHERE id=@id
end

GO

--2.1 TODO

--2.2 TODO

--2.3
CREATE PROCEDURE P2_3_trudoustroystvo_vipusknikov
@id_university int,
@year int
AS
DECLARE  @count int, @id int, @count_work_bachelors int, @count_work_masters int
begin
SET @id=(SELECT id FROM raiting
	WHERE id_university=@id_university AND year=@year)
SET @count_work_bachelors = (SELECT count(id) FROM Jadval20
	WHERE UniversityId=@id_university AND year=@year)
SET @count_work_masters = (SELECT count(id) FROM Jadval21
	WHERE UniversityId=@id_university AND year=@year)
SET @count=(SELECT count(id) FROM raiting
	WHERE id_university=@id_university AND year=@year)
if (@count=0)
	INSERT INTO raiting(p10, year, id_university) VALUES (@count_work_bachelors + @count_work_masters, @year, @id_university)
else
	UPDATE raiting set p10=@count_work_bachelors + @count_work_masters WHERE id=@id
end

--2.4
CREATE PROCEDURE P2_4_nagradi_studentov
@id_university int,
@year int
AS
DECLARE  @count int, @id int, @int_competition_winners int, @state_competition_winners int, @int_competition_prize int, @state_competition_prize int
begin
SET @id=(SELECT id FROM raiting
	WHERE id_university=@id_university AND year=@year)
SET @int_competition_winners = (SELECT count(id) FROM Jadval19
	WHERE UniversityId=@id_university AND year=@year AND TanlovTuri=1)
SET @state_competition_winners = (SELECT count(id) FROM Jadval19
	WHERE UniversityId=@id_university AND year=@year AND TanlovTuri=2)
SET @int_competition_prize = (SELECT count(id) FROM Jadval19
	WHERE UniversityId=@id_university AND year=@year AND TanlovTuri=3)
SET @state_competition_prize = (SELECT count(id) FROM Jadval19
	WHERE UniversityId=@id_university AND year=@year AND TanlovTuri=4)	
SET @count=(SELECT count(id) FROM raiting
	WHERE id_university=@id_university AND year=@year)
if (@count=0)
	INSERT INTO raiting(p1_2, p1_3, p1_4, p1_5, year, id_university) VALUES (@int_competition_winners, @state_competition_winners, 
		@int_competition_prize, @state_competition_prize, @year, @id_university)
else
	UPDATE raiting set p1_2=@int_competition_winners, p1_3 = @state_competition_winners, 
		p1_4 = @int_competition_prize, p1_5 = @state_competition_prize WHERE id=@id
end

GO
--3.1 or i14
CREATE PROCEDURE P3_1_citiruemost_publikaciy_pps_vuza

--входные параметры
@id_university int,
@year int
AS

--count для проверки, есть ли в таблице raiting записи для 
--данного университета за данный год, если есть, то сохранить его id

DECLARE  @count int, @id int, @count_uz_rus int, @count_angl int
44
@year int
AS
DECLARE  @count int, @id int, @count_pps int, @count_dis int, @count_uch int, @count_neuch int
begin 
SET @count_pps =(SELECT ass_shtat FROM chislennost_pps_vuza
	WHERE id_university=@id_university AND year=@year)
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
INSERT INTO raiting(p, d, z, v, year, id_university) VALUES (@count_pps, @count_dis, @count_uch, @count_neuch, @year, @id_university)
else UPDATE raiting set d=@count_dis, z=@count_uch, v=@count_neuch, p=@count_pps WHERE id=@id
end

GO

--3.4 or i17
CREATE PROCEDURE P3_4_summa_finansovih_sredstv_na_issledovaniya
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

--3.5 or i18
CREATE PROCEDURE P3_5_effektivnost_provodimih_nir
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

--4.1 or i20
CREATE PROCEDURE P4_1_osnashennost_irc_literaturoy
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

--4.2 or i21
CREATE PROCEDURE P4_2_stepen_vnedreniya_ikt
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

--4.3 or i22
CREATE PROCEDURE P4_3_dostupnost_info_o_vuze_v_internete
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

--4.4 or i23
CREATE PROCEDURE P4_4_stepen_osnashennosti_laboratoriy
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



