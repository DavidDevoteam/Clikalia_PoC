# The name of this view in Looker is "Assets"
view: assets_main {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `clikalia_dwh.assets`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

    dimension: id {
      primary_key: yes
      type: string
      sql: ${TABLE}.id ;;
    }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Address" in Explore.

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: balance_status {
    type: string
    sql: ${TABLE}.balance_status ;;
  }

  dimension: cadastral_ref {
    type: string
    sql: ${TABLE}.cadastral_ref ;;
  }

  dimension: internal_id {
    type: string
    sql: ${TABLE}.internal_id ;;
  }

  dimension: m2_built {
    type: string
    sql: ${TABLE}.m2Built ;;
  }

  dimension: m2_cadastral {
    type: string
    sql: ${TABLE}.m2Cadastral ;;
  }

  dimension: m2_common_areas {
    type: string
    sql: ${TABLE}.m2CommonAreas ;;
  }

  dimension: m2_useful {
    type: string
    sql: ${TABLE}.m2Useful ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: gps {
    type: location
    sql_latitude:${address.gps_latitude} ;;
    sql_longitude:${address.gps_longitude} ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }

  measure: Average_Ticket  {
    type: average
    sql: ${purchase_certification.amount}  ;;
    filters: [balance_status: "RENTED"]
  }

  measure: m2_construido_sin_zzcc_cartera {
    type: sum
    sql: cast(${m2_cadastral} as INT64) ;;
    filters: [balance_status: "RENTED"]
  }

  measure: euros_m2_sin_zzcc_cartera {
    type:  sum
    sql:   ${purchase_certification.amount}/CAST(${m2_cadastral} AS INT64) ;;
    filters: [balance_status: "RENTED"]
  }

  measure: Leased_assets {
    type:  number
    sql: COUNTIF(balance_status = "RENTED") ;;
  }
  measure: status_alquilado {
    type: number
    sql:  COUNTIF(balance_status="RENTED");;
  }
  measure: strategy_v_o_a {
    type: number
    sql:  COUNTIF(${portfolio_strategy.commercialization_strategy} IN ( "RENTAL", "SALE_AND_RENTAL")) ;;
  }

  measure: Occupation {
    type:  number
    sql: ${status_alquilado}/${strategy_v_o_a} ;;
  }
}
