view: rent_contract {
  sql_table_name: `infra-esp-datawarehouse.clikalia_dwh.RentContract`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: asset {
    type: string
    sql: ${TABLE}.asset ;;
  }

  dimension: asset_internal_id {
    type: string
    sql: ${TABLE}.assetInternalId ;;
  }

  dimension_group: contract_end {
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
    sql: ${TABLE}.contractEndDate ;;
  }

  dimension: contract_generation_place {
    type: string
    sql: ${TABLE}.contractGenerationPlace ;;
  }

  dimension: contract_internal_id {
    type: number
    sql: ${TABLE}.contractInternalId ;;
  }

  dimension_group: contract_max_end {
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
    sql: ${TABLE}.contractMaxEndDate ;;
  }

  dimension: contract_renter_company {
    type: string
    sql: ${TABLE}.contractRenterCompany ;;
  }

  dimension_group: contract_start {
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
    sql: ${TABLE}.contractStartDate ;;
  }

  dimension: contract_subrogation {
    type: yesno
    sql: ${TABLE}.contractSubrogation ;;
  }

  dimension: contract_type {
    type: string
    sql: ${TABLE}.contractType ;;
  }

  dimension_group: date_signature_real {
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
    sql: ${TABLE}.dateSignatureReal ;;
  }

  dimension: deposit_payment {
    type: yesno
    sql: ${TABLE}.depositPayment ;;
  }

  dimension: deposit_receipt_number {
    type: string
    sql: ${TABLE}.depositReceiptNumber ;;
  }

  dimension_group: deposit_submission {
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
    sql: ${TABLE}.depositSubmissionDate ;;
  }

  dimension: lessor {
    type: string
    sql: ${TABLE}.lessor ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
  measure: Contrats_signed {
  type: count_distinct
  sql:  case when current_date()>=${date_signature_real_date} then ${id} else null END ;;
  }
}
