view: purchase_earnest_money {
  sql_table_name: `infra-esp-datawarehouse.clikalia_dwh.purchaseEarnestMoney`
    ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: asset_internal_id {
    type: string
    sql: ${TABLE}.assetInternalId ;;
  }

  dimension: buyer_account_clickalia {
    type: string
    sql: ${TABLE}.buyerAccountClickalia ;;
  }

  dimension_group: date_signature_real {
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
    sql: ${TABLE}.dateSignatureReal ;;
  }

  dimension: id_purchase {
    type: string
    sql: ${TABLE}.id_purchase ;;
  }

  dimension: percent {
    type: number
    sql: ${TABLE}.percent ;;
  }

  dimension_group: resolution {
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
    sql: ${TABLE}.resolution_date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
