- dashboard: template_youtube_campaign_perfomance
  title: Template Youtube Campaign Perfomance
  layout: grid
  rows:
    - elements: [chart_convs_clicks,bar_chart_conversions_cost]
      height: 400
    - elements: [youtube_campaign_perfomance_data_table]
      height: 250


  filters:
    - name: date_start
      type: date_filter
      explore: adset_youtube
      field: adset_youtube.date_date
      default_value: 2017/02/01 to 2017/02/15

    - name: account_id
      type: string_filter
      explore: adset_youtube
      model: template_project
      field: adset_youtube.account_id
      default_value: '4508191176'

  elements:
    - name: chart_convs_clicks
      title: Conversions & Clicks by Dates
      type: looker_line
      model: template_project
      explore: adsets_youtube
      dimensions: [adsets_youtube.date_date]
      fill_fields: [adsets_youtube.date_date]
      measures: [adsets_youtube.conversions, adsets_youtube.click]
      sorts: [adsets_youtube.date_date desc]
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
        adsets_youtube.cpa: Cost/Conv
        adsets_youtube.click: Clicks
        adsets_youtube.ctr: CTR %
        adsets_youtube.cpc: Avg CPC
      y_axis_orientation: [left, right]
      x_axis_label: Dates
      listen:
        date_start: adsets_youtube.date_date
        account_id: adsets_youtube.account_id

    - name: bar_chart_conversions_cost
      title: Breakdown of Top 10 Conversions & Clicks By Campaign
      type: looker_bar
      model: template_project
      explore: adsets_youtube
      dimensions: [adsets_youtube.campaign_name]
      measures: [adsets_youtube.conversions, adsets_youtube.cost]
      sorts: [adsets_youtube.conversions desc]
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
        adsets_youtube.cpa: Cost/Conv
        adsets_youtube.click: Clicks
        adsets_youtube.ctr: CTR %
        adsets_youtube.cpc: Avg CPC
      y_axis_orientation: [left, right]
      colors: ['palette: Mixed Dark']
      series_colors: {}
      inner_radius: 60
      listen:
        date_start: adsets_youtube.date_date
        account_id: adsets_youtube.account_id


    - name: youtube_campaign_perfomance_data_table
      title: Youtube Campaign Perfomance Data Table
      type: table
      model: template_project
      explore: adsets_youtube
      dimensions: [adsets_youtube.campaign_name]
      measures: [adsets_youtube.conversions, adsets_youtube.cpa, adsets_youtube.conv_rate,
        adsets_youtube.click, adsets_youtube.impressions, adsets_youtube.ctr, adsets_youtube.cpc,
        adsets_youtube.cost]
      sorts: [adsets_youtube.conversions desc]
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
        adsets_youtube.cpa: Cost/Conv
        adsets_youtube.click: Clicks
        adsets_youtube.ctr: CTR %
        adsets_youtube.cpc: Avg CPC
      listen:
        date_start: adsets_youtube.date_date
        account_id: adsets_youtube.account_id
