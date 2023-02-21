# The name of this view in Looker is "Assets"
view: assets {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `clickalia_dwh.assets`
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

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
