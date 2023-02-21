# The name of this view in Looker is "Quote"
view: quote {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `clickalia_dwh.quote`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called " Accountid Value" in Explore.

  dimension: _accountid_value {
    type: string
    sql: ${TABLE}._accountid_value ;;
  }

  dimension: _campaignid_value {
    type: string
    sql: ${TABLE}._campaignid_value ;;
  }

  dimension: _cli_contacto_value {
    type: string
    sql: ${TABLE}._cli_contacto_value ;;
  }

  dimension: _cli_cuenta_value {
    type: string
    sql: ${TABLE}._cli_cuenta_value ;;
  }

  dimension: _cli_servicio_value {
    type: string
    sql: ${TABLE}._cli_servicio_value ;;
  }

  dimension: _cli_unidadcompra_value {
    type: string
    sql: ${TABLE}._cli_unidadcompra_value ;;
  }

  dimension: _cli_unidaddeinmueble_value {
    type: string
    sql: ${TABLE}._cli_unidaddeinmueble_value ;;
  }

  dimension: _contactid_value {
    type: string
    sql: ${TABLE}._contactid_value ;;
  }

  dimension: _createdby_value {
    type: string
    sql: ${TABLE}._createdby_value ;;
  }

  dimension: _createdonbehalfby_value {
    type: string
    sql: ${TABLE}._createdonbehalfby_value ;;
  }

  dimension: _customerid_value {
    type: string
    sql: ${TABLE}._customerid_value ;;
  }

  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}._fivetran_deleted ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

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

  dimension: _opportunityid_value {
    type: string
    sql: ${TABLE}._opportunityid_value ;;
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

  dimension: _pricelevelid_value {
    type: string
    sql: ${TABLE}._pricelevelid_value ;;
  }

  dimension: _slaid_value {
    type: string
    sql: ${TABLE}._slaid_value ;;
  }

  dimension: _slainvokedid_value {
    type: string
    sql: ${TABLE}._slainvokedid_value ;;
  }

  dimension: _transactioncurrencyid_value {
    type: string
    sql: ${TABLE}._transactioncurrencyid_value ;;
  }

  dimension: billto_addressid {
    type: string
    sql: ${TABLE}.billto_addressid ;;
  }

  dimension: billto_city {
    type: string
    sql: ${TABLE}.billto_city ;;
  }

  dimension: billto_composite {
    type: string
    sql: ${TABLE}.billto_composite ;;
  }

  dimension: billto_contactname {
    type: string
    sql: ${TABLE}.billto_contactname ;;
  }

  dimension: billto_country {
    type: string
    sql: ${TABLE}.billto_country ;;
  }

  dimension: billto_fax {
    type: string
    sql: ${TABLE}.billto_fax ;;
  }

  dimension: billto_line_1 {
    type: string
    sql: ${TABLE}.billto_line_1 ;;
  }

  dimension: billto_line_2 {
    type: string
    sql: ${TABLE}.billto_line_2 ;;
  }

  dimension: billto_line_3 {
    type: string
    sql: ${TABLE}.billto_line_3 ;;
  }

  dimension: billto_name {
    type: string
    sql: ${TABLE}.billto_name ;;
  }

  dimension: billto_postalcode {
    type: string
    sql: ${TABLE}.billto_postalcode ;;
  }

  dimension: billto_stateorprovince {
    type: string
    sql: ${TABLE}.billto_stateorprovince ;;
  }

  dimension: billto_telephone {
    type: string
    sql: ${TABLE}.billto_telephone ;;
  }

  dimension_group: cli_aceptacindetrminosycondiciones {
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
    sql: ${TABLE}.cli_aceptacindetrminosycondiciones ;;
  }

  dimension: cli_approveoffer {
    type: number
    sql: ${TABLE}.cli_approveoffer ;;
  }

  dimension: cli_aprobadocontrolofer {
    type: number
    sql: ${TABLE}.cli_aprobadocontrolofer ;;
  }

  dimension: cli_aprobadoofer {
    type: number
    sql: ${TABLE}.cli_aprobadoofer ;;
  }

  dimension: cli_callwebhookoferscanceled {
    type: yesno
    sql: ${TABLE}.cli_callwebhookoferscanceled ;;
  }

  dimension: cli_callwebhookrent {
    type: yesno
    sql: ${TABLE}.cli_callwebhookrent ;;
  }

  dimension: cli_codigo {
    type: string
    sql: ${TABLE}.cli_codigo ;;
  }

  dimension: cli_codigointeres {
    type: string
    sql: ${TABLE}.cli_codigointeres ;;
  }

  dimension: cli_comentarios {
    type: string
    sql: ${TABLE}.cli_comentarios ;;
  }

  dimension: cli_contadoroferta {
    type: number
    sql: ${TABLE}.cli_contadoroferta ;;
  }

  dimension_group: cli_dateenvio {
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
    sql: ${TABLE}.cli_dateenvio ;;
  }

  dimension: cli_enviarpaymentid {
    type: number
    value_format_name: id
    sql: ${TABLE}.cli_enviarpaymentid ;;
  }

  dimension: cli_estadooferta {
    type: number
    sql: ${TABLE}.cli_estadooferta ;;
  }

  dimension: cli_importereserva {
    type: number
    sql: ${TABLE}.cli_importereserva ;;
  }

  dimension: cli_importereserva_base {
    type: number
    sql: ${TABLE}.cli_importereserva_base ;;
  }

  dimension: cli_inmuebleserviciosadicionales {
    type: yesno
    sql: ${TABLE}.cli_inmuebleserviciosadicionales ;;
  }

  dimension: cli_motivodesaprobacionofer {
    type: string
    sql: ${TABLE}.cli_motivodesaprobacionofer ;;
  }

  dimension: cli_motivorechazo {
    type: number
    sql: ${TABLE}.cli_motivorechazo ;;
  }

  dimension: cli_ofertacancelada {
    type: yesno
    sql: ${TABLE}.cli_ofertacancelada ;;
  }

  dimension: cli_origenoferta {
    type: number
    sql: ${TABLE}.cli_origenoferta ;;
  }

  dimension: cli_origincampaign {
    type: string
    sql: ${TABLE}.cli_origincampaign ;;
  }

  dimension: cli_paymentid {
    type: string
    sql: ${TABLE}.cli_paymentid ;;
  }

  dimension: cli_reasonfordisapproval {
    type: number
    sql: ${TABLE}.cli_reasonfordisapproval ;;
  }

  dimension: cli_tipodeinteres {
    type: number
    sql: ${TABLE}.cli_tipodeinteres ;;
  }

  dimension: cli_tipodeunidaddeinmueble {
    type: number
    sql: ${TABLE}.cli_tipodeunidaddeinmueble ;;
  }

  dimension: cli_tipooferta {
    type: number
    sql: ${TABLE}.cli_tipooferta ;;
  }

  dimension: closedon {
    type: string
    sql: ${TABLE}.closedon ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: discountamount {
    type: number
    sql: ${TABLE}.discountamount ;;
  }

  dimension: discountamount_base {
    type: number
    sql: ${TABLE}.discountamount_base ;;
  }

  dimension: discountpercentage {
    type: number
    sql: ${TABLE}.discountpercentage ;;
  }

  dimension_group: effectivefrom {
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
    sql: ${TABLE}.effectivefrom ;;
  }

  dimension_group: effectiveto {
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
    sql: ${TABLE}.effectiveto ;;
  }

  dimension: emailaddress {
    type: string
    sql: ${TABLE}.emailaddress ;;
  }

  dimension: exchangerate {
    type: number
    sql: ${TABLE}.exchangerate ;;
  }

  dimension: expireson {
    type: string
    sql: ${TABLE}.expireson ;;
  }

  dimension: freightamount {
    type: number
    sql: ${TABLE}.freightamount ;;
  }

  dimension: freightamount_base {
    type: number
    sql: ${TABLE}.freightamount_base ;;
  }

  dimension: freighttermscode {
    type: number
    sql: ${TABLE}.freighttermscode ;;
  }

  dimension: importsequencenumber {
    type: number
    sql: ${TABLE}.importsequencenumber ;;
  }

  dimension_group: lastonholdtime {
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
    sql: ${TABLE}.lastonholdtime ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: onholdtime {
    type: number
    sql: ${TABLE}.onholdtime ;;
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

  dimension: paymenttermscode {
    type: number
    sql: ${TABLE}.paymenttermscode ;;
  }

  dimension: pricingerrorcode {
    type: number
    sql: ${TABLE}.pricingerrorcode ;;
  }

  dimension: processid {
    type: string
    sql: ${TABLE}.processid ;;
  }

  dimension: quoteid {
    type: string
    sql: ${TABLE}.quoteid ;;
  }

  dimension: quotenumber {
    type: string
    sql: ${TABLE}.quotenumber ;;
  }

  dimension_group: requestdeliveryby {
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
    sql: ${TABLE}.requestdeliveryby ;;
  }

  dimension: revisionnumber {
    type: number
    sql: ${TABLE}.revisionnumber ;;
  }

  dimension: shippingmethodcode {
    type: number
    sql: ${TABLE}.shippingmethodcode ;;
  }

  dimension: shipto_addressid {
    type: string
    sql: ${TABLE}.shipto_addressid ;;
  }

  dimension: shipto_city {
    type: string
    sql: ${TABLE}.shipto_city ;;
  }

  dimension: shipto_composite {
    type: string
    sql: ${TABLE}.shipto_composite ;;
  }

  dimension: shipto_contactname {
    type: string
    sql: ${TABLE}.shipto_contactname ;;
  }

  dimension: shipto_country {
    type: string
    sql: ${TABLE}.shipto_country ;;
  }

  dimension: shipto_fax {
    type: string
    sql: ${TABLE}.shipto_fax ;;
  }

  dimension: shipto_freighttermscode {
    type: number
    sql: ${TABLE}.shipto_freighttermscode ;;
  }

  dimension: shipto_line_1 {
    type: string
    sql: ${TABLE}.shipto_line_1 ;;
  }

  dimension: shipto_line_2 {
    type: string
    sql: ${TABLE}.shipto_line_2 ;;
  }

  dimension: shipto_line_3 {
    type: string
    sql: ${TABLE}.shipto_line_3 ;;
  }

  dimension: shipto_name {
    type: string
    sql: ${TABLE}.shipto_name ;;
  }

  dimension: shipto_postalcode {
    type: string
    sql: ${TABLE}.shipto_postalcode ;;
  }

  dimension: shipto_stateorprovince {
    type: string
    sql: ${TABLE}.shipto_stateorprovince ;;
  }

  dimension: shipto_telephone {
    type: string
    sql: ${TABLE}.shipto_telephone ;;
  }

  dimension: skippricecalculation {
    type: number
    sql: ${TABLE}.skippricecalculation ;;
  }

  dimension: stageid {
    type: string
    sql: ${TABLE}.stageid ;;
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

  dimension: totalamount {
    type: number
    sql: ${TABLE}.totalamount ;;
  }

  dimension: totalamount_base {
    type: number
    sql: ${TABLE}.totalamount_base ;;
  }

  dimension: totalamountlessfreight {
    type: number
    sql: ${TABLE}.totalamountlessfreight ;;
  }

  dimension: totalamountlessfreight_base {
    type: number
    sql: ${TABLE}.totalamountlessfreight_base ;;
  }

  dimension: totaldiscountamount {
    type: number
    sql: ${TABLE}.totaldiscountamount ;;
  }

  dimension: totaldiscountamount_base {
    type: number
    sql: ${TABLE}.totaldiscountamount_base ;;
  }

  dimension: totallineitemamount {
    type: number
    sql: ${TABLE}.totallineitemamount ;;
  }

  dimension: totallineitemamount_base {
    type: number
    sql: ${TABLE}.totallineitemamount_base ;;
  }

  dimension: totallineitemdiscountamount {
    type: number
    sql: ${TABLE}.totallineitemdiscountamount ;;
  }

  dimension: totallineitemdiscountamount_base {
    type: number
    sql: ${TABLE}.totallineitemdiscountamount_base ;;
  }

  dimension: totaltax {
    type: number
    sql: ${TABLE}.totaltax ;;
  }

  dimension: totaltax_base {
    type: number
    sql: ${TABLE}.totaltax_base ;;
  }

  dimension: traversedpath {
    type: string
    sql: ${TABLE}.traversedpath ;;
  }

  dimension: utcconversiontimezonecode {
    type: number
    sql: ${TABLE}.utcconversiontimezonecode ;;
  }

  dimension: versionnumber {
    type: number
    sql: ${TABLE}.versionnumber ;;
  }

  dimension: willcall {
    type: yesno
    sql: ${TABLE}.willcall ;;
  }

  measure: count {
    type: count
    drill_fields: [shipto_contactname, shipto_name, billto_name, name, billto_contactname]
  }
}
