view: sql_runner_query {
  derived_table: {
    sql: SELECT ass.name,  pr.name as provincia,

      FROM `infra-esp-datawarehouse.clikalia_dwh.assets` ass
      left
      join`infra-esp-datawarehouse.mongo_core_operations_office.address` ad
      on ass.address = ad._id

      left join `infra-esp-datawarehouse.clikalia_dwh.province` pr
      on ad.province = pr.id
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: provincia {
    type: string
    sql: ${TABLE}.provincia ;;
  }

  set: detail {
    fields: [name, provincia]
  }
}
