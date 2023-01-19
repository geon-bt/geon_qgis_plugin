/*
This file is part of Giswater 3
The program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
This version of Giswater is provided by Giswater Association
*/


SET search_path = "SCHEMA_NAME", public, pg_catalog;

-- Records of cat_feature
-- ----------------------------
INSERT INTO cat_feature VALUES ('KANAL', 'CONDUIT', 'ARC');
INSERT INTO cat_feature VALUES ('SIFON', 'SIPHON', 'ARC');
INSERT INTO cat_feature VALUES ('HIZLANDIRICI', 'WACCEL', 'ARC');
INSERT INTO cat_feature VALUES ('SANAL_KANAL', 'VARC', 'ARC'); 
INSERT INTO cat_feature VALUES ('TERFI_KANAL', 'CONDUIT', 'ARC');
INSERT INTO cat_feature VALUES ('HAZNE', 'CHAMBER', 'NODE');
INSERT INTO cat_feature VALUES ('BACA_DAIRESEL', 'MANHOLE', 'NODE');
INSERT INTO cat_feature VALUES ('YUKSEK_NOKTA', 'JUNCTION', 'NODE');
INSERT INTO cat_feature VALUES ('KAYIT', 'JUNCTION', 'NODE');
INSERT INTO cat_feature VALUES ('DEGISIM', 'JUNCTION', 'NODE');
INSERT INTO cat_feature VALUES ('SANAL_NOKTA', 'JUNCTION', 'NODE');
INSERT INTO cat_feature VALUES ('SU_BENDI', 'CHAMBER', 'NODE');
INSERT INTO cat_feature VALUES ('ATLATMA', 'WJUMP', 'NODE');
INSERT INTO cat_feature VALUES ('BACA_DIKDORTGEN', 'MANHOLE', 'NODE');
INSERT INTO cat_feature VALUES ('KUM_TUTUCU', 'MANHOLE', 'NODE');
INSERT INTO cat_feature VALUES ('AAT', 'WWTP', 'NODE');
INSERT INTO cat_feature VALUES ('VANA', 'VALVE', 'NODE');
INSERT INTO cat_feature VALUES ('FOSEPTIK', 'STORAGE', 'NODE');
INSERT INTO cat_feature VALUES ('TASKIN_DEPOLAMA', 'STORAGE', 'NODE');
INSERT INTO cat_feature VALUES ('DESARJ', 'OUTFALL', 'NODE');
INSERT INTO cat_feature VALUES ('MENFEZ_SEBEKE', 'NETGULLY', 'NODE');
INSERT INTO cat_feature VALUES ('BAGLANTI', 'CONNEC', 'CONNEC');
INSERT INTO cat_feature VALUES ('MENFEZ', 'GULLY', 'GULLY');
INSERT INTO cat_feature VALUES ('MAZGAL', 'GULLY', 'GULLY');
INSERT INTO cat_feature VALUES ('BIRLESIM', 'JUNCTION', 'NODE');
INSERT INTO cat_feature VALUES ('SEBEKE_ELEMANI', 'NETELEMENT', 'NODE');
INSERT INTO cat_feature VALUES ('TERFI_MERKEZI', 'CHAMBER', 'NODE');
INSERT INTO cat_feature VALUES ('BACA_BASLANGIC', 'NETINIT', 'NODE');



