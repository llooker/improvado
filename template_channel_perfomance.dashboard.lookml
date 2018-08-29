- dashboard: template_channel_perfomance
  title: Channel Perfomance Template
  layout: newspaper

  filters:
  - name: Date Range
    title: Date Range
    type: date_filter
    default_value: 2016/08/01 to 2016/10/01
    allow_multiple_values: true
    required: false
  - name: Clients by substring
    title: Clients by substring
    type: string_filter
    default_value: "%etl%"
    allow_multiple_values: true
    required: false
  - name: Select Metric
    title: Select Metric
    type: field_filter
    default_value: impressions
    allow_multiple_values: true
    required: false
    model: template_project
    explore: campaign_bindings
    listens_to_filters: []
    field: campaign_bindings.metric_selector
  - name: Select Segment
    title: Select Segment
    type: field_filter
    default_value: binding^_name
    allow_multiple_values: true
    required: false
    model: template_project
    explore: campaign_bindings
    listens_to_filters: []
    field: campaign_bindings.segment_selector

  elements:

  - title: Client Overview
    name: Client Overview
    model: template_project
    explore: campaign_bindings
    type: table
    fields:
    - campaign_bindings.binding_name
    - campaign_bindings.impressions
    - campaign_bindings.clicks
    - campaign_bindings.ctr
    - campaign_bindings.cost
    - campaign_bindings.cpc
    sorts:
    - campaign_bindings.impressions desc
    limit: 8
    total: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: none
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_labels:
      campaign_bindings.binding_name: Client name
      campaign_bindings.impressions: Impressions
      campaign_bindings.clicks: Clicks
      campaign_bindings.ctr: Click Through Rate
      campaign_bindings.cost: Spend
      campaign_bindings.cpc: Cost Per Click
    listen:
      Date Range: campaign_bindings.date_date
      Clients by substring: campaign_bindings.binding_name
    row: 6
    col: 0
    width: 12
    height: 6

  - title: KPIs Over Time
    name: KPIs Over Time
    model: template_project
    explore: campaign_bindings
    type: looker_line
    fields:
    - campaign_bindings.metric
    - campaign_bindings.segment
    - campaign_bindings.date_date
    pivots:
    - campaign_bindings.segment
    sorts:
    - campaign_bindings.segment
    limit: 500
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    colors:
    - 'palette: Santa Cruz'
    series_colors: {}
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    y_axes:
    - label: Spend
      orientation: left
      series:
      - id: digital analytics consulting - campaign_bindings.cost
        name: digital analytics consulting
        axisId: campaign_bindings.cost
      - id: digital marketing analysis tools - campaign_bindings.cost
        name: digital marketing analysis tools
        axisId: campaign_bindings.cost
      - id: digital marketing reporting tools - campaign_bindings.cost
        name: digital marketing reporting tools
        axisId: campaign_bindings.cost
      - id: tools of digital marketing - campaign_bindings.cost
        name: tools of digital marketing
        axisId: campaign_bindings.cost
      showLabels: true
      showValues: true
      valueFormat: ''
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    x_axis_label: Dates
    hidden_fields: []
    listen:
      Date Range: campaign_bindings.date_date
      Clients by substring: campaign_bindings.binding_name
      Select Metric: campaign_bindings.metric_selector
      Select Segment: campaign_bindings.segment_selector
    row: 0
    col: 0
    width: 24
    height: 6

  - title: Platforms Overview
    name: Platforms Overview
    model: template_project
    explore: campaign_bindings
    type: table
    fields:
    - campaign_bindings.product_name
    - campaign_bindings.impressions
    - campaign_bindings.clicks
    - campaign_bindings.ctr
    - campaign_bindings.cost
    - campaign_bindings.cpc
    sorts:
    - campaign_bindings.impressions desc
    limit: 500
    total: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: none
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_labels:
      campaign_bindings.product_name: Platform name
      campaign_bindings.impressions: Impressions
      campaign_bindings.clicks: Clicks
      campaign_bindings.ctr: Click Through Rate
      campaign_bindings.cost: Spend
      campaign_bindings.cpc: Cost Per Click
    listen:
      Date Range: campaign_bindings.date_date
      Clients by substring: campaign_bindings.binding_name
    row: 6
    col: 12
    width: 12
    height: 6
