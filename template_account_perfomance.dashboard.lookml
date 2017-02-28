- dashboard: template_account_perfomance
  title: Adwords Account Perfomance
  layout: grid
  rows:
    - elements: [logo]
      height: 100
    - elements: [title]
      height: 100
    - elements: [chart_convs_clicks,pie_chart_clicks]
      height: 300
    - elements: [adwords_account_perfomance_data_table]
      height: 250

  filters:
    - name: date_start
      type: date_filter
      explore: adset_103_adwords
      field: adset_103_adwords.date_date

  elements:
    - name: logo
      title: Logo
      type: single_value
      model: template_project
      explore: adsets_adwords
      dimensions: [adsets_adwords.product_image]
      sorts: [adsets_adwords.product_image]
      limit: '500'
      column_limit: '50'
      query_timezone: America/Los_Angeles
      custom_color_enabled: false
      custom_color: forestgreen
      show_single_value_title: false
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      value_labels: legend
      label_type: labPer
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
      inner_radius: 60
      colors: 'palette: Mixed Dark'
      series_colors: {}

    - name: title
      title: Title
      type: single_value
      model: template_project
      explore: adsets_adwords
      dimensions: [adsets_adwords.title]
      sorts: [adsets_adwords.title]
      limit: '500'
      column_limit: '50'
      query_timezone: America/Los_Angeles
      custom_color_enabled: false
      custom_color: forestgreen
      show_single_value_title: false
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      value_labels: legend
      label_type: labPer
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
      inner_radius: 60
      colors: 'palette: Mixed Dark'
      series_colors: {}

    - name: chart_convs_clicks
      title: Conversions & Clicks
      type: looker_line
      model: template_project
      explore: adsets_adwords
      dimensions: [adsets_adwords.date_date]
      fill_fields: [adsets_adwords.date_date]
      measures: [adsets_adwords.click, adsets_adwords.conversions]
      filters:
        adsets_adwords.account_id: '4508191176'
        adsets_adwords.date_date: 2017/02/01 to 2017/02/15
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

    - name: pie_chart_clicks
      title: Pie Chart Clicks
      type: looker_pie
      model: template_project
      explore: adsets_adwords
      dimensions: [adsets_adwords.adset_name]
      measures: [adsets_adwords.click]
      filters:
        adsets_adwords.account_id: '4508191176'
        adsets_adwords.date_date: 2017/02/01 to 2017/02/15
      sorts: [adsets_adwords.click desc]
      limit: '10'
      column_limit: '50'
      query_timezone: America/Los_Angeles
      value_labels: legend
      label_type: labPer
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
      inner_radius: 60
      colors: 'palette: Mixed Dark'
      series_colors: {}

    - name: adwords_account_perfomance_data_table
      title: Adwords Account Perfomance Data Table
      type: table
      model: template_project
      explore: adsets_adwords
      dimensions: [adsets_adwords.date_date]
      fill_fields: [adsets_adwords.date_date]
      measures: [adsets_adwords.click, adsets_adwords.impressions, adsets_adwords.conversions,
        adsets_adwords.cost, adsets_adwords.ctr, adsets_adwords.cpa, adsets_adwords.conv_rate]
      filters:
        adsets_adwords.account_id: '4508191176'
        adsets_adwords.date_date: 2017/02/01 to 2017/02/15
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
