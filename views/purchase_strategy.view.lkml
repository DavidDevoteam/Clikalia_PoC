# The name of this view in Looker is "Purchase Strategy"
view: purchase_strategy {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `clikalia_dwh.purchaseStrategy`
    ;;
  drill_fields: [_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: _id {
    primary_key: yes
    type: string
    sql: ${TABLE}._id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Asset Internal ID" in Explore.

  dimension: asset_internal_id {
    type: string
    sql: ${TABLE}.asset_internal_id ;;
  }

  dimension: closing_price {
    type: number
    sql: ${TABLE}.closingPrice ;;
  }

  dimension: closing_price_services {
    type: number
    sql: ${TABLE}.closingPriceServices ;;
  }

  dimension: commercialization_strategy {
    type: string
    sql: ${TABLE}.commercialization_strategy ;;
  }

  dimension: quality {
    type: string
    sql: ${TABLE}.quality ;;
  }

  dimension: rental_publication_price {
    type: number
    sql: ${TABLE}.rental_publication_price ;;
  }

  dimension: strategy {
    type: string
    sql: ${TABLE}.strategy ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [_id]
  }
}
