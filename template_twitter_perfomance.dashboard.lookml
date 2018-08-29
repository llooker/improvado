- dashboard: template_twitter_perfomance
  title: Template Twitter Perfomance
  layout: newspaper

  filters:
  - name: Date Range
    title: Date Range
    type: date_filter
    default_value: 2018/07/01 to 2018/08/01
    allow_multiple_values: true
    required: false

  elements:
  - title: The Twitter Organic Tweets Perfomance
    name: The Twitter Organic Tweets Perfomance
    model: template_project
    explore: organic_tweets_raw_table_twitter
    type: table
    fields:
    - organic_tweets_raw_table_twitter.account_name
    - organic_tweets_raw_table_twitter.organic_tweet_id
    - organic_tweets_raw_table_twitter.imps
    - organic_tweets_raw_table_twitter.click
    - organic_tweets_raw_table_twitter.app_click
    - organic_tweets_raw_table_twitter.url_click
    - organic_tweets_raw_table_twitter.retweet
    - organic_tweets_raw_table_twitter.follow
    - organic_tweets_raw_table_twitter.replie
    - organic_tweets_raw_table_twitter.like
    - organic_tweets_raw_table_twitter.engagement
    - organic_tweets_raw_table_twitter.video_total_view
    - organic_tweets_raw_table_twitter.video_view_100
    - organic_tweets_raw_table_twitter.video_view_75
    - organic_tweets_raw_table_twitter.video_view_50
    - organic_tweets_raw_table_twitter.video_view_25
    sorts:
    - organic_tweets_raw_table_twitter.app_click desc
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
      organic_tweets_raw_table_twitter.app_click: App Clicks
      organic_tweets_raw_table_twitter.click: Clicks
      organic_tweets_raw_table_twitter.url_click: URL Clicks
      organic_tweets_raw_table_twitter.retweet: Retweets
      organic_tweets_raw_table_twitter.replie: Replies
      organic_tweets_raw_table_twitter.like: Likes
      organic_tweets_raw_table_twitter.imps: Impressions
      organic_tweets_raw_table_twitter.engagement: Engagements
      organic_tweets_raw_table_twitter.video_total_view: Video Total Views
      organic_tweets_raw_table_twitter.video_view_100: Video Views 100
      organic_tweets_raw_table_twitter.video_view_25: Video Views 75
      organic_tweets_raw_table_twitter.video_view_50: Video Views 50
      organic_tweets_raw_table_twitter.video_view_75: Video Views 25
      organic_tweets_raw_table_twitter.follow: Follows
    listen:
      Date Range: organic_tweets_raw_table_twitter.date_date
    row: 0
    col: 0
    width: 24
    height: 7

  - title: The Twitter Promoted Tweets Perfomance
    name: The Twitter Promoted Tweets Perfomance
    model: template_project
    explore: promoted_tweets_raw_table_twitter
    type: table
    fields:
    - promoted_tweets_raw_table_twitter.account_name
    - promoted_tweets_raw_table_twitter.promoted_tweet_id
    - promoted_tweets_raw_table_twitter.imps
    - promoted_tweets_raw_table_twitter.click
    - promoted_tweets_raw_table_twitter.url_click
    - promoted_tweets_raw_table_twitter.billed_engagement
    - promoted_tweets_raw_table_twitter.billed_charges_local_micro
    - promoted_tweets_raw_table_twitter.retweet
    - promoted_tweets_raw_table_twitter.replie
    - promoted_tweets_raw_table_twitter.like
    - promoted_tweets_raw_table_twitter.follow
    - promoted_tweets_raw_table_twitter.engagement
    - promoted_tweets_raw_table_twitter.video_total_view
    - promoted_tweets_raw_table_twitter.video_view_100
    - promoted_tweets_raw_table_twitter.video_view_75
    - promoted_tweets_raw_table_twitter.video_view_50
    - promoted_tweets_raw_table_twitter.video_view_25
    sorts:
    - promoted_tweets_raw_table_twitter.imps desc
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
      promoted_tweets_raw_table_twitter.imps: Impressions
      promoted_tweets_raw_table_twitter.click: Clicks
      promoted_tweets_raw_table_twitter.app_click: App Clicks
      promoted_tweets_raw_table_twitter.url_click: URL Clicks
      promoted_tweets_raw_table_twitter.billed_engagement: Billed Engagements
      promoted_tweets_raw_table_twitter.card_engagement: Card Engagements
      promoted_tweets_raw_table_twitter.billed_charges_local_micro: Billed Charge
        Local Micro
      promoted_tweets_raw_table_twitter.retweet: Retweets
      promoted_tweets_raw_table_twitter.replie: Replies
      promoted_tweets_raw_table_twitter.like: Likes
      promoted_tweets_raw_table_twitter.follow: Follows
      promoted_tweets_raw_table_twitter.engagement: Engagements
      promoted_tweets_raw_table_twitter.video_total_view: Video Total Views
      promoted_tweets_raw_table_twitter.video_view_100: Video Views 100
      promoted_tweets_raw_table_twitter.video_view_25: Video Views 25
      promoted_tweets_raw_table_twitter.video_view_50: Video Views 50
      promoted_tweets_raw_table_twitter.video_view_75: Video Views 75
    listen:
      Date Range: promoted_tweets_raw_table_twitter.date_date
    row: 14
    col: 0
    width: 24
    height: 7

  - title: Organic Tweets by Impressions
    name: Organic Tweets by Impressions
    model: template_project
    explore: organic_tweets_raw_table_twitter
    type: looker_area
    fields:
    - organic_tweets_raw_table_twitter.organic_tweet_id
    - organic_tweets_raw_table_twitter.imps
    - organic_tweets_raw_table_twitter.date_date
    pivots:
    - organic_tweets_raw_table_twitter.organic_tweet_id
    fill_fields:
    - organic_tweets_raw_table_twitter.date_date
    sorts:
    - organic_tweets_raw_table_twitter.organic_tweet_id
    - organic_tweets_raw_table_twitter.date_date desc
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
    hide_legend: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: Impressions
      orientation: left
      series:
      - id: 000000000000 - organic_tweets_raw_table_twitter.imps
        name: '000000000000'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: 000000000001 - organic_tweets_raw_table_twitter.imps
        name: '000000000001'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: '000000000008 - organic_tweets_raw_table_twitter.imps'
        name: '000000000008'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: '000000000009 - organic_tweets_raw_table_twitter.imps'
        name: '000000000009'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: 000000000010 - organic_tweets_raw_table_twitter.imps
        name: '000000000010'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: 000000000016 - organic_tweets_raw_table_twitter.imps
        name: '000000000016'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: 000000000017 - organic_tweets_raw_table_twitter.imps
        name: '000000000017'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: 000000000024 - organic_tweets_raw_table_twitter.imps
        name: '000000000024'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: 000000000025 - organic_tweets_raw_table_twitter.imps
        name: '000000000025'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: 000000000026 - organic_tweets_raw_table_twitter.imps
        name: '000000000026'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: '000000000028 - organic_tweets_raw_table_twitter.imps'
        name: '000000000028'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: 000000000032 - organic_tweets_raw_table_twitter.imps
        name: '000000000032'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: 000000000033 - organic_tweets_raw_table_twitter.imps
        name: '000000000033'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: 000000000040 - organic_tweets_raw_table_twitter.imps
        name: '000000000040'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: 000000000041 - organic_tweets_raw_table_twitter.imps
        name: '000000000041'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: '000000000048 - organic_tweets_raw_table_twitter.imps'
        name: '000000000048'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: '000000000049 - organic_tweets_raw_table_twitter.imps'
        name: '000000000049'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: 000000000050 - organic_tweets_raw_table_twitter.imps
        name: '000000000050'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: 000000000056 - organic_tweets_raw_table_twitter.imps
        name: '000000000056'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: 000000000057 - organic_tweets_raw_table_twitter.imps
        name: '000000000057'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: '000000000058 - organic_tweets_raw_table_twitter.imps'
        name: '000000000058'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: 000000000064 - organic_tweets_raw_table_twitter.imps
        name: '000000000064'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: 000000000065 - organic_tweets_raw_table_twitter.imps
        name: '000000000065'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: '000000000068 - organic_tweets_raw_table_twitter.imps'
        name: '000000000068'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: 000000000072 - organic_tweets_raw_table_twitter.imps
        name: '000000000072'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: 000000000073 - organic_tweets_raw_table_twitter.imps
        name: '000000000073'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: '000000000080 - organic_tweets_raw_table_twitter.imps'
        name: '000000000080'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: '000000000081 - organic_tweets_raw_table_twitter.imps'
        name: '000000000081'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: '000000000082 - organic_tweets_raw_table_twitter.imps'
        name: '000000000082'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: '000000000083 - organic_tweets_raw_table_twitter.imps'
        name: '000000000083'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: '000000000084 - organic_tweets_raw_table_twitter.imps'
        name: '000000000084'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: '000000000088 - organic_tweets_raw_table_twitter.imps'
        name: '000000000088'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: '000000000089 - organic_tweets_raw_table_twitter.imps'
        name: '000000000089'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: '000000000096 - organic_tweets_raw_table_twitter.imps'
        name: '000000000096'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: '000000000097 - organic_tweets_raw_table_twitter.imps'
        name: '000000000097'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: '000000000098 - organic_tweets_raw_table_twitter.imps'
        name: '000000000098'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: 000000000104 - organic_tweets_raw_table_twitter.imps
        name: '000000000104'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: 000000000107 - organic_tweets_raw_table_twitter.imps
        name: '000000000107'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: 000000000110 - organic_tweets_raw_table_twitter.imps
        name: '000000000110'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: 000000000112 - organic_tweets_raw_table_twitter.imps
        name: '000000000112'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: 000000000113 - organic_tweets_raw_table_twitter.imps
        name: '000000000113'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: 000000000114 - organic_tweets_raw_table_twitter.imps
        name: '000000000114'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: 000000000116 - organic_tweets_raw_table_twitter.imps
        name: '000000000116'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: 000000000120 - organic_tweets_raw_table_twitter.imps
        name: '000000000120'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: 000000000121 - organic_tweets_raw_table_twitter.imps
        name: '000000000121'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: 000000000122 - organic_tweets_raw_table_twitter.imps
        name: '000000000122'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: '000000000128 - organic_tweets_raw_table_twitter.imps'
        name: '000000000128'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: '000000000129 - organic_tweets_raw_table_twitter.imps'
        name: '000000000129'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: 000000000131 - organic_tweets_raw_table_twitter.imps
        name: '000000000131'
        axisId: organic_tweets_raw_table_twitter.imps
      - id: 000000000132 - organic_tweets_raw_table_twitter.imps
        name: '000000000132'
        axisId: organic_tweets_raw_table_twitter.imps
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
    x_axis_label: Dates
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    row: 7
    col: 0
    width: 24
    height: 7

  - title: Top 5 accounts by Impressions
    name: Top 5 accounts by Impressions
    model: template_project
    explore: promoted_tweets_raw_table_twitter
    type: looker_pie
    fields:
    - promoted_tweets_raw_table_twitter.account_name
    - promoted_tweets_raw_table_twitter.imps
    sorts:
    - promoted_tweets_raw_table_twitter.imps desc
    limit: 5
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
    row: 21
    col: 0
    width: 8
    height: 7

  - title: Top 5 accounts by Clicks
    name: Top 5 accounts by Clicks
    model: template_project
    explore: promoted_tweets_raw_table_twitter
    type: looker_pie
    fields:
    - promoted_tweets_raw_table_twitter.account_name
    - promoted_tweets_raw_table_twitter.click
    sorts:
    - promoted_tweets_raw_table_twitter.click desc
    limit: 5
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
    listen: {}
    row: 21
    col: 8
    width: 8
    height: 7

  - title: Top 5 accounts by Retweets
    name: Top 5 accounts by Retweets
    model: template_project
    explore: promoted_tweets_raw_table_twitter
    type: looker_pie
    fields:
    - promoted_tweets_raw_table_twitter.account_name
    - promoted_tweets_raw_table_twitter.retweet
    sorts:
    - promoted_tweets_raw_table_twitter.retweet desc
    limit: 5
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
    listen: {}
    row: 21
    col: 16
    width: 8
    height: 7
