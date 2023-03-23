# The name of this view in Looker is "Opportunity"
view: opportunity {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `clikalia_dwh.opportunity`
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

  dimension: _cli_abogado_value {
    type: string
    sql: ${TABLE}._cli_abogado_value ;;
  }

  dimension: _cli_abogadouser_value {
    type: string
    sql: ${TABLE}._cli_abogadouser_value ;;
  }

  dimension: _cli_apoderadoid_value {
    type: string
    sql: ${TABLE}._cli_apoderadoid_value ;;
  }

  dimension: _cli_asset_value {
    type: string
    sql: ${TABLE}._cli_asset_value ;;
  }

  dimension: _cli_assettechinfospecialsitid_value {
    type: string
    sql: ${TABLE}._cli_assettechinfospecialsitid_value ;;
  }

  dimension: _cli_assettechnicalsheet_value {
    type: string
    sql: ${TABLE}._cli_assettechnicalsheet_value ;;
  }

  dimension: _cli_banco_value {
    type: string
    sql: ${TABLE}._cli_banco_value ;;
  }

  dimension: _cli_codigopostal_value {
    type: string
    sql: ${TABLE}._cli_codigopostal_value ;;
  }

  dimension: _cli_comercial_value {
    type: string
    sql: ${TABLE}._cli_comercial_value ;;
  }

  dimension: _cli_estadovisitainteres_value {
    type: string
    sql: ${TABLE}._cli_estadovisitainteres_value ;;
  }

  dimension: _cli_leadgestionventa_value {
    type: string
    sql: ${TABLE}._cli_leadgestionventa_value ;;
  }

  dimension: _cli_notaria_value {
    type: string
    sql: ${TABLE}._cli_notaria_value ;;
  }

  dimension: _cli_notario_value {
    type: string
    sql: ${TABLE}._cli_notario_value ;;
  }

  dimension: _cli_oficialnotaria_value {
    type: string
    sql: ${TABLE}._cli_oficialnotaria_value ;;
  }

  dimension: _cli_organizadorvisitas_value {
    type: string
    sql: ${TABLE}._cli_organizadorvisitas_value ;;
  }

  dimension: _cli_sociedadid_value {
    type: string
    sql: ${TABLE}._cli_sociedadid_value ;;
  }

  dimension: _cli_tasador_value {
    type: string
    sql: ${TABLE}._cli_tasador_value ;;
  }

  dimension: _cli_titular_value {
    type: string
    sql: ${TABLE}._cli_titular_value ;;
  }

  dimension: _cli_unidadcompra_value {
    type: string
    sql: ${TABLE}._cli_unidadcompra_value ;;
  }

  dimension: _cli_unidaddeinmuebleid_value {
    type: string
    sql: ${TABLE}._cli_unidaddeinmuebleid_value ;;
  }

  dimension: _cli_usuariofinanciacion_value {
    type: string
    sql: ${TABLE}._cli_usuariofinanciacion_value ;;
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

  dimension: _modifiedby_value {
    type: string
    sql: ${TABLE}._modifiedby_value ;;
  }

  dimension: _modifiedonbehalfby_value {
    type: string
    sql: ${TABLE}._modifiedonbehalfby_value ;;
  }

  dimension: _msdyn_predictivescoreid_value {
    type: string
    sql: ${TABLE}._msdyn_predictivescoreid_value ;;
  }

  dimension: _msdyn_segmentid_value {
    type: string
    sql: ${TABLE}._msdyn_segmentid_value ;;
  }

  dimension: _originatingleadid_value {
    type: string
    sql: ${TABLE}._originatingleadid_value ;;
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

  dimension: _parentaccountid_value {
    type: string
    sql: ${TABLE}._parentaccountid_value ;;
  }

  dimension: _parentcontactid_value {
    type: string
    sql: ${TABLE}._parentcontactid_value ;;
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

  dimension: actualclosedate {
    type: string
    sql: ${TABLE}.actualclosedate ;;
  }

  dimension: actualvalue {
    type: number
    sql: ${TABLE}.actualvalue ;;
  }

  dimension: actualvalue_base {
    type: number
    sql: ${TABLE}.actualvalue_base ;;
  }

  dimension: budgetamount {
    type: number
    sql: ${TABLE}.budgetamount ;;
  }

  dimension: budgetamount_base {
    type: number
    sql: ${TABLE}.budgetamount_base ;;
  }

  dimension: budgetstatus {
    type: number
    sql: ${TABLE}.budgetstatus ;;
  }

  dimension: captureproposalfeedback {
    type: yesno
    sql: ${TABLE}.captureproposalfeedback ;;
  }

  dimension: cli_aceptadavisita {
    type: yesno
    sql: ${TABLE}.cli_aceptadavisita ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: cli_actualtenantentrydate {
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
    sql: ${TABLE}.cli_actualtenantentrydate ;;
  }

  dimension: cli_adid {
    type: string
    sql: ${TABLE}.cli_adid ;;
  }

  dimension: cli_aprobadocontrolofer {
    type: number
    sql: ${TABLE}.cli_aprobadocontrolofer ;;
  }

  dimension: cli_aprobadoofer {
    type: number
    sql: ${TABLE}.cli_aprobadoofer ;;
  }

  dimension: cli_aprobadooferycontrol {
    type: number
    sql: ${TABLE}.cli_aprobadooferycontrol ;;
  }

  dimension: cli_arras {
    type: number
    sql: ${TABLE}.cli_arras ;;
  }

  dimension: cli_arrascargas {
    type: yesno
    sql: ${TABLE}.cli_arrascargas ;;
  }

  dimension: cli_bonification {
    type: yesno
    sql: ${TABLE}.cli_bonification ;;
  }

  dimension: cli_cee {
    type: yesno
    sql: ${TABLE}.cli_cee ;;
  }

  dimension: cli_changesuppliesauthorization {
    type: yesno
    sql: ${TABLE}.cli_changesuppliesauthorization ;;
  }

  dimension: cli_codigo {
    type: string
    sql: ${TABLE}.cli_codigo ;;
  }

  dimension: cli_codigopostaltexto {
    type: string
    sql: ${TABLE}.cli_codigopostaltexto ;;
  }

  dimension: cli_comentarios {
    type: string
    sql: ${TABLE}.cli_comentarios ;;
  }

  dimension: cli_comentarioscallcenter {
    type: string
    sql: ${TABLE}.cli_comentarioscallcenter ;;
  }

  dimension: cli_comercializar {
    type: yesno
    sql: ${TABLE}.cli_comercializar ;;
  }

  dimension: cli_comercialtexto {
    type: string
    sql: ${TABLE}.cli_comercialtexto ;;
  }

  dimension: cli_comonoshasconocido {
    type: number
    sql: ${TABLE}.cli_comonoshasconocido ;;
  }

  dimension: cli_compraexplicado {
    type: number
    sql: ${TABLE}.cli_compraexplicado ;;
  }

  dimension: cli_comunicacion_valoracioninic {
    type: number
    sql: ${TABLE}.cli_comunicacion_valoracioninic ;;
  }

  dimension: cli_comunidaddepropietarios {
    type: yesno
    sql: ${TABLE}.cli_comunidaddepropietarios ;;
  }

  dimension: cli_concertadavisita {
    type: yesno
    sql: ${TABLE}.cli_concertadavisita ;;
  }

  dimension: cli_conocidopor {
    type: number
    sql: ${TABLE}.cli_conocidopor ;;
  }

  dimension: cli_contactoconnotaria {
    type: yesno
    sql: ${TABLE}.cli_contactoconnotaria ;;
  }

  dimension: cli_contactonotaria {
    type: yesno
    sql: ${TABLE}.cli_contactonotaria ;;
  }

  dimension_group: cli_contractenddate {
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
    sql: ${TABLE}.cli_contractenddate ;;
  }

  dimension: cli_ct_aprobado {
    type: yesno
    sql: ${TABLE}.cli_ct_aprobado ;;
  }

  dimension_group: cli_ct_datefirma {
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
    sql: ${TABLE}.cli_ct_datefirma ;;
  }

  dimension_group: cli_ct_datevencimiento {
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
    sql: ${TABLE}.cli_ct_datevencimiento ;;
  }

  dimension: cli_ct_diasduracioncontrato {
    type: number
    sql: ${TABLE}.cli_ct_diasduracioncontrato ;;
  }

  dimension: cli_ct_firmado {
    type: yesno
    sql: ${TABLE}.cli_ct_firmado ;;
  }

  dimension: cli_ct_honorarios {
    type: number
    sql: ${TABLE}.cli_ct_honorarios ;;
  }

  dimension: cli_ct_honorarios_base {
    type: number
    sql: ${TABLE}.cli_ct_honorarios_base ;;
  }

  dimension: cli_ct_meses {
    type: number
    sql: ${TABLE}.cli_ct_meses ;;
  }

  dimension: cli_ct_mesesrenovacion {
    type: number
    sql: ${TABLE}.cli_ct_mesesrenovacion ;;
  }

  dimension: cli_ct_plancontratado {
    type: yesno
    sql: ${TABLE}.cli_ct_plancontratado ;;
  }

  dimension: cli_ct_renovado {
    type: yesno
    sql: ${TABLE}.cli_ct_renovado ;;
  }

  dimension: cli_ct_tipo {
    type: number
    sql: ${TABLE}.cli_ct_tipo ;;
  }

  dimension: cli_cuentabancaria {
    type: string
    sql: ${TABLE}.cli_cuentabancaria ;;
  }

  dimension: cli_currentincome {
    type: number
    sql: ${TABLE}.cli_currentincome ;;
  }

  dimension: cli_currentincome_base {
    type: number
    sql: ${TABLE}.cli_currentincome_base ;;
  }

  dimension_group: cli_dateenviadaofertaformal {
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
    sql: ${TABLE}.cli_dateenviadaofertaformal ;;
  }

  dimension_group: cli_dateestimcaptacion {
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
    sql: ${TABLE}.cli_dateestimcaptacion ;;
  }

  dimension: cli_dateofentry {
    type: number
    sql: ${TABLE}.cli_dateofentry ;;
  }

  dimension: cli_delegardtoroperaciones {
    type: yesno
    sql: ${TABLE}.cli_delegardtoroperaciones ;;
  }

  dimension: cli_derramas {
    type: number
    sql: ${TABLE}.cli_derramas ;;
  }

  dimension: cli_derramas_base {
    type: number
    sql: ${TABLE}.cli_derramas_base ;;
  }

  dimension: cli_desiredentrydate {
    type: number
    sql: ${TABLE}.cli_desiredentrydate ;;
  }

  dimension: cli_diasdeformalizaciontexto {
    type: string
    sql: ${TABLE}.cli_diasdeformalizaciontexto ;;
  }

  dimension: cli_diasformalizacion {
    type: number
    sql: ${TABLE}.cli_diasformalizacion ;;
  }

  dimension: cli_docnotasimple {
    type: yesno
    sql: ${TABLE}.cli_docnotasimple ;;
  }

  dimension_group: cli_documentationreceiptdate {
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
    sql: ${TABLE}.cli_documentationreceiptdate ;;
  }

  dimension_group: cli_documentationvalidationdate {
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
    sql: ${TABLE}.cli_documentationvalidationdate ;;
  }

  dimension: cli_documentotros {
    type: string
    sql: ${TABLE}.cli_documentotros ;;
  }

  dimension: cli_encomercializacion {
    type: yesno
    sql: ${TABLE}.cli_encomercializacion ;;
  }

  dimension: cli_enviadaofertaformal {
    type: number
    sql: ${TABLE}.cli_enviadaofertaformal ;;
  }

  dimension: cli_enviarvaloracioninic {
    type: number
    sql: ${TABLE}.cli_enviarvaloracioninic ;;
  }

  dimension: cli_escriturado {
    type: yesno
    sql: ${TABLE}.cli_escriturado ;;
  }

  dimension: cli_espropietario {
    type: number
    sql: ${TABLE}.cli_espropietario ;;
  }

  dimension: cli_estadodelavisita {
    type: number
    sql: ${TABLE}.cli_estadodelavisita ;;
  }

  dimension: cli_exclusividad {
    type: number
    sql: ${TABLE}.cli_exclusividad ;;
  }

  dimension: cli_fase {
    type: string
    sql: ${TABLE}.cli_fase ;;
  }

  dimension_group: cli_fechaaceptacioncliente {
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
    sql: ${TABLE}.cli_fechaaceptacioncliente ;;
  }

  dimension_group: cli_fechaaprobacion {
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
    sql: ${TABLE}.cli_fechaaprobacion ;;
  }

  dimension_group: cli_fechacomunicacioncliente {
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
    sql: ${TABLE}.cli_fechacomunicacioncliente ;;
  }

  dimension_group: cli_fechadeaprobacionofertacliente {
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
    sql: ${TABLE}.cli_fechadeaprobacionofertacliente ;;
  }

  dimension_group: cli_fechaenvioaprobacion {
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
    sql: ${TABLE}.cli_fechaenvioaprobacion ;;
  }

  dimension_group: cli_fechaenvionotasimple {
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
    sql: ${TABLE}.cli_fechaenvionotasimple ;;
  }

  dimension_group: cli_fechafirmaarras {
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
    sql: ${TABLE}.cli_fechafirmaarras ;;
  }

  dimension_group: cli_fechaite {
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
    sql: ${TABLE}.cli_fechaite ;;
  }

  dimension_group: cli_fechamaximaescrituracion {
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
    sql: ${TABLE}.cli_fechamaximaescrituracion ;;
  }

  dimension_group: cli_fecharealescrituracion {
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
    sql: ${TABLE}.cli_fecharealescrituracion ;;
  }

  dimension_group: cli_fechareservaonline {
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
    sql: ${TABLE}.cli_fechareservaonline ;;
  }

  dimension_group: cli_fechasolicitudfinanciacion {
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
    sql: ${TABLE}.cli_fechasolicitudfinanciacion ;;
  }

  dimension_group: cli_fechavaloracion {
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
    sql: ${TABLE}.cli_fechavaloracion ;;
  }

  dimension_group: cli_fechavisita {
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
    sql: ${TABLE}.cli_fechavisita ;;
  }

  dimension: cli_financiacion {
    type: yesno
    sql: ${TABLE}.cli_financiacion ;;
  }

  dimension: cli_firstyearbonification {
    type: number
    sql: ${TABLE}.cli_firstyearbonification ;;
  }

  dimension: cli_firstyearbonification_base {
    type: number
    sql: ${TABLE}.cli_firstyearbonification_base ;;
  }

  dimension: cli_firstyearincome {
    type: number
    sql: ${TABLE}.cli_firstyearincome ;;
  }

  dimension: cli_firstyearincome_base {
    type: number
    sql: ${TABLE}.cli_firstyearincome_base ;;
  }

  dimension: cli_firstyearipc {
    type: number
    sql: ${TABLE}.cli_firstyearipc ;;
  }

  dimension_group: cli_firstyearipcdate {
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
    sql: ${TABLE}.cli_firstyearipcdate ;;
  }

  dimension: cli_furnitureprice {
    type: number
    sql: ${TABLE}.cli_furnitureprice ;;
  }

  dimension: cli_furnitureprice_base {
    type: number
    sql: ${TABLE}.cli_furnitureprice_base ;;
  }

  dimension: cli_importadodesdeexcel {
    type: yesno
    sql: ${TABLE}.cli_importadodesdeexcel ;;
  }

  dimension: cli_importearras {
    type: number
    sql: ${TABLE}.cli_importearras ;;
  }

  dimension: cli_importearras_base {
    type: number
    sql: ${TABLE}.cli_importearras_base ;;
  }

  dimension: cli_importearrastexto {
    type: string
    sql: ${TABLE}.cli_importearrastexto ;;
  }

  dimension: cli_importeescrituracion {
    type: number
    sql: ${TABLE}.cli_importeescrituracion ;;
  }

  dimension: cli_importeescrituracion_base {
    type: number
    sql: ${TABLE}.cli_importeescrituracion_base ;;
  }

  dimension: cli_importeescrituraciontexto {
    type: string
    sql: ${TABLE}.cli_importeescrituraciontexto ;;
  }

  dimension: cli_importeofertafinal {
    type: number
    sql: ${TABLE}.cli_importeofertafinal ;;
  }

  dimension: cli_importeofertafinal_base {
    type: number
    sql: ${TABLE}.cli_importeofertafinal_base ;;
  }

  dimension: cli_importeofertafinaltexto {
    type: string
    sql: ${TABLE}.cli_importeofertafinaltexto ;;
  }

  dimension: cli_importereserva {
    type: number
    sql: ${TABLE}.cli_importereserva ;;
  }

  dimension: cli_importereserva_base {
    type: number
    sql: ${TABLE}.cli_importereserva_base ;;
  }

  dimension: cli_importereservatexto {
    type: string
    sql: ${TABLE}.cli_importereservatexto ;;
  }

  dimension: cli_incomelast_3_months {
    type: number
    sql: ${TABLE}.cli_incomelast_3_months ;;
  }

  dimension: cli_incomelast_3_months_base {
    type: number
    sql: ${TABLE}.cli_incomelast_3_months_base ;;
  }

  dimension: cli_insurancecompany {
    type: string
    sql: ${TABLE}.cli_insurancecompany ;;
  }

  dimension: cli_insurancepolicenumber {
    type: string
    sql: ${TABLE}.cli_insurancepolicenumber ;;
  }

  dimension: cli_insuredcontentprice {
    type: number
    sql: ${TABLE}.cli_insuredcontentprice ;;
  }

  dimension: cli_insuredcontentprice_base {
    type: number
    sql: ${TABLE}.cli_insuredcontentprice_base ;;
  }

  dimension: cli_intencionprecioventa {
    type: number
    sql: ${TABLE}.cli_intencionprecioventa ;;
  }

  dimension: cli_intencionprecioventa_base {
    type: number
    sql: ${TABLE}.cli_intencionprecioventa_base ;;
  }

  dimension: cli_ipcupdate {
    type: yesno
    sql: ${TABLE}.cli_ipcupdate ;;
  }

  dimension: cli_leadfromtransformacion {
    type: yesno
    sql: ${TABLE}.cli_leadfromtransformacion ;;
  }

  dimension: cli_leadtransformado {
    type: yesno
    sql: ${TABLE}.cli_leadtransformado ;;
  }

  dimension: cli_legalanalisis {
    type: yesno
    sql: ${TABLE}.cli_legalanalisis ;;
  }

  dimension_group: cli_legaldocumentationreceiptdate {
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
    sql: ${TABLE}.cli_legaldocumentationreceiptdate ;;
  }

  dimension_group: cli_legaldocumentationvalidationdate {
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
    sql: ${TABLE}.cli_legaldocumentationvalidationdate ;;
  }

  dimension: cli_legalrevision {
    type: yesno
    sql: ${TABLE}.cli_legalrevision ;;
  }

  dimension: cli_liquidaciondeitp {
    type: yesno
    sql: ${TABLE}.cli_liquidaciondeitp ;;
  }

  dimension: cli_liquidacionplusvalia {
    type: yesno
    sql: ${TABLE}.cli_liquidacionplusvalia ;;
  }

  dimension: cli_localidadtexto {
    type: string
    sql: ${TABLE}.cli_localidadtexto ;;
  }

  dimension: cli_maxipc {
    type: number
    sql: ${TABLE}.cli_maxipc ;;
  }

  dimension: cli_monthlyincome {
    type: number
    sql: ${TABLE}.cli_monthlyincome ;;
  }

  dimension: cli_monthlyincome_base {
    type: number
    sql: ${TABLE}.cli_monthlyincome_base ;;
  }

  dimension: cli_motivoestado {
    type: number
    sql: ${TABLE}.cli_motivoestado ;;
  }

  dimension: cli_motivoinmueble {
    type: number
    sql: ${TABLE}.cli_motivoinmueble ;;
  }

  dimension: cli_motivonoventa {
    type: number
    sql: ${TABLE}.cli_motivonoventa ;;
  }

  dimension: cli_motivorechazo {
    type: number
    sql: ${TABLE}.cli_motivorechazo ;;
  }

  dimension: cli_motivoventa {
    type: number
    sql: ${TABLE}.cli_motivoventa ;;
  }

  dimension: cli_name {
    type: string
    sql: ${TABLE}.cli_name ;;
  }

  dimension: cli_notasimpledispon {
    type: number
    sql: ${TABLE}.cli_notasimpledispon ;;
  }

  dimension: cli_notasimpledisponible {
    type: yesno
    sql: ${TABLE}.cli_notasimpledisponible ;;
  }

  dimension: cli_numberoftenants {
    type: number
    sql: ${TABLE}.cli_numberoftenants ;;
  }

  dimension: cli_ofertamenosarras {
    type: number
    sql: ${TABLE}.cli_ofertamenosarras ;;
  }

  dimension: cli_ofertamenosarras_base {
    type: number
    sql: ${TABLE}.cli_ofertamenosarras_base ;;
  }

  dimension: cli_ofertamenosarrastexto {
    type: string
    sql: ${TABLE}.cli_ofertamenosarrastexto ;;
  }

  dimension: cli_opcionesventa {
    type: number
    sql: ${TABLE}.cli_opcionesventa ;;
  }

  dimension: cli_origenlead {
    type: number
    sql: ${TABLE}.cli_origenlead ;;
  }

  dimension: cli_origenleadinteres {
    type: number
    sql: ${TABLE}.cli_origenleadinteres ;;
  }

  dimension: cli_origincampaign {
    type: string
    sql: ${TABLE}.cli_origincampaign ;;
  }

  dimension: cli_pactogastos {
    type: number
    sql: ${TABLE}.cli_pactogastos ;;
  }

  dimension: cli_pagonotaria {
    type: yesno
    sql: ${TABLE}.cli_pagonotaria ;;
  }

  dimension: cli_pagoregistro {
    type: yesno
    sql: ${TABLE}.cli_pagoregistro ;;
  }

  dimension: cli_paistexto {
    type: string
    sql: ${TABLE}.cli_paistexto ;;
  }

  dimension: cli_paymentmethod {
    type: number
    sql: ${TABLE}.cli_paymentmethod ;;
  }

  dimension: cli_pbc {
    type: number
    sql: ${TABLE}.cli_pbc ;;
  }

  dimension: cli_periodocrossselling {
    type: number
    sql: ${TABLE}.cli_periodocrossselling ;;
  }

  dimension: cli_periodoexclusividad {
    type: number
    sql: ${TABLE}.cli_periodoexclusividad ;;
  }

  dimension: cli_plazoescrituracion {
    type: number
    sql: ${TABLE}.cli_plazoescrituracion ;;
  }

  dimension: cli_plazoescrituraciontexto {
    type: string
    sql: ${TABLE}.cli_plazoescrituraciontexto ;;
  }

  dimension_group: cli_policyenddate {
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
    sql: ${TABLE}.cli_policyenddate ;;
  }

  dimension: cli_policyprice {
    type: number
    sql: ${TABLE}.cli_policyprice ;;
  }

  dimension: cli_policyprice_base {
    type: number
    sql: ${TABLE}.cli_policyprice_base ;;
  }

  dimension_group: cli_policyrenewaldate {
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
    sql: ${TABLE}.cli_policyrenewaldate ;;
  }

  dimension_group: cli_policystartdate {
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
    sql: ${TABLE}.cli_policystartdate ;;
  }

  dimension: cli_precioesperventa {
    type: number
    sql: ${TABLE}.cli_precioesperventa ;;
  }

  dimension: cli_precioesperventa_base {
    type: number
    sql: ${TABLE}.cli_precioesperventa_base ;;
  }

  dimension: cli_preciopublicacinconreforma {
    type: number
    sql: ${TABLE}.cli_preciopublicacinconreforma ;;
  }

  dimension: cli_preciopublicacinconreforma_base {
    type: number
    sql: ${TABLE}.cli_preciopublicacinconreforma_base ;;
  }

  dimension: cli_preciopublicacionsinreforma {
    type: number
    sql: ${TABLE}.cli_preciopublicacionsinreforma ;;
  }

  dimension: cli_preciopublicacionsinreforma_base {
    type: number
    sql: ${TABLE}.cli_preciopublicacionsinreforma_base ;;
  }

  dimension: cli_precioventa {
    type: number
    sql: ${TABLE}.cli_precioventa ;;
  }

  dimension: cli_precioventa_base {
    type: number
    sql: ${TABLE}.cli_precioventa_base ;;
  }

  dimension: cli_pretensioneconomicacliente {
    type: number
    sql: ${TABLE}.cli_pretensioneconomicacliente ;;
  }

  dimension: cli_pretensioneconomicacliente_base {
    type: number
    sql: ${TABLE}.cli_pretensioneconomicacliente_base ;;
  }

  dimension: cli_priority {
    type: number
    sql: ${TABLE}.cli_priority ;;
  }

  dimension: cli_protocolo {
    type: number
    sql: ${TABLE}.cli_protocolo ;;
  }

  dimension: cli_provinciatexto {
    type: string
    sql: ${TABLE}.cli_provinciatexto ;;
  }

  dimension: cli_provisionfondos {
    type: number
    sql: ${TABLE}.cli_provisionfondos ;;
  }

  dimension: cli_provisionfondos_base {
    type: number
    sql: ${TABLE}.cli_provisionfondos_base ;;
  }

  dimension: cli_puertablindada {
    type: yesno
    sql: ${TABLE}.cli_puertablindada ;;
  }

  dimension: cli_qdecompra {
    type: number
    sql: ${TABLE}.cli_qdecompra ;;
  }

  dimension: cli_qdeventa {
    type: number
    sql: ${TABLE}.cli_qdeventa ;;
  }

  dimension: cli_range {
    type: number
    sql: ${TABLE}.cli_range ;;
  }

  dimension: cli_reasonforrejection {
    type: number
    sql: ${TABLE}.cli_reasonforrejection ;;
  }

  dimension: cli_reasonforvalidate {
    type: number
    sql: ${TABLE}.cli_reasonforvalidate ;;
  }

  dimension_group: cli_receiptdatefirstpayment {
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
    sql: ${TABLE}.cli_receiptdatefirstpayment ;;
  }

  dimension_group: cli_receiptdatequote {
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
    sql: ${TABLE}.cli_receiptdatequote ;;
  }

  dimension: cli_receivedpolicycertificate {
    type: yesno
    sql: ${TABLE}.cli_receivedpolicycertificate ;;
  }

  dimension: cli_reciboibi {
    type: number
    sql: ${TABLE}.cli_reciboibi ;;
  }

  dimension: cli_recipientchangeauthorization {
    type: yesno
    sql: ${TABLE}.cli_recipientchangeauthorization ;;
  }

  dimension: cli_reforma {
    type: number
    sql: ${TABLE}.cli_reforma ;;
  }

  dimension_group: cli_reroutevalidationdate {
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
    sql: ${TABLE}.cli_reroutevalidationdate ;;
  }

  dimension: cli_reservamasarras {
    type: number
    sql: ${TABLE}.cli_reservamasarras ;;
  }

  dimension: cli_reservamasarras_base {
    type: number
    sql: ${TABLE}.cli_reservamasarras_base ;;
  }

  dimension: cli_reservaonline {
    type: number
    sql: ${TABLE}.cli_reservaonline ;;
  }

  dimension: cli_resolucion {
    type: number
    sql: ${TABLE}.cli_resolucion ;;
  }

  dimension: cli_respuestaofertaformal {
    type: number
    sql: ${TABLE}.cli_respuestaofertaformal ;;
  }

  dimension: cli_resultadoite {
    type: number
    sql: ${TABLE}.cli_resultadoite ;;
  }

  dimension: cli_resultadovisitaventa {
    type: number
    sql: ${TABLE}.cli_resultadovisitaventa ;;
  }

  dimension: cli_salaryrange {
    type: string
    sql: ${TABLE}.cli_salaryrange ;;
  }

  dimension: cli_secondyearbonification {
    type: number
    sql: ${TABLE}.cli_secondyearbonification ;;
  }

  dimension: cli_secondyearbonification_base {
    type: number
    sql: ${TABLE}.cli_secondyearbonification_base ;;
  }

  dimension: cli_secondyearincome {
    type: number
    sql: ${TABLE}.cli_secondyearincome ;;
  }

  dimension: cli_secondyearincome_base {
    type: number
    sql: ${TABLE}.cli_secondyearincome_base ;;
  }

  dimension: cli_secondyearipc {
    type: number
    sql: ${TABLE}.cli_secondyearipc ;;
  }

  dimension_group: cli_secondyearipcdate {
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
    sql: ${TABLE}.cli_secondyearipcdate ;;
  }

  dimension: cli_sendemailcontactzone {
    type: yesno
    sql: ${TABLE}.cli_sendemailcontactzone ;;
  }

  dimension_group: cli_sentcontractdate {
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
    sql: ${TABLE}.cli_sentcontractdate ;;
  }

  dimension: cli_signaturetype {
    type: number
    sql: ${TABLE}.cli_signaturetype ;;
  }

  dimension: cli_solicitahipoteca {
    type: yesno
    sql: ${TABLE}.cli_solicitahipoteca ;;
  }

  dimension: cli_solutions {
    type: string
    sql: ${TABLE}.cli_solutions ;;
  }

  dimension: cli_solvecypercent {
    type: number
    sql: ${TABLE}.cli_solvecypercent ;;
  }

  dimension: cli_solvency {
    type: number
    sql: ${TABLE}.cli_solvency ;;
  }

  dimension: cli_subrazon {
    type: number
    sql: ${TABLE}.cli_subrazon ;;
  }

  dimension: cli_tasacionrealizada {
    type: yesno
    sql: ${TABLE}.cli_tasacionrealizada ;;
  }

  dimension: cli_thirdyearbonification {
    type: number
    sql: ${TABLE}.cli_thirdyearbonification ;;
  }

  dimension: cli_thirdyearbonification_base {
    type: number
    sql: ${TABLE}.cli_thirdyearbonification_base ;;
  }

  dimension: cli_thirdyearincome {
    type: number
    sql: ${TABLE}.cli_thirdyearincome ;;
  }

  dimension: cli_thirdyearincome_base {
    type: number
    sql: ${TABLE}.cli_thirdyearincome_base ;;
  }

  dimension: cli_thirdyearipc {
    type: number
    sql: ${TABLE}.cli_thirdyearipc ;;
  }

  dimension_group: cli_thirdyearipcdate {
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
    sql: ${TABLE}.cli_thirdyearipcdate ;;
  }

  dimension: cli_tipocomprador {
    type: number
    sql: ${TABLE}.cli_tipocomprador ;;
  }

  dimension: cli_tipodearras {
    type: number
    sql: ${TABLE}.cli_tipodearras ;;
  }

  dimension: cli_tipodeunidaddeventa {
    type: number
    sql: ${TABLE}.cli_tipodeunidaddeventa ;;
  }

  dimension: cli_tipoenviooferta {
    type: number
    sql: ${TABLE}.cli_tipoenviooferta ;;
  }

  dimension: cli_tipofirmaarras {
    type: number
    sql: ${TABLE}.cli_tipofirmaarras ;;
  }

  dimension: cli_tipointeres {
    type: number
    sql: ${TABLE}.cli_tipointeres ;;
  }

  dimension: cli_tituloadquisicion {
    type: string
    sql: ${TABLE}.cli_tituloadquisicion ;;
  }

  dimension: cli_usufructo {
    type: yesno
    sql: ${TABLE}.cli_usufructo ;;
  }

  dimension: cli_validacionresposablearras {
    type: yesno
    sql: ${TABLE}.cli_validacionresposablearras ;;
  }

  dimension: cli_validateddocumentationcommercial {
    type: number
    sql: ${TABLE}.cli_validateddocumentationcommercial ;;
  }

  dimension: cli_validateddocumentationlegal {
    type: number
    sql: ${TABLE}.cli_validateddocumentationlegal ;;
  }

  dimension: cli_validationstatus {
    type: number
    sql: ${TABLE}.cli_validationstatus ;;
  }

  dimension_group: cli_validcertificatedate {
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
    sql: ${TABLE}.cli_validcertificatedate ;;
  }

  dimension: cli_valoracioninicial {
    type: number
    sql: ${TABLE}.cli_valoracioninicial ;;
  }

  dimension: cli_valoracioninicial_base {
    type: number
    sql: ${TABLE}.cli_valoracioninicial_base ;;
  }

  dimension: cli_valoracioninicialmax {
    type: number
    sql: ${TABLE}.cli_valoracioninicialmax ;;
  }

  dimension: cli_valoracioninicialmax_base {
    type: number
    sql: ${TABLE}.cli_valoracioninicialmax_base ;;
  }

  dimension: cli_verifyvalidated {
    type: number
    sql: ${TABLE}.cli_verifyvalidated ;;
  }

  dimension_group: cli_verifyvalidateddate {
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
    sql: ${TABLE}.cli_verifyvalidateddate ;;
  }

  dimension: cli_virtual {
    type: yesno
    sql: ${TABLE}.cli_virtual ;;
  }

  dimension: closeprobability {
    type: number
    sql: ${TABLE}.closeprobability ;;
  }

  dimension: completefinalproposal {
    type: yesno
    sql: ${TABLE}.completefinalproposal ;;
  }

  dimension: completeinternalreview {
    type: yesno
    sql: ${TABLE}.completeinternalreview ;;
  }

  dimension: confirminterest {
    type: yesno
    sql: ${TABLE}.confirminterest ;;
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

  dimension: currentsituation {
    type: string
    sql: ${TABLE}.currentsituation ;;
  }

  dimension: customerneed {
    type: string
    sql: ${TABLE}.customerneed ;;
  }

  dimension: customerpainpoints {
    type: string
    sql: ${TABLE}.customerpainpoints ;;
  }

  dimension: decisionmaker {
    type: yesno
    sql: ${TABLE}.decisionmaker ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: developproposal {
    type: yesno
    sql: ${TABLE}.developproposal ;;
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

  dimension: emailaddress {
    type: string
    sql: ${TABLE}.emailaddress ;;
  }

  dimension: estimatedclosedate {
    type: string
    sql: ${TABLE}.estimatedclosedate ;;
  }

  dimension: estimatedvalue {
    type: number
    sql: ${TABLE}.estimatedvalue ;;
  }

  dimension: estimatedvalue_base {
    type: number
    sql: ${TABLE}.estimatedvalue_base ;;
  }

  dimension: evaluatefit {
    type: yesno
    sql: ${TABLE}.evaluatefit ;;
  }

  dimension: exchangerate {
    type: number
    sql: ${TABLE}.exchangerate ;;
  }

  dimension: filedebrief {
    type: yesno
    sql: ${TABLE}.filedebrief ;;
  }

  dimension: finaldecisiondate {
    type: string
    sql: ${TABLE}.finaldecisiondate ;;
  }

  dimension: freightamount {
    type: number
    sql: ${TABLE}.freightamount ;;
  }

  dimension: freightamount_base {
    type: number
    sql: ${TABLE}.freightamount_base ;;
  }

  dimension: identifycompetitors {
    type: yesno
    sql: ${TABLE}.identifycompetitors ;;
  }

  dimension: identifycustomercontacts {
    type: yesno
    sql: ${TABLE}.identifycustomercontacts ;;
  }

  dimension: identifypursuitteam {
    type: yesno
    sql: ${TABLE}.identifypursuitteam ;;
  }

  dimension: importsequencenumber {
    type: number
    sql: ${TABLE}.importsequencenumber ;;
  }

  dimension: initialcommunication {
    type: number
    sql: ${TABLE}.initialcommunication ;;
  }

  dimension: isrevenuesystemcalculated {
    type: yesno
    sql: ${TABLE}.isrevenuesystemcalculated ;;
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

  dimension: msdyn_forecastcategory {
    type: number
    sql: ${TABLE}.msdyn_forecastcategory ;;
  }

  dimension: msdyn_gdproptout {
    type: yesno
    sql: ${TABLE}.msdyn_gdproptout ;;
  }

  dimension: msdyn_opportunitygrade {
    type: number
    sql: ${TABLE}.msdyn_opportunitygrade ;;
  }

  dimension: msdyn_opportunityscore {
    type: number
    sql: ${TABLE}.msdyn_opportunityscore ;;
  }

  dimension: msdyn_opportunityscoretrend {
    type: number
    sql: ${TABLE}.msdyn_opportunityscoretrend ;;
  }

  dimension: msdyn_scorehistory {
    type: string
    sql: ${TABLE}.msdyn_scorehistory ;;
  }

  dimension: msdyn_scorereasons {
    type: string
    sql: ${TABLE}.msdyn_scorereasons ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: need {
    type: number
    sql: ${TABLE}.need ;;
  }

  dimension: onholdtime {
    type: number
    sql: ${TABLE}.onholdtime ;;
  }

  dimension: opportunityid {
    type: string
    sql: ${TABLE}.opportunityid ;;
  }

  dimension: opportunityratingcode {
    type: number
    sql: ${TABLE}.opportunityratingcode ;;
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

  dimension: participatesinworkflow {
    type: yesno
    sql: ${TABLE}.participatesinworkflow ;;
  }

  dimension: presentfinalproposal {
    type: yesno
    sql: ${TABLE}.presentfinalproposal ;;
  }

  dimension: presentproposal {
    type: yesno
    sql: ${TABLE}.presentproposal ;;
  }

  dimension: pricingerrorcode {
    type: number
    sql: ${TABLE}.pricingerrorcode ;;
  }

  dimension: prioritycode {
    type: number
    sql: ${TABLE}.prioritycode ;;
  }

  dimension: processid {
    type: string
    sql: ${TABLE}.processid ;;
  }

  dimension: proposedsolution {
    type: string
    sql: ${TABLE}.proposedsolution ;;
  }

  dimension: purchaseprocess {
    type: number
    sql: ${TABLE}.purchaseprocess ;;
  }

  dimension: purchasetimeframe {
    type: number
    sql: ${TABLE}.purchasetimeframe ;;
  }

  dimension: pursuitdecision {
    type: yesno
    sql: ${TABLE}.pursuitdecision ;;
  }

  dimension: qualificationcomments {
    type: string
    sql: ${TABLE}.qualificationcomments ;;
  }

  dimension: quotecomments {
    type: string
    sql: ${TABLE}.quotecomments ;;
  }

  dimension: resolvefeedback {
    type: yesno
    sql: ${TABLE}.resolvefeedback ;;
  }

  dimension: salesstage {
    type: number
    sql: ${TABLE}.salesstage ;;
  }

  dimension: salesstagecode {
    type: number
    sql: ${TABLE}.salesstagecode ;;
  }

  dimension_group: schedulefollowup_prospect {
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
    sql: ${TABLE}.schedulefollowup_prospect ;;
  }

  dimension_group: schedulefollowup_qualify {
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
    sql: ${TABLE}.schedulefollowup_qualify ;;
  }

  dimension_group: scheduleproposalmeeting {
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
    sql: ${TABLE}.scheduleproposalmeeting ;;
  }

  dimension: sendthankyounote {
    type: yesno
    sql: ${TABLE}.sendthankyounote ;;
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

  dimension: stepid {
    type: string
    sql: ${TABLE}.stepid ;;
  }

  dimension: stepname {
    type: string
    sql: ${TABLE}.stepname ;;
  }

  dimension: teamsfollowed {
    type: number
    sql: ${TABLE}.teamsfollowed ;;
  }

  dimension: timeline {
    type: number
    sql: ${TABLE}.timeline ;;
  }

  dimension: timespentbymeonemailandmeetings {
    type: string
    sql: ${TABLE}.timespentbymeonemailandmeetings ;;
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

  measure: count {
    type: count
    drill_fields: [stepname, name, cli_name]
  }

  measure: Completed_visits{
    type: count_distinct
    sql: ${opportunityid}  ;;
    filters: [cli_estadodelavisita: "1"]
  }
  measure: scheduled_visits {
    type: count_distinct
    sql: ${opportunityid} ;;
    filters: [cli_estadodelavisita : "3"]
  }
  measure: organizador_visitas {
    type:  count_distinct
    sql: ${_cli_organizadorvisitas_value} ;;
  }

  measure: scheduled_visits_by_operator{
    type: number
    sql: safe_divide( ${scheduled_visits} ,  ${organizador_visitas});;
  }
  measure: rentals {
    type: count_distinct
    sql: ${opportunityid} ;;
    filters: [cli_asset.cli_balancestatus: "182000000",cli_verifyvalidated: "321130001"]
  }
  measure: Leads_per_rental {
    type:  number
    sql: safe_divide(${total_leads},${rentals}) ;;
  }
  measure: qualified_leads_funnel {
    type: count_distinct
    sql: ${opportunityid} ;;
    filters: [cli_verifyvalidated: "321130001"]
  }
  measure: total_leads {
    type: count_distinct
    sql: ${opportunityid} ;;
    filters: [ cli_tipointeres: "182000001"]
  }
  measure: Qualified_leads{
    type: number
    sql: safe_divide(${qualified_leads_funnel} , ${total_leads});;
  }
  measure: numeradorML1  {
    type:count_distinct
    sql: ${opportunityid} ;;
    filters: [statecode: "1"]
  }
  measure: numeradorML2  {
    type:count_distinct
    sql: ${opportunityid} ;;
    filters: [statuscode: "2"]
  }
  measure: numeradorML3  {
    type:count_distinct
    sql: ${opportunityid} ;;
    filters: [statuscode: "182000012"]
  }
  measure: Managed_leads{
    type: number
    sql: safe_divide((${numeradorML1} + ${numeradorML2} +${numeradorML3}) ,${total_leads});;
  }
  measure: Managed_leads_funnel{
    type: number
    sql: (${numeradorML1} + ${numeradorML2} +${numeradorML3});;
  }
  measure: Reserves {
    type: count_distinct
    sql:  case when current_date()>=${cli_fechaaprobacion_date} then ${opportunityid}  END ;;
  }
  measure: Contrats_signed {
    type: count_distinct
    sql:  case when current_date()>=${cli_ct_datefirma_date} then ${opportunityid}  END ;;
  }
  dimension: channel {
    type: string
    sql: case when cli_verifyvalidated= 321130001 and  cli_origenlead =182000018 then "B2B – Proactivo"
              when cli_verifyvalidated= 321130001 and cli_origenlead =182000017 then "B2B – Web"
              when cli_verifyvalidated= 321130001 and  cli_origenlead =321130002 then "B2B – Intermediarios"
              when cli_verifyvalidated= 321130001 and  cli_origenlead =321130000 then "C2B – Web"
              when cli_verifyvalidated= 321130001 and  cli_origenlead =182000002 then "MKT – Landing"
              when cli_verifyvalidated= 321130001 and  cli_origenlead =182000004 then "MKT – Social Ads"
              when cli_verifyvalidated= 321130001 and  cli_origenlead =182000010 then "Otro"
              when cli_verifyvalidated= 321130001 and  cli_origenlead =182000016 then "Web"end ;;
  }
  measure: Qualified_leads_by_channel {
    type: number
    sql: count(${channel});;
  }
  measure: Completed_visit_vs_qualified_leads {
    type: number
    sql: ${Completed_visits}/${qualified_leads_funnel} ;;
  }
  measure: days_to_schedule_visit {
    type: average
    sql: date_diff(${appointment.createdon_date},${createdon_date}, day) ;;
  }
    dimension: visit_reserve_time {
    type: number
    sql: date_diff(${cli_fechaaprobacion_date}, ${appointment.scheduledstart_date}, day) ;;
  }
  dimension: publication_visit_time {
    type: number
    sql: date_diff(${appointment.scheduledstart_date}, ${portal.publication_date_date}, day) ;;
  }
  measure: offers {
    type: count_distinct
    sql: ${opportunityid}  ;;
    filters: [cli_asset.cli_balancestatus: "182000000"]
  }

}
