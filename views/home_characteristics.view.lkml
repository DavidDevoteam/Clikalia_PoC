# The name of this view in Looker is "Home Characteristics"
view: home_characteristics {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `clickalia_dwh.homeCharacteristics`
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
  # This dimension will be called "Balcony" in Explore.

  dimension: balcony {
    type: yesno
    sql: ${TABLE}.balcony ;;
  }

  dimension: bathrooms {
    type: number
    sql: ${TABLE}.bathrooms ;;
  }

  dimension: elevator {
    type: yesno
    sql: ${TABLE}.elevator ;;
  }

  dimension: garden {
    type: yesno
    sql: ${TABLE}.garden ;;
  }

  dimension: orientation {
    type: string
    sql: ${TABLE}.orientation ;;
  }

  dimension: parking {
    type: yesno
    sql: ${TABLE}.parking ;;
  }

  dimension: rooms {
    type: number
    sql: ${TABLE}.rooms ;;
  }

  dimension: situation {
    type: string
    sql: ${TABLE}.situation ;;
  }

  dimension: storeroom {
    type: yesno
    sql: ${TABLE}.storeroom ;;
  }

  dimension: terrace {
    type: yesno
    sql: ${TABLE}.terrace ;;
  }

  measure: count {
    type: count
    drill_fields: [_id]
  }
}
