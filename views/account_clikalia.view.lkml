view: account_clikalia {
  sql_table_name: `infra-esp-datawarehouse.clikalia_dwh.accountClikalia`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: city_registry {
    type: string
    sql: ${TABLE}.cityRegistry ;;
  }

  dimension_group: constitution {
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
    sql: ${TABLE}.constitutionDate ;;
  }

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
    sql: ${TABLE}.createdAt ;;
  }

  dimension: erp_dev {
    type: string
    sql: ${TABLE}.erpDev ;;
  }

  dimension: legal_representative {
    type: string
    sql: ${TABLE}.legalRepresentative ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: page {
    type: string
    sql: ${TABLE}.page ;;
  }

  dimension: policy_id {
    type: number
    sql: ${TABLE}.policyId ;;
  }

  dimension: protocol {
    type: string
    sql: ${TABLE}.protocol ;;
  }

  dimension: sheet {
    type: string
    sql: ${TABLE}.sheet ;;
  }

  dimension: tome {
    type: string
    sql: ${TABLE}.tome ;;
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
    sql: ${TABLE}.updatedAt ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
