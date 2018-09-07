- dashboard: template_dcm_perfomance
  title: Template DCM Perfomance
  layout: newspaper

  filters:
  - name: Date Range
    title: Date Range
    type: date_filter
    default_value: 2018/06/01 to 2018/07/31
    allow_multiple_values: true
    required: false
  - name: Select metric for Chart
    title: Select metric for Chart
    type: field_filter
    default_value: imps
    allow_multiple_values: true
    required: false
    model: template_project
    explore: creatives_raw_table_dcm
    listens_to_filters: []
    field: creatives_raw_table_dcm.metric_selector

  elements:
  - title: DCM Campaign Perfomance Data Table
    name: DCM Campaign Perfomance Data Table
    model: template_project
    explore: creatives_raw_table_dcm
    type: table
    fields:
    - creatives_raw_table_dcm.campaign_name
    - creatives_raw_table_dcm.imps
    - creatives_raw_table_dcm.click
    - creatives_raw_table_dcm.cpc
    - creatives_raw_table_dcm.ctr
    - creatives_raw_table_dcm.conversions
    - creatives_raw_table_dcm.cpa
    - creatives_raw_table_dcm.cpm
    - creatives_raw_table_dcm.cost
    - creatives_raw_table_dcm.revenue
    - creatives_raw_table_dcm.viewable_imps
    - creatives_raw_table_dcm.measurable_imps
    - creatives_raw_table_dcm.eligible_imps
    sorts:
    - creatives_raw_table_dcm.imps desc
    limit: 500
    show_view_names: false
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
      creatives_raw_table_dcm.imps: Impressions
      creatives_raw_table_dcm.click: Clicks
      creatives_raw_table_dcm.cpc: CPC
      creatives_raw_table_dcm.ctr: CTR %
      creatives_raw_table_dcm.conversions: Total Conversions
      creatives_raw_table_dcm.cpa: Cost/Conv
      creatives_raw_table_dcm.cpm: CPM
      creatives_raw_table_dcm.cost: Mediacost
      creatives_raw_table_dcm.viewable_imps: Viewable Impressions
      creatives_raw_table_dcm.measurable_imps: Measurable Impressions
      creatives_raw_table_dcm.eligible_imps: Eligible Impressions
    listen:
      Date Range: creatives_raw_table_dcm.date_date
    row: 0
    col: 0
    width: 24
    height: 6

  - title: DCM Creative Perfomance Data Table
    name: DCM Creative Perfomance Data Table
    model: template_project
    explore: creatives_raw_table_dcm
    type: table
    fields:
    - creatives_raw_table_dcm.creative
    - creatives_raw_table_dcm.imps
    - creatives_raw_table_dcm.click
    - creatives_raw_table_dcm.cpc
    - creatives_raw_table_dcm.ctr
    - creatives_raw_table_dcm.conversions
    - creatives_raw_table_dcm.cpa
    - creatives_raw_table_dcm.cpm
    - creatives_raw_table_dcm.cost
    - creatives_raw_table_dcm.revenue
    - creatives_raw_table_dcm.viewable_imps
    - creatives_raw_table_dcm.measurable_imps
    - creatives_raw_table_dcm.eligible_imps
    sorts:
    - creatives_raw_table_dcm.imps desc
    limit: 500
    show_view_names: false
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
      creatives_raw_table_dcm.imps: Impressions
      creatives_raw_table_dcm.click: Clicks
      creatives_raw_table_dcm.cpc: CPC
      creatives_raw_table_dcm.ctr: CTR %
      creatives_raw_table_dcm.conversions: Total Conversions
      creatives_raw_table_dcm.cpa: Cost/Conv
      creatives_raw_table_dcm.cpm: CPM
      creatives_raw_table_dcm.cost: Mediacost
      creatives_raw_table_dcm.viewable_imps: Viewable Impressions
      creatives_raw_table_dcm.measurable_imps: Measurable Impressions
      creatives_raw_table_dcm.eligible_imps: Eligible Impressions
    listen:
      Date Range: creatives_raw_table_dcm.date_date
    row: 25
    col: 0
    width: 24
    height: 6

  - title: DCM Site Perfomance Data Table
    name: DCM Site Perfomance Data Table
    model: template_project
    explore: creatives_raw_table_dcm
    type: table
    fields:
    - creatives_raw_table_dcm.site
    - creatives_raw_table_dcm.imps
    - creatives_raw_table_dcm.click
    - creatives_raw_table_dcm.cpc
    - creatives_raw_table_dcm.ctr
    - creatives_raw_table_dcm.conversions
    - creatives_raw_table_dcm.cpa
    - creatives_raw_table_dcm.cpm
    - creatives_raw_table_dcm.revenue
    - creatives_raw_table_dcm.viewable_imps
    - creatives_raw_table_dcm.measurable_imps
    - creatives_raw_table_dcm.eligible_imps
    sorts:
    - creatives_raw_table_dcm.imps desc
    limit: 500
    show_view_names: false
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
      creatives_raw_table_dcm.imps: Impressions
      creatives_raw_table_dcm.click: Clicks
      creatives_raw_table_dcm.cpc: CPC
      creatives_raw_table_dcm.ctr: CTR %
      creatives_raw_table_dcm.conversions: Total Conversions
      creatives_raw_table_dcm.cpa: Cost/Conv
      creatives_raw_table_dcm.cpm: CPM
      creatives_raw_table_dcm.viewable_imps: Viewable Impressions
      creatives_raw_table_dcm.measurable_imps: Measurable Inpressions
      creatives_raw_table_dcm.eligible_imps: Eligible Impressions
    listen:
      Date Range: creatives_raw_table_dcm.date_date
    row: 12
    col: 0
    width: 24
    height: 6

  - title: Area chart by campaign name
    name: Area chart by campaign name
    model: template_project
    explore: creatives_raw_table_dcm
    type: looker_line
    fields:
    - creatives_raw_table_dcm.campaign_name
    - creatives_raw_table_dcm.metric
    - creatives_raw_table_dcm.date_date
    pivots:
    - creatives_raw_table_dcm.campaign_name
    fill_fields:
    - creatives_raw_table_dcm.date_date
    sorts:
    - creatives_raw_table_dcm.campaign_name
    - creatives_raw_table_dcm.date_date desc
    limit: 500
    stacking: ''
    colors:
    - "#5245ed"
    - "#ed6168"
    - "#1ea8df"
    - "#353b49"
    - "#49cec1"
    - "#b3a0dd"
    - "#db7f2a"
    - "#706080"
    - "#a2dcf3"
    - "#776fdf"
    - "#e9b404"
    - "#635189"
    show_value_labels: false
    label_density: 25
    legend_position: center
    hide_legend: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: automated report generation - creatives_raw_table_dcm.metric
        name: automated report generation
        axisId: creatives_raw_table_dcm.metric
      - id: best data visualization examples - creatives_raw_table_dcm.metric
        name: best data visualization examples
        axisId: creatives_raw_table_dcm.metric
      - id: bi reporting tools - creatives_raw_table_dcm.metric
        name: bi reporting tools
        axisId: creatives_raw_table_dcm.metric
      - id: big data etl architecture - creatives_raw_table_dcm.metric
        name: big data etl architecture
        axisId: creatives_raw_table_dcm.metric
      - id: big data etl tools - creatives_raw_table_dcm.metric
        name: big data etl tools
        axisId: creatives_raw_table_dcm.metric
      - id: business analytics consultant - creatives_raw_table_dcm.metric
        name: business analytics consultant
        axisId: creatives_raw_table_dcm.metric
      - id: dashboard design - creatives_raw_table_dcm.metric
        name: dashboard design
        axisId: creatives_raw_table_dcm.metric
      - id: data consulting firms - creatives_raw_table_dcm.metric
        name: data consulting firms
        axisId: creatives_raw_table_dcm.metric
      - id: data dashboard - creatives_raw_table_dcm.metric
        name: data dashboard
        axisId: creatives_raw_table_dcm.metric
      - id: digital marketing analysis tools - creatives_raw_table_dcm.metric
        name: digital marketing analysis tools
        axisId: creatives_raw_table_dcm.metric
      - id: etl data mapping - creatives_raw_table_dcm.metric
        name: etl data mapping
        axisId: creatives_raw_table_dcm.metric
      - id: ETL Tools - creatives_raw_table_dcm.metric
        name: ETL Tools
        axisId: creatives_raw_table_dcm.metric
      - id: excel automation - creatives_raw_table_dcm.metric
        name: excel automation
        axisId: creatives_raw_table_dcm.metric
      - id: Google Data Studio competitors - creatives_raw_table_dcm.metric
        name: Google Data Studio competitors
        axisId: creatives_raw_table_dcm.metric
      - id: information visualization tools - creatives_raw_table_dcm.metric
        name: information visualization tools
        axisId: creatives_raw_table_dcm.metric
      - id: visualization tools - creatives_raw_table_dcm.metric
        name: visualization tools
        axisId: creatives_raw_table_dcm.metric
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: ''
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    listen:
      Select metric for Chart: creatives_raw_table_dcm.metric_selector
    row: 6
    col: 0
    width: 24
    height: 6

  - title: Top 10 Sites by Impressions
    name: Top 10 Sites by Impressions
    model: template_project
    explore: creatives_raw_table_dcm
    type: looker_pie
    fields:
    - creatives_raw_table_dcm.imps
    - creatives_raw_table_dcm.site
    sorts:
    - creatives_raw_table_dcm.imps desc
    - creatives_raw_table_dcm.site
    limit: 10
    value_labels: legend
    label_type: labPer
    inner_radius: 60
    colors:
    - "#7FCDAE"
    - "#7ED09C"
    - "#7DD389"
    - "#85D67C"
    - "#9AD97B"
    - "#B1DB7A"
    - "#CADF79"
    - "#E2DF78"
    - "#E5C877"
    - "#E7AF75"
    - "#EB9474"
    - "#EE7772"
    series_colors: {}
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Date Range: creatives_raw_table_dcm.date_date
    row: 18
    col: 0
    width: 8
    height: 7

  - title: Top 10 Sites by Clicks
    name: Top 10 Sites by Clicks
    model: template_project
    explore: creatives_raw_table_dcm
    type: looker_pie
    fields:
    - creatives_raw_table_dcm.site
    - creatives_raw_table_dcm.click
    sorts:
    - creatives_raw_table_dcm.click desc
    limit: 10
    value_labels: legend
    label_type: labPer
    inner_radius: 60
    colors:
    - "#7FCDAE"
    - "#7ED09C"
    - "#7DD389"
    - "#85D67C"
    - "#9AD97B"
    - "#B1DB7A"
    - "#CADF79"
    - "#E2DF78"
    - "#E5C877"
    - "#E7AF75"
    - "#EB9474"
    - "#EE7772"
    series_colors: {}
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Date Range: creatives_raw_table_dcm.date_date
    row: 18
    col: 8
    width: 8
    height: 7

  - title: Top 10 Sites by Revenue
    name: Top 10 Sites by Revenue
    model: template_project
    explore: creatives_raw_table_dcm
    type: looker_pie
    fields:
    - creatives_raw_table_dcm.site
    - creatives_raw_table_dcm.revenue
    sorts:
    - creatives_raw_table_dcm.revenue desc
    limit: 10
    value_labels: legend
    label_type: labPer
    inner_radius: 60
    colors:
    - "#7FCDAE"
    - "#7ED09C"
    - "#7DD389"
    - "#85D67C"
    - "#9AD97B"
    - "#B1DB7A"
    - "#CADF79"
    - "#E2DF78"
    - "#E5C877"
    - "#E7AF75"
    - "#EB9474"
    - "#EE7772"
    series_colors: {}
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Date Range: creatives_raw_table_dcm.date_date
    row: 18
    col: 16
    width: 8
    height: 7

  - title: Top 10 Creatives by Impressions
    name: Top 10 Creatives by Impressions
    model: template_project
    explore: creatives_raw_table_dcm
    type: looker_pie
    fields:
    - creatives_raw_table_dcm.imps
    - creatives_raw_table_dcm.creative
    sorts:
    - creatives_raw_table_dcm.imps desc
    limit: 10
    value_labels: legend
    label_type: labPer
    inner_radius: 60
    colors:
    - "#7FCDAE"
    - "#7ED09C"
    - "#7DD389"
    - "#85D67C"
    - "#9AD97B"
    - "#B1DB7A"
    - "#CADF79"
    - "#E2DF78"
    - "#E5C877"
    - "#E7AF75"
    - "#EB9474"
    - "#EE7772"
    series_colors: {}
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Date Range: creatives_raw_table_dcm.date_date
    row: 31
    col: 0
    width: 8
    height: 7

  - title: Top 10 Creatives by Clicks
    name: Top 10 Creatives by Clicks
    model: template_project
    explore: creatives_raw_table_dcm
    type: looker_pie
    fields:
    - creatives_raw_table_dcm.creative
    - creatives_raw_table_dcm.click
    sorts:
    - creatives_raw_table_dcm.click desc
    limit: 10
    value_labels: legend
    label_type: labPer
    inner_radius: 60
    colors:
    - "#7FCDAE"
    - "#7ED09C"
    - "#7DD389"
    - "#85D67C"
    - "#9AD97B"
    - "#B1DB7A"
    - "#CADF79"
    - "#E2DF78"
    - "#E5C877"
    - "#E7AF75"
    - "#EB9474"
    - "#EE7772"
    series_colors: {}
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Date Range: creatives_raw_table_dcm.date_date
    row: 31
    col: 8
    width: 8
    height: 7

  - title: Top 10 Creatives by Revenue
    name: Top 10 Creatives by Revenue
    model: template_project
    explore: creatives_raw_table_dcm
    type: looker_pie
    fields:
    - creatives_raw_table_dcm.creative
    - creatives_raw_table_dcm.revenue
    sorts:
    - creatives_raw_table_dcm.revenue desc
    limit: 10
    value_labels: legend
    label_type: labPer
    inner_radius: 60
    colors:
    - "#7FCDAE"
    - "#7ED09C"
    - "#7DD389"
    - "#85D67C"
    - "#9AD97B"
    - "#B1DB7A"
    - "#CADF79"
    - "#E2DF78"
    - "#E5C877"
    - "#E7AF75"
    - "#EB9474"
    - "#EE7772"
    series_colors: {}
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Date Range: creatives_raw_table_dcm.date_date
    row: 31
    col: 16
    width: 8
    height: 7
