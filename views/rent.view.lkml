view: rent {
  sql_table_name: `infra-esp-datawarehouse.clikalia_dwh.rent`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: additional_guarantee {
    type: number
    sql: ${TABLE}.additionalGuarantee ;;
  }

  dimension: asset_internal_id {
    type: string
    sql: ${TABLE}.assetInternalId ;;
  }

  dimension: commercial {
    type: string
    sql: ${TABLE}.commercial ;;
  }

  dimension: commercial_approvement {
    type: string
    sql: ${TABLE}.commercialApprovement ;;
  }

  dimension: commercial_validation {
    type: string
    sql: ${TABLE}.commercialValidation ;;
  }

  dimension: contract_internal_id {
    type: number
    sql: ${TABLE}.contractInternalId ;;
  }

  dimension: contractual_furniture_cost {
    type: number
    sql: ${TABLE}.contractualFurnitureCost ;;
  }

  dimension: contractual_rent {
    type: number
    sql: ${TABLE}.contractualRent ;;
  }

  dimension: deposit {
    type: number
    sql: ${TABLE}.deposit ;;
  }

  dimension: deposit_payment {
    type: string
    sql: ${TABLE}.depositPayment ;;
  }

  dimension: furniture {
    type: yesno
    sql: ${TABLE}.furniture ;;
  }

  dimension: guarantee_proposals {
    type: string
    sql: ${TABLE}.guaranteeProposals ;;
  }

  dimension: legal_validation {
    type: string
    sql: ${TABLE}.legalValidation ;;
  }

  dimension: reject_reason {
    type: string
    sql: ${TABLE}.rejectReason ;;
  }

  dimension: rent_reservation {
    type: yesno
    sql: ${TABLE}.rentReservation ;;
  }

  dimension_group: rent_reservation {
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
    sql: ${TABLE}.rentReservationDate ;;
  }

  dimension: rental_management {
    type: string
    sql: ${TABLE}.rentalManagement ;;
  }

  dimension: residential_use {
    type: string
    sql: ${TABLE}.residentialUse ;;
  }

  dimension: tenant_contact {
    type: string
    sql: ${TABLE}.tenantContact ;;
  }

  dimension: tenant_type {
    type: string
    sql: ${TABLE}.tenantType ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
  dimension: Reserve_formalization_time {
    type:  number
    sql: case when ${rent_contract.date_signature_real_date} is not null or  ${rent.rent_reservation_date} is not null then
      date_diff(${rent_contract.date_signature_real_date},${rent.rent_reservation_date},day) end ;;
  }
}
