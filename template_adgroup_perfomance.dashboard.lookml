- dashboard: template_adgroup_perfomance
  title: Template Adgroup Perfomance
  layout: grid
  rows:
    - elements: [chart_convs_clicks,bar_chart_conversions_cost]
      height: 400
    - elements: [bing_adgroup_perfomance_data_table]
      height: 250


  filters:
    - name: date_start
      type: date_filter
      explore: adset_bing
      field: adset_bing.date_date
      default_value: 2017/02/01 to 2017/02/15

    - name: account_id
      type: string_filter
      explore: adset_bing
      model: template_project
      field: adset_bing.account_id
      default_value: '31003674'

  elements:
    - name: chart_convs_clicks
      title: Conversions & Clicks By Dates
      type: looker_line
      model: template_project
      explore: adsets_bing
      dimensions: [adsets_bing.date_date]
      fill_fields: [adsets_bing.date_date]
      measures: [adsets_bing.conversions, adsets_bing.click]
      sorts: [adsets_bing.date_date]
      limit: '500'
      column_limit: '50'
      query_timezone: America/Los_Angeles
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      limit_displayed_rows: false
      y_axis_combined: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      show_null_points: true
      point_style: circle
      interpolation: linear
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: white
      enable_conditional_formatting: false
      conditional_formatting_ignored_fields: []
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
      series_labels:
        adsets_bing.cpa: Cost/Conv
        adsets_bing.click: Clicks
        adsets_bing.ctr: CTR %
        adsets_bing.cpc: Avg CPC
      y_axis_orientation: [left, right]
      x_axis_label: Dates
      listen:
        date_start: adsets_bing.date_date
        account_id: adsets_bing.account_id

    - name: bar_chart_conversions_cost
      title: Breakdown of Top 10 Conversions & Spent by Adsets
      type: looker_bar
      model: template_project
      explore: adsets_bing
      dimensions: [adsets_bing.adset_name]
      measures: [adsets_bing.conversions, adsets_bing.cost]
      sorts: [adsets_bing.conversions desc]
      limit: '10'
      column_limit: '50'
      query_timezone: America/Los_Angeles
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      limit_displayed_rows: false
      y_axis_combined: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      value_labels: legend
      label_type: labPer
      show_null_points: true
      point_style: circle
      interpolation: linear
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: white
      enable_conditional_formatting: false
      conditional_formatting_ignored_fields: []
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      series_types: {}
      series_labels:
        adsets_bing.cpa: Cost/Conv
        adsets_bing.click: Clicks
        adsets_bing.ctr: CTR %
        adsets_bing.cpc: Avg CPC
      y_axis_orientation: [left, right]
      colors: ['palette: Mixed Dark']
      series_colors: {}
      inner_radius: 60
      listen:
        date_start: adsets_bing.date_date
        account_id: adsets_bing.account_id

    - name: bing_adgroup_perfomance_data_table
      title: Bing Ad Group Perfomance Data Table
      type: table
      model: template_project
      explore: adsets_bing
      dimensions: [adsets_bing.adset_name]
      measures: [adsets_bing.conversions, adsets_bing.cpa, adsets_bing.conv_rate, adsets_bing.click,
        adsets_bing.impressions, adsets_bing.ctr, adsets_bing.cpc, adsets_bing.cost]
      sorts: [adsets_bing.conversions desc]
      limit: '500'
      column_limit: '50'
      query_timezone: America/Los_Angeles
      show_view_names: false
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_ignored_fields: []
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
      series_labels:
        adsets_bing.cpa: Cost/Conv
        adsets_bing.click: Clicks
        adsets_bing.ctr: CTR %
        adsets_bing.cpc: Avg CPC
      listen:
        date_start: adsets_bing.date_date
        account_id: adsets_bing.account_id
