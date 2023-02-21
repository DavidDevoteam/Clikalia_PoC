# The name of this view in Looker is "Portfolio Strategy"
view: portfolio_strategy {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `clickalia_dwh.portfolioStrategy`
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
  # This dimension will be called "Asset Internal ID" in Explore.

  dimension: asset_internal_id {
    type: string
    sql: ${TABLE}.assetInternalId ;;
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
    sql: ${TABLE}.commercializationStrategy ;;
  }

  dimension: publication_price {
    type: number
    sql: ${TABLE}.publicationPrice ;;
  }

  dimension: publication_price_discount {
    type: number
    sql: ${TABLE}.publicationPriceDiscount ;;
  }

  dimension: publication_price_furniture {
    type: number
    sql: ${TABLE}.publicationPriceFurniture ;;
  }

  dimension: publication_price_services {
    type: number
    sql: ${TABLE}.publicationPriceServices ;;
  }

  dimension: publication_price_services_discount {
    type: number
    sql: ${TABLE}.publicationPriceServicesDiscount ;;
  }

  dimension: quality {
    type: string
    sql: ${TABLE}.quality ;;
  }

  dimension: rentalpublication_price {
    type: number
    sql: ${TABLE}.RentalpublicationPrice ;;
  }

  dimension: rentalpublication_price_discount {
    type: number
    sql: ${TABLE}.RentalpublicationPriceDiscount ;;
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
    drill_fields: [id]
  }
}
