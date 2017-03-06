- dashboard: template_campaign_level
  title: Campaign Level
  layout: grid
  rows:
    - elements: [logo]
      height: 100
    - elements: [title]
      height: 100
    - elements: [total_spent, total_clicks, total_impressions, total_conversions, total_cpa]
      height: 150
    - elements: [pie_chart_cost, pie_chart_conv]
      height: 300
    - elements: [chart_convs_clicks]
      height: 300
    - elements: [campaign_lvl_data_table]
      height: 200



  filters:
    - name: date_start
      type: date_filter
      explore: campaign_bindings
      field: campaign_bindings.date_date


  elements:
    - name: logo
      title: Logo
      type: single_value
      model: template_project_campaigns
      explore: campaign_bindings
      dimensions: [campaign_bindings.product_image]
      sorts: [campaign_bindings.product_image]
      limit: '500'
      column_limit: '50'
      query_timezone: America/Los_Angeles
      custom_color_enabled: true
      custom_color: "#8b222f"
      show_single_value_title: false
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      value_labels: none
      label_type: labPer
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: false
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
        campaign_bindings.cpa: Cost/Conv
        campaign_bindings.ctr: CTR %
        campaign_bindings.cpc: CPC
      y_axis_orientation: [left, right]
      x_axis_label: Dates
      colors: ["#2805ff", "#7e8de6", "#1edfdf", "#7bc269", "#49cec1", "#b3a0dd", "#db7f2a",
        "#706080", "#a2dcf3", "#776fdf", "#e9b404", "#635189"]
      series_colors: {}
      inner_radius: 60
      value_format: ''
      single_value_title: ''

    - name: title
      title: Title
      type: single_value
      model: template_project_campaigns
      explore: campaign_bindings
      dimensions: [campaign_bindings.title]
      sorts: [campaign_bindings.title]
      limit: '500'
      column_limit: '50'
      query_timezone: America/Los_Angeles
      custom_color_enabled: false
      custom_color: "#8b222f"
      show_single_value_title: false
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      value_labels: none
      label_type: labPer
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: false
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
        campaign_bindings.cpa: Cost/Conv
        campaign_bindings.ctr: CTR %
        campaign_bindings.cpc: CPC
      y_axis_orientation: [left, right]
      x_axis_label: Dates
      colors: ["#2805ff", "#7e8de6", "#1edfdf", "#7bc269", "#49cec1", "#b3a0dd", "#db7f2a",
        "#706080", "#a2dcf3", "#776fdf", "#e9b404", "#635189"]
      series_colors: {}
      inner_radius: 60
      value_format: ''
      single_value_title: ''

    - name: total_spent
      title: Total Spent
      type: single_value
      model: template_project_campaigns
      explore: campaign_bindings
      measures: [campaign_bindings.cost]
      filters:
        campaign_bindings.date_date: 2017/02/01 to 2017/02/15
      sorts: [campaign_bindings.cost desc]
      limit: '500'
      column_limit: '50'
      total: true
      query_timezone: America/Los_Angeles
      custom_color_enabled: false
      custom_color: forestgreen
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      value_labels: none
      label_type: labPer
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: false
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
      campaign_bindings.cpa: Cost/Conv
      campaign_bindings.ctr: CTR %
      campaign_bindings.cpc: CPC
      y_axis_orientation: [left, right]
      x_axis_label: Dates
      colors: ["#2805ff", "#7e8de6", "#1edfdf", "#7bc269", "#49cec1", "#b3a0dd", "#db7f2a",
        "#706080", "#a2dcf3", "#776fdf", "#e9b404", "#635189"]
      series_colors: {}
      inner_radius: 60
      value_format: ''
      single_value_title: Spent

    - name: total_clicks
      title: Total Clicks
      type: single_value
      model: template_project_campaigns
      explore: campaign_bindings
      measures: [campaign_bindings.clicks]
      filters:
        campaign_bindings.date_date: 2017/02/01 to 2017/02/15
      limit: '500'
      column_limit: '50'
      total: true
      query_timezone: America/Los_Angeles
      custom_color_enabled: false
      custom_color: forestgreen
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      value_labels: none
      label_type: labPer
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: false
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
        campaign_bindings.cpa: Cost/Conv
        campaign_bindings.ctr: CTR %
        campaign_bindings.cpc: CPC
      y_axis_orientation: [left, right]
      x_axis_label: Dates
      colors: ["#2805ff", "#7e8de6", "#1edfdf", "#7bc269", "#49cec1", "#b3a0dd", "#db7f2a",
          "#706080", "#a2dcf3", "#776fdf", "#e9b404", "#635189"]
      series_colors: {}
      inner_radius: 60
      value_format: ''
      single_value_title: Clicks

    - name: total_impressions
      title: Total Impressions
      type: single_value
      model: template_project_campaigns
      explore: campaign_bindings
      measures: [campaign_bindings.impressions]
      filters:
        campaign_bindings.date_date: 2017/02/01 to 2017/02/15
      limit: '500'
      column_limit: '50'
      total: true
      query_timezone: America/Los_Angeles
      custom_color_enabled: false
      custom_color: forestgreen
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      value_labels: none
      label_type: labPer
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: false
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
        campaign_bindings.cpa: Cost/Conv
        campaign_bindings.ctr: CTR %
        campaign_bindings.cpc: CPC
      y_axis_orientation: [left, right]
      x_axis_label: Dates
      colors: ["#2805ff", "#7e8de6", "#1edfdf", "#7bc269", "#49cec1", "#b3a0dd", "#db7f2a",
          "#706080", "#a2dcf3", "#776fdf", "#e9b404", "#635189"]
      series_colors: {}
      inner_radius: 60
      value_format: ''
      single_value_title: Impressions

    - name: total_conversions
      title: Total Conversions
      type: single_value
      model: template_project_campaigns
      explore: campaign_bindings
      measures: [campaign_bindings.conversions]
      filters:
        campaign_bindings.date_date: 2017/02/01 to 2017/02/15
      limit: '500'
      column_limit: '50'
      total: true
      query_timezone: America/Los_Angeles
      custom_color_enabled: false
      custom_color: forestgreen
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      value_labels: none
      label_type: labPer
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: false
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
        campaign_bindings.cpa: Cost/Conv
        campaign_bindings.ctr: CTR %
        campaign_bindings.cpc: CPC
      y_axis_orientation: [left, right]
      x_axis_label: Dates
      colors: ["#2805ff", "#7e8de6", "#1edfdf", "#7bc269", "#49cec1", "#b3a0dd", "#db7f2a",
        "#706080", "#a2dcf3", "#776fdf", "#e9b404", "#635189"]
      series_colors: {}
      inner_radius: 60
      value_format: ''
      single_value_title: Conversions

    - name: total_cpa
      title: Totak CPA
      type: single_value
      model: template_project_campaigns
      explore: campaign_bindings
      measures: [campaign_bindings.cpa]
      filters:
        campaign_bindings.date_date: 2017/02/01 to 2017/02/15
      limit: '500'
      column_limit: '50'
      total: true
      query_timezone: America/Los_Angeles
      custom_color_enabled: false
      custom_color: forestgreen
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      value_labels: none
      label_type: labPer
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: false
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
        campaign_bindings.cpa: Cost/Conv
        campaign_bindings.ctr: CTR %
        campaign_bindings.cpc: CPC
      y_axis_orientation: [left, right]
      x_axis_label: Dates
      colors: ["#2805ff", "#7e8de6", "#1edfdf", "#7bc269", "#49cec1", "#b3a0dd", "#db7f2a",
        "#706080", "#a2dcf3", "#776fdf", "#e9b404", "#635189"]
      series_colors: {}
      inner_radius: 60
      value_format: ''
      single_value_title: Cost/Conv

    - name: chart_convs_clicks
      title: Conversions & Clicks by Day
      type: looker_line
      model: template_project_campaigns
      explore: campaign_bindings
      dimensions: [campaign_bindings.date_date]
      fill_fields: [campaign_bindings.date_date]
      measures: [campaign_bindings.conversions,
        campaign_bindings.clicks]
      filters:
        campaign_bindings.date_date: 2017/02/01 to 2017/02/15
      sorts: [campaign_bindings.conversions desc]
      limit: '500'
      column_limit: '50'
      total: true
      query_timezone: America/Los_Angeles
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: false
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
        campaign_bindings.cpa: Cost/Conv
        campaign_bindings.ctr: CTR %
        campaign_bindings.cpc: CPC
      y_axis_orientation: [left, right]
      x_axis_label: Dates
      colors: ['palette: Looker Classic']
      series_colors: {}

    - name: pie_chart_cost
      title: Cost Breakdown by Product Name
      type: looker_pie
      model: template_project_campaigns
      explore: campaign_bindings
      dimensions: [campaign_bindings.product_name]
      measures: [campaign_bindings.cost]
      filters:
        campaign_bindings.date_date: 2017/02/01 to 2017/02/15
      sorts: [campaign_bindings.cost desc]
      limit: '500'
      column_limit: '50'
      query_timezone: America/Los_Angeles
      value_labels: none
      label_type: labPer
      stacking: ''
      value_labels: legend
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: false
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
        campaign_bindings.cpa: Cost/Conv
        campaign_bindings.ctr: CTR %
        campaign_bindings.cpc: CPC
      y_axis_orientation: [left, right]
      x_axis_label: Dates
      colors: ["#2805ff", "#7e8de6", "#1edfdf", "#7bc269", "#49cec1", "#b3a0dd", "#db7f2a",
        "#706080", "#a2dcf3", "#776fdf", "#e9b404", "#635189"]
      series_colors: {}
      inner_radius: 60

    - name: pie_chart_conv
      title: Conversion Breakdown by Product Name
      type: looker_pie
      model: template_project_campaigns
      explore: campaign_bindings
      dimensions: [campaign_bindings.product_name]
      measures: [campaign_bindings.conversions]
      filters:
        campaign_bindings.date_date: 2017/02/01 to 2017/02/15
      sorts: [campaign_bindings.conversions desc]
      limit: '500'
      column_limit: '50'
      query_timezone: America/Los_Angeles
      value_labels: none
      label_type: labPer
      stacking: ''
      value_labels: legend
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: false
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
        campaign_bindings.cpa: Cost/Conv
        campaign_bindings.ctr: CTR %
        campaign_bindings.cpc: CPC
      y_axis_orientation: [left, right]
      x_axis_label: Dates
      colors: ["#2805ff", "#7e8de6", "#1edfdf", "#7bc269", "#49cec1", "#b3a0dd", "#db7f2a",
        "#706080", "#a2dcf3", "#776fdf", "#e9b404", "#635189"]
      series_colors: {}
      inner_radius: 60

    - name: campaign_lvl_data_table
      title: Campaign Level Metrics by Product Name
      type: table
      model: template_project_campaigns
      explore: campaign_bindings
      dimensions: [campaign_bindings.product_name]
      measures: [campaign_bindings.cost, campaign_bindings.impressions,
        campaign_bindings.conversions, campaign_bindings.cpa,
        campaign_bindings.clicks, campaign_bindings.ctr,
        campaign_bindings.conv_rate, campaign_bindings.cpc]
      filters:
        campaign_bindings.date_date: 2017/02/01 to 2017/02/15
      sorts: [campaign_bindings.impressions desc]
      limit: '500'
      column_limit: '50'
      total: true
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
        campaign_bindings.cpa: Cost/Conv
        campaign_bindings.ctr: CTR %
        campaign_bindings.cpc: CPC
