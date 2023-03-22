view: cli_asset {
  sql_table_name: `infra-esp-datawarehouse.dynamics_365.cli_asset`
    ;;
  drill_fields: [cli_assetid]

  dimension: cli_assetid {
    primary_key: yes
    type: string
    sql: ${TABLE}.cli_assetid ;;
  }

  dimension: _cli_assettechinfospecialsit_value {
    type: string
    sql: ${TABLE}._cli_assettechinfospecialsit_value ;;
  }

  dimension: _cli_assettechnicalsheet_value {
    type: string
    sql: ${TABLE}._cli_assettechnicalsheet_value ;;
  }

  dimension: _cli_idaddress_value {
    type: string
    sql: ${TABLE}._cli_idaddress_value ;;
  }

  dimension: _cli_idportfoliostrategy_value {
    type: string
    sql: ${TABLE}._cli_idportfoliostrategy_value ;;
  }

  dimension: _cli_location_value {
    type: string
    sql: ${TABLE}._cli_location_value ;;
  }

  dimension: _createdby_value {
    type: string
    sql: ${TABLE}._createdby_value ;;
  }

  dimension: _createdonbehalfby_value {
    type: string
    sql: ${TABLE}._createdonbehalfby_value ;;
  }

  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}._fivetran_deleted ;;
  }

  dimension_group: _fivetran_synced {
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
    sql: ${TABLE}._fivetran_synced ;;
  }

  dimension: _modifiedby_value {
    type: string
    sql: ${TABLE}._modifiedby_value ;;
  }

  dimension: _modifiedonbehalfby_value {
    type: string
    sql: ${TABLE}._modifiedonbehalfby_value ;;
  }

  dimension: _ownerid_value {
    type: string
    sql: ${TABLE}._ownerid_value ;;
  }

  dimension: _owningbusinessunit_value {
    type: string
    sql: ${TABLE}._owningbusinessunit_value ;;
  }

  dimension: _owningteam_value {
    type: string
    sql: ${TABLE}._owningteam_value ;;
  }

  dimension: _owninguser_value {
    type: string
    sql: ${TABLE}._owninguser_value ;;
  }

  dimension: cli_address {
    type: string
    sql: ${TABLE}.cli_address ;;
  }

  dimension: cli_assetcrm {
    type: string
    sql: ${TABLE}.cli_assetcrm ;;
  }

  dimension: cli_balancestatus {
    type: number
    sql: ${TABLE}.cli_balancestatus ;;
  }

  dimension: cli_cadastralref {
    type: string
    sql: ${TABLE}.cli_cadastralref ;;
  }

  dimension: cli_constructionyear {
    type: number
    sql: ${TABLE}.cli_constructionyear ;;
  }

  dimension: cli_district {
    type: string
    sql: ${TABLE}.cli_district ;;
  }

  dimension: cli_gpslatitude {
    type: string
    sql: ${TABLE}.cli_gpslatitude ;;
  }

  dimension: cli_gpslongitude {
    type: string
    sql: ${TABLE}.cli_gpslongitude ;;
  }

  dimension: cli_id {
    type: string
    sql: ${TABLE}.cli_id ;;
  }

  dimension: cli_idassetpurchasecrm {
    type: string
    sql: ${TABLE}.cli_idassetpurchasecrm ;;
  }

  dimension: cli_idinternal {
    type: string
    sql: ${TABLE}.cli_idinternal ;;
  }

  dimension: cli_isclikalia {
    type: yesno
    sql: ${TABLE}.cli_isclikalia ;;
  }

  dimension: cli_m_2_builtcadastral {
    type: number
    sql: ${TABLE}.cli_m_2_builtcadastral ;;
  }

  dimension: cli_m_2_commonareascadastral {
    type: number
    sql: ${TABLE}.cli_m_2_commonareascadastral ;;
  }

  dimension: cli_m_2_totalcadastral {
    type: number
    sql: ${TABLE}.cli_m_2_totalcadastral ;;
  }

  dimension: cli_m_2_useful {
    type: number
    sql: ${TABLE}.cli_m_2_useful ;;
  }

  dimension: cli_name {
    type: string
    sql: ${TABLE}.cli_name ;;
  }

  dimension: cli_neighbourhood {
    type: string
    sql: ${TABLE}.cli_neighbourhood ;;
  }

  dimension: cli_number {
    type: number
    sql: ${TABLE}.cli_number ;;
  }

  dimension: cli_renovationyear {
    type: number
    sql: ${TABLE}.cli_renovationyear ;;
  }

  dimension: cli_road_type {
    type: number
    sql: ${TABLE}.cli_road_type ;;
  }

  dimension: cli_statusasset {
    type: number
    sql: ${TABLE}.cli_statusasset ;;
  }

  dimension: cli_supplyresponsible {
    type: string
    sql: ${TABLE}.cli_supplyresponsible ;;
  }

  dimension: cli_typology {
    type: number
    sql: ${TABLE}.cli_typology ;;
  }

  dimension: cli_uniqueregistrationcode {
    type: number
    sql: ${TABLE}.cli_uniqueregistrationcode ;;
  }

  dimension_group: createdon {
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
    sql: ${TABLE}.createdon ;;
  }

  dimension: importsequencenumber {
    type: number
    sql: ${TABLE}.importsequencenumber ;;
  }

  dimension_group: modifiedon {
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
    sql: ${TABLE}.modifiedon ;;
  }

  dimension_group: overriddencreatedon {
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
    sql: ${TABLE}.overriddencreatedon ;;
  }

  dimension: statecode {
    type: number
    sql: ${TABLE}.statecode ;;
  }

  dimension: statuscode {
    type: number
    sql: ${TABLE}.statuscode ;;
  }

  dimension: timezoneruleversionnumber {
    type: number
    sql: ${TABLE}.timezoneruleversionnumber ;;
  }

  dimension: utcconversiontimezonecode {
    type: number
    sql: ${TABLE}.utcconversiontimezonecode ;;
  }

  dimension: versionnumber {
    type: number
    sql: ${TABLE}.versionnumber ;;
  }

  measure: count {
    type: count
    drill_fields: [cli_assetid, cli_name]
  }
}
