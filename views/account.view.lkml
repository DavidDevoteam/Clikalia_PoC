# The name of this view in Looker is "Account"
view: account {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `clickalia_dwh.account`
    ;;
  drill_fields: [account_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: account_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.account_id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Commercial Name" in Explore.

  dimension: commercial_name {
    type: string
    sql: ${TABLE}.commercial_name ;;
  }

  dimension: contacts {
    type: string
    sql: ${TABLE}.contacts ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: doc_number {
    type: string
    sql: ${TABLE}.doc_number ;;
  }

  dimension: doc_type {
    type: string
    sql: ${TABLE}.doc_type ;;
  }

  dimension: is_clikalia {
    type: yesno
    sql: ${TABLE}.is_clikalia ;;
  }

  dimension: is_service_provider {
    type: yesno
    sql: ${TABLE}.is_service_provider ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type_service_provider {
    type: string
    sql: ${TABLE}.type_service_provider ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [account_id, commercial_name, name]
  }
}
