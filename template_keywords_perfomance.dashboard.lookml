- dashboard: template_keywords_perfomance
  title: Template Keywords Perfomance
  layout: grid
  rows:
    - elements: [logo]
      height: 100
    - elements: [title]
      height: 100
    - elements: [adwords_keywords_perfomance_data_table]
      height: 400

  filters:
    - name: date_start
      type: date_filter
      explore: keywords_adwords
      field: keywords_adwords.date_date

  elements:
    - name: logo
      title: Logo
      type: single_value
      model: template_project
      explore: keywords_adwords
      dimensions: [keywords_adwords.product_image]
      sorts: [keywords_adwords.product_image]
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
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: true
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
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}

    - name: title
      title: Title
      type: single_value
      model: template_project
      explore: keywords_adwords
      dimensions: [keywords_adwords.title]
      sorts: [keywords_adwords.title]
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
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: true
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
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}

    - name: adwords_keywords_perfomance_data_table
      title: Adwords Keywords Data Table
      type: table
      model: template_project
      explore: keywords_adwords
      dimensions: [keywords_adwords.keyword_name]
      measures: [keywords_adwords.conversions, keywords_adwords.cpa, keywords_adwords.conv_rate,
        keywords_adwords.click, keywords_adwords.impressions, keywords_adwords.ctr, keywords_adwords.cpc,
        keywords_adwords.cost]
      filters:
        keywords_adwords.account_id: '4508191176'
        keywords_adwords.date_date: 2017/02/01 to 2017/02/15
      sorts: [keywords_adwords.conversions desc]
      limit: '2000'
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
      show_null_points: true
      point_style: none
      interpolation: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
      series_labels:
        keywords_adwords.cpa: Cost/Conv
        keywords_adwords.click: Clicks
        keywords_adwords.ctr: CTR %
        keywords_adwords.cpc: Avg CPC
