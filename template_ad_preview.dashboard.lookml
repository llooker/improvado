- dashboard: template_ad_preview
  title: Template Ad Preview
  layout: tile

  filters:
    - name: date_start
      type: date_filter
      default_value: 2019/01/01 to 2019/05/14

    - name: campaign_name
      type: string_filter

  elements:
  - name: top_5_creatives_impressions
    title: Top 5 creatives by Impressions
    type: table
    model: template_project
    explore: ads_creative_with_preview_raw_table_facebook
    dimensions: [ads_creative_with_preview_raw_table_facebook.ad_preview_image, ads_creative_with_preview_raw_table_facebook.campaign_name, ads_creative_with_preview_raw_table_facebook.ad_name, ads_creative_with_preview_raw_table_facebook.campaign_name]
    measures: [ads_creative_with_preview_raw_table_facebook.impressions, ads_creative_with_preview_raw_table_facebook.spend, ads_creative_with_preview_raw_table_facebook.cpm, ads_creative_with_preview_raw_table_facebook.clicks,
      ads_creative_with_preview_raw_table_facebook.conversions]
    sorts: [ads_creative_with_preview_raw_table_facebook.impressions desc]
    limit: '5'
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

  - name: top_5_creatives_spend
    title: Top 5 creatives by Spend
    type: table
    model: template_project
    explore: ads_creative_with_preview_raw_table_facebook
    dimensions: [ads_creative_with_preview_raw_table_facebook.ad_preview_image, ads_creative_with_preview_raw_table_facebook.campaign_name, ads_creative_with_preview_raw_table_facebook.ad_name, ads_creative_with_preview_raw_table_facebook.campaign_name]
    measures: [ads_creative_with_preview_raw_table_facebook.spend, ads_creative_with_preview_raw_table_facebook.cpm, ads_creative_with_preview_raw_table_facebook.cpc, ads_creative_with_preview_raw_table_facebook.cpa]
    sorts: [ads_creative_with_preview_raw_table_facebook.spend desc]
    limit: '5'
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

  - name: top_5_creatives_conversions
    title: Top 5 creatives by Conversions
    type: table
    model: template_project
    explore: ads_creative_with_preview_raw_table_facebook
    dimensions: [ads_creative_with_preview_raw_table_facebook.ad_preview_image, ads_creative_with_preview_raw_table_facebook.campaign_name, ads_creative_with_preview_raw_table_facebook.ad_name, ads_creative_with_preview_raw_table_facebook.campaign_name]
    measures: [ads_creative_with_preview_raw_table_facebook.conversions, ads_creative_with_preview_raw_table_facebook.cpa, ads_creative_with_preview_raw_table_facebook.impressions, ads_creative_with_preview_raw_table_facebook.clicks, ads_creative_with_preview_raw_table_facebook.spend]
    sorts: [ads_creative_with_preview_raw_table_facebook.conversions desc]
    limit: '5'
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

  - name: top_5_creatives_clicks
    title: Top 5 creatives by Clicks
    type: table
    model: template_project
    explore: ads_creative_with_preview_raw_table_facebook
    dimensions: [ads_creative_with_preview_raw_table_facebook.ad_preview_image, ads_creative_with_preview_raw_table_facebook.campaign_name, ads_creative_with_preview_raw_table_facebook.ad_name, ads_creative_with_preview_raw_table_facebook.campaign_name]
    measures: [ads_creative_with_preview_raw_table_facebook.clicks, ads_creative_with_preview_raw_table_facebook.cpc, ads_creative_with_preview_raw_table_facebook.spend, ads_creative_with_preview_raw_table_facebook.impressions, ads_creative_with_preview_raw_table_facebook.conversions]
    sorts: [ads_creative_with_preview_raw_table_facebook.clicks desc]
    limit: '5'
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
