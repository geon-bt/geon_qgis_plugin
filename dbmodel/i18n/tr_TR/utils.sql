/*
This file is part of Giswater 3
The program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
This version of Giswater is provided by Giswater Association
*/


SET search_path = "SCHEMA_NAME", public, pg_catalog;

-- Records of value_state
-- ----------------------------
INSERT INTO "value_state" VALUES (0,'PASIF');
INSERT INTO "value_state" VALUES (1,'AKTIF');
INSERT INTO "value_state" VALUES (2,'TASLAK');

-- Records of value_state_type
-- ----------------------------
INSERT INTO value_state_type VALUES (1, 0, 'HIZMET_DISI', false, false);
INSERT INTO value_state_type VALUES (2, 1, 'KESIN', true, true);
INSERT INTO value_state_type VALUES (3, 2, 'PLANLANAN', true, true);
INSERT INTO value_state_type VALUES (4, 2, 'YENILENECEK', true, false);
INSERT INTO value_state_type VALUES (5, 1, 'TAHMINI', false, true);

-- Records of value_verified
-- ----------------------------
INSERT INTO "value_verified" VALUES ('SOZEL');
INSERT INTO "value_verified" VALUES ('SAYISAL');

-- Records of value_yesno
-- ----------------------------
INSERT INTO "value_yesno" VALUES ('HAYIR');
INSERT INTO "value_yesno" VALUES ('EVET');

-- Records of event om_visit_parameter_type table
-- ----------------------------
INSERT INTO om_visit_parameter_type VALUES ('DENETIM');
INSERT INTO om_visit_parameter_type VALUES ('REHABILITASYON');
INSERT INTO om_visit_parameter_type VALUES ('YENIDEN_YAPIM');
INSERT INTO om_visit_parameter_type VALUES ('DIGER');


-- Records of doc type table
-- ----------------------------
INSERT INTO doc_type VALUES ('DOKUMANLAR(PDF)');
INSERT INTO doc_type VALUES ('FOTOGRAFLAR(PNG,JPG,JPEG,BMP)');
INSERT INTO doc_type VALUES ('VIDEOLAR(mp4,avi,asf)');

-- Records of price_value_unit
-- ----------------------------
INSERT INTO price_value_unit VALUES ('m3');
INSERT INTO price_value_unit VALUES ('m2');
INSERT INTO price_value_unit VALUES ('m');
INSERT INTO price_value_unit VALUES ('pa');
INSERT INTO price_value_unit VALUES ('u');
INSERT INTO price_value_unit VALUES ('kg');
INSERT INTO price_value_unit VALUES ('t');

-- Records of value_priority
-- ----------------------------
INSERT INTO value_priority VALUES ('YUKSEK_ONCELIKLI');
INSERT INTO value_priority VALUES ('NORMAL_ONCELIKLI');
INSERT INTO value_priority VALUES ('DUSUK_ONCELIKLI');

-- Records of plan_result_type
-- ----------------------------
INSERT INTO plan_result_type VALUES (1,'Yeniden_yapim');
INSERT INTO plan_result_type VALUES (2,'Rehabilitasyon');

-- Records of plan_psector_cat_type
-- ----------------------------
INSERT INTO plan_psector_cat_type VALUES (1,'Planlanan');

-- Records of om_psector_cat_type
-- ----------------------------
INSERT INTO om_psector_cat_type VALUES (1,'Yeniden_yapim');
INSERT INTO om_psector_cat_type VALUES (2,'Rehabilitasyon');

-- Records of value_review_validation table
-- ----------------------------
INSERT INTO value_review_validation VALUES (0, 'Reddedildi');
INSERT INTO value_review_validation VALUES (1, 'Kabul edildi');
INSERT INTO value_review_validation VALUES (2, 'inceleme');

-- Records of value_review_status table
-- ----------------------------
INSERT INTO value_review_status VALUES (0, 'Tolerans değerlerinin üstünde veya altında değişiklik yok', 'Değişiklik yok');
INSERT INTO value_review_status VALUES (1, 'İncelemeye eklenen yeni öğe', 'yeni öğe');
INSERT INTO value_review_status VALUES (2, 'İncelemede değiştirilen geometri. Diğer veriler de değiştirilebilir', 'Geometri değiştirildi');
INSERT INTO value_review_status VALUES (3, 'Veride değişiklik, Geometride değil', 'Veri değiştirildi');

