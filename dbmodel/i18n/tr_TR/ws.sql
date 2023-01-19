/*
This file is part of Giswater 3
The program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
This version of Giswater is provided by Giswater Association
*/


SET search_path = "SCHEMA_NAME", public, pg_catalog;

-- Records of cat_feature
-- ----------------------------
INSERT INTO cat_feature VALUES ('SU_SERVIS_KUTUSU', 'WJOIN', 'CONNEC');
INSERT INTO cat_feature VALUES ('SUS_CESMESI', 'FOUNTAIN', 'CONNEC');
INSERT INTO cat_feature VALUES ('MUSLUK', 'TAP', 'CONNEC');
INSERT INTO cat_feature VALUES ('GREENTAP', 'GREENTAP', 'CONNEC');
INSERT INTO cat_feature VALUES ('KUYU', 'WATERWELL', 'NODE');
INSERT INTO cat_feature VALUES ('NUMUNE_ALMA_NOK', 'NETSAMPLEPOINT', 'NODE');
INSERT INTO cat_feature VALUES ('SEBEKE_ELEMANI', 'NETELEMENT', 'NODE');
INSERT INTO cat_feature VALUES ('IAT', 'WTP', 'NODE');
INSERT INTO cat_feature VALUES ('BORU', 'PIPE', 'ARC');
INSERT INTO cat_feature VALUES ('SANAL_BORU', 'VARC', 'ARC');
INSERT INTO cat_feature VALUES ('CEKVALF', 'VALVE', 'NODE');
INSERT INTO cat_feature VALUES ('MASLAK', 'VALVE', 'NODE');
INSERT INTO cat_feature VALUES ('MIKRO_HES', 'VALVE', 'NODE');
INSERT INTO cat_feature VALUES ('DIRSEK', 'JUNCTION', 'NODE');
INSERT INTO cat_feature VALUES ('FILTRE', 'FILTER', 'NODE');
INSERT INTO cat_feature VALUES ('KORTAPA', 'JUNCTION', 'NODE');
INSERT INTO cat_feature VALUES ('DEBI_KONT_VANA', 'VALVE', 'NODE');
INSERT INTO cat_feature VALUES ('VANA', 'VALVE', 'NODE');
INSERT INTO cat_feature VALUES ('HIDRANT', 'HYDRANT', 'NODE');
INSERT INTO cat_feature VALUES ('BASINC_KIRICI_VANA', 'VALVE', 'NODE');
INSERT INTO cat_feature VALUES ('TAHLIYE_VANA', 'VALVE', 'NODE');
INSERT INTO cat_feature VALUES ('BAGLANTI_PARCA', 'JUNCTION', 'NODE');
INSERT INTO cat_feature VALUES ('BAS_KONT_VANA', 'VALVE', 'NODE');
INSERT INTO cat_feature VALUES ('KAPATMA_VANA', 'VALVE', 'NODE');
INSERT INTO cat_feature VALUES ('REDUKSIYON', 'REDUCTION', 'NODE');
INSERT INTO cat_feature VALUES ('POMPA', 'PUMP', 'NODE');
INSERT INTO cat_feature VALUES ('DEPO', 'TANK', 'NODE');
INSERT INTO cat_feature VALUES ('KISMA_VANA', 'VALVE', 'NODE');
INSERT INTO cat_feature VALUES ('T', 'JUNCTION', 'NODE');
INSERT INTO cat_feature VALUES ('X', 'JUNCTION', 'NODE');
INSERT INTO cat_feature VALUES ('KAYNAK', 'SOURCE', 'NODE');
INSERT INTO cat_feature VALUES ('BACA', 'MANHOLE', 'NODE');
INSERT INTO cat_feature VALUES ('IZLEME_ODA', 'REGISTER', 'NODE');
INSERT INTO cat_feature VALUES ('KONTROL_ODA', 'REGISTER', 'NODE');
INSERT INTO cat_feature VALUES ('BYPASS_ODA', 'REGISTER', 'NODE');
INSERT INTO cat_feature VALUES ('VANA_ODA', 'REGISTER', 'NODE');
INSERT INTO cat_feature VALUES ('SU_BAGLANTI_NOKTA', 'NETWJOIN', 'NODE');
INSERT INTO cat_feature VALUES ('FLEKS', 'FLEXUNION', 'NODE');
INSERT INTO cat_feature VALUES ('VANTUZ', 'VALVE', 'NODE');
INSERT INTO cat_feature VALUES ('DEBIMETRE', 'METER', 'NODE');
INSERT INTO cat_feature VALUES ('HAVAKAZANI', 'EXPANSIONTANK', 'NODE');
INSERT INTO cat_feature VALUES ('BASINC_OLCER', 'METER', 'NODE');
INSERT INTO cat_feature VALUES ('ADAPTOR', 'JUNCTION', 'NODE');




