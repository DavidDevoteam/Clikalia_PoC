view: idealista {
  sql_table_name: `infra-esp-datawarehouse.clikalia_dwh.idealista`
    ;;

  dimension: localizacion {
    type: string
    sql: ${TABLE}.Localizacion ;;
  }

  dimension: maximo_historico {
    type: number
    sql: cast(replace(${TABLE}.Maximo_historico, ",",".") as float64) ;;
  }

  dimension: precio_m2_ene_2023 {
    type: number
    sql: replace(${TABLE}.Precio_m2_ene_2023, ",",".") ;;
  }

  dimension: variacion_anual {
    type: number
    sql: ${TABLE}.Variacion_anual ;;
  }

  dimension: variacion_maximo {
    type: number
    sql: ${TABLE}.Variacion_maximo ;;
  }

  dimension: variacion_mensual {
    type: number
    sql: ${TABLE}.Variacion_mensual ;;
  }

  dimension: variacion_trimestral {
    type: number
    sql: ${TABLE}.Variacion_trimestral ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
