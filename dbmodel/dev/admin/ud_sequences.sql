﻿/*
This file is part of Giswater 3
The program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
This version of Giswater is provided by Giswater Association
*/

set search_path='SCHEMA_NAME';

ALTER TABLE ONLY anl_arc ALTER COLUMN id SET DEFAULT nextval('anl_arc_id_seq'::regclass);
ALTER TABLE ONLY anl_arc_profile_value ALTER COLUMN id SET DEFAULT nextval('anl_arc_profile_value_id_seq'::regclass);
ALTER TABLE ONLY anl_arc_x_node ALTER COLUMN id SET DEFAULT nextval('anl_arc_x_node_id_seq'::regclass);
ALTER TABLE ONLY anl_connec ALTER COLUMN id SET DEFAULT nextval('anl_connec_id_seq'::regclass);
ALTER TABLE ONLY anl_flow_arc ALTER COLUMN id SET DEFAULT nextval('anl_flow_arc_id_seq'::regclass);
ALTER TABLE ONLY anl_flow_node ALTER COLUMN id SET DEFAULT nextval('anl_flow_node_id_seq'::regclass);
ALTER TABLE ONLY anl_node ALTER COLUMN id SET DEFAULT nextval('anl_node_id_seq'::regclass);
ALTER TABLE ONLY audit_check_data ALTER COLUMN id SET DEFAULT nextval('audit_check_data_id_seq'::regclass);
ALTER TABLE ONLY audit_check_feature ALTER COLUMN id SET DEFAULT nextval('audit_check_feature_id_seq'::regclass);
ALTER TABLE ONLY audit_check_project ALTER COLUMN id SET DEFAULT nextval('audit_check_project_id_seq'::regclass);
ALTER TABLE ONLY audit_log_arc_traceability ALTER COLUMN id SET DEFAULT nextval('audit_log_arc_traceability_id_seq'::regclass);
ALTER TABLE ONLY audit_log_csv2pg ALTER COLUMN id SET DEFAULT nextval('audit_log_csv2pg_id_seq'::regclass);
ALTER TABLE ONLY audit_log_data ALTER COLUMN id SET DEFAULT nextval('audit_log_data_id_seq'::regclass);
ALTER TABLE ONLY audit_log_feature ALTER COLUMN id SET DEFAULT nextval('audit_log_feature_id_seq'::regclass);
ALTER TABLE ONLY audit_log_project ALTER COLUMN id SET DEFAULT nextval('audit_log_project_id_seq'::regclass);
ALTER TABLE ONLY audit_review_arc ALTER COLUMN id SET DEFAULT nextval('audit_review_arc_id_seq'::regclass);
ALTER TABLE ONLY audit_review_connec ALTER COLUMN id SET DEFAULT nextval('audit_review_connec_id_seq'::regclass);
ALTER TABLE ONLY audit_review_gully ALTER COLUMN id SET DEFAULT nextval('audit_review_gully_id_seq'::regclass);
ALTER TABLE ONLY audit_review_node ALTER COLUMN id SET DEFAULT nextval('audit_review_node_id_seq'::regclass);
ALTER TABLE ONLY cat_arc_class ALTER COLUMN id SET DEFAULT nextval('cat_arc_class_id_seq'::regclass);
ALTER TABLE ONLY cat_arc_class_cat ALTER COLUMN id SET DEFAULT nextval('cat_arc_class_cat_id_seq'::regclass);
ALTER TABLE ONLY cat_arc_class_type ALTER COLUMN id SET DEFAULT nextval('cat_arc_class_type_id_seq'::regclass);
ALTER TABLE ONLY cat_hydrology ALTER COLUMN hydrology_id SET DEFAULT nextval('cat_hydrology_hydrology_id_seq'::regclass);
ALTER TABLE ONLY config_client_forms ALTER COLUMN id SET DEFAULT nextval('config_client_forms_id_seq'::regclass);
ALTER TABLE ONLY config_param_system ALTER COLUMN id SET DEFAULT nextval('config_param_system_id_seq'::regclass);
ALTER TABLE ONLY config_param_user ALTER COLUMN id SET DEFAULT nextval('config_param_user_id_seq'::regclass);
ALTER TABLE ONLY config_web_fields ALTER COLUMN id SET DEFAULT nextval('config_web_fields_id_seq'::regclass);
ALTER TABLE ONLY config_web_forms ALTER COLUMN id SET DEFAULT nextval('config_web_forms_id_seq'::regclass);
ALTER TABLE ONLY dimensions ALTER COLUMN id SET DEFAULT nextval('dimensions_id_seq'::regclass);
ALTER TABLE ONLY dma ALTER COLUMN dma_id SET DEFAULT nextval('dma_dma_id_seq'::regclass);
ALTER TABLE ONLY doc_x_arc ALTER COLUMN id SET DEFAULT nextval('doc_x_arc_id_seq'::regclass);
ALTER TABLE ONLY doc_x_connec ALTER COLUMN id SET DEFAULT nextval('doc_x_connec_id_seq'::regclass);
ALTER TABLE ONLY doc_x_node ALTER COLUMN id SET DEFAULT nextval('doc_x_node_id_seq'::regclass);
ALTER TABLE ONLY doc_x_visit ALTER COLUMN id SET DEFAULT nextval('doc_x_visit_id_seq'::regclass);
ALTER TABLE ONLY element_x_arc ALTER COLUMN id SET DEFAULT nextval('element_x_arc_id_seq'::regclass);
ALTER TABLE ONLY element_x_connec ALTER COLUMN id SET DEFAULT nextval('element_x_connec_id_seq'::regclass);
ALTER TABLE ONLY element_x_node ALTER COLUMN id SET DEFAULT nextval('element_x_node_id_seq'::regclass);
ALTER TABLE ONLY exploitation_x_user ALTER COLUMN id SET DEFAULT nextval('exploitation_x_user_id_seq'::regclass);
ALTER TABLE ONLY inp_controls_x_arc ALTER COLUMN id SET DEFAULT nextval('inp_controls_x_arc_id_seq'::regclass);
ALTER TABLE ONLY inp_controls_x_node ALTER COLUMN id SET DEFAULT nextval('inp_controls_x_node_id_seq'::regclass);
ALTER TABLE ONLY inp_flwreg_orifice ALTER COLUMN id SET DEFAULT nextval('inp_flwreg_orifice_id_seq'::regclass);
ALTER TABLE ONLY inp_flwreg_outlet ALTER COLUMN id SET DEFAULT nextval('inp_flwreg_outlet_id_seq'::regclass);
ALTER TABLE ONLY inp_flwreg_pump ALTER COLUMN id SET DEFAULT nextval('inp_flwreg_pump_id_seq'::regclass);
ALTER TABLE ONLY inp_flwreg_weir ALTER COLUMN id SET DEFAULT nextval('inp_flwreg_weir_id_seq'::regclass);
ALTER TABLE ONLY inp_selector_hydrology ALTER COLUMN id SET DEFAULT nextval('inp_selector_hydrology_id_seq'::regclass);
ALTER TABLE ONLY inp_selector_result ALTER COLUMN id SET DEFAULT nextval('inp_selector_result_id_seq'::regclass);
ALTER TABLE ONLY inp_selector_sector ALTER COLUMN id SET DEFAULT nextval('inp_selector_sector_id_seq'::regclass);
ALTER TABLE ONLY link ALTER COLUMN link_id SET DEFAULT nextval('link_link_id_seq'::regclass);
ALTER TABLE ONLY macrodma ALTER COLUMN macrodma_id SET DEFAULT nextval('macrodma_macrodma_id_seq'::regclass);
ALTER TABLE ONLY macrosector ALTER COLUMN macrosector_id SET DEFAULT nextval('macrosector_macrosector_id_seq'::regclass);
ALTER TABLE ONLY man_addfields_parameter ALTER COLUMN id SET DEFAULT nextval('man_addfields_parameter_id_seq'::regclass);
ALTER TABLE ONLY man_addfields_value ALTER COLUMN id SET DEFAULT nextval('man_addfields_value_id_seq'::regclass);
ALTER TABLE ONLY man_type_category ALTER COLUMN id SET DEFAULT nextval('man_type_category_id_seq'::regclass);
ALTER TABLE ONLY man_type_fluid ALTER COLUMN id SET DEFAULT nextval('man_type_fluid_id_seq'::regclass);
ALTER TABLE ONLY man_type_function ALTER COLUMN id SET DEFAULT nextval('man_type_function_id_seq'::regclass);
ALTER TABLE ONLY man_type_location ALTER COLUMN id SET DEFAULT nextval('man_type_location_id_seq'::regclass);
ALTER TABLE ONLY om_psector ALTER COLUMN psector_id SET DEFAULT nextval('om_psector_id_seq'::regclass);
ALTER TABLE ONLY om_psector_selector ALTER COLUMN id SET DEFAULT nextval('om_psector_selector_id_seq'::regclass);
ALTER TABLE ONLY om_psector_x_arc ALTER COLUMN id SET DEFAULT nextval('om_psector_x_arc_id_seq'::regclass);
ALTER TABLE ONLY om_psector_x_node ALTER COLUMN id SET DEFAULT nextval('om_psector_x_node_id_seq'::regclass);
ALTER TABLE ONLY om_psector_x_other ALTER COLUMN id SET DEFAULT nextval('om_psector_x_other_id_seq'::regclass);
ALTER TABLE ONLY om_rec_result_arc ALTER COLUMN id SET DEFAULT nextval('om_rec_result_arc_id_seq'::regclass);
ALTER TABLE ONLY om_rec_result_node ALTER COLUMN id SET DEFAULT nextval('om_rec_result_node_id_seq'::regclass);
ALTER TABLE ONLY om_reh_parameter_x_works ALTER COLUMN id SET DEFAULT nextval('om_reh_parameter_x_works_id_seq'::regclass);
ALTER TABLE ONLY om_reh_result_arc ALTER COLUMN id SET DEFAULT nextval('om_reh_result_arc_id_seq'::regclass);
ALTER TABLE ONLY om_reh_result_node ALTER COLUMN id SET DEFAULT nextval('om_reh_result_node_id_seq'::regclass);
ALTER TABLE ONLY om_reh_works_x_pcompost ALTER COLUMN id SET DEFAULT nextval('om_reh_works_x_pcompost_id_seq'::regclass);
ALTER TABLE ONLY om_result_cat ALTER COLUMN result_id SET DEFAULT nextval('om_result_cat_result_id_seq'::regclass);
ALTER TABLE ONLY om_visit ALTER COLUMN id SET DEFAULT nextval('om_visit_id_seq'::regclass);
ALTER TABLE ONLY om_visit_cat ALTER COLUMN id SET DEFAULT nextval('om_visit_cat_id_seq'::regclass);
ALTER TABLE ONLY om_visit_event ALTER COLUMN id SET DEFAULT nextval('om_visit_event_id_seq'::regclass);
ALTER TABLE ONLY om_visit_event_photo ALTER COLUMN id SET DEFAULT nextval('om_visit_event_photo_id_seq'::regclass);
ALTER TABLE ONLY om_visit_parameter_index ALTER COLUMN id SET DEFAULT nextval('om_visit_parameter_index_id_seq'::regclass);
ALTER TABLE ONLY om_visit_parameter_x_reverse ALTER COLUMN id SET DEFAULT nextval('om_visit_parameter_x_reverse_id_seq'::regclass);
ALTER TABLE ONLY om_visit_x_arc ALTER COLUMN id SET DEFAULT nextval('om_visit_x_arc_id_seq'::regclass);
ALTER TABLE ONLY om_visit_x_connec ALTER COLUMN id SET DEFAULT nextval('om_visit_x_connec_id_seq'::regclass);
ALTER TABLE ONLY om_visit_x_gully ALTER COLUMN id SET DEFAULT nextval('om_visit_x_gully_id_seq'::regclass);
ALTER TABLE ONLY om_visit_x_node ALTER COLUMN id SET DEFAULT nextval('om_visit_x_node_id_seq'::regclass);
ALTER TABLE ONLY plan_arc_x_pavement ALTER COLUMN id SET DEFAULT nextval('plan_arc_x_pavement_id_seq'::regclass);
ALTER TABLE ONLY plan_psector ALTER COLUMN psector_id SET DEFAULT nextval('plan_psector_id_seq'::regclass);
ALTER TABLE ONLY plan_psector_x_arc ALTER COLUMN id SET DEFAULT nextval('plan_psector_x_arc_id_seq'::regclass);
ALTER TABLE ONLY plan_psector_x_node ALTER COLUMN id SET DEFAULT nextval('plan_psector_x_node_id_seq'::regclass);
ALTER TABLE ONLY plan_psector_x_other ALTER COLUMN id SET DEFAULT nextval('plan_psector_x_other_id_seq'::regclass);
ALTER TABLE ONLY plan_result_selector ALTER COLUMN id SET DEFAULT nextval('plan_result_selector_id_seq'::regclass);
ALTER TABLE ONLY price_compost_value ALTER COLUMN id SET DEFAULT nextval('price_compost_value_id_seq'::regclass);
ALTER TABLE ONLY rpt_inp_arc ALTER COLUMN id SET DEFAULT nextval('rpt_inp_arc_id_seq'::regclass);
ALTER TABLE ONLY rpt_inp_node ALTER COLUMN id SET DEFAULT nextval('rpt_inp_node_id_seq'::regclass);
ALTER TABLE ONLY rpt_selector_compare ALTER COLUMN id SET DEFAULT nextval('rpt_selector_compare_id_seq'::regclass);
ALTER TABLE ONLY rpt_selector_result ALTER COLUMN id SET DEFAULT nextval('rpt_selector_result_id_seq'::regclass);
ALTER TABLE ONLY rtc_scada_x_dma ALTER COLUMN id SET DEFAULT nextval('rtc_scada_x_dma_id_seq'::regclass);
ALTER TABLE ONLY rtc_scada_x_sector ALTER COLUMN id SET DEFAULT nextval('rtc_scada_x_sector_id_seq'::regclass);
ALTER TABLE ONLY sector ALTER COLUMN sector_id SET DEFAULT nextval('sector_sector_id_seq'::regclass);
ALTER TABLE ONLY selector_date ALTER COLUMN id SET DEFAULT nextval('selector_date_id_seq'::regclass);
ALTER TABLE ONLY selector_expl ALTER COLUMN id SET DEFAULT nextval('selector_expl_id_seq'::regclass);
ALTER TABLE ONLY selector_psector ALTER COLUMN id SET DEFAULT nextval('selector_psector_id_seq'::regclass);
ALTER TABLE ONLY selector_state ALTER COLUMN id SET DEFAULT nextval('selector_state_id_seq'::regclass);
ALTER TABLE ONLY sys_csv2pg_cat ALTER COLUMN id SET DEFAULT nextval('sys_csv2pg_cat_id_seq'::regclass);
ALTER TABLE ONLY temp_csv2pg ALTER COLUMN id SET DEFAULT nextval('temp_csv2pg_id_seq'::regclass);
ALTER TABLE ONLY temp_table ALTER COLUMN id SET DEFAULT nextval('temp_table_id_seq'::regclass);
ALTER TABLE ONLY version ALTER COLUMN id SET DEFAULT nextval('version_id_seq'::regclass);
ALTER TABLE ONLY vnode ALTER COLUMN vnode_id SET DEFAULT nextval('vnode_vnode_id_seq'::regclass);