-- Records of node type system table
-- ----------------------------

INSERT INTO node_type  VALUES ('DEBI_KONT_VANA', 'VALVE', 'VALVE', 'man_valve', 'inp_valve', true, true, 2, true, 'Debi kontrol vanası', NULL);
INSERT INTO node_type  VALUES ('KAPATMA_VANA', 'VALVE', 'SHORTPIPE', 'man_valve', 'inp_shortpipe', true, true, 2, true, 'Kapatma vanası', NULL);
INSERT INTO node_type  VALUES ('DEPO', 'TANK', 'TANK', 'man_tank', 'inp_tank', true, true, 2, true, 'Depo', NULL);
INSERT INTO node_type  VALUES ('MIKRO_HES', 'VALVE', 'JUNCTION', 'man_valve', 'inp_junction', true, true, 2, true, 'Mikro HES', NULL);
INSERT INTO node_type  VALUES ('TAHLIYE_VANA', 'VALVE', 'JUNCTION', 'man_valve', 'inp_junction', true, true, 2, true, 'Tahliye vanası', NULL);
INSERT INTO node_type  VALUES ('VANA', 'VALVE', 'VALVE', 'man_valve', 'inp_valve', true, true, 2, true, 'Genel amaçlı vana', NULL);
INSERT INTO node_type  VALUES ('HIDRANT', 'HYDRANT', 'JUNCTION', 'man_hydrant', 'inp_junction', true, true, 2, true, 'Yangın hidrantı', NULL);
INSERT INTO node_type  VALUES ('BAGLANTI_PARCA', 'JUNCTION', 'JUNCTION', 'man_junction', 'inp_junction', true, true, 2, true, 'Bağlantı parçası', NULL);
INSERT INTO node_type  VALUES ('REDUKSIYON', 'REDUCTION', 'JUNCTION', 'man_reduction', 'inp_junction', true, true, 2, true, 'Redüksiyon', NULL);
INSERT INTO node_type  VALUES ('POMPA', 'PUMP', 'PUMP', 'man_pump', 'inp_pump', true, true, 2, true, 'Pompa', NULL);
INSERT INTO node_type  VALUES ('BAS_KONT_VANA', 'VALVE', 'VALVE', 'man_valve', 'inp_valve', true, true, 2, true, 'Basınç kontrol vanası', NULL);
INSERT INTO node_type  VALUES ('MASLAK', 'VALVE', 'VALVE', 'man_valve', 'inp_valve', true, true, 2, true, 'Basınç düşürücü vana- maslak olarak tanımlandı', NULL);
INSERT INTO node_type  VALUES ('BASINC_KIRICI_VANA', 'VALVE', 'VALVE', 'man_valve', 'inp_valve', true, true, 2, true, 'Basınç kırıcı vana', NULL);
INSERT INTO node_type  VALUES ('T', 'JUNCTION', 'JUNCTION', 'man_junction', 'inp_junction', true, true, 3, true, '3 borunun birleşme noktası', NULL);
INSERT INTO node_type  VALUES ('X', 'JUNCTION', 'JUNCTION', 'man_junction', 'inp_junction', true, true, 4, true, '4 borunun birleşme noktası', NULL);
INSERT INTO node_type  VALUES ('BACA', 'MANHOLE', 'JUNCTION', 'man_manhole', 'inp_junction', true, true, 2, true, 'Muayene bacası', NULL);
INSERT INTO node_type  VALUES ('IZLEME_ODA', 'REGISTER', 'JUNCTION', 'man_register', 'inp_junction', true, true, 2, true, 'Register', NULL);
INSERT INTO node_type  VALUES ('VANA_ODA', 'REGISTER', 'JUNCTION', 'man_register', 'inp_junction', true, true, 2, true, 'Vana odası', NULL);
INSERT INTO node_type  VALUES ('SU_BAGLANTI_NOKTA', 'NETWJOIN', 'JUNCTION', 'man_netwjoin', 'inp_junction', true, true, 2, true, 'Şebeke üzerindeki su bağlantı noktası', NULL);
INSERT INTO node_type  VALUES ('FLEKS', 'FLEXUNION', 'JUNCTION', 'man_flexunion', 'inp_junction', true, true, 2, true, 'Esnek birleşim noktası', NULL);
INSERT INTO node_type  VALUES ('BASINC_OLCER', 'METER', 'JUNCTION', 'man_meter', 'inp_junction', true, true, 2, true, 'Basınç ölçer', NULL);
INSERT INTO node_type  VALUES ('NUMUNE_ALMA_NOK', 'NETSAMPLEPOINT', 'JUNCTION', 'man_netsamplepoint', 'inp_junction', true, true, 2, true, 'Numune alma noktası', NULL);
INSERT INTO node_type  VALUES ('SEBEKE_ELEMANI', 'NETELEMENT', 'JUNCTION', 'man_netelement', 'inp_junction', true, true, 2, true, 'Şebeke elemanı', NULL);
INSERT INTO node_type  VALUES ('MUSLUK', 'JUNCTION', 'JUNCTION', 'man_junction', 'inp_junction', true, true, 2, true, 'Musluk', NULL);
INSERT INTO node_type  VALUES ('ADAPTOR', 'JUNCTION', 'JUNCTION', 'man_junction', 'inp_junction', true, true, 2, true, 'Adaptör', NULL);
INSERT INTO node_type  VALUES ('BYPASS_ODA', 'REGISTER', 'JUNCTION', 'man_register', 'inp_junction', true, true, 2, true, 'Bypass odası', NULL);
INSERT INTO node_type  VALUES ('DIRSEK', 'JUNCTION', 'JUNCTION', 'man_junction', 'inp_junction', true, true, 2, true, 'Dirsek', NULL);
INSERT INTO node_type  VALUES ('KONTROL_ODA', 'REGISTER', 'VALVE', 'man_register', 'inp_valve', true, true, 2, true, 'Kontrol odası', NULL);
INSERT INTO node_type  VALUES ('KORTAPA', 'JUNCTION', 'JUNCTION', 'man_junction', 'inp_junction', true, true, 1, true, 'Kör tapa', NULL);
INSERT INTO node_type  VALUES ('HAVAKAZANI', 'EXPANSIONTANK', 'JUNCTION', 'man_expansiontank', 'inp_junction', true, true, 2, true, 'Hava kazanı', NULL);
INSERT INTO node_type  VALUES ('FILTRE', 'FILTER', 'SHORTPIPE', 'man_filter', 'inp_shortpipe', true, true, 2, true, 'Filtre', NULL);
INSERT INTO node_type  VALUES ('KUYU', 'WATERWELL', 'JUNCTION', 'man_waterwell', 'inp_junction', true, true, 2, true, 'Kuyu', NULL);
INSERT INTO node_type  VALUES ('KAYNAK', 'SOURCE', 'JUNCTION', 'man_source', 'inp_junction', true, true, 2, true, 'Kaynak', NULL);
INSERT INTO node_type  VALUES ('IAT', 'WTP', 'RESERVOIR', 'man_wtp', 'inp_junction', true, true, 2, true, 'İçmesuyu arıtma tesisi', NULL);
INSERT INTO node_type  VALUES ('VANTUZ', 'VALVE', 'JUNCTION', 'man_valve', 'inp_junction', true, true, 2, true, 'Vantuz', NULL);
INSERT INTO node_type  VALUES ('CEKVALF', 'VALVE', 'SHORTPIPE', 'man_valve', 'inp_shortpipe', true, true, 2, true, 'Çekvalf', NULL);
INSERT INTO node_type  VALUES ('DEBIMETRE', 'METER', 'JUNCTION', 'man_meter', 'inp_junction', true, true, 2, true, 'Debimetre', NULL);
INSERT INTO node_type  VALUES ('KISMA_VANA', 'VALVE', 'VALVE', 'man_valve', 'inp_valve', true, true, 2, true, 'Kısma vanası', NULL);