-- Records of node type system table
-- ----------------------------
INSERT INTO node_type VALUES ('HAZNE', 'CHAMBER', 'STORAGE', 'man_chamber', 'inp_storage', TRUE, TRUE, 2, TRUE);
INSERT INTO node_type VALUES ('BACA_DAIRESEL', 'MANHOLE', 'JUNCTION', 'man_manhole', 'inp_junction', TRUE, TRUE, 2, TRUE);
INSERT INTO node_type VALUES ('YUKSEK_NOKTA', 'JUNCTION', 'JUNCTION', 'man_junction', 'inp_junction', TRUE, TRUE, 2, TRUE);
INSERT INTO node_type VALUES ('KAYIT', 'JUNCTION', 'JUNCTION', 'man_junction', 'inp_junction', TRUE, TRUE, 2, TRUE);
INSERT INTO node_type VALUES ('DEGISIM', 'JUNCTION', 'JUNCTION', 'man_junction', 'inp_junction', TRUE, TRUE, 2, TRUE);
INSERT INTO node_type VALUES ('SANAL_NOKTA', 'JUNCTION', 'JUNCTION', 'man_junction', 'inp_junction', TRUE, TRUE, 2, TRUE);
INSERT INTO node_type VALUES ('SU_BENDI', 'CHAMBER', 'JUNCTION', 'man_chamber', 'inp_junction', TRUE, TRUE, 2, TRUE);
INSERT INTO node_type VALUES ('ATLATMA', 'WJUMP', 'JUNCTION', 'man_wjump', 'inp_junction', TRUE, TRUE, 2, TRUE);
INSERT INTO node_type VALUES ('BACA_DIKDORTGEN', 'MANHOLE', 'JUNCTION', 'man_manhole', 'inp_junction', TRUE, TRUE, 2, TRUE);
INSERT INTO node_type VALUES ('KUM_TUTUCU', 'MANHOLE', 'JUNCTION', 'man_manhole', 'inp_junction', TRUE, TRUE, 2, TRUE);
INSERT INTO node_type VALUES ('AAT', 'WWTP', 'JUNCTION', 'man_wwtp', 'inp_junction', TRUE, TRUE, 2, TRUE);
INSERT INTO node_type VALUES ('VANA', 'VALVE', 'JUNCTION', 'man_valve', 'inp_junction', TRUE, TRUE, 2, TRUE);
INSERT INTO node_type VALUES ('FOSEPTIK', 'STORAGE', 'STORAGE', 'man_storage', 'inp_storage', TRUE, TRUE, 2, TRUE);
INSERT INTO node_type VALUES ('TASKIN_DEPOLAMA', 'STORAGE', 'STORAGE', 'man_storage', 'inp_storage', TRUE, TRUE, 2, TRUE);
INSERT INTO node_type VALUES ('DESARJ', 'OUTFALL', 'OUTFALL', 'man_outfall', 'inp_outfall', TRUE, TRUE, 2, TRUE);
INSERT INTO node_type VALUES ('MENFEZ_SEBEKE', 'NETGULLY', 'JUNCTION', 'man_netgully', 'inp_junction', TRUE, TRUE, 2, TRUE);
INSERT INTO node_type VALUES ('BIRLESIM', 'JUNCTION', 'JUNCTION', 'man_junction', 'inp_junction', TRUE, TRUE, 2, TRUE);
INSERT INTO node_type VALUES ('SEBEKE_ELEMANI', 'NETELEMENT', 'JUNCTION', 'man_netelement', 'inp_junction', TRUE, TRUE, 2, TRUE);
INSERT INTO node_type VALUES ('TERFI_MERKEZI', 'CHAMBER', 'STORAGE', 'man_chamber', 'inp_storage', TRUE, TRUE, 2, TRUE);
INSERT INTO node_type VALUES ('BACA_BASLANGIC', 'NETINIT', 'JUNCTION', 'man_netinit', 'inp_junction', TRUE, TRUE, 1, TRUE);

-- Records of arc type system table
-- ----------------------------
INSERT INTO arc_type VALUES ('KANAL', 'CONDUIT', 'CONDUIT', 'man_conduit', 'inp_conduit', TRUE, TRUE);
INSERT INTO arc_type VALUES ('SIFON', 'SIPHON', 'CONDUIT', 'man_siphon', 'inp_conduit', TRUE, TRUE);
INSERT INTO arc_type VALUES ('HIZLANDIRICI', 'WACCEL', 'CONDUIT', 'man_waccel', 'inp_conduit', TRUE, TRUE);
INSERT INTO arc_type VALUES ('SANAL_KANAL', 'VARC', 'VIRTUAL', 'man_varc', 'inp_virtual', TRUE, TRUE);
INSERT INTO arc_type VALUES ('TERFI_KANAL', 'CONDUIT', 'CONDUIT', 'man_conduit', 'inp_conduit', TRUE, TRUE);

-- Records of connec_type
-- ----------------------------
INSERT INTO connec_type VALUES ('BAGLANTI', 'CONNEC', 'man_connec', TRUE, TRUE);


-- Records of gully_type
-- ----------------------------
INSERT INTO gully_type VALUES ('MENFEZ', 'GULLY', 'man_gully', TRUE, TRUE);
INSERT INTO gully_type VALUES ('MAZGAL', 'GULLY', 'man_gully', TRUE, TRUE);


-- Records of element type system table
-- ----------------------------
INSERT INTO element_type VALUES ('KAPAK', true, true, NULL, NULL);
INSERT INTO element_type VALUES ('KAPI', true, true, NULL, NULL);
INSERT INTO element_type VALUES ('IOT SENSOR', true, true, NULL, NULL);
INSERT INTO element_type VALUES ('POMPA', true, true, NULL, NULL);
INSERT INTO element_type VALUES ('PARCALAYICI', true, true, NULL, NULL);
INSERT INTO element_type VALUES ('KORUYUCU', true, true, NULL, NULL);

