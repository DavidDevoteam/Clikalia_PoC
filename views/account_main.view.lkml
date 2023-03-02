view: account_main {
  derived_table: {
    sql: SELECT *,
       CasE WHEN UPPER(name) LIKE('KALIA%') THEN 'Kalia Properties'
            WHEN UPPER(name) LIKE('DBF%') THEN 'DBFs'
            ELSE 'Other companies' end as company

      FROM `infra-esp-datawarehouse.clikalia_dwh.account`
      order by 1
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension: commercial_name {
    type: string
    sql: ${TABLE}.commercial_name ;;
  }

  dimension: contacts {
    type: string
    sql: ${TABLE}.contacts ;;
  }

  dimension_group: created_at {
    type: time
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

  dimension_group: updated_at {
    type: time
    sql: ${TABLE}.updated_at ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.company ;;
  }

  set: detail {
    fields: [
      account_id,
      commercial_name,
      contacts,
      created_at_time,
      doc_number,
      doc_type,
      is_clikalia,
      is_service_provider,
      name,
      type_service_provider,
      updated_at_time,
      company
    ]
  }
}
