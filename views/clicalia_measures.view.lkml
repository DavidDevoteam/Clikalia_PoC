view: rentamediabruta {
  derived_table: {
    sql: select avg(contractualRent) as renta_media_bruta
      FROM `infra-esp-datawarehouse.clikalia_dwh.rent`
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: renta_media_bruta {
    type: number
    sql: ${TABLE}.renta_media_bruta ;;
  }

  set: detail {
    fields: [renta_media_bruta]
  }
}

view: gross {
  derived_table: {
    sql: SELECT
      AVG((contractualrent*12)/amount)*100000 AS groos_margin
 FROM `infra-esp-datawarehouse.clikalia_dwh.purchaseCertification` a
left join
 `infra-esp-datawarehouse.clikalia_dwh.rent` b
 on a.asset_internal_id = CAST(b.asset_internal_id AS STRING)
 where contractualrent is not null
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: groos_margin {
    type: number
    sql: ${TABLE}.groos_margin ;;
  }

  set: detail {
    fields: [groos_margin]
  }
}
view: ocupacion {
  derived_table: {
    sql: SELECT COUNTIF(UPPER(balance_status) = 'RENTED') AS leased_assets,
       COUNTIF(UPPER(balance_status) = 'RENTED')/
              COUNTIF(commercializationStrategy IN('RENTAL','SALE_AND_RENTAL')) AS occupation,

      count(if(balance_status= 'RENTED' and commercializationStrategy IN('RENTAL','SALE_AND_RENTAL'),1,0 ))/
      (               COUNTIF(commercializationStrategy IN('RENTAL','SALE_AND_RENTAL'))) as  vacancy
      FROM `infra-esp-datawarehouse.clikalia_dwh.assets` ass
      LEFT
      JOIN `infra-esp-datawarehouse.clikalia_dwh.portfolioStrategy` p
      ON ass.internal_id=p.assetInternalId
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: leased_assets {
    type: number
    sql: ${TABLE}.leased_assets ;;
  }

  dimension: occupation {
    type: number
    sql: ${TABLE}.occupation ;;
  }

  dimension: vacancy {
    type: number
    sql: ${TABLE}.vacancy ;;
  }

  set: detail {
    fields: [leased_assets, occupation, vacancy]
  }
}
