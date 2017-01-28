-- SQL Manager for SQL Server 4.3.0.47914
-- ---------------------------------------
-- Host      : (local)
-- Database  : URaiting
-- Version   : Microsoft SQL Server 2012 (SP3 11.0.6248.0


--
-- Disable foreign keys
--

ALTER TABLE dbo.university
NOCHECK CONSTRAINT FK__universit__id_re__17036CC0
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
-- Enable foreign keys
--

ALTER TABLE dbo.university
WITH CHECK CHECK CONSTRAINT FK__universit__id_re__17036CC0
GO