-- Records of element cat_arc_shape
-- ----------------------------
INSERT INTO cat_arc_shape VALUES ('DAIRESEL', 'CIRCULAR', NULL, NULL, 'ud_section_circular.png', NULL, true);
INSERT INTO cat_arc_shape VALUES ('DOLU_DAIRESEL', 'FILLED_CIRCULAR', NULL, NULL, 'ud_section_filled_circular.png', NULL, true);
INSERT INTO cat_arc_shape VALUES ('DIKDORTGEN_KAPALI', 'RECT_CLOSED', NULL, NULL, 'ud_section_rect_closed.png', NULL, true);
INSERT INTO cat_arc_shape VALUES ('DIKDORTGEN_ACIK', 'RECT_OPEN', NULL, NULL, 'ud_section_rect_open.png', NULL, true);
INSERT INTO cat_arc_shape VALUES ('TRAPEZ', 'TRAPEZOIDAL', NULL, NULL, 'ud_section_trapezoidal.png', NULL, true);
INSERT INTO cat_arc_shape VALUES ('UCGEN', 'TRIANGULAR', NULL, NULL, 'ud_section_triangular.png', NULL, true);
INSERT INTO cat_arc_shape VALUES ('ELIPS_YATAY', 'HORIZ_ELLIPSE', NULL, NULL, 'ud_section_horiz_ellipse.png', NULL, true);
INSERT INTO cat_arc_shape VALUES ('YAY', 'ARCH', NULL, NULL, 'ud_section_arch.png', NULL, true);
INSERT INTO cat_arc_shape VALUES ('PARABOLIK', 'PARABOLIC', NULL, NULL, 'ud_section_parabolic.png', NULL, true);
INSERT INTO cat_arc_shape VALUES ('POWER', 'POWER', NULL, NULL, 'ud_section_power.png', NULL, true);
INSERT INTO cat_arc_shape VALUES ('DIKDORTGEN_UCGEN', 'RECT_TRIANGULAR', NULL, NULL, 'ud_section_rect_triangular.png', NULL, true);
INSERT INTO cat_arc_shape VALUES ('DIKDORTGEN_DAIRESEL', 'RECT_ROUND', NULL, NULL, 'ud_section_rect_round.png', NULL, true);
INSERT INTO cat_arc_shape VALUES ('MODBASKETHANDLE', 'MODBASKETHANDLE', NULL, NULL, 'ud_section_modbaskethandle.png', NULL, true);
INSERT INTO cat_arc_shape VALUES ('YUMURTA', 'EGG', NULL, NULL, 'ud_section_egg.png', NULL, true);
INSERT INTO cat_arc_shape VALUES ('ATNALI', 'HORSESHOE', NULL, NULL, 'ud_section_horseshoe.png', NULL, true);
INSERT INTO cat_arc_shape VALUES ('YARIM_ELIPS', 'SEMIELLIPTICAL', NULL, NULL, 'ud_section_semielliptical.png', NULL, true);
INSERT INTO cat_arc_shape VALUES ('BASKETHANDLE', 'BASKETHANDLE', NULL, NULL, 'ud_section_baskethandle.png', NULL, true);
INSERT INTO cat_arc_shape VALUES ('YARIM_DAIRE', 'SEMICIRCULAR', NULL, NULL, 'ud_section_semicircular.png', NULL, true);
INSERT INTO cat_arc_shape VALUES ('DUMMY', 'DUMMY', NULL, NULL, 'ud_section_dummy.png', NULL, true);
INSERT INTO cat_arc_shape VALUES ('FORCE_MAIN', 'FORCE_MAIN', NULL, NULL, 'ud_section_force_main.png', NULL, true);
INSERT INTO cat_arc_shape VALUES ('OZEL', 'CUSTOM', NULL, NULL, 'ud_section_custom.png', 'Custom defined closed shape using the curve values of some curve defined on inp_curve table. Needed to normalize as a simetric shape', true);
INSERT INTO cat_arc_shape VALUES ('DUZENSIZ', 'IRREGULAR', NULL, NULL, 'ud_section_irregular.png', 'Custom defined open inrregular channel shape using HEC format and storing information on some tsect values stored on inp_transects table', true);
INSERT INTO cat_arc_shape VALUES ('SANAL', 'VIRTUAL', NULL, NULL, 'null.png', 'Non real shape.', false);