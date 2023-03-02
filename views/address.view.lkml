# The name of this view in Looker is "Address"
view: address {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `clikalia_dwh.address`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Block" in Explore.

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: block {
    type: string
    sql: ${TABLE}.block ;;
  }

  dimension: floor {
    type: string
    sql: ${TABLE}.floor ;;
  }

  dimension: gps_latitude {
    type: string
    sql: ${TABLE}.gps_latitude ;;
  }

  dimension: gps_longitude {
    type: string
    sql: ${TABLE}.gps_longitude ;;
  }

  dimension: gps {
    type: location
    sql_latitude:${gps_latitude} ;;
    sql_longitude:${gps_longitude} ;;
  }

  dimension: id_city {
    type: string
    sql: ${TABLE}.id_city ;;
  }

  dimension: id_country {
    type: string
    sql: ${TABLE}.id_country ;;
  }

  dimension: id_postal_code {
    type: string
    sql: ${TABLE}.id_postal_code ;;
  }

  dimension: id_province {
    type: string
    sql: ${TABLE}.id_province ;;
  }

  dimension: id_state {
    type: string
    sql: ${TABLE}.id_state ;;
  }

  dimension: letter {
    type: string
    sql: ${TABLE}.letter ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: number {
    type: string
    sql: ${TABLE}.number ;;
  }

  dimension: road_type {
    type: string
    sql: ${TABLE}.road_type ;;
  }

  dimension: stairway {
    type: string
    sql: ${TABLE}.stairway ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