-- Records of arc type system table
-- ----------------------------
INSERT INTO arc_type VALUES ('BORU', 'PIPE', 'PIPE', 'man_pipe', 'inp_pipe', TRUE, TRUE, 'Su borusu' );
INSERT INTO arc_type VALUES ('SANAL_BORU', 'VARC', 'PIPE', 'man_varc', 'inp_pipe', TRUE, TRUE, 'Boru şebekesinin sanal kısmı. Poligon varsa, borularla düğüm noktalarını bağlamak için kullanılır'  );

-- Records of connec_type system table
-- ----------------------------
INSERT INTO connec_type VALUES ('SU_SERVIS_KUTUSU', 'WJOIN', 'man_wjoin', TRUE, TRUE, 'Sanal Bağlantı');
INSERT INTO connec_type VALUES ('SUS_CESMESI', 'FOUNTAIN', 'man_fountain', TRUE, TRUE, 'Süs çeşmesi' );
INSERT INTO connec_type VALUES ('MUSLUK', 'TAP', 'man_tap', TRUE, TRUE, 'Musluk');
INSERT INTO connec_type VALUES ('GREENTAP', 'GREENTAP', 'man_greentap', TRUE, TRUE, 'Greentap');


-- Records of element type system table
-- ----------------------------
INSERT INTO element_type VALUES ('ODA', true, true, 'ODA', NULL);
INSERT INTO element_type VALUES ('BACA', true, true, 'BACA', NULL);
INSERT INTO element_type VALUES ('KAPAK', true, true, 'KAPAK', NULL);
INSERT INTO element_type VALUES ('KORUMA_BANDI', true, true, 'PROTECT BAND', NULL);
INSERT INTO element_type VALUES ('PLAKA', true, true, 'HYDRANT_PLATE', NULL);

-- Records of mincut
-- ----------------------------
INSERT INTO anl_mincut_selector_valve VALUES ('KAPATMA_VANA');

INSERT INTO anl_mincut_cat_cause VALUES ('Ariza', NULL);
INSERT INTO anl_mincut_cat_cause VALUES ('Planli', NULL);

INSERT INTO anl_mincut_cat_class VALUES (1, 'Şebeke', NULL);
INSERT INTO anl_mincut_cat_class VALUES (2, 'Bağlantı', NULL);
INSERT INTO anl_mincut_cat_class VALUES (3, 'Sayaç', NULL);

INSERT INTO anl_mincut_cat_state VALUES (1, 'Devam eden', NULL);
INSERT INTO anl_mincut_cat_state VALUES (2, 'Tamamlanan', NULL);
INSERT INTO anl_mincut_cat_state VALUES (0, 'Planlanan', NULL);


INSERT INTO anl_mincut_cat_type VALUES ('Test', true);
INSERT INTO anl_mincut_cat_type VALUES ('Demo', true);
INSERT INTO anl_mincut_cat_type VALUES ('Gercek', false);