-- Records of sys_csv2pg_cat table
-- ----------------------------
INSERT INTO sys_csv2pg_cat VALUES (1, 'Fiyatları içeri aktar', 'Fiyatları içeri aktar', 
'Csv dosyası sırayla bu sütunlara sahip olmalıdır: id, unit, descript, text, price. 
- Fiyat sütunu iki ondalık basamak içeren sayısal türde olmalıdır. 
- Fiyatlar için import label alanına katolog ismini girebilirsiniz. 
- Dikkat: csv dosyasının bir başlık satırı olmalıdır', 'role_master');
INSERT INTO sys_csv2pg_cat VALUES (2, 'Düğüm ziyaret tablosunu içeri aktar', 'Düğüm tablosunu içeri aktar', 'Csv dosyası sırayla bu sütunlara sahip olmalıdır: node_id, unit', 'role_om');
INSERT INTO sys_csv2pg_cat VALUES (3, 'Elementleri içeri aktar', 'Elementleri içeri aktar', 
'Csv dosyası sırayla bu sütunlara sahip olmalıdır: feature_id, elementcat_id, observ, comment, num_elements. 
- Import label alanını, içe aktarmanız gereken öğe türüyle doldurmanız gerekir (node, arc, connec, gully).
- Observ ve Comment alanları opsiyoneldir.
- Dikkat: csv dosyasının bir başlık satırı olmalıdır', 'role_admin');
INSERT INTO sys_csv2pg_cat VALUES (4, 'Ek alanları içeri aktar', 'Ek alanları içeri aktar', 'Csv dosyası sırayla bu sütunlara sahip olmalıdır: 
feature_id (can be arc, node or connec), parameter_id (choose from man_addfields_parameter), value_param. 
- Dikkat: csv dosyasının bir başlık satırı olmalıdır', 'role_admin');
INSERT INTO sys_csv2pg_cat VALUES (5, 'Hat ziyaret tablosunu içeri aktar', 'Hat ziyaret tablosunu içeri aktar', 'Csv dosyası sırayla bu sütunlara sahip olmalıdır: arc_id, unit', 'role_om');
INSERT INTO sys_csv2pg_cat VALUES (6, 'Bağlantı ziyaret tablosunu içeri aktar', 'Bağlantı ziyaret tablosunu içeri aktar', 'Csv dosyası sırayla bu sütunlara sahip olmalıdır: connec_id, unit', 'role_om');
INSERT INTO sys_csv2pg_cat VALUES (7, 'Oluk ziyaret tablosunu içeri aktar', 'Oluk ziyaret tablosunu içeri aktar', 'Csv dosyası sırayla bu sütunlara sahip olmalıdır: gully_id, unit', 'role_om');

-- Error message
-- ----------------------------
INSERT INTO audit_cat_error VALUES (-1, 'Yakalanamayan hata', 'Daha fazla ayrıntı almak için PotgreSQL günlük dosyasını açın', 2, true, 'generic');
INSERT INTO audit_cat_error VALUES (0, 'OK', NULL, 3, false, 'generic');
INSERT INTO audit_cat_error VALUES (1, 'Trigger INSERT', 'Inserted', 3, false, NULL);
INSERT INTO audit_cat_error VALUES (2, 'Trigger UPDATE', 'Updated', 3, false, NULL);
INSERT INTO audit_cat_error VALUES (3, 'Trigger DELETE', 'Deleted', 3, false, NULL);
INSERT INTO audit_cat_error VALUES (999, 'Tanımsız hata', 'Tanımsız', 1, true, 'generic');
INSERT INTO audit_cat_error VALUES (1002, 'Test tetikleyicisi', 'Test tetikleyicisi', 0, true, 'ws_trg');
INSERT INTO audit_cat_error VALUES (1004, 'Modelde tanımlı nokta tipi yok', 'En az bir tane tanımlayınız', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1006, 'Modelde tanımlı nokta kataloğu yok', 'En az bir tane tanımlayınız', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1008, 'Modelde tanımlı sektör yok', 'En az bir tane tanımlayınız', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1010, 'Obje sektör dışında, feature_id:', 'Haritanızı kontrol edin ve sektör yaklaşımını kullanın!', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1012, 'Modelde tanımlı DMA yok', 'En az bir tane tanımlayınız', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1014, 'Obje dma dışında, feature_id:', 'Haritanızı kontrol edin ve dma yaklaşımını kullanın!', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1016, 'Nokta kataloğu değiştirilemiyor', 'Yeni nokta kataloğu eskisi ile aynı tipe ait değil (node_type.type) ', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1018, 'Modelde tanımlı hat tipi yok', 'En az bir tane tanımlayınız', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1020, 'Modelde tanımlı hat kataloğu yok', 'En az bir tane tanımlayınız', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1022, 'Modelde tanımlı bağlantı kataloğu yok', 'En az bir tane tanımlayınız', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1024, 'Modelde tanımlı ızgara kataloğu yok', 'En az bir tane tanımlayınız', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1026, 'Bu tabloya yeni hat eklenmesine izin verilmiyor', 'Yeni hat eklemek için ENVANTER içerisindeki hat(boru veya kanal) katmanını kullanınız', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1028, 'Bu tablodan hat silinmesine izin verilmiyor', 'Hat silmek için ENVANTER içerisindeki hat(boru veya kanal) katmanını kullanınız', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1030, 'Bu tabloya yeni nokta eklenmesine izin verilmiyor', 'Yeni nokta eklemek için ENVANTER içerisindeki nokta katmanını kullanınız', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1032, 'Bu tablodan nokta silinmesine izin verilmiyor', 'Nokta silmek için ENVANTER içerisindeki nokta katmanını kullanınız', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1034, 'Bu tabloya yeni vana eklenmesine izin verilmiyor', 'Yeni vana eklemek için ENVANTER içerisindeki nokta katmanını kullanınız', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1036, 'Bu tablo içerisinde düzenlenmesine izin verilmeyen kolonlar mevcut', 'Try to update open, accesibility, broken, mincut_anl or hydraulic_anl', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1038, 'Bu tablodan vana silinmesine izin verilmiyor', 'Vana silmek için ENVANTER içerisindeki nokta katmanını kullanınız', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1040, 'Bir veya daha fazla hattın başlangıç ve bitiş noktaları aynı. Node_id:', 'Projenizi kontrol ediniz ya da yapılandırma ayarlarınızı değiştiriniz', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1042, 'Bir veya daha fazla hat başlangıç/bitiş noktası olmadığı için eklenemedi/güncellenemedi. Arc_id:', 'Projenizi kontrol ediniz ya da yapılandırma ayarlarınızı değiştiriniz', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1044, 'Minimum mesafe kuralını ihlal eden bir veya daha fazla bağlantı noktası mevcut, connec_id:', 'Projenizi kontrol ediniz ya da yapılandırma ayarlarınızı değiştiriniz (config.connec_proximity).', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1046, 'Minimum mesafe kuralını ihlal eden bir veya daha fazla nokta mevcut, node_id: ', 'Projenizi kontrol ediniz ya da yapılandırma ayarlarınızı değiştiriniz (config.node_proximity).', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1048, 'Elev güncellenebilir bir alan değil', 'Bu değeri güncellemek için top_elev ya da  ymax alanlarını kullanınız', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2002, 'Nokta bulunamadı', 'Lütfen nokta katmanını kontrol ediniz', 2, true, 'ws');
INSERT INTO audit_cat_error VALUES (2004, 'Noktayı silmek mümkün değil','Borular farklı tiplere sahip', 2, true, 'ws');
INSERT INTO audit_cat_error VALUES (2006, 'Noktayı silmek mümkün değil', 'Noktanın iki hattı yok', 2, true, 'ws');
INSERT INTO audit_cat_error VALUES (2008, 'Hat bulunamadı', 'Lütfen hat katmanını kontrol ediniz', 2, true, 'ws_fct');
INSERT INTO audit_cat_error VALUES (1080, 'Planlanan bir bileşen girmek için en az bir psector olmalıdır.', 'Yeni bir psector oluşturunuz', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1088, 'Bağlantı kataloğu bağlantı tipinden farklı', 'Bağlantı kataloğunda tanımlı bir bağlantı tipi kullanınız.', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1090, 'Bu obje için bir nokta kataloğu seçmelisiniz.', 'Nodecat_id gerekli. nokta katalog tablosunu doldurun ya da varsayılan bir değer kullanın', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1094, 'Katalog değeri nokta tipinden farklı', 'nokta kataloğunda tanımlı bir nokta tipi kullanmalısınız.', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2014, 'Bağlantı hattı bir bağlantı noktasına ulaşmalıdır', 'Bağlantı hatları diğer bileşenlere bağlı olmalıdır', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2018, 'Hattın uç noktalarından en az biri mevcut değil. Planlanan şebeke topolojiyi kaybetti', NULL, 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2020, 'Bir veya daha fazla sanal nokta, yapılandırılmış minimum mesafe kuralını ihlal ediyor.', 'Projenizi kontrol ediniz ya da yapılandırma ayarlarınızı değiştiriniz (config.node_proximity).', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1102, 'Veri eklenmesine izin verilmiyor. hydrometer_id yok ...', NULL, 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1104, 'Güncellemeye izin verilmiyor ...', NULL, 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1106, 'Silme işlemine izin verilmiyor. hydrometer_id ...', NULL, 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1108, 'Silme işlemine izin verilmiyor. hydrometer_id ...', NULL, 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1052, 'Durumu (0) olan bir nokta ile hattın bölünmesi mümkün değil.', 'Hattı bölmek için noktanın durumu (1) olmalıdır', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2024, 'Obje herhangi bir ilçe sınırı içerisinde değil,feature_id:', 'Lütfen verinizi kontrol ediniz', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2026, 'Başka bir planlanan kesinti ile çakışma mevcut.', 'Lütfen verinizi kontrol ediniz', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1050, 'Durumu (0) olan bir hattın bölünmesi mümkün değil.', 'Hattı bölmek için durumu (1) olmalıdır', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1084, 'Mevcut değil node_id:', NULL, 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1082, 'Mevcut değil arc_id:', NULL, 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1076, 'Bağlantının durumunu (0) yapmadan önce, ilişkili objelerin bağlantısını kesiniz, connec_id: ', NULL, 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1074, 'Hattın durumunu (0) yapmadan önce, ilişkili objelerin bağlantısını kesiniz, arc_id: ', NULL, 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1072, 'Noktanın durumunu (0) yapmadan önce, ilişkili objelerin bağlantısını kesiniz, node_id: ', NULL, 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1078, 'Mazgalın durumunu (0) yapmadan önce, ilişkili objelerin bağlantısını kesiniz, gully_id: ', NULL, 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1070, 'Durumu (1) den farklı olduğu için obje değiştirilemedi. Durum = ', 'Bir objeyi değiştirmek için durumu (1) olmalıdır', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1098, 'Durumu (1) ya da (2) olan bir noktanın, durumu (1) olan mevcut bir nokta üzerine eklenmesine izin verilmiyor.', 'Nokta değiştir butonunu kullanınız. Aynı durum değerine sahip birden fazla noktanın aynı konumda olması mümkün değildir.', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1054, 'Durumu (2) olan bir nokta ile durumu (1) olan bir hattı bölmek mümkün değil.', 'Hattı bölmek için noktanın durumu (1) olmalıdır', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1086, 'Bu obje için bir bağlantı kataloğu seçmeniz gerekiyor', 'Bağlantı katalog idsi gerekli. Bağlantı kataloğunu doldurun ya da varsayılan bir değer kullanın', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1092, 'Seçilen nokta tipi ile varsayılan katalog değeri kullanılamıyor.', 'Nokta kataloğunda tanımlı bir nokta tipi kullanmalısınız', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2010, 'Bileşen kataloğunda değer yok', 'Bileşen katalog idsi gerekli. Bileşen kataloğunu doldurun ya da varsayılan bir değer kullanın', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2012, 'Obje, işletme sınırları dışında, feature_id:', 'Haritanızı kontrol edin ve işletme yaklaşımını kullanın!', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2016, 'Bağlantı hattının başlangıç ve bitiş noktaları değiştirilemez', 'Objeleri yeniden bağlamak istiyorsanız bu bağlantı hattını silip yeni bir tane çiziniz', 2, true, NULL);	
INSERT INTO audit_cat_error VALUES (2028, 'Değiştirilecek objenin durum değeri (1) değil, state = ', 'Değiştirmek için objenin durum değerinin (1) olması gerekir.', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2032, 'Lütfen nokta kataloğunu doldurunuz ya da varsayılan bir değer yapılandırınız.', NULL, 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2034, 'Kataloğunuz, nokta tipinden farklı', 'Veriniz nokta kataloğunda da bulunmalıdır', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2066, 'Verilen nokta idsi ''CHAMBER'' (sistem tipi) olarak bulunmuyor', 'Başka bir nokta arayınız', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2030, 'Değiştirilecek objenin durum değeri (2) değil, state = ', 'Değiştirebilmek için objenin durum değeri (2) olmalıdır', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2068, 'Verilen nokta idsi ''WWTP'' (sistem tipi) olarak bulunmuyor', 'Başka bir nokta arayınız', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2042, 'Dma, tanımlı bir işletme içerinde değil. Lütfen verinizi kontrol ediniz', 'Bileşen, tanımlı bir işletmeyle ilişkili bir dma nın içerisinde olmalıdır.', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2044, 'Basınç bölgesi, tanımlı bir işletme içerinde değil. Lütfen verinizi kontrol ediniz.', 'Bileşen, tanımlı bir işletmeyle ilişkili bir basınç bölgesinin içerisinde olmalıdır.', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2046, 'Durum tipi, tanımlı bir durum değeri değil. Lütfen verinizi kontrol ediniz', 'Durum tipi, tanımlı durum değerleri ile uyumlu olmalıdır.', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2048, 'Poligon, herhangi bir mazgal ile ilişkili değil.', 'Poligon geometrisini objeye bağlamak için mazgal idsini giriniz.', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2052, 'Poligon, herhangi bir nokta ile ilişkili değil.', 'Poligon geometrisini objeye bağlamak için nokta idsini giriniz.', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2070, 'Devam etmeden önce ''akış borusu'' alanının değerini girmelisiniz.', NULL, 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2072, 'Topolojik tutarlılık için çıkıç borusu ve noktasının idleri girilmelidir.', 'nokta idsi, çıkış borusunun node_1 değeri olmalıdır', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2074, 'Akış düzenleyicisinin uzunluğu tanımlanmalıdır.', NULL, 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2076, 'Akış uzunluğu çıkış borusunun uzunluğundan fazla.', 'Lütfen projenizi kontrol ediniz.', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2040, 'Basitleştirilen geometri bir linestring değil, (arc_id,geom type)=', NULL, 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2036, 'Katalog idsi atanmayan hattın doğrulaması yapılamıyor. arc_id:', 'Lütfen bir katalog değeri atayınız', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2078, 'Sorgu metni =', NULL, 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2090, 'İçeri alınacak csv dosyasında null değerler mevcut', 'Devam etmeden önce lütfen null değerleri doldurunuz', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2080, 'x değeri çok büyük. Hattın toplam uzunluğu ', NULL, 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2060, 'Bu geometri herhangi bir nokta ile ilişkilendirilemiyor.', 'Nokta ''WWTP'' sistem tipinde olmalıdır.', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2058, 'Bu geometri herhangi bir nokta ile ilişkilendirilemiyor.', 'Nokta ''CHAMBER'' sistem tipinde olmalıdır.', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2056, 'Bu geometri herhangi bir nokta ile ilişkilendirilemiyor.', 'Nokta ''STORAGE'' sistem tipinde olmalıdır.', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2054, 'Bu geometri herhangi bir nokta ile ilişkilendirilemiyor.', 'Nokta ''NETGULLY'' sistem tipinde olmalıdır.', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2050, 'Verilen mazgal idsi bulunmuyor.', 'Başka bir id deneyiniz.', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2062, 'Verilen nokta idsi ''NETGULLY'' (sistem tipi) olarak bulunmuyor', 'Başka bir nokta arayınız', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2064, 'Verilen nokta idsi ''STORAGE'' (sistem tipi) olarak bulunmuyor', 'Başka bir nokta arayınız', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2082, 'Eklenti bulunamadı. Eklenti =', NULL, 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2084, 'Modül bulunamadı. Modül =', NULL, 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2086, 'csv dosyasının id sütununda null değerler mevcut. Kontrol ediniz', NULL, 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2106, 'Verilen nokta idsi ''TANK'' (sistem tipi) olarak bulunmuyor', 'Başka bir nokta arayınız', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2088, 'boş ya da birim tablosunda tanımlı olmayan birim değerleri mevcut. tablo  =', 'Devam etmeden önce lütfen doldurunuz', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2092, 'csv dosyasının fiyat sütununda null değerler mevcut', 'Devam etmeden önce lütfen doldurunuz', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2094, 'Lütfen bu poligon ile ilişkili bir bağlantı atayınız.', NULL, 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2102, 'Bu geometrinin herhangi bir nokta ile ilişkilendirilmesi mümkün değil.', 'nokta, ''TANK'' sistem tipinde olmalıdır.', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2096, 'Bu geometrinin herhangi bir bağlantı noktası ile ilişkilendirilmesi mümkün değil.', 'Bağlantı ''FOUNTAIN'' sistem tipinde olmalıdır', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2100, 'Bu geometrinin herhangi bir nokta ile ilişkilendirilmesi mümkün değil.', 'nokta, ''REGISTER'' sistem tipinde olmalıdır.', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2098, 'Verilen bağlantı nota idsi ''FOUNTAIN'' (sistem tipi) olarak bulunmuyor', 'Başka bir bağlantı noktası arayınız', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2104, 'Verilen nokta idsi ''REGISTER'' (sistem tipi) olarak bulunmuyor', 'Başka bir nokta arayınız', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2038, 'Çıkış hattı tersine çevrilmelidir. Arc =', NULL, 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2022, '(arc_id, geom type) =', NULL, 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1096, 'Aynı konumda birden fazla nokta var.', 'Proje verinizi kontrol ediniz. Aynı durum değerine sahip birden fazla noktanın aynı konumda olması mümkün değildir.', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1100, 'Aynı konumda durum değeri (2) olan birden fazla nokta var', 'Proje verinizi kontrol ediniz. Aynı durum değerine sahip birden fazla noktanın aynı konumda olması mümkün değildir.', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1056, 'Silinen objeye bağlı en az bir hat mevcut. (num. arc,feature_id) =', 'Verinizi gözden geçirin. Silinen objeye bağlı hat olamaz.', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1058, 'Silinen objeye bağlı en az bir bileşen mevcut. (num. element,feature_id) =', 'Verinizi gözden geçirin. Silinen objeye bağlı bileşen olamaz.', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1060, 'Silinen objeye bağlı en az bir belge mevcut. (num. document,feature_id) =', 'Verinizi gözden geçirin. Silinen objeye bağlı belge olamaz.', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1062, 'Silinen objeye bağlı en az bir ziyaret mevcut. (num. visit,feature_id) =', 'Verinizi gözden geçirin. Silinen objeye bağlı ziyaret olamaz.', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1064, 'Silinen objeye bağlı en az bir sanal bağlantı mevcut. (num. link,feature_id) =', 'Verinizi gözden geçirin. Silinen objeye bağlı sanal bağlantı olamaz.', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1066, 'Silinen objeye bağlı en az bir abone bağlantısı mevcut. (num. connec,feature_id) =', 'Verinizi gözden geçirin. Silinen objeye bağlı abone bağlantısı olamaz.', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1068, 'Silinen objeye bağlı en az bir mazgal mevcut. (num. gully,feature_id)=', 'Verinizi gözden geçirin. Silinen objeye bağlı mazgal olamaz.', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2108, 'Silinen objeye bağlı en az bir nokta mevcut. (num. node,feature_id)=', 'Verinizi gözden geçirin. Silinen objeye bağlı nokta olamaz.', 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2110, 'Durum değeri (0) olan en az bir değer tanımlayınız.', NULL, 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2120, 'Nokta ve Hat durum değerleri arasında uyumsuzluk mevcut', NULL, 2, true, NULL);
INSERT INTO audit_cat_error VALUES (2122, 'Ekleme işleminde hat bulunamadı', NULL, 2, true, NULL);
INSERT INTO audit_cat_error VALUES (1110, 'Modelde tanımlı işletme bulunamadı', 'En az bir tane tanımlayınız', 2, true, NULL);
