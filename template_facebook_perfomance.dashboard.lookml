- dashboard: template_facebook_perfomance
  title: Template Facebook Perfomance
  layout: grid
  rows:
    - elements: [facebook_campaign_perfomance_data_table]
      height: 300
    - elements: [facebook_adsets_perfomance_data_table]
      height: 300
    - elements: [facebook_ads_perfomance_data_table]
      height: 300

  filters:
    - name: date_start
      type: date_filter
      explore: ads_facebook_view
      field: ads_facebook_view.date_date
      default_value: 2017/02/01 to 2017/02/15

    - name: account_id
      type: string_filter
      explore: ads_facebook_view
      model: template_project
      field: ads_facebook_view.account_id
      default_value: act_10150833513845892

  elements:
    - name: facebook_campaign_perfomance_data_table
      title: Facebook Campaign Perfomance Data Table
      type: table
      model: template_project
      explore: ads_facebook_view
      dimensions: [ads_facebook_view.campaign_name]
      measures: [ads_facebook_view.impressions, ads_facebook_view.click, ads_facebook_view.cpc, ads_facebook_view.ctr,
        ads_facebook_view.conversions, ads_facebook_view.cpa, ads_facebook_view.cpm, ads_facebook_view.cpp,
        ads_facebook_view.cost, ads_facebook_view.freq]
      sorts: [ads_facebook_view.impressions desc]
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
        ads_facebook_view.click: Clicks
        ads_facebook_view.cpc: avg CPC
        ads_facebook_view.ctr: CTR %
        ads_facebook_view.cpa: Cost/Conv
        ads_facebook_view.freq: Frequency
      listen:
        date_start: ads_facebook_view.date_date
        account_id: ads_facebook_view.account_id

    - name: facebook_adsets_perfomance_data_table
      title: Facebook Adsets Perfomance Data Table
      type: table
      model: template_project
      explore: ads_facebook_view
      dimensions: [ads_facebook_view.adset_name]
      measures: [ads_facebook_view.impressions, ads_facebook_view.click, ads_facebook_view.cpc, ads_facebook_view.ctr,
        ads_facebook_view.conversions, ads_facebook_view.cpa, ads_facebook_view.cpm, ads_facebook_view.cpp,
        ads_facebook_view.cost, ads_facebook_view.freq]
      sorts: [ads_facebook_view.impressions desc]
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
        ads_facebook_view.click: Clicks
        ads_facebook_view.cpc: avg CPC
        ads_facebook_view.ctr: CTR %
        ads_facebook_view.cpa: Cost/Conv
        ads_facebook_view.freq: Frequency
      listen:
        date_start: ads_facebook_view.date_date
        account_id: ads_facebook_view.account_id

    - name: facebook_ads_perfomance_data_table
      title: Facebook Ads Perfomance Data Table
      type: table
      model: template_project
      explore: ads_facebook_view
      dimensions: [ads_facebook_view.ad_name]
      measures: [ads_facebook_view.impressions, ads_facebook_view.click, ads_facebook_view.cpc, ads_facebook_view.ctr,
        ads_facebook_view.conversions, ads_facebook_view.cpa, ads_facebook_view.cpm, ads_facebook_view.cpp,
        ads_facebook_view.cost, ads_facebook_view.freq]
      sorts: [ads_facebook_view.impressions desc]
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
        ads_facebook_view.click: Clicks
        ads_facebook_view.cpc: avg CPC
        ads_facebook_view.ctr: CTR %
        ads_facebook_view.cpa: Cost/Conv
        ads_facebook_view.freq: Frequency
      listen:
        date_start: ads_facebook_view.date_date
        account_id: ads_facebook_view.account_id
