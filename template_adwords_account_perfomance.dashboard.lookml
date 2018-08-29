- dashboard: template_adwords_account_perfomance
  title: Template Adwords Account Perfomance
  layout: grid
  rows:
    - elements: [chart_convs_clicks,bar_chart_cost_clicks]
      height: 400
    - elements: [adwords_account_perfomance_data_table]
      height: 250

  filters:
    - name: date_start
      type: date_filter
      default_value: 2017/04/01 to 2017/05/14

    - name: account_id
      type: string_filter
      default_value: '000000000014'

  elements:
    - name: chart_convs_clicks
      title: Conversions & Clicks By Dates
      type: looker_line
      model: template_project
      explore: adsets_adwords
      dimensions: [adsets_adwords.date_date]
      fill_fields: [adsets_adwords.date_date]
      measures: [adsets_adwords.click, adsets_adwords.conversions]
      sorts: [adsets_adwords.date_date]
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
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
      series_labels:
        adsets_adwords.date_date: Dates
        adsets_adwords.click: Clicks
        adsets_adwords.cpa: Cost/Conv
        adsets_adwords.ctr: CTR %
      x_axis_label: Dates
      y_axis_orientation: [left, right]
      listen:
        date_start: adsets_adwords.date_date
        account_id: adsets_adwords.account_id

    - name: bar_chart_cost_clicks
      title: Breakdown of Top 10 Spent & Clicks By Adsets
      type: looker_bar
      model: template_project
      explore: adsets_adwords
      dimensions: [adsets_adwords.adset_name]
      measures: [adsets_adwords.cost, adsets_adwords.click]
      sorts: [adsets_adwords.click desc]
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
      show_null_points: true
      point_style: circle
      value_labels: legend
      label_type: labPer
      interpolation: linear
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: white
      series_types: {}
      series_labels:
        adsets_103_adwords.date_date: Dates
        adsets_103_adwords.click: Clicks
        adsets_103_adwords.cpa: Cost/Conv
        adsets_103_adwords.ctr: CTR %
      x_axis_label: ''
      y_axis_orientation: [left, right]
      inner_radius: 60
      colors: ['palette: Mixed Dark']
      series_colors: {}
      y_axis_labels: []
      listen:
        date_start: adsets_adwords.date_date
        account_id: adsets_adwords.account_id

    - name: adwords_account_perfomance_data_table
      title: Adwords Account Perfomance Data Table
      type: table
      model: template_project
      explore: adsets_adwords
      dimensions: [adsets_adwords.date_date]
      fill_fields: [adsets_adwords.date_date]
      measures: [adsets_adwords.click, adsets_adwords.impressions, adsets_adwords.conversions,
        adsets_adwords.cost, adsets_adwords.ctr, adsets_adwords.cpa, adsets_adwords.conv_rate]
      sorts: [adsets_adwords.date_date]
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
        adsets_adwords.date_date: Dates
        adsets_adwords.click: Clicks
        adsets_adwords.cpa: Cost/Conv
        adsets_adwords.ctr: CTR %
      listen:
        date_start: adsets_adwords.date_date
        account_id: adsets_adwords.account_id
