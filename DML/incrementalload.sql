CREATE OR REPLACE PROCEDURE DATA_WAREHOUSE.STAGING_LD.LOAD_QA_DATA_INCREMENTAL()
RETURNS STRING
LANGUAGE JAVASCRIPT
AS
$$
var tables = [
  'addresses','admins','asset_addresses','asset_client_companies','asset_client_individuals','asset_insurance_notes','asset_insurance_type','asset_insurances','asset_types','assets','attribute_entities','attribute_groups','attribute_types','attribute_values','attributes','bank_details','borrowers','bridge_drawdown_types','broker_agent_deals','broker_agent_notes','broker_agents','broker_notes','brokers','ccr_reports','charge_types','charges','client_companies','client_company_clients','client_company_notes','client_form_attachments','client_form_status','client_forms','client_group_clients','client_groups','client_individual_credit_data','client_individual_notes','client_individuals','companies','currencies','deal_aborted_reasons','deal_activities','deal_document_categories','deal_document_categories_data','deal_document_risk','deal_documents','deal_introducers','deal_notes','deal_notification_rules','deal_notification_rules_recipients','deal_rate_floors','deal_setting_groups','deal_settings','deal_statuses','deal_task','deal_task_group','deal_types','deals','delegated_owners','document_types','documents','drawdown_event_amount_type','drawdown_event_status','drawdown_event_type','drawdown_events','drawdown_fees','drawdown_fields_approval','drawdown_status','drawdowns','email_code_authentication','exit_fee_tiers','failed_jobs','fee_options','fee_status','fee_type','fee_type_lending_type','fees','files','form_types','guarantor_corporates','guarantor_individuals','guarantor_type','guarantors','interest_calculation_types','interest_subtypes','interest_types','introducer_type','introducers','jobs','lender_funder_interest_rate','lender_operational_team_admin','lenders','lending_types','linked_deals','loan_administrators','loan_calculation_method','loan_custom_forms','margin_override','marital_statuses','marketing_sources','migrations','model_has_permissions','model_has_roles','name_titles','notes','notification','notification_recipients','notification_rules','notification_templates','order_statuses','orders','ownership_types','password_resets','payment_attempts','payment_providers','payments','permission_category','permission_group_permission','permission_groups','permissions','personal_access_tokens','profile_approval_status','provider_types','purpose_credit_types','quote_note','quotes','quotes_recipients','quotes_status','role_has_permissions','roles','scheduled_notifications','service_providers','sharepoint_updates_timestamps','stripe_settings','systems_deal_setting','systems_deal_setting_groups','task','task_group','use_type','user_types','users','valuation_statuses','valuations','variable_rate_settings','variable_rate_sources','variable_rates','variable_rates_history','variable_rates_history_copy1'
];

for (var i = 0; i < tables.length; i++) {
    var tbl = tables[i];

    // Create table if it doesn't exist
    var table_sql = `CREATE TABLE IF NOT EXISTS DATA_WAREHOUSE.STAGING_LD.${tbl} (RAWDATA VARIANT)`;
    snowflake.execute({sqlText: table_sql});

    // Create file format if it doesn't exist
    var ff_name = `FF_LD_JSON_${tbl}`;
    var ff_sql = `CREATE FILE FORMAT IF NOT EXISTS DATA_WAREHOUSE.STAGING_LD.${ff_name}
                  TYPE=JSON
                  STRIP_OUTER_ARRAY=TRUE
                  REPLACE_INVALID_CHARACTERS=TRUE
                  DATE_FORMAT=AUTO
                  TIME_FORMAT=AUTO
                  TIMESTAMP_FORMAT=AUTO`;
    snowflake.execute({sqlText: ff_sql});

    // Incremental load — only new files since last load
    var copy_sql = `COPY INTO DATA_WAREHOUSE.STAGING_LD.${tbl}
                    FROM @DATA_WAREHOUSE.STAGING_LD.AZURE_DATA_LAKE_LD
                    PATTERN='.*QA/${tbl}/.*'
                    FILE_FORMAT=(FORMAT_NAME=DATA_WAREHOUSE.STAGING_LD.${ff_name})
                    ON_ERROR=ABORT_STATEMENT
                    FORCE=FALSE`;  -- Force=FALSE means only load new files
    snowflake.execute({sqlText: copy_sql});
}

return "Incremental load completed for " + tables.length + " tables.";
$$;
