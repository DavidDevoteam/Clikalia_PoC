# The name of this view in Looker is "Purchase Earnestmoney"
view: purchase_earnestmoney {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `clikalia_dwh.purchaseEarnestmoney`
    ;;
  drill_fields: [id_purchase]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id_purchase {
    primary_key: yes
    type: string
    sql: ${TABLE}.id_purchase ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Amount" in Explore.

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: buyer_account_clickalia {
    type: string
    sql: ${TABLE}.buyerAccountClickalia ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

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
    drill_fields: [id_purchase]
  }
}
