# salesforce-subscription-models

This repo has examples of using dbt to define sources and model a base table for salesforce leads in `models/salesforce`. It also includes an example of how to model data and reference those models using ref() in `models/subscription_data`.

# Salesforce Models

The salesforce models in `models/subscription_data` includes a source schema for 10 objects/tables:

  1. Account
  2. AccountBrand
  3. AccountPartner
  4. Address
  5. Contact
  6. Approval
  7. Asset
  8. Lead
  9. Campaign
  10. Contract

A base model for `lead` is defined in `salesforce_lead.sql` and documented in `model_schema.yml`.

This follows the following style guidelines:
  
  - All column names are lower-case snake case (i.e column_name)
  - Boolean fields are prefexied with is_ (i.e. is_deleted, is_active)
  - Date and time references end in _at (i.e created_at, received_at)
  - References to IDs end in _id and are scoped to the object/domain (i.e lead_id, account_id, user_id)

# Subscription Data Models

The subscription models in `models/subscription_data` includes a source schema for two tables:
  
  1. subscriptions
  2. subscription_change_log 

Both tables have a base model defined in `model_schema.yml`. There is a separate model that combines this data in `subscription_history` and is also documented in `model_schema.yml`

# Documentation

To view the auto-generated documentation site for this project, run `dbt docs serve` and visit http://localhost:8080.