view: promoted_tweets_raw_table_twitter {
  sql_table_name: public.promoted_tweets_raw_table_twitter ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}.account_name ;;
  }

  dimension: app_clicks {
    type: number
    sql: ${TABLE}.app_clicks ;;
  }

  dimension: billed_charge_local_micro {
    type: number
    sql: ${TABLE}.billed_charge_local_micro ;;
  }

  dimension: billed_engagements {
    type: number
    sql: ${TABLE}.billed_engagements ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: card_engagements {
    type: number
    sql: ${TABLE}.card_engagements ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: date_yyyymmdd {
    type: string
    sql: ${TABLE}.date_yyyymmdd ;;
  }

  dimension: engagements {
    type: number
    sql: ${TABLE}.engagements ;;
  }

  dimension: follows {
    type: number
    sql: ${TABLE}.follows ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: likes {
    type: number
    sql: ${TABLE}.likes ;;
  }

  dimension: line_item_id {
    type: string
    sql: ${TABLE}.line_item_id ;;
  }

  dimension: media_engagements {
    type: number
    sql: ${TABLE}.media_engagements ;;
  }

  dimension: media_views {
    type: number
    sql: ${TABLE}.media_views ;;
  }

  dimension: promoted_tweet_id {
    type: string
    sql: ${TABLE}.promoted_tweet_id ;;
  }

  dimension: qualified_impressions {
    type: number
    sql: ${TABLE}.qualified_impressions ;;
  }

  dimension: replies {
    type: number
    sql: ${TABLE}.replies ;;
  }

  dimension: retweets {
    type: number
    sql: ${TABLE}.retweets ;;
  }

  dimension: url_clicks {
    type: number
    sql: ${TABLE}.url_clicks ;;
  }

  dimension: video_3s100pct_views {
    type: number
    sql: ${TABLE}.video_3s100pct_views ;;
  }

  dimension: video_content_starts {
    type: number
    sql: ${TABLE}.video_content_starts ;;
  }

  dimension: video_cta_clicks {
    type: number
    sql: ${TABLE}.video_cta_clicks ;;
  }

  dimension: video_mrc_views {
    type: number
    sql: ${TABLE}.video_mrc_views ;;
  }

  dimension: video_total_views {
    type: number
    sql: ${TABLE}.video_total_views ;;
  }

  dimension: video_views_100 {
    type: number
    sql: ${TABLE}.video_views_100 ;;
  }

  dimension: video_views_25 {
    type: number
    sql: ${TABLE}.video_views_25 ;;
  }

  dimension: video_views_50 {
    type: number
    sql: ${TABLE}.video_views_50 ;;
  }

  dimension: video_views_75 {
    type: number
    sql: ${TABLE}.video_views_75 ;;
  }

  measure: app_click {
    type: sum
    sql: ${app_clicks} ;;
    drill_fields: [account_name]
  }

  measure: card_engagement {
    type: sum
    sql: ${card_engagements} ;;
    drill_fields: [account_name]
  }

  measure: billed_charges_local_micro {
    type: sum
    sql: ${billed_charge_local_micro} ;;
    drill_fields: [account_name]
  }

  measure: billed_engagement {
    type: sum
    sql: ${billed_engagements} ;;
    drill_fields: [account_name]
  }

  measure: click {
    type: sum
    sql: ${clicks} ;;
    drill_fields: [account_name]
  }

  measure: engagement {
    type: sum
    sql: ${engagements} ;;
    drill_fields: [account_name]
  }

  measure: follow {
    type: sum
    sql: ${follows} ;;
    drill_fields: [account_name]
  }

  measure: imps {
    type: sum
    sql: ${impressions} ;;
    drill_fields: [account_name]
  }

  measure: like {
    type: sum
    sql: ${likes} ;;
    drill_fields: [account_name]
  }

  measure: qualified_impression {
    type: sum
    sql: ${qualified_impressions} ;;
    drill_fields: [account_name]
  }

  measure: replie {
    type: sum
    sql: ${replies} ;;
    drill_fields: [account_name]
  }

  measure: retweet {
    type: sum
    sql: ${retweets} ;;
    drill_fields: [account_name]
  }

  measure: url_click {
    type: sum
    sql: ${url_clicks} ;;
    drill_fields: [account_name]
  }

  measure: video_3s100pct_view {
    type: sum
    sql: ${video_3s100pct_views} ;;
    drill_fields: [account_name]
  }

  measure: video_content_start {
    type: sum
    sql: ${video_content_starts} ;;
    drill_fields: [account_name]
  }

  measure: video_total_view {
    type: sum
    sql: ${video_total_views} ;;
    drill_fields: [account_name]
  }

  measure: video_view_100 {
    type: sum
    sql: ${video_views_100} ;;
    drill_fields: [account_name]
  }

  measure: video_view_75 {
    type: sum
    sql: ${video_views_75} ;;
    drill_fields: [account_name]
  }

  measure: video_view_50 {
    type: sum
    sql: ${video_views_50} ;;
    drill_fields: [account_name]
  }

  measure: video_view_25 {
    type: sum
    sql: ${video_views_25} ;;
    drill_fields: [account_name]
  }

  measure: ctr {
    type: number
    sql: ${click}::float/NULLIF(${imps},0) ;;
    value_format_name: percent_2
  }

  measure: count {
    type: count
    drill_fields: [account_name, campaign_name]
  }
}
