# Define the database connection to be used for this model.
connection: "clikalia_infra-esp-datawarehouse"

# include all the views
include: "/views/**/*.view"

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
    fields: [amount]
  }
  join: address {
    type: left_outer
    relationship: one_to_one
    sql_on: ${assets_main.address} = ${address.id} ;;
    fields: [address.id_province, address.gps]
  }
  join: province {
    type: left_outer
    relationship: many_to_one
    sql_on: ${address.id_province} = ${province.id} ;;
    fields: [province.province]
  }
}

explore: rent {}

explore: rent_main {
  join: purchase_certification {
    type: left_outer
    relationship: one_to_one
    sql_on: ${rent_main.asset_internal_id} = ${purchase_certification.asset_internal_id} ;;
    fields: [amount]
  }
}


explore: city {}

explore: countries {}

explore: address {}

explore: appointment {}

explore: home_characteristics {}

explore: opportunity {}

explore: portal {}

explore: portfolio_strategy {}

explore: postal_code {}

explore: province {}

explore: profit_loss_structures {}

explore: publication {}

explore: purchase {}

explore: purchase_earnestmoney {}

explore: purchase_certification {}

explore: purchase_strategy {}

explore: registration {}

explore: quote {}

explore: transfer_tax {}

explore: state {}

explore: sql_runner_query {}
