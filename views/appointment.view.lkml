# The name of this view in Looker is "Appointment"
view: appointment {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `clikalia_dwh.appointment`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called " Cli Bookings Value" in Explore.

  dimension: _cli_bookings_value {
    type: string
    sql: ${TABLE}._cli_bookings_value ;;
  }

  dimension: _cli_cliente_value {
    type: string
    sql: ${TABLE}._cli_cliente_value ;;
  }

  dimension: _cli_comercial_value {
    type: string
    sql: ${TABLE}._cli_comercial_value ;;
  }

  dimension: _cli_intermediario_value {
    type: string
    sql: ${TABLE}._cli_intermediario_value ;;
  }

  dimension: _cli_nuevocomercial_value {
    type: string
    sql: ${TABLE}._cli_nuevocomercial_value ;;
  }

  dimension: _cli_unidaddecompra_value {
    type: string
    sql: ${TABLE}._cli_unidaddecompra_value ;;
  }

  dimension: _cli_unidaddeinmuebleid_value {
    type: string
    sql: ${TABLE}._cli_unidaddeinmuebleid_value ;;
  }

  dimension: _cli_visitacancelada_value {
    type: string
    sql: ${TABLE}._cli_visitacancelada_value ;;
  }

  dimension: _createdby_value {
    type: string
    sql: ${TABLE}._createdby_value ;;
  }

  dimension: _createdonbehalfby_value {
    type: string
    sql: ${TABLE}._createdonbehalfby_value ;;
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

  dimension: _regardingobjectid_value {
    type: string
    sql: ${TABLE}._regardingobjectid_value ;;
  }

  dimension: _sendermailboxid_value {
    type: string
    sql: ${TABLE}._sendermailboxid_value ;;
  }

  dimension: _serviceid_value {
    type: string
    sql: ${TABLE}._serviceid_value ;;
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

  dimension: activityadditionalparams {
    type: string
    sql: ${TABLE}.activityadditionalparams ;;
  }

  dimension: activityid {
    type: string
    sql: ${TABLE}.activityid ;;
  }

  dimension: activitytypecode {
    type: string
    sql: ${TABLE}.activitytypecode ;;
  }

  dimension: actualdurationminutes {
    type: number
    sql: ${TABLE}.actualdurationminutes ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: actualend {
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
    sql: ${TABLE}.actualend ;;
  }

  dimension_group: actualstart {
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
    sql: ${TABLE}.actualstart ;;
  }

  dimension: attachmenterrors {
    type: number
    sql: ${TABLE}.attachmenterrors ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: cli_acabados {
    type: number
    sql: ${TABLE}.cli_acabados ;;
  }

  dimension: cli_accesos {
    type: number
    sql: ${TABLE}.cli_accesos ;;
  }

  dimension: cli_asuntovisita {
    type: number
    sql: ${TABLE}.cli_asuntovisita ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
