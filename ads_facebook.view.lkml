view: ads_facebook {
  sql_table_name: public.ads_raw_table_facebook ;;

  dimension: account_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.account_id ;;
  }

  dimension: ad_id {
    type: string
    sql: ${TABLE}.ad_id ;;
  }

  dimension: ad_name {
    type: string
    sql: ${TABLE}.ad_name ;;
  }

  dimension: adset_id {
    type: string
    sql: ${TABLE}.adset_id ;;
  }

  dimension: adset_name {
    type: string
    sql: ${TABLE}.adset_name ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: campaign_type {
    type: string
    sql: ${TABLE}.campaign_type ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: comments {
    type: number
    sql: ${TABLE}.comments ;;
  }

  dimension: conv {
    type: number
    sql: ${TABLE}.conv ;;
  }

  dimension: cost_per_10_sec_video_view {
    type: number
    sql: ${TABLE}.cost_per_10_sec_video_view ;;
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
    sql: ${TABLE}.date ;;
  }

  dimension: date_yyyymmdd {
    type: string
    sql: ${TABLE}.date_yyyymmdd ;;
  }

  dimension: frequency {
    type: number
    sql: ${TABLE}.frequency ;;
  }

  dimension: imps {
    type: number
    sql: ${TABLE}.imps ;;
  }

  dimension: inline_post_engagement {
    type: number
    sql: ${TABLE}.inline_post_engagement ;;
  }

  dimension: likes {
    type: number
    sql: ${TABLE}.likes ;;
  }

  dimension: mobile_click_through {
    type: number
    sql: ${TABLE}.mobile_click_through ;;
  }

  dimension: mobile_view_through {
    type: number
    sql: ${TABLE}.mobile_view_through ;;
  }

  dimension: purchase {
    type: number
    sql: ${TABLE}.purchase ;;
  }

  dimension: reach {
    type: number
    sql: ${TABLE}.reach ;;
  }

  dimension: relevance_score {
    type: number
    sql: ${TABLE}.relevance_score ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }

  dimension: revenue_click_through {
    type: number
    sql: ${TABLE}.revenue_click_through ;;
  }

  dimension: revenue_view_through {
    type: number
    sql: ${TABLE}.revenue_view_through ;;
  }

  dimension: shares {
    type: number
    sql: ${TABLE}.shares ;;
  }

  dimension: spend {
    type: number
    sql: ${TABLE}.spend ;;
  }

  dimension: total_actions {
    type: number
    sql: ${TABLE}.total_actions ;;
  }

  dimension: unique_inline_link_clicks {
    type: number
    sql: ${TABLE}.unique_inline_link_clicks ;;
  }

  dimension: video_10_sec_watched_actions {
    type: number
    sql: ${TABLE}.video_10_sec_watched_actions ;;
  }

  dimension: video_30_sec_watched_actions {
    type: number
    sql: ${TABLE}.video_30_sec_watched_actions ;;
  }

  dimension: video_avg_percent_watched_actions {
    type: number
    sql: ${TABLE}.video_avg_percent_watched_actions ;;
  }

  dimension: video_avg_time_watched_actions {
    type: number
    sql: ${TABLE}.video_avg_time_watched_actions ;;
  }

  dimension: video_p100_watched_actions {
    type: number
    sql: ${TABLE}.video_p100_watched_actions ;;
  }

  dimension: video_p25_watched_actions {
    type: number
    sql: ${TABLE}.video_p25_watched_actions ;;
  }

  dimension: video_p50_watched_actions {
    type: number
    sql: ${TABLE}.video_p50_watched_actions ;;
  }

  dimension: video_p75_watched_actions {
    type: number
    sql: ${TABLE}.video_p75_watched_actions ;;
  }

  dimension: video_p95_watched_actions {
    type: number
    sql: ${TABLE}.video_p95_watched_actions ;;
  }

  dimension: video_play {
    type: number
    sql: ${TABLE}.video_play ;;
  }

  dimension: views {
    type: number
    sql: ${TABLE}.views ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }
  measure: cost {
    type: sum
    sql: ${spend} ;;
    drill_fields: [campaign_name, adset_name, ad_name]
    value_format_name: usd
  }

  measure: freq {
    type: sum
    sql: ${frequency} ;;
    drill_fields: [campaign_name, adset_name, ad_name]
    value_format_name: usd
  }

  measure: purchases {
    type: sum
    sql: ${purchase} ;;
    drill_fields: [campaign_name, adset_name, ad_name]
    value_format_name: usd
  }
  measure: comment {
    type: sum
    sql: ${comments} ;;
    drill_fields: [campaign_name, adset_name, ad_name]
  }

  measure: like {
    type: sum
    sql: ${likes} ;;
    drill_fields: [campaign_name, adset_name, ad_name]
  }

  measure: conversions {
    type: sum
    sql: ${conv} ;;
    drill_fields: [campaign_name, adset_name, ad_name]
  }

  measure: cpa {
    type: number
    sql: ${cost}::float/NULLIF(${conversions},0) ;;
    value_format_name: usd
  }

  measure: cpm {
    type: number
    sql: ${cost}::float/NULLIF(${impressions},0)*1000 ;;
    value_format_name: usd
  }

  measure: cpp {
    type: number
    sql: ${cost}::float/NULLIF(${purchases},0) ;;
    value_format_name: usd
  }

  measure: impressions {
    type: sum
    sql: ${imps} ;;
    drill_fields: [campaign_name, adset_name, ad_name]
  }

  measure: click {
    type: sum
    sql: ${clicks} ;;
    drill_fields: [campaign_name, adset_name, ad_name]
  }

  measure: ctr {
    type: number
    sql: ${click}::float/NULLIF(${impressions},0) ;;
    value_format_name: percent_2
  }

  measure: conv_rate {
    type: number
    sql: ${conversions}::float/NULLIF(${click},0) ;;
    value_format_name: percent_2
  }

  measure: cpc {
    type: number
    sql: ${cost}::float/NULLIF(${click},0) ;;
    value_format_name: usd
  }


  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      campaign_name,
      adset_name,
      ad_name,
      accounts.data_source_name,
      accounts.remote_account_id,
      accounts.remote_account_name
    ]
  }
}
