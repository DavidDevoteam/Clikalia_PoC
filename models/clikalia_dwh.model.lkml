# Define the database connection to be used for this model.
connection: "clikalia_infra-esp-datawarehouse"

# include all the views
include: "/views/**/*.view"

include: "/dashboard/**/*.dashboard.lookml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: clikalia_dwh_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: clikalia_dwh_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Clikalia Dwh"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: account {}

explore: account_main {}

explore: assets {}

explore: assets_main {
  #access_filter: {
  #  field: province.province
  #  user_attribute: city
  #}
  join: portfolio_strategy {
    type: left_outer
    relationship: one_to_one
    sql_on: ${assets_main.internal_id} = ${portfolio_strategy.assetInternalId} ;;
    fields: [commercialization_strategy]
  }
  join: purchase_certification {
    type: left_outer
    relationship: one_to_one
    sql_on: ${assets_main.internal_id} = ${purchase_certification.asset_internal_id} ;;
    fields: [amount,notary_amount,amount_intermediate,purchase_certification.real_date]
  }
  join: address {
    type: left_outer
    relationship: one_to_one
    sql_on: ${assets_main.address} = ${address.id} ;;
    #fields: [address.id_province, address.gps]
  }
  join: province {
    type: left_outer
    relationship: many_to_one
    sql_on: ${address.id_province} = ${province.id} ;;
    #fields: [province.province]
  }
  join: purchase_earnest_money {
    type: left_outer
    relationship: many_to_one
    sql_on: ${assets_main.internal_id} = ${purchase_earnest_money.asset_internal_id} ;;
    fields: [purchase_earnest_money.buyer_account_clickalia]
  }
  join: account_clikalia {
    type: left_outer
    relationship: many_to_one
    sql_on: ${purchase_earnest_money.buyer_account_clickalia} = ${account_clikalia.id} ;;
    fields: [account_clikalia.name]
  }
  join: rent {
    type: left_outer
    relationship: one_to_one
    sql_on: ${rent.asset_internal_id} = ${assets_main.internal_id} ;;
    fields: [rent.contractual_rent, rent.rent_reservation_date]
  }
  join: rent_contract {
    type: left_outer
    relationship: one_to_one
    sql_on: ${rent_contract.contract_internal_id} = ${rent.contract_internal_id} ;;
    fields: [rent_contract.date_signature_real_date,rent_contract.date_signature_real_month,rent_contract.date_signature_real_quarter]
  }
  join: transfer_tax {
    type: left_outer
    relationship: one_to_many
    sql_on: cast(${transfer_tax.asset_internal_id} as string) = ${assets_main.internal_id} ;;
    fields: [transfer_tax.tax_amount]
  }
  join: registration {
    type: left_outer
    relationship: one_to_many
    sql_on: ${registration.asset_internal_id} = ${assets_main.internal_id} ;;
    fields: [registration.registry_amount]
  }
  join: portal {
    type: left_outer
    relationship: many_to_one
    sql_on: ${assets_main.internal_id} = cast(${portal.asset_internal_id} as string) ;;
    fields: [portal.publication_date_date]
  }
}

explore: rent {
  join: rent_contract {
    type: left_outer
    relationship: one_to_one
    sql_on: ${rent_contract.contract_internal_id} = ${rent.contract_internal_id} ;;
    fields: [rent_contract.date_signature_real_date,rent_contract.date_signature_real_month,rent_contract.date_signature_real_quarter]
    }
}

explore: rent_contract {}

explore: city {}

explore: countries {}

explore: address {}

explore: appointment {}

explore: home_characteristics {}

explore: opportunity {
  join: appointment {
    type: left_outer
    relationship: one_to_one
    sql_on: ${appointment._regardingobjectid_value}  = ${opportunity.opportunityid} ;;
    fields: [appointment.createdon_date, appointment.scheduledstart_date]
  }
  join: cli_asset {
    type: left_outer
    relationship: one_to_one
    sql_on: ${cli_asset.cli_assetid}  = ${opportunity._cli_asset_value} ;;
    fields: [cli_asset.cli_balancestatus]
    }
  join: portal {
    type: left_outer
    relationship: one_to_one
    sql_on: ${cli_asset.cli_id}  = cast(${portal.asset_internal_id} as string) ;;
    fields: [portal.publication_date_date]
  }
}

explore: portal {}

explore: portfolio_strategy {}

explore: postal_code {}

explore: province {
  join: address {
    type: left_outer
    relationship: one_to_one
    sql_on: ${province.province}} = ${address.id_province};;
  }
}

explore: profit_loss_structures {}

explore: publication {}

explore: purchase {}

explore: purchase_earnest_money {}

explore: purchase_certification {}

explore: purchase_strategy {}

explore: registration {}

explore: quote {}

explore: transfer_tax {}

explore: state {}

explore: sql_runner_query {}

explore: idealista {}

explore: cli_asset {}
