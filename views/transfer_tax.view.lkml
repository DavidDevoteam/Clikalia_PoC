view: transfer_tax {
  sql_table_name: `infra-esp-datawarehouse.clikalia_dwh.transfer_tax`
    ;;

  dimension: tax_amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: asset_internal_id {
    type: number
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

  measure: count {
    type: count
    drill_fields: []
  }
}
