view: registration {
  sql_table_name: `infra-esp-datawarehouse.clikalia_dwh.registration`
    ;;

  dimension: registry_amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: asset_internal_id {
    type: string
    sql: ${TABLE}.assetInternalId ;;
  }

  dimension: id_purchase {
    type: string
    sql: ${TABLE}.id_purchase ;;
  }

  dimension_group: real {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.realDate ;;
  }

  dimension: tax_amount {
    type: number
    sql: ${TABLE}.taxAmount ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
