# The name of this view in Looker is "Assets"
view: assets_main {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `clikalia_dwh.assets`;;
  #drill_fields: [assets_heriarchy*, assets_characteristics*]
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

  dimension: company {
    type: string
    sql: CASE WHEN ${account_clikalia.name} = "KALIA PROPERTIES S.A" THEN "KALIA PROPERTIES S.A"
              WHEN ${account_clikalia.name} LIKE ("DBF%") THEN "DBFs"
              ELSE "Other companies"
              END   ;;
  }

  dimension: gps {
    type: location
    sql_latitude:${latitude} ;;
    sql_longitude:${longitude} ;;
  }
  dimension: latitude{
    type:  string
    sql: CASE
              WHEN ${province.province} = "A Coruña" THEN "43.37012643"
              WHEN ${province.province} = "Albacete" THEN "38.99588053"
              WHEN ${province.province} = "Alicante/Alacant" THEN "38.34548705"
              WHEN ${province.province} = "Almería" THEN "36.83892362"
              WHEN ${province.province} = "Araba/Álava" THEN "42.85058789"
              WHEN ${province.province} = "Asturias" THEN "43.36232165"
              WHEN ${province.province} = "Ávila" THEN "40.65586958"
              WHEN ${province.province} = "Badajoz" THEN "38.87874339"
              WHEN ${province.province} = "Barcelona" THEN "41.38424664"
              WHEN ${province.province} = "Bizkaia" THEN "43.25721957"
              WHEN ${province.province} = "Burgos" THEN "42.34113004"
              WHEN ${province.province} = "Cáceres" THEN "39.47316762"
              WHEN ${province.province} = "Cádiz" THEN "36.52171152"
              WHEN ${province.province} = "Cantabria" THEN "43.46297885"
              WHEN ${province.province} = "Castellón/Castelló" THEN "39.98640809"
              WHEN ${province.province} = "Ceuta" THEN "35.88810209"
              WHEN ${province.province} = "Ciudad Real" THEN "38.98651781"
              WHEN ${province.province} = "Córdoba" THEN "37.87954225"
              WHEN ${province.province} = "Cuenca" THEN "40.07653762"
              WHEN ${province.province} = "Gipuzkoa" THEN "43.31717158"
              WHEN ${province.province} = "Girona" THEN "41.98186075"
              WHEN ${province.province} = "Granada" THEN "37.17641932"
              WHEN ${province.province} = "Guadalajara" THEN "40.63435548"
              WHEN ${province.province} = "Huelva" THEN "37.26004113"
              WHEN ${province.province} = "Huesca" THEN "42.14062739"
              WHEN ${province.province} = "Islas Baleares" THEN "39.57114699"
              WHEN ${province.province} = "Jaén" THEN "37.7651913"
              WHEN ${province.province} = "La Rioja" THEN "42.46644945"
              WHEN ${province.province} = "Las Palmas" THEN "28.099378545"
              WHEN ${province.province} = "León" THEN "42.59912097"
              WHEN ${province.province} = "Lleida" THEN "41.61527355"
              WHEN ${province.province} = "Lugo" THEN "43.0091282"
              WHEN ${province.province} = "Madrid" THEN "40.40841191"
              WHEN ${province.province} = "Málaga" THEN "36.72034267"
              WHEN ${province.province} = "Melilla" THEN "35.294731"
              WHEN ${province.province} = "Murcia" THEN "37.98436361"
              WHEN ${province.province} = "Navarra" THEN "42.814102"
              WHEN ${province.province} = "Ourense" THEN "42.33654919"
              WHEN ${province.province} = "Palencia" THEN "42.0078373"
              WHEN ${province.province} = "Pontevedra" THEN "42.43381442"
              WHEN ${province.province} = "Salamanca" THEN "40.96736822"
              WHEN ${province.province} = "Santa Cruz de Tenerife" THEN "28.462854082"
              WHEN ${province.province} = "Segovia" THEN "40.9498703"
              WHEN ${province.province} = "Sevilla" THEN "37.38620512"
              WHEN ${province.province} = "Soria" THEN "41.76327912"
              WHEN ${province.province} = "Tarragona" THEN "41.11910287"
              WHEN ${province.province} = "Teruel" THEN "40.34412951"
              WHEN ${province.province} = "Toledo" THEN "39.85715187"
              WHEN ${province.province} = "Valencia/València" THEN "39.47534441"
              WHEN ${province.province} = "Valladolid" THEN "41.65232777"
              WHEN ${province.province} = "Zamora" THEN "41.49913956"
              WHEN ${province.province} = "Zaragoza" THEN "41.65645655"
              END
    ;;
  }

  dimension: longitude {
    type: string
    sql: CASE
            WHEN ${province.province} = "A Coruña" THEN "-8.39114853"
            WHEN ${province.province} = "Albacete" THEN "-1.85574745"
            WHEN ${province.province} = "Alicante/Alacant" THEN "-0.4831832"
            WHEN ${province.province} = "Almería" THEN "-2.46413188"
            WHEN ${province.province} = "Araba/Álava" THEN "-2.67275685"
            WHEN ${province.province} = "Asturias" THEN "-5.84372206"
            WHEN ${province.province} = "Ávila" THEN "-4.69771277"
            WHEN ${province.province} = "Badajoz" THEN "-6.97099704"
            WHEN ${province.province} = "Barcelona" THEN "2.17634927"
            WHEN ${province.province} = "Bizkaia" THEN "-2.92390606"
            WHEN ${province.province} = "Burgos" THEN "-3.70419805"
            WHEN ${province.province} = "Cáceres" THEN "-6.37121092"
            WHEN ${province.province} = "Cádiz" THEN "-6.28414575"
            WHEN ${province.province} = "Cantabria" THEN "-3.80474784"
            WHEN ${province.province} = "Castellón/Castelló" THEN "-0.03688142"
            WHEN ${province.province} = "Ceuta" THEN "-5.30675127"
            WHEN ${province.province} = "Ciudad Real" THEN "-3.93131981"
            WHEN ${province.province} = "Córdoba" THEN "-4.78032455"
            WHEN ${province.province} = "Cuenca" THEN "-2.13152306"
            WHEN ${province.province} = "Gipuzkoa" THEN "-1.98191785"
            WHEN ${province.province} = "Girona" THEN "2.82411899"
            WHEN ${province.province} = "Granada" THEN "-3.60001883"
            WHEN ${province.province} = "Guadalajara" THEN "-3.16210273"
            WHEN ${province.province} = "Huelva" THEN "-6.95040588"
            WHEN ${province.province} = "Huesca" THEN "-0.40842276"
            WHEN ${province.province} = "Islas Baleares" THEN "2.65181698"
            WHEN ${province.province} = "Jaén" THEN "-3.7903594"
            WHEN ${province.province} = "La Rioja" THEN "-2.44565538"
            WHEN ${province.province} = "Las Palmas" THEN "-15.413368411"
            WHEN ${province.province} = "León" THEN "-5.56707631"
            WHEN ${province.province} = "Lleida" THEN "0.62061934"
            WHEN ${province.province} = "Lugo" THEN "-7.55817392"
            WHEN ${province.province} = "Madrid" THEN "-3.68760088"
            WHEN ${province.province} = "Málaga" THEN "-4.41997511"
            WHEN ${province.province} = "Melilla" THEN "-2.942281"
            WHEN ${province.province} = "Murcia" THEN "-1.1285408"
            WHEN ${province.province} = "Navarra" THEN "-1.6451528"
            WHEN ${province.province} = "Ourense" THEN "-7.86368375"
            WHEN ${province.province} = "Palencia" THEN "-4.53460106"
            WHEN ${province.province} = "Pontevedra" THEN "-8.64799018"
            WHEN ${province.province} = "Salamanca" THEN "-5.66538084"
            WHEN ${province.province} = "Santa Cruz de Tenerife" THEN "-16.247206286"
            WHEN ${province.province} = "Segovia" THEN "-4.12524116"
            WHEN ${province.province} = "Sevilla" THEN "-5.99251368"
            WHEN ${province.province} = "Soria" THEN "-2.46624798"
            WHEN ${province.province} = "Tarragona" THEN "1.2584219"
            WHEN ${province.province} = "Teruel" THEN "-1.10927177"
            WHEN ${province.province} = "Toledo" THEN "-4.02431421"
            WHEN ${province.province} = "Valencia/València" THEN "-0.37565717"
            WHEN ${province.province} = "Valladolid" THEN "-4.72334924"
            WHEN ${province.province} = "Zamora" THEN "-5.75494831"
            WHEN ${province.province} = "Zaragoza" THEN "-0.87928652"
            END
    ;;
  }

  measure: count {
    type: count_distinct
    sql: ${internal_id} ;;
  }

  measure: Average_Ticket  {
    type: average
    sql: ${purchase_certification.amount}  ;;
    filters: [balance_status: "RENTED"]
    drill_fields: [location_heriarchy*]
  }

  measure: m2_construido_sin_zzcc_cartera {
    type: sum
    sql: cast(${m2_cadastral} as INT64) ;;
    filters: [balance_status: "RENTED"]
    drill_fields: [location_heriarchy*, m2_construido_sin_zzcc_cartera]
  }

  measure: euros_m2_sin_zzcc_cartera {
    type:  average
    sql:   (${purchase_certification.amount})/(CAST(${m2_cadastral} AS INT64)) ;;
    filters: [balance_status: "RENTED"]
    drill_fields: [location_heriarchy*]
  }

  measure: Leased_assets {
    type:  count_distinct
    sql: ${internal_id} ;;
    filters: [balance_status: "RENTED"]
    #drill_fields: [location_heriarchy*]
    link: {
      label: "Leased Assets por Ciudad"
      url: "{{link}}&pivots=city.name"
    }


  }
  measure: status_alquilado {
    type:  count_distinct
    sql: ${internal_id} ;;
    filters: [balance_status: "RENTED"]
    drill_fields: [location_heriarchy*]
  }

  measure: sale_or_rental {
    type:  count_distinct
    sql: ${internal_id} ;;
    filters: [portfolio_strategy.commercialization_strategy: "RENTAL", portfolio_strategy.commercialization_strategy: "SALE_AND_RENTAL"]
    drill_fields: [location_heriarchy*]
  }

  measure: Occupation {
    type:  number
    sql: ${status_alquilado}/${sale_or_rental} ;;
    drill_fields: [location_heriarchy*]
  }

  measure: aux_vacancy {
    type:  count_distinct
   drill_fields: [balance_status,location_heriarchy*]
    filters: [balance_status: "IN_EVALUATION"]
  }

  measure: Vacancy {
    type:  count_distinct
    sql: ${internal_id};;
    filters: [ balance_status: "IN_EVALUATION", portfolio_strategy.commercialization_strategy : "RENTAL",
      portfolio_strategy.commercialization_strategy : "SALE_AND_RENTAL" ]
    drill_fields: [location_heriarchy*]
  }

  measure: Gross_Margin {
    type: number
    sql: sum(${rent.contractual_rent} * 12.0) / sum(${purchase_certification.amount})  ;;
    value_format: "0.00\%"
    drill_fields: [location_heriarchy*]
  }

  measure: Profit_Margin {
    type: number
    sql: sum(${rent.contractual_rent} * 12.0) / sum(${purchase_certification.amount}+ ${purchase_certification.amount_intermediate}
          +${purchase_certification.notary_amount} +${transfer_tax.tax_amount} + ${registration.registry_amount} )  ;;
    value_format: "0.00\%"
    drill_fields: [location_heriarchy*]
  }

  measure: Pending_Rentals{
    type: count_distinct
    sql:  ${internal_id} ;;
    filters: [ balance_status: "RENTED", portfolio_strategy.commercialization_strategy : "RENTAL",
               portfolio_strategy.commercialization_strategy : "SALE_AND_RENTAL" ]

    drill_fields: [location_heriarchy*]
  }
  measure: All_time_hight {
    type:  max
    sql:   (${purchase_certification.amount})/(CAST(${m2_cadastral} AS INT64)) ;;
    filters: [balance_status: "RENTED"]
    drill_fields: [location_heriarchy*]
  }
  measure: Rental_leads {
    type: count_distinct
    sql: ${internal_id} ;;
    # filters: [opportunity..]
    drill_fields: [location_heriarchy*, Rental_leads]
  }
  dimension: Purchase_publication_time {
    type:  number
    sql: date_diff(${portal.publication_date_date},${purchase_certification.real_date},day) ;;
  }
  dimension: Reserve_formalization_time {
    type:  number
    sql: case when ${rent_contract.date_signature_real_date} is not null or  ${rent.rent_reservation_date} is not null then
    date_diff(${rent_contract.date_signature_real_date},${rent.rent_reservation_date},day) end ;;
  }
  dimension: rental_time {
    type: number
    sql: date_diff( current_date(),${rent_contract.date_signature_real_date},year) ;;
  }
  measure: failure_num {
    type: count_distinct
    sql: case when current_date() >= ${rent_contract.date_signature_real_date} then ${internal_id} end;;
    drill_fields: [location_heriarchy*]
  }
  measure: failure_den {
    type: count_distinct
    sql: case when current_date() >= ${rent.rent_reservation_date} then ${internal_id} end ;;
    drill_fields: [location_heriarchy*]
  }
  measure: failure {
    type: number
    sql: ${failure_num}/${failure_den} ;;
    drill_fields: [location_heriarchy*]
  }



  set: assets_heriarchy {
    fields: [internal_id, cadastral_ref, balance_status]
  }

  set: location_heriarchy {
    fields: [countries.name,province.province, city.name, Leased_assets]
  }
  set: assets_characteristics {
    fields: [internal_id, name, type,m2_cadastral,status]
  }





}
