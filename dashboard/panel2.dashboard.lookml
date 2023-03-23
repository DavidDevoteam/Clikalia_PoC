- dashboard: panel2
  title: Rentals Dashboard 2vs
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  filters_location_top: false
  preferred_slug: v9ddRnUEd1CQUtcwSAadeT
  elements:
  - name: " "
    type: text
    title_text: " "
    subtitle_text: ''
    body_text: '<hr style="border: solid 3px #FF0049; border-radius: 3px;">'
    row: 12
    col: 0
    width: 24
    height: 2
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '<hr style="border: solid 3px #FF0049; border-radius: 3px;">'
    row: 2
    col: 0
    width: 24
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |
      <div style='height: 50px;
        width: 50px;'><img src="https://storage.cloud.google.com/clikalia-infra-esp-datawarehouse/Clikalia%20-%20Isotipo%20Rojo.png" /></div>
    row: 0
    col: 21
    width: 2
    height: 2
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<h1 style='font-size: 3em; font-weight: bold;color: #363232; padding-top:\
      \ 0px;'>Rentals</h1>"
    row: 0
    col: 1
    width: 5
    height: 2
  - title: Pending Rental
    name: Pending Rental
    model: clikalia_dwh
    explore: assets_main
    type: single_value
    fields: [assets_main.Pending_Rentals]
    filters:
      portfolio_strategy.commercialization_strategy: RENTAL,"SALE_AND_RENTAL"
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#FF0049"
    single_value_title: Pending Rental
    value_format: ''
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 4
    col: 1
    width: 4
    height: 2
  - title: Completed visits
    name: Completed visits
    model: clikalia_dwh
    explore: opportunity
    type: single_value
    fields: [opportunity.Completed_visits]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: sum_of_cli_estadodelavisita, based_on: opportunity.cli_estadodelavisita,
        expression: '', label: Sum of Cli Estadodelavisita, type: sum, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Completed visits
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Createdon Date: opportunity.createdon_date
    row: 4
    col: 5
    width: 4
    height: 2
  - title: Reserves
    name: Reserves
    model: clikalia_dwh
    explore: opportunity
    type: single_value
    fields: [opportunity.Reserves]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Reserves
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Createdon Date: opportunity.createdon_date
    row: 4
    col: 9
    width: 4
    height: 2
  - title: Contrats signed
    name: Contrats signed
    model: clikalia_dwh
    explore: rent_contract
    type: single_value
    fields: [rent_contract.Contrats_signed]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Contrats signed
    series_types: {}
    defaults_version: 1
    listen:
      Createdon Date: rent_contract.date_signature_real_date
    row: 4
    col: 13
    width: 3
    height: 2
  - title: New Tile
    name: New Tile
    model: clikalia_dwh
    explore: opportunity
    type: single_value
    fields: [opportunity.Qualified_leads]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Qualified leads
    value_format: 0.00%
    hidden_pivots: {}
    defaults_version: 1
    series_types: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Createdon Date: opportunity.createdon_date
    row: 8
    col: 1
    width: 3
    height: 2
  - title: New Tile
    name: New Tile (2)
    model: clikalia_dwh
    explore: opportunity
    type: single_value
    fields: [opportunity.Managed_leads]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Managed  Leads
    value_format: 0.00%
    hidden_pivots: {}
    defaults_version: 1
    series_types: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Createdon Date: opportunity.createdon_date
    row: 10
    col: 1
    width: 3
    height: 2
  - title: Visits
    name: Visits
    model: clikalia_dwh
    explore: opportunity
    type: looker_bar
    fields: [opportunity.scheduled_visits, opportunity.cli_provinciatexto, opportunity.Completed_visits]
    sorts: [opportunity.scheduled_visits desc 0]
    limit: 4
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: opportunity.Qualified_leads,
            id: opportunity.Qualified_leads, name: Qualified Leads}, {axisId: opportunity.Managed_leads,
            id: opportunity.Managed_leads, name: Managed Leads}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: log}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    series_types: {}
    series_colors:
      opportunity.scheduled_visits: "#FEAAAA"
      opportunity.Completed_visits: "#FF0049"
    column_group_spacing_ratio: 0.6
    hidden_pivots: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen:
      Createdon Date: opportunity.createdon_date
    row: 4
    col: 16
    width: 7
    height: 8
  - title: Funnel
    name: Funnel
    model: clikalia_dwh
    explore: opportunity
    type: looker_funnel
    fields: [opportunity.total_leads, opportunity.qualified_leads_funnel, opportunity.Managed_leads_funnel,
      opportunity.scheduled_visits, opportunity.Completed_visits, opportunity.Reserves,
      opportunity.Contrats_signed]
    limit: 4
    column_limit: 50
    leftAxisLabelVisible: true
    leftAxisLabel: ''
    rightAxisLabelVisible: true
    rightAxisLabel: ''
    smoothedBars: false
    orientation: rows
    labelPosition: left
    percentType: total
    percentPosition: hidden
    valuePosition: inline
    labelColorEnabled: true
    labelColor: "#FFF"
    color_application:
      collection_id: clikalia
      custom:
        id: 1ede4c7e-aeff-3cb3-4f76-01fe55159969
        label: Custom
        type: continuous
        stops:
        - color: "#FF0049"
          offset: 0
        - color: "#ff1c2e"
          offset: 100
      options:
        steps: 5
        reverse: false
    isStepped: true
    labelScale: ".8"
    labelOverlap: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: opportunity.Qualified_leads,
            id: opportunity.Qualified_leads, name: Qualified Leads}, {axisId: opportunity.Managed_leads,
            id: opportunity.Managed_leads, name: Managed Leads}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: log}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    font_size: '12'
    series_types: {}
    series_labels: {}
    hidden_pivots: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    truncate_column_names: false
    up_color: false
    down_color: false
    total_color: false
    hidden_fields: []
    hidden_points_if_no: []
    show_null_points: true
    title_hidden: true
    listen:
      Createdon Date: opportunity.createdon_date
    row: 14
    col: 1
    width: 7
    height: 7
  - title: Qualified leads by channel
    name: Qualified leads by channel
    model: clikalia_dwh
    explore: opportunity
    type: looker_pie
    fields: [opportunity.channel, opportunity.Qualified_leads_by_channel]
    sorts: [opportunity.Qualified_leads_by_channel desc 0]
    limit: 10
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 70
    color_application:
      collection_id: clikalia
      custom:
        id: 06cb27ce-8b6b-5ef3-1a92-892e308ddf42
        label: Custom
        type: continuous
        stops:
        - color: "#FF0049"
          offset: 0
        - color: "#ffa9c8"
          offset: 100
      options:
        steps: 5
        reverse: false
    series_colors: {}
    series_labels: {}
    leftAxisLabelVisible: true
    leftAxisLabel: ''
    rightAxisLabelVisible: true
    rightAxisLabel: ''
    smoothedBars: false
    orientation: rows
    labelPosition: left
    percentType: total
    percentPosition: hidden
    valuePosition: inline
    labelColorEnabled: true
    labelColor: "#FFF"
    isStepped: true
    labelScale: ".8"
    labelOverlap: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: opportunity.Qualified_leads,
            id: opportunity.Qualified_leads, name: Qualified Leads}, {axisId: opportunity.Managed_leads,
            id: opportunity.Managed_leads, name: Managed Leads}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: log}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    font_size: '12'
    series_types: {}
    hidden_pivots: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    truncate_column_names: false
    up_color: false
    down_color: false
    total_color: false
    hidden_fields: []
    hidden_points_if_no: []
    show_null_points: true
    listen:
      Createdon Date: opportunity.createdon_date
    row: 6
    col: 10
    width: 6
    height: 6
  - title: Leads Management
    name: Leads Management
    model: clikalia_dwh
    explore: opportunity
    type: looker_column
    fields: [opportunity.total_leads, opportunity.cli_provinciatexto, opportunity.qualified_leads_funnel,
      opportunity.Managed_leads]
    sorts: [opportunity.total_leads desc 0]
    limit: 5
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: clikalia
      custom:
        id: e923766a-5502-e34f-34c8-a51172544c27
        label: Custom
        type: continuous
        stops:
        - color: "#FF0049"
          offset: 0
        - color: "#ffa5b1"
          offset: 100
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: left, series: [{axisId: opportunity.Qualified_leads,
            id: opportunity.Qualified_leads, name: Qualified Leads}, {axisId: opportunity.Managed_leads,
            id: opportunity.Managed_leads, name: Managed Leads}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: log}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    font_size: '12'
    series_types: {}
    series_colors: {}
    series_labels: {}
    value_labels: legend
    label_type: labPer
    inner_radius: 70
    start_angle:
    end_angle:
    leftAxisLabelVisible: true
    leftAxisLabel: ''
    rightAxisLabelVisible: true
    rightAxisLabel: ''
    smoothedBars: false
    orientation: rows
    labelPosition: left
    percentType: total
    percentPosition: hidden
    valuePosition: inline
    labelColorEnabled: true
    labelColor: "#FFF"
    isStepped: true
    labelScale: ".8"
    labelOverlap: false
    hidden_pivots: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    truncate_column_names: false
    up_color: false
    down_color: false
    total_color: false
    hidden_fields: []
    hidden_points_if_no: []
    show_null_points: true
    listen:
      Createdon Date: appointment.createdon_date
    row: 6
    col: 4
    width: 6
    height: 6
  - title: Scheduled visits by operator
    name: Scheduled visits by operator
    model: clikalia_dwh
    explore: opportunity
    type: single_value
    fields: [opportunity.scheduled_visits_by_operator]
    limit: 5
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: clikalia
      custom:
        id: e923766a-5502-e34f-34c8-a51172544c27
        label: Custom
        type: continuous
        stops:
        - color: "#FF0049"
          offset: 0
        - color: "#ffa5b1"
          offset: 100
      options:
        steps: 5
        reverse: false
    custom_color: "#FF0049"
    single_value_title: Scheduled visits by operator
    value_format: '0'
    conditional_formatting: [{type: not equal to, value: 999999999999999, background_color: "#FF0049",
        font_color: !!null '', color_application: {collection_id: clikalia, palette_id: clikalia-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: opportunity.Qualified_leads,
            id: opportunity.Qualified_leads, name: Qualified Leads}, {axisId: opportunity.Managed_leads,
            id: opportunity.Managed_leads, name: Managed Leads}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: log}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hidden_series: []
    legend_position: center
    font_size: '12'
    series_types: {}
    point_style: none
    series_colors: {}
    series_labels: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: labPer
    inner_radius: 70
    start_angle:
    end_angle:
    leftAxisLabelVisible: true
    leftAxisLabel: ''
    rightAxisLabelVisible: true
    rightAxisLabel: ''
    smoothedBars: false
    orientation: rows
    labelPosition: left
    percentType: total
    percentPosition: hidden
    valuePosition: inline
    labelColorEnabled: true
    labelColor: "#FFF"
    isStepped: true
    labelScale: ".8"
    labelOverlap: false
    hidden_pivots: {}
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    truncate_column_names: false
    up_color: false
    down_color: false
    total_color: false
    hidden_fields: []
    hidden_points_if_no: []
    show_null_points: true
    listen:
      Createdon Date: opportunity.createdon_date
    row: 14
    col: 11
    width: 3
    height: 3
  - title: Completed visits vs //nqualified leads
    name: Completed visits vs qualified leads
    model: clikalia_dwh
    explore: opportunity
    type: single_value
    fields: [opportunity.Completed_visit_vs_qualified_leads]
    limit: 5
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: clikalia
      custom:
        id: e923766a-5502-e34f-34c8-a51172544c27
        label: Custom
        type: continuous
        stops:
        - color: "#FF0049"
          offset: 0
        - color: "#ffa5b1"
          offset: 100
      options:
        steps: 5
        reverse: false
    single_value_title: Completed visits vs qualified leads
    value_format: 0%
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: opportunity.Qualified_leads,
            id: opportunity.Qualified_leads, name: Qualified Leads}, {axisId: opportunity.Managed_leads,
            id: opportunity.Managed_leads, name: Managed Leads}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: log}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hidden_series: []
    legend_position: center
    font_size: '10'
    series_types: {}
    point_style: none
    series_colors: {}
    series_labels: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: labPer
    inner_radius: 70
    start_angle:
    end_angle:
    leftAxisLabelVisible: true
    leftAxisLabel: ''
    rightAxisLabelVisible: true
    rightAxisLabel: ''
    smoothedBars: false
    orientation: rows
    labelPosition: left
    percentType: total
    percentPosition: hidden
    valuePosition: inline
    labelColorEnabled: true
    labelColor: "#FFF"
    isStepped: true
    labelScale: ".8"
    labelOverlap: false
    hidden_pivots: {}
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    truncate_column_names: false
    up_color: false
    down_color: false
    total_color: false
    hidden_fields: []
    hidden_points_if_no: []
    show_null_points: true
    listen:
      Createdon Date: opportunity.createdon_date
    row: 14
    col: 14
    width: 4
    height: 3
  - title: Days to schedule visit
    name: Days to schedule visit
    model: clikalia_dwh
    explore: opportunity
    type: single_value
    fields: [opportunity.days_to_schedule_visit]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application: undefined
    custom_color: "#FF0049"
    single_value_title: Days to schedule visit
    value_format: '0'
    conditional_formatting: [{type: not equal to, value: 99999999999, background_color: "#FF0049",
        font_color: !!null '', color_application: {collection_id: clikalia, palette_id: clikalia-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    bar_arm_length: 25
    bar_arm_weight: 50
    bar_spinner_length: 100
    bar_spinner_weight: 50
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    up_color: false
    down_color: false
    total_color: false
    show_value_labels: false
    x_axis_scale: auto
    listen:
      Createdon Date: opportunity.createdon_date
    row: 14
    col: 8
    width: 3
    height: 3
  - title: Rescheduled visits vs no completed
    name: Rescheduled visits vs no completed
    model: clikalia_dwh
    explore: appointment
    type: single_value
    fields: [appointment.Rescheduled_visits_vs_no_completed]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Rescheduled visits vs no completed
    value_format: 0.00%
    defaults_version: 1
    listen:
      Createdon Date: appointment.scheduledstart_date
    row: 14
    col: 18
    width: 5
    height: 3
  - title: Leads per rental
    name: Leads per rental
    model: clikalia_dwh
    explore: opportunity
    type: single_value
    fields: [opportunity.Leads_per_rental]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Leads per rental
    value_format: '0.00'
    defaults_version: 1
    listen:
      Createdon Date: opportunity.createdon_date
    row: 6
    col: 1
    width: 3
    height: 2
  - title: Purchase-publication
    name: Purchase-publication
    model: clikalia_dwh
    explore: assets_main
    type: single_value
    fields: [average_of_purchase_publication_time_2]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: average_of_purchase_publication_time, based_on: assets_main.Purchase_publication_time,
        expression: '', label: Average of Purchase Publication Time, type: average,
        _kind_hint: measure, _type_hint: number}, {measure: average_of_purchase_publication_time_2,
        based_on: assets_main.Purchase_publication_time, expression: '', label: Average
          of Purchase Publication Time, type: average, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Purchase-publication
    value_format: 0 "days"
    defaults_version: 1
    hidden_pivots: {}
    series_types: {}
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 17
    col: 14
    width: 4
    height: 3
  - title: Visit-reserve
    name: Visit-reserve
    model: clikalia_dwh
    explore: opportunity
    type: single_value
    fields: [average_of_visit_reserve_time]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: average_of_visit_reserve_time, based_on: opportunity.visit_reserve_time,
        expression: '', label: Average of Visit Reserve Time, type: average, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Visit-reserve
    value_format: 0 "days"
    defaults_version: 1
    listen: {}
    row: 17
    col: 18
    width: 4
    height: 3
  filters:
  - name: Createdon Date
    title: Createdon Date
    type: field_filter
    default_value: 30 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: clikalia_dwh
    explore: opportunity
    listens_to_filters: []
    field: opportunity.createdon_date
