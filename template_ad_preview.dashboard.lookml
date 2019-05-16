- dashboard: template_ad_preview
  title: Template Ad Preview
  layout: grid

  rows:
    - elements: [chart_convs_clicks,bar_chart_cost_clicks]
      height: 400
    - elements: [ad_performance_data_with_ad_preview]
      height: 500

  filters:
    - name: date_start
      type: date_filter
      default_value: 2019/01/01 to 2019/05/14

    - name: campaign_name
      type: string_filter

  elements:
    - name: chart_convs_clicks
      title: Conversions & Clicks By Dates
      type: looker_line
      model: template_project
      explore: ads_creative_with_preview_raw_table_facebook
      dimensions: [ads_creative_with_preview_raw_table_facebook.date_date]
      fill_fields: [ads_creative_with_preview_raw_table_facebook.date_date]
      measures: [ads_creative_with_preview_raw_table_facebook.clicks, ads_creative_with_preview_raw_table_facebook.conversions]
      sorts: [ads_creative_with_preview_raw_table_facebook.date_date]
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
        ads_creative_with_preview_raw_table_facebook.date_date: Dates
        ads_creative_with_preview_raw_table_facebook.clicks: Clicks
        ads_creative_with_preview_raw_table_facebook.cpa: Cost/Conv
        ads_creative_with_preview_raw_table_facebook.ctr: CTR %
      x_axis_label: Dates
      y_axis_orientation: [left, right]


    - name: bar_chart_cost_clicks
      title: Breakdown of Top 10 Spent & Clicks By Adset
      type: looker_bar
      model: template_project
      explore: ads_creative_with_preview_raw_table_facebook
      dimensions: [ads_creative_with_preview_raw_table_facebook.adset_name]
      measures: [ads_creative_with_preview_raw_table_facebook.spend, ads_creative_with_preview_raw_table_facebook.clicks]
      sorts: [ads_creative_with_preview_raw_table_facebook.click desc]
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
        ads_creative_with_preview_raw_table_facebook.date_date: Dates
        ads_creative_with_preview_raw_table_facebook.click: Clicks
        ads_creative_with_preview_raw_table_facebook.cpa: Cost/Conv
        ads_creative_with_preview_raw_table_facebook.ctr: CTR %
      x_axis_label: ''
      y_axis_orientation: [left, right]
      inner_radius: 60
      colors: ['palette: Mixed Dark']
      series_colors: {}
      y_axis_labels: []


    - name: ad_performance_data_with_ad_preview
      title: Ad Performance data with Ad Preview
      type: table
      model: template_project
      explore: ads_creative_with_preview_raw_table_facebook
      dimensions: [ads_creative_with_preview_raw_table_facebook.ad_preview_image, ads_creative_with_preview_raw_table_facebook.campaign_name, ads_creative_with_preview_raw_table_facebook.adset_name, ads_creative_with_preview_raw_table_facebook.ad_name]
      measures: [ads_creative_with_preview_raw_table_facebook.impressions, ads_creative_with_preview_raw_table_facebook.spend, ads_creative_with_preview_raw_table_facebook.cpm, ads_creative_with_preview_raw_table_facebook.ctr, ads_creative_with_preview_raw_table_facebook.clicks, ads_creative_with_preview_raw_table_facebook.cpc,  ads_creative_with_preview_raw_table_facebook.conversions,  ads_creative_with_preview_raw_table_facebook.cpa]
      sorts: [ads_creative_with_preview_raw_table_facebook.impressions desc]
      limit: '50'
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
