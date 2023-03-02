view: rent {
  sql_table_name: `infra-esp-datawarehouse.clikalia_dwh.rent`
    ;;

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }

  dimension: additional_guarantee {
    type: number
    sql: ${TABLE}.additionalGuarantee ;;
  }

  dimension_group: approval {
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
    sql: ${TABLE}.approvalDate ;;
  }

  dimension: asset_internal_id {
    type: number
    sql: ${TABLE}.asset_internal_id ;;
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

  dimension: tenant_company {
    type: string
    sql: ${TABLE}.tenantCompany ;;
  }

  dimension: tenant_type {
    type: string
    sql: ${TABLE}.tenantType ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
