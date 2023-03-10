# The name of this view in Looker is "Purchase Certification"
view: purchase_certification {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `clikalia_dwh.purchaseCertification`
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

  dimension: amount_intermediate {
    type: number
    sql: ${TABLE}.amountIntermediate ;;
  }

  dimension: notary_amount {
    type: number
    sql: ${TABLE}.notary_amount ;;
  }

  dimension: asset_internal_id {
    type: number
    sql: ${TABLE}.asset_internal_id ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

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
    drill_fields: [id_purchase]
  }
}
