# The name of this view in Looker is "Profit Loss Structures"
view: profit_loss_structures {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `clikalia_dwh.profitLossStructures`
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

  dimension: estimation {
    type: number
    sql: ${TABLE}.estimation ;;
  }

  dimension: level1 {
    type: string
    sql: ${TABLE}.level1 ;;
  }

  dimension: level2 {
    type: string
    sql: ${TABLE}.level2 ;;
  }

  dimension: level3 {
    type: string
    sql: ${TABLE}.level3 ;;
  }

  dimension: revised {
    type: number
    sql: ${TABLE}.revised ;;
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
