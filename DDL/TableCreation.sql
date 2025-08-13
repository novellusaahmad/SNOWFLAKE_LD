CREATE OR REPLACE TABLE activity_log (
  id BIGINT,
  log_name VARCHAR,
  description VARCHAR,
  subject_type VARCHAR,
  event VARCHAR,
  subject_id BIGINT,
  causer_type VARCHAR,
  causer_id BIGINT,
  properties VARCHAR,
  batch_uuid VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE admins (
  id BIGINT,
  title VARCHAR,
  first_name VARCHAR,
  middle_name VARCHAR,
  last_name VARCHAR,
  email VARCHAR,
  phone VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE asset_addresses (
  id BIGINT,
  postcode VARCHAR,
  country VARCHAR,
  county VARCHAR,
  city VARCHAR,
  district VARCHAR,
  street VARCHAR,
  house_number VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE asset_insurance_type (
  id BIGINT,
  name VARCHAR,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE asset_types (
  id BIGINT,
  name VARCHAR,
  max_ltv NUMBER(22,4),
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE attribute_entities (
  id BIGINT,
  name VARCHAR,
  class VARCHAR(64),
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE attribute_types (
  id BIGINT,
  name VARCHAR,
  created_at date,
  updated_at date,
  is_system_type INTEGER,
  deleted_at date
);

CREATE OR REPLACE TABLE bank_details (
  id BIGINT,
  sort_code VARCHAR,
  account_number VARCHAR,
  bic VARCHAR,
  iban VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE bridge_drawdown_types (
  id BIGINT,
  name VARCHAR,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE charge_types (
  id BIGINT,
  name VARCHAR,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE client_form_status (
  id BIGINT,
  name VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE companies (
  id BIGINT,
  name VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE currencies (
  id BIGINT,
  label VARCHAR,
  currency_code VARCHAR,
  prefix VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE deal_aborted_reasons (
  id BIGINT,
  title VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE deal_document_risk (
  id BIGINT,
  name VARCHAR,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE deal_statuses (
  id BIGINT,
  name VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE deal_types (
  id BIGINT,
  name VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE document_types (
  id BIGINT,
  name VARCHAR,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE drawdown_event_amount_type (
  id BIGINT,
  name VARCHAR,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE drawdown_event_status (
  id BIGINT,
  name VARCHAR,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE drawdown_status (
  id BIGINT,
  name VARCHAR,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE failed_jobs (
  id BIGINT,
  uuid VARCHAR,
  connection VARCHAR,
  queue VARCHAR,
  payload VARCHAR,
  exception VARCHAR,
  failed_at date
);

CREATE OR REPLACE TABLE fee_options (
  id BIGINT,
  name VARCHAR,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE fee_status (
  id BIGINT,
  name VARCHAR,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE fee_type (
  id BIGINT,
  name VARCHAR,
  deleted_at date,
  created_at date,
  updated_at date,
  default_value_flat NUMBER(22,4),
  default_value_perc NUMBER(8,2),
  not_deletable INTEGER,
  active INTEGER
);

CREATE OR REPLACE TABLE form_types (
  id BIGINT,
  name VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE guarantor_corporates (
  id BIGINT,
  company_name VARCHAR,
  company_number VARCHAR,
  email VARCHAR,
  phone VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE guarantor_individuals (
  id BIGINT,
  title VARCHAR,
  first_name VARCHAR,
  middle_name VARCHAR,
  last_name VARCHAR,
  email VARCHAR,
  phone VARCHAR,
  previous_name VARCHAR,
  marital_status VARCHAR,
  date_of_birth DATE,
  nationality VARCHAR,
  passport_number VARCHAR,
  permanent_right_to_reside VARCHAR,
  address_history VARIANT,
  ppsn VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE guarantor_type (
  id BIGINT,
  name VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE interest_calculation_types (
  id BIGINT,
  name VARCHAR,
  formula VARCHAR,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE interest_subtypes (
  id BIGINT,
  name VARCHAR,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE interest_types (
  id BIGINT,
  name VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE introducer_type (
  id BIGINT,
  name VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE jobs (
  id BIGINT,
  queue VARCHAR,
  payload VARCHAR,
  attempts INTEGER,
  reserved_at INTEGER,
  available_at INTEGER,
  created_at INTEGER
);

CREATE OR REPLACE TABLE lending_types (
  id BIGINT,
  name VARCHAR,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE loan_calculation_method (
  id BIGINT,
  name VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE marital_statuses (
  id BIGINT,
  name VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE marketing_sources (
  id BIGINT,
  name VARCHAR,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE migrations (
  id INTEGER,
  migration VARCHAR,
  batch INTEGER
);

CREATE OR REPLACE TABLE name_titles (
  id BIGINT,
  name VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE order_statuses (
  id BIGINT,
  name VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE ownership_types (
  id BIGINT,
  name VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE password_resets (
  my_row_id BIGINT,
  email VARCHAR,
  token VARCHAR,
  created_at date
);

CREATE OR REPLACE TABLE payment_providers (
  id BIGINT,
  name VARCHAR,
  is_default INTEGER,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE payments (
  id BIGINT,
  base_cost NUMBER(20,0),
  vat_rate NUMBER(22,4),
  gross_total NUMBER(22,4),
  charge_outcome VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE permission_category (
  id BIGINT,
  name VARCHAR,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE permission_groups (
  id BIGINT,
  name VARCHAR,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE personal_access_tokens (
  id BIGINT,
  tokenable_type VARCHAR,
  tokenable_id BIGINT,
  name VARCHAR,
  token VARCHAR(64),
  abilities VARCHAR,
  last_used_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE profile_approval_status (
  id BIGINT,
  name VARCHAR,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE provider_types (
  id BIGINT,
  name VARCHAR,
  details VARCHAR,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE purpose_credit_types (
  id BIGINT,
  name VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE quotes_status (
  id BIGINT,
  name VARCHAR,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE roles (
  id BIGINT,
  name VARCHAR,
  guard_name VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE sharepoint_updates_timestamps (
  id BIGINT,
  last_update date,
  change_token VARCHAR
);

CREATE OR REPLACE TABLE stripe_settings (
  id BIGINT,
  name VARCHAR,
  stripe_key VARCHAR,
  stripe_secret VARCHAR,
  stripe_webhook_secret VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE systems_deal_setting_groups (
  id BIGINT,
  name VARCHAR,
  order_id BIGINT,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE use_type (
  id BIGINT,
  name VARCHAR,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE user_types (
  id BIGINT,
  role_id BIGINT,
  name VARCHAR,
  created_at date,
  updated_at date,
  is_admin INTEGER,
  deleted_at date
);

CREATE OR REPLACE TABLE valuation_statuses (
  id BIGINT,
  name VARCHAR,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE variable_rate_settings (
  id BIGINT,
  name VARCHAR,
  value NUMBER(22,4),
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE variable_rate_sources (
  id BIGINT,
  name VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE addresses (
  id BIGINT,
  ownership_type_id BIGINT,
  postcode VARCHAR,
  country VARCHAR,
  county VARCHAR,
  city VARCHAR,
  district VARCHAR,
  street VARCHAR,
  house_number VARCHAR,
  lived_for_months INTEGER,
  lived_for_years INTEGER,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE attribute_groups (
  id BIGINT,
  attribute_entity_id BIGINT,
  name VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE attributes (
  id BIGINT,
  parent_id VARCHAR,
  attribute_batch VARCHAR,
  attribute_group_id BIGINT,
  attribute_type_id BIGINT,
  reference VARCHAR,
  is_system_attribute INTEGER,
  created_at date,
  updated_at date,
  field_name VARCHAR,
  deleted_at date
);

CREATE OR REPLACE TABLE brokers (
  id BIGINT,
  name VARCHAR,
  email VARCHAR,
  phone VARCHAR,
  commission_rate NUMBER(22,4),
  created_at date,
  updated_at date,
  deleted_at date,
  engagement_letter DATE,
  address_id BIGINT,
  landline VARCHAR,
  mobile VARCHAR,
  location VARCHAR,
  secondary_phone VARCHAR,
  bank_details_id BIGINT,
  point_of_contact_name VARCHAR
);

CREATE OR REPLACE TABLE client_companies (
  id BIGINT,
  company_id BIGINT,
  name VARCHAR,
  email VARCHAR,
  phone VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date,
  address_id BIGINT,
  landline VARCHAR,
  mobile VARCHAR,
  bank_details VARCHAR,
  bank_details_id BIGINT
);

CREATE OR REPLACE TABLE client_groups (
  id BIGINT,
  company_id BIGINT,
  name VARCHAR,
  email VARCHAR,
  phone VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date,
  landline VARCHAR,
  mobile VARCHAR,
  bank_details VARCHAR,
  address_id BIGINT,
  bank_details_id BIGINT
);

CREATE OR REPLACE TABLE documents (
  id BIGINT,
  filename VARCHAR,
  document_type_id BIGINT,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE drawdown_event_type (
  id BIGINT,
  drawdown_event_amount_type_id BIGINT,
  name VARCHAR,
  deleted_at date,
  created_at date,
  updated_at date,
  enabled_to_schedule_before INTEGER
);

CREATE OR REPLACE TABLE fee_type_lending_type (
  id BIGINT,
  fee_type_id BIGINT,
  lending_type_id BIGINT,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE introducers (
  id BIGINT,
  company VARCHAR,
  contact VARCHAR,
  email VARCHAR,
  phone VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date,
  introducer_type_id BIGINT
);

CREATE OR REPLACE TABLE lenders (
  id BIGINT,
  name VARCHAR,
  deleted_at date,
  created_at date,
  updated_at date,
  historical INTEGER,
  stripe_settings_id BIGINT
);

CREATE OR REPLACE TABLE model_has_roles (
  role_id BIGINT,
  model_type VARCHAR,
  model_id BIGINT
);

CREATE OR REPLACE TABLE payment_attempts (
  id BIGINT,
  payment_id BIGINT,
  amount NUMBER(22,4),
  status INTEGER,
  error_message VARCHAR,
  payment_method_id BIGINT,
  payment_intent_id VARCHAR,
  payment_reference VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE permissions (
  id BIGINT,
  name VARCHAR,
  guard_name VARCHAR,
  created_at date,
  updated_at date,
  permission_category_id BIGINT,
  parent_id BIGINT
);

CREATE OR REPLACE TABLE role_has_permissions (
  permission_id BIGINT,
  role_id BIGINT
);

CREATE OR REPLACE TABLE service_providers (
  id BIGINT,
  provider_type_id BIGINT,
  deleted_at date,
  created_at date,
  updated_at date,
  forename VARCHAR,
  surname VARCHAR,
  company VARCHAR,
  email VARCHAR,
  phone VARCHAR,
  engagement_letter DATE
);

CREATE OR REPLACE TABLE systems_deal_setting (
  id BIGINT,
  name VARCHAR,
  order_id BIGINT,
  systems_deal_setting_group_id BIGINT,
  status INTEGER,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE task_group (
  id BIGINT,
  lending_type_id BIGINT,
  name VARCHAR,
  order_id BIGINT,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE variable_rates (
  id BIGINT,
  variable_rate_source_id BIGINT,
  parent_id BIGINT,
  rate NUMBER(22,4),
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE variable_rates_history (
  id BIGINT,
  date DATE,
  variable_rate_source_id BIGINT,
  rate NUMBER(22,4),
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE variable_rates_history_copy1 (
  id BIGINT,
  date DATE,
  variable_rate_source_id BIGINT,
  rate NUMBER(12,2),
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE lender_funder_interest_rate (
  id BIGINT,
  lender_id BIGINT,
  interest_rate NUMBER(8,2),
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE model_has_permissions (
  permission_id BIGINT,
  model_type VARCHAR,
  model_id BIGINT
);

CREATE OR REPLACE TABLE permission_group_permission (
  id BIGINT,
  permission_group_id BIGINT,
  permission_id BIGINT,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE task (
  id BIGINT,
  name VARCHAR,
  order_id BIGINT,
  task_group_id BIGINT,
  auto_assign_to_case_owner INTEGER,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE asset_client_companies (
  id BIGINT,
  asset_id BIGINT,
  client_company_id BIGINT,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE asset_client_individuals (
  id BIGINT,
  asset_id BIGINT,
  client_individual_id BIGINT,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE asset_insurance_notes (
  id BIGINT,
  asset_insurance_id BIGINT,
  note_id BIGINT,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE asset_insurances (
  id BIGINT,
  asset_id BIGINT,
  policy_number VARCHAR,
  is_novellus_nominated_payee INTEGER,
  type_loss_payee VARCHAR,
  expiry_date DATE,
  sum_insured NUMBER(22,4),
  created_at date,
  updated_at date,
  deleted_at date,
  asset_insurance_type_id BIGINT
);

CREATE OR REPLACE TABLE assets (
  id BIGINT,
  asset_type_id BIGINT,
  client_group_id BIGINT,
  name VARCHAR,
  security INTEGER,
  jointly_owned INTEGER,
  independent_valuation NUMBER(22,4),
  internal_valuation NUMBER(22,4),
  asset_description VARCHAR,
  deleted_at date,
  created_at date,
  updated_at date,
  asset_address_id BIGINT,
  deal_id BIGINT,
  use_type_id BIGINT,
  insurance_expiry_date date
);

CREATE OR REPLACE TABLE attribute_values (
  id BIGINT,
  client_form_id BIGINT,
  attribute_id BIGINT,
  value VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE audit (
  id BIGINT,
  user_id BIGINT,
  model VARCHAR,
  model_id BIGINT,
  deal_id BIGINT,
  event_group_id VARCHAR,
  event_type VARCHAR,
  record_created INTEGER,
  field VARCHAR,
  field_name VARCHAR,
  from_data VARCHAR,
  from_data_text VARCHAR,
  to_data VARCHAR,
  to_data_text VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE borrowers (
  id BIGINT,
  deal_id BIGINT,
  client_individual_id BIGINT,
  client_company_id BIGINT,
  client_group_id BIGINT,
  admin_id BIGINT,
  guarantor_individual_id BIGINT,
  guarantor_corporate_id BIGINT,
  main_contact INTEGER,
  administrator INTEGER,
  guarantor INTEGER,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE broker_agent_deals (
  id BIGINT,
  broker_agent_id BIGINT,
  broker_agent_main_contact INTEGER,
  deal_id BIGINT,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE broker_agent_notes (
  id BIGINT,
  broker_agent_id BIGINT,
  note_id BIGINT,
  created_at date,
  updated_at date,
  deleted_at date,
  negative_relationship INTEGER
);

CREATE OR REPLACE TABLE broker_agents (
  id BIGINT,
  broker_id BIGINT,
  user_id BIGINT,
  name VARCHAR,
  email VARCHAR,
  phone VARCHAR,
  bank_details_id BIGINT,
  questionable INTEGER,
  created_at date,
  updated_at date,
  deleted_at date,
  address_id BIGINT,
  landline VARCHAR,
  mobile VARCHAR
);

CREATE OR REPLACE TABLE broker_notes (
  id BIGINT,
  broker_id BIGINT,
  note_id BIGINT,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE ccr_reports (
  id BIGINT,
  title VARCHAR,
  created_at date,
  updated_at date,
  file_id BIGINT,
  deleted_at date
);

CREATE OR REPLACE TABLE charges (
  id BIGINT,
  parent_id BIGINT,
  charge NUMBER(22,4),
  date DATE,
  note VARCHAR,
  removed INTEGER,
  asset_id BIGINT,
  lender_id BIGINT,
  charge_type_id BIGINT,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE client_company_clients (
  id BIGINT,
  client_company_id BIGINT,
  client_individual_id BIGINT,
  shareholding_percentage NUMBER(22,4),
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE client_company_notes (
  id BIGINT,
  client_company_id BIGINT,
  note_id BIGINT,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE client_form_attachments (
  id BIGINT,
  client_form_id BIGINT,
  file_id BIGINT,
  form_attribute_reference VARCHAR,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE client_forms (
  id BIGINT,
  client_form_hash VARCHAR,
  form_id BIGINT,
  client_form_batch_id VARCHAR,
  paid INTEGER,
  deal_id BIGINT,
  broker_agent_id BIGINT,
  main_recipient INTEGER,
  client_id BIGINT,
  client_company_id BIGINT,
  client_group_id BIGINT,
  form_data_json VARCHAR,
  sent_by_user_id BIGINT,
  form_sent_at date,
  form_populated_at date,
  form_completed_at date,
  docusign_document_sent NUMBER(20,0),
  created_at date,
  updated_at date,
  client_form_status_id BIGINT,
  docusign_envelope_id VARCHAR,
  docusign_completed_datetime DATE,
  deleted_at date
);

CREATE OR REPLACE TABLE client_group_clients (
  id BIGINT,
  client_group_id BIGINT,
  client_company_id BIGINT,
  client_individual_id BIGINT,
  group_leader INTEGER,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE client_individual_credit_data (
  id BIGINT,
  client_individual_id BIGINT,
  input_dob DATE,
  input_name VARCHAR,
  input_surname VARCHAR,
  input_county VARCHAR,
  risk_factor VARCHAR,
  num_defaulter INTEGER,
  num_drn INTEGER,
  num_shareholding INTEGER,
  num_pia INTEGER,
  num_directorship_prev INTEGER,
  num_disqualification INTEGER,
  num_pc INTEGER,
  num_directorship INTEGER,
  num_bankruptcy INTEGER,
  num_dsa INTEGER,
  num_judgment INTEGER,
  num_business_name INTEGER,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE client_individual_notes (
  id BIGINT,
  client_individual_id BIGINT,
  note_id BIGINT,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE client_individuals (
  id BIGINT,
  address_id BIGINT,
  previous_address_id BIGINT,
  user_id BIGINT,
  permanent_uk_resident INTEGER,
  name_title_id BIGINT,
  marital_status_id BIGINT,
  total_gross_income NUMBER(22,4),
  employment_status VARCHAR,
  residency_status VARCHAR,
  job_title VARCHAR,
  nature_of_business VARCHAR,
  employer_name VARCHAR,
  passport_number VARCHAR,
  is_administrator_only INTEGER,
  dob_day VARCHAR,
  dob_month VARCHAR,
  dob_year VARCHAR,
  previous_names VARCHAR,
  nationality VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE deal_activities (
  id BIGINT,
  deal_id BIGINT,
  note VARCHAR,
  user_id BIGINT,
  audit_id BIGINT,
  file_id BIGINT,
  deleted_at date,
  created_at date,
  updated_at date,
  date DATE,
  time_taken TIME
);

CREATE OR REPLACE TABLE deal_document_categories (
  id BIGINT,
  sharepoint_unique_id VARCHAR(1024),
  folder_path VARCHAR(1024),
  parent_id BIGINT,
  name VARCHAR,
  file_count INTEGER,
  deal_id BIGINT,
  size INTEGER,
  last_updated date,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE deal_document_categories_data (
  id BIGINT,
  deal_id BIGINT,
  deal_document_category_id BIGINT,
  file_count INTEGER,
  size INTEGER,
  last_updated date,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE deal_documents (
  id BIGINT,
  deal_id BIGINT,
  file_id BIGINT,
  deal_document_category_id BIGINT,
  borrower_id BIGINT,
  client_company_id BIGINT,
  deal_document_risk_id BIGINT,
  client_individual_id BIGINT,
  asset_id BIGINT,
  description VARCHAR,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE deal_introducers (
  id BIGINT,
  introducer_id BIGINT,
  deal_id BIGINT,
  created_at date,
  updated_at date,
  deleted_at date,
  broker_id BIGINT,
  introducer_type_id BIGINT
);

CREATE OR REPLACE TABLE deal_notes (
  id BIGINT,
  deal_id BIGINT,
  created_at date,
  updated_at date,
  deleted_at date,
  replied_to_id BIGINT,
  created_by_user_id BIGINT,
  important INTEGER,
  note VARCHAR
);

CREATE OR REPLACE TABLE deal_notification_rules (
  id BIGINT,
  deal_id BIGINT,
  drawdown_event_type_id BIGINT,
  file_id BIGINT,
  notification_rule_id BIGINT,
  scheduled_for INTEGER,
  interval_type VARCHAR,
  subject VARCHAR,
  body VARCHAR,
  deleted_at date,
  created_at date,
  updated_at date,
  scheduled_date DATE,
  notification_template_id BIGINT
);

CREATE OR REPLACE TABLE deal_notification_rules_recipients (
  id BIGINT,
  deal_notification_rule_id BIGINT,
  client_individual_id BIGINT,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE deal_rate_floors (
  id BIGINT,
  variable_source_id BIGINT,
  deal_id BIGINT,
  floor_rate NUMBER(22,4),
  deleted_at date
);

CREATE OR REPLACE TABLE deal_setting_groups (
  id BIGINT,
  name VARCHAR,
  order_id BIGINT,
  deal_id BIGINT,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE deal_settings (
  id BIGINT,
  name VARCHAR,
  status INTEGER,
  order_id BIGINT,
  deal_setting_group_id BIGINT,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE deal_task (
  id BIGINT,
  name VARCHAR,
  complete INTEGER,
  order_id BIGINT,
  deal_task_group_id BIGINT,
  actioned_by_user_id BIGINT,
  assigned_to_user_id BIGINT,
  date_due DATE,
  date date,
  auto_assign_to_case_owner INTEGER,
  deleted_at date,
  created_at date,
  updated_at date,
  na INTEGER
);

CREATE OR REPLACE TABLE deal_task_group (
  id BIGINT,
  name VARCHAR,
  order_id BIGINT,
  deal_id BIGINT,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE deals (
  id BIGINT,
  name VARCHAR,
  parent_id BIGINT,
  case_owner_id BIGINT,
  reference VARCHAR,
  type_id BIGINT,
  guarantor_id BIGINT,
  client_group_id BIGINT,
  currency_id BIGINT,
  status_id BIGINT,
  approval_requested_by BIGINT,
  approved_by BIGINT,
  date_of_approval_required DATE,
  date_of_approval DATE,
  purpose_credit_type_id BIGINT,
  base_rate_floor NUMBER(22,4),
  loan_term VARCHAR,
  purchase_price NUMBER(22,4),
  amount_required VARCHAR,
  max_ltv INTEGER,
  marketing_source_id BIGINT,
  usage_details VARCHAR,
  undervalue_details VARCHAR,
  funds_going_to_be_used_for VARCHAR,
  shortfall_balance_details VARCHAR,
  exit_strategy VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date,
  marketing_source_utm VARCHAR,
  marketing_campaign_utm VARCHAR,
  aborted_reason_id BIGINT,
  previous_status_id BIGINT,
  estimated_sale_time DATE,
  estimated_construction_time DATE,
  square_footage INTEGER,
  price_per_square_foot NUMBER(22,4),
  private_investor INTEGER,
  novellus_reference VARCHAR,
  novellus_name VARCHAR,
  lending_type_id BIGINT,
  interest_calculation_type_id BIGINT,
  interest_type_id BIGINT,
  purpose_of_loan VARCHAR
);

CREATE OR REPLACE TABLE delegated_owners (
  id BIGINT,
  deal_id BIGINT,
  user_id BIGINT,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE drawdown_events (
  id BIGINT,
  event_date DATE,
  financial_date DATE,
  drawdown_id BIGINT,
  event_type_id BIGINT,
  event_status_id BIGINT,
  amount NUMBER(22,4),
  variable_rate_source_id BIGINT,
  accrued_amount NUMBER(22,4),
  note VARCHAR,
  deleted_at date,
  created_at date,
  updated_at date,
  end_date DATE,
  amount_of_loan_in_default NUMBER(22,4),
  default_interest_rate NUMBER(22,4),
  rate_override NUMBER(12,4)
);

CREATE OR REPLACE TABLE drawdown_fees (
  id BIGINT,
  drawdown_id BIGINT,
  fee_status_id BIGINT,
  fee_type_id BIGINT,
  service_provider_id BIGINT,
  currency_id BIGINT,
  broker_agent_id BIGINT,
  invoice_paid_date DATE,
  date DATE,
  fee_amount FLOAT,
  fee_amount_perc NUMBER(8,2),
  added_to_loan INTEGER,
  generate_invoice INTEGER,
  invoice_due_date DATE,
  notes VARCHAR,
  fee_interest INTEGER,
  start_date DATE,
  end_date DATE,
  retained_from_net_advance INTEGER,
  commitment_fee_refund_amount NUMBER(10,2),
  commitment_fee_refund_date DATE,
  commitment_fee_refund_period INTEGER,
  active INTEGER,
  quoted_date DATE,
  quote_confirmed_date DATE,
  undertaking_confirmed_date DATE,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE drawdown_fields_approval (
  id BIGINT,
  field_name VARCHAR,
  is_approved INTEGER,
  approved_by BIGINT,
  drawdown_id BIGINT,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE drawdowns (
  id BIGINT,
  name VARCHAR,
  deal_id BIGINT,
  drawdown_status_id BIGINT,
  lender_id BIGINT,
  interest_rate NUMBER(22,4),
  redemption_date DATE,
  deleted_at date,
  created_at date,
  updated_at date,
  interest_calculation_type_id BIGINT,
  total_net_loan NUMBER(22,4),
  gross_loan NUMBER(22,4),
  term_months INTEGER,
  term_days INTEGER,
  monthly_rate NUMBER(22,4),
  daily_rate NUMBER(22,4),
  loan_start_date DATE,
  refinanced_date DATE,
  refinance_gross_amount NUMBER(22,4),
  refinanced_from_id BIGINT,
  refinanced_to_id BIGINT,
  loan_administration_start_date DATE,
  loan_end_date DATE,
  deal_type_id BIGINT,
  interest_type_id BIGINT,
  bridging_drawdown_type_id BIGINT,
  interest_subtype_id BIGINT,
  max_loan_amount NUMBER(22,4),
  ltv NUMBER(22,4),
  interest_payment NUMBER(22,4),
  actual_accrued_interest_payment NUMBER(22,4),
  monthly_interest NUMBER(22,4),
  daily_interest NUMBER(22,4),
  total_net_advance NUMBER(22,4),
  total_investment NUMBER(22,4),
  estimated_return NUMBER(22,4),
  estimated_margin NUMBER(22,4),
  redemption_value NUMBER(22,4),
  loan_calculation_method_id BIGINT,
  asset_value NUMBER(22,4),
  asset_type_id BIGINT,
  max_ltv NUMBER(22,4),
  ltv_override_reason VARCHAR,
  variable_rate_source_id BIGINT,
  source_rate NUMBER(22,4),
  margin NUMBER(22,4),
  variable_rate_id BIGINT,
  total_fees NUMBER(22,4),
  total_interest_on_fees NUMBER(22,4),
  redeem_date DATE,
  exit_fee_calculated NUMBER(22,4),
  funder_interest_rate NUMBER(22,4),
  hybrid_parent_id BIGINT,
  is_hybrid_parent INTEGER,
  exit_strategies VARCHAR,
  marketing_channel_id BIGINT,
  default_rate NUMBER(22,4),
  year_type INTEGER,
  compound_day INTEGER,
  funder_arrangement_fee NUMBER(22,4),
  funder_arrangement_fee_is_percent INTEGER,
  notice_period_days INTEGER,
  additional_interest_rate NUMBER(22,5),
  extended_from BIGINT,
  extension_date DATE,
  extended_gross_amount NUMBER(22,4),
  gross_development_value NUMBER(22,4),
  gross_development_value_gross_loan_greater_note VARCHAR,
  asset_value_day_net_advance_greater_note VARCHAR,
  total_drawn_amount NUMBER(15,2),
  drawdowns_start_date DATE,
  drawdowns_end_date DATE,
  number_of_drawdowns INTEGER,
  tranch_strategy INTEGER,
  used_floor_rate INTEGER,
  used_floor_rate_note VARCHAR,
  profile_approval_status_id BIGINT,
  first_approval_user_id BIGINT,
  first_approval_datetime date,
  second_approval_user_id BIGINT,
  submitted_by_user_id BIGINT,
  approval_datetime date,
  rejected_note VARCHAR
);

CREATE OR REPLACE TABLE email_code_authentication (
  id BIGINT,
  user_id BIGINT,
  code VARCHAR,
  created_at date,
  expires_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE exit_fee_tiers (
  id BIGINT,
  deal_id BIGINT,
  term_month NUMBER(20,0),
  fee_percent NUMBER(20,0),
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE fees (
  id BIGINT,
  fee_status_id BIGINT,
  invoice_paid_date DATE,
  date DATE,
  fee_type_id BIGINT,
  service_provider_id BIGINT,
  fee_amount NUMBER(22,4),
  fee_amount_perc NUMBER(8,2),
  currency_id BIGINT,
  deal_id BIGINT,
  fee_interest INTEGER,
  generate_invoice NUMBER(22,4),
  invoice_due_date DATE,
  notes VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date,
  added_to_loan INTEGER,
  start_date DATE,
  end_date DATE,
  broker_agent_id BIGINT,
  retained_from_net_advance INTEGER,
  commitment_fee_refund_amount NUMBER(22,4),
  commitment_fee_refund_date DATE,
  commitment_fee_refund_period INTEGER,
  quoted_date DATE,
  quote_confirmed_date DATE,
  undertaking_confirmed_date DATE,
  active INTEGER
);

CREATE OR REPLACE TABLE files (
  id BIGINT,
  deal_document_category_id BIGINT,
  directory VARCHAR,
  filename VARCHAR,
  original_filename VARCHAR,
  mime VARCHAR,
  size INTEGER,
  user_id BIGINT,
  document_folder VARCHAR(1000),
  sharepoint_path VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date,
  sharepoint_unique_id VARCHAR
);

CREATE OR REPLACE TABLE guarantors (
  id BIGINT,
  deal_id BIGINT,
  client_individual_id BIGINT,
  client_company_id BIGINT,
  client_group_id BIGINT,
  deleted_at date,
  created_at date,
  updated_at date,
  guarantor_type_id BIGINT
);

CREATE OR REPLACE TABLE lender_operational_team_admin (
  id BIGINT,
  user_id BIGINT,
  lender_id BIGINT,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE linked_deals (
  id BIGINT,
  deal_id BIGINT,
  linked_deal_id BIGINT,
  created_at date,
  updated_at date,
  cross_collateralized INTEGER,
  deleted_at date
);

CREATE OR REPLACE TABLE loan_administrators (
  id BIGINT,
  deal_id BIGINT,
  client_individual_id BIGINT,
  client_company_id BIGINT,
  client_group_id BIGINT,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE loan_custom_forms (
  id BIGINT,
  name VARCHAR,
  form_data VARCHAR,
  created_by BIGINT,
  created_at date,
  updated_at date,
  deleted_at date,
  reference VARCHAR,
  form_type_id BIGINT,
  payment_required INTEGER,
  application_form INTEGER,
  payment_fee NUMBER(22,4),
  e_sign_required NUMBER(22,4)
);

CREATE OR REPLACE TABLE margin_override (
  id BIGINT,
  drawdown_id BIGINT,
  from_DT date,
  to_dt date,
  rate NUMBER(22,4),
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE notes (
  id BIGINT,
  note VARCHAR,
  created_by BIGINT,
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE notification (
  id BIGINT,
  deal_notification_rule_id BIGINT,
  deal_id BIGINT,
  drawdown_id BIGINT,
  drawdown_event_type_id BIGINT,
  file_id BIGINT,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE notification_recipients (
  id BIGINT,
  notification_id BIGINT,
  client_individual_id BIGINT,
  used_email_address NUMBER(20,0),
  subject VARCHAR,
  body VARCHAR,
  sent INTEGER,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE notification_rules (
  id BIGINT,
  notification_template_id BIGINT,
  drawdown_event_type_id BIGINT,
  scheduled_for INTEGER,
  interval_type VARCHAR,
  subject_override VARCHAR,
  body_override VARCHAR,
  file_id BIGINT,
  deleted_at date,
  created_at date,
  updated_at date,
  recipient_setting INTEGER,
  lending_type_id BIGINT
);

CREATE OR REPLACE TABLE notification_templates (
  id BIGINT,
  doc_reference VARCHAR,
  subject VARCHAR,
  body VARCHAR,
  file_id BIGINT,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE orders (
  id BIGINT,
  reference VARCHAR,
  client_form_id BIGINT,
  user_id BIGINT,
  order_status_id BIGINT,
  payment_id BIGINT,
  net_total NUMBER(22,4),
  gross_total NUMBER(22,4),
  vat_rate NUMBER(22,4),
  created_at date,
  updated_at date,
  deleted_at date
);

CREATE OR REPLACE TABLE quote_note (
  id BIGINT,
  quote_id BIGINT,
  notes VARCHAR,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE quotes (
  id BIGINT,
  drawdown_profile_id BIGINT,
  quotes_status_id BIGINT,
  deal_id BIGINT,
  file_id BIGINT,
  notes VARCHAR,
  deleted_at date,
  created_at date,
  updated_at date
);

CREATE OR REPLACE TABLE quotes_recipients (
  id BIGINT,
  quote_id BIGINT,
  client_individual_id BIGINT,
  used_email_address VARCHAR,
  deleted_at date,
  created_at date,
  updated_at date,
  client_company_id BIGINT,
  client_group_id BIGINT,
  broker_agent_id BIGINT
);

CREATE OR REPLACE TABLE scheduled_notifications (
  id BIGINT,
  deal_notification_rule_id BIGINT,
  scheduled_date date,
  enabled INTEGER,
  enabled_by_user_id BIGINT,
  sent INTEGER,
  datetime_sent date,
  subject_sent VARCHAR,
  body_sent VARCHAR,
  created_at date,
  updated_at date,
  deleted_at date,
  drawdown_event_id BIGINT
);

CREATE OR REPLACE TABLE users (
  id BIGINT,
  type_id BIGINT,
  company_id BIGINT,
  avatar_id BIGINT,
  first_name VARCHAR,
  middle_name VARCHAR,
  last_name VARCHAR,
  email VARCHAR,
  phone VARCHAR,
  email_verified_at date,
  change_password_datetime date,
  remember_token VARCHAR(100),
  verification_token VARCHAR,
  created_at date,
  updated_at date,
  stripe_id VARCHAR,
  pm_type VARCHAR,
  pm_last_four VARCHAR(4),
  trial_ends_at date,
  is_active INTEGER,
  deleted_at date,
  payment_provider_id BIGINT,
  file_id BIGINT
);

CREATE OR REPLACE TABLE valuations (
  id BIGINT,
  asset_id BIGINT,
  service_provider_id BIGINT,
  document_id BIGINT,
  currency_id BIGINT,
  fee_option_id BIGINT,
  valuation_status_id BIGINT,
  report_received_date DATE,
  date_expected DATE,
  invoice_due_date DATE,
  fee_amount NUMBER(22,4),
  file_id BIGINT,
  deleted_at date,
  created_at date,
  updated_at date,
  report_requested_date DATE
);
