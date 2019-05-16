view: ads_creative_with_preview_raw_table_facebook {
  sql_table_name: public.ads_creative_with_preview_raw_table_facebook ;;

  dimension: account_id {
    type: string
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

  dimension: ad_preview_image {
    type: string
    sql: ${TABLE}.ad_preview_image ;;
    html: <img src="{{value}}" /> ;;
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

  dimension: creative_id {
    type: string
    sql: ${TABLE}.creative_id ;;
  }

  dimension: creative_name {
    type: string
    sql: ${TABLE}.creative_name ;;
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

  dimension: publication_date {
    type: string
    sql: ${TABLE}.publication_date ;;
  }

##  LINK TO IMAGE OF CREATIVE PROVIDED BY PLATFORM
##    dimension: image {
##    type: string
##    sql: ${TABLE}.image ;;
##  }

##  dimension: image_url {
##    type: string
##    sql: ${TABLE}.image_url ;;
##  }


  measure: spend {
    type: sum
    sql: ${TABLE}.spend ;;
    drill_fields: [campaign_name, adset_name, ad_name, creative_name]
    value_format_name: usd
  }

  measure: freq {
    type: sum
    sql: ${TABLE}.frequency ;;
    drill_fields: [campaign_name, adset_name, ad_name, creative_name]
    value_format_name: usd
  }

  measure: comment {
    type: sum
    sql: ${TABLE}.comment ;;
    drill_fields: [campaign_name, adset_name, ad_name, creative_name]
  }

  measure: like {
    type: sum
    sql: ${TABLE}.likes ;;
    drill_fields: [campaign_name, adset_name, ad_name, creative_name]
  }

  measure: conversions {
    type: sum
    sql: ${TABLE}.conv ;;
    drill_fields: [campaign_name, adset_name, ad_name, creative_name]
  }

  measure: cpa {
    type: number
    sql: ${spend}::float/NULLIF(${conversions},0) ;;
    value_format_name: usd
    drill_fields: [campaign_name, adset_name, ad_name, creative_name]
  }

  measure: cpm {
    type: number
    sql: ${spend}::float/NULLIF(${impressions},0)*1000 ;;
    value_format_name: usd
    drill_fields: [campaign_name, adset_name, ad_name, creative_name]
  }

  measure: impressions {
    type: sum
    sql: ${TABLE}.imps ;;
    drill_fields: [campaign_name, adset_name, ad_name, creative_name]
  }

  measure: clicks {
    type: sum
    sql: ${TABLE}.clicks ;;
    drill_fields: [campaign_name, adset_name, ad_name, creative_name]
  }

  measure: ctr {
    type: number
    sql: ${clicks}::float/NULLIF(${impressions},0) ;;
    value_format_name: percent_2
    drill_fields: [campaign_name, adset_name, ad_name, creative_name]
  }

  measure: conv_rate {
    type: number
    sql: ${conversions}::float/NULLIF(${clicks},0) ;;
    value_format_name: percent_2
    drill_fields: [campaign_name, adset_name, ad_name, creative_name]
  }

  measure: cpc {
    type: number
    sql: ${spend}::float/NULLIF(${clicks},0) ;;
    value_format_name: usd
    drill_fields: [campaign_name, adset_name, ad_name, creative_name]
  }

  measure: comments {
    type: number
    sql: ${TABLE}.comments ;;
    drill_fields: [campaign_name, adset_name, ad_name, creative_name]
  }

  measure: count {
    type: count
    drill_fields: [campaign_name, adset_name, ad_name, creative_name]
  }

  measure: views {
    type: number
    sql: ${TABLE}.views ;;
    drill_fields: [campaign_name, adset_name, ad_name, creative_name]
  }

  measure: fb_mobile_content_view {
    type: number
    sql: ${TABLE}.fb_mobile_content_view ;;
    drill_fields: [campaign_name, adset_name, ad_name, creative_name]
  }

  measure: post_engagement {
    type: number
    sql: ${TABLE}.post_engagement ;;
    drill_fields: [campaign_name, adset_name, ad_name, creative_name]
  }

  measure: post_reactions {
    type: number
    sql: ${TABLE}.post_reactions ;;
    drill_fields: [campaign_name, adset_name, ad_name, creative_name]
  }

  dimension: reach {
    type: number
    sql: ${TABLE}.reach ;;
    drill_fields: [campaign_name, adset_name, ad_name, creative_name]
  }

  dimension: shares {
    type: number
    sql: ${TABLE}.shares ;;
    drill_fields: [campaign_name, adset_name, ad_name, creative_name]
  }

  dimension: view_content {
    type: number
    sql: ${TABLE}.view_content ;;
    drill_fields: [campaign_name, adset_name, ad_name, creative_name]
  }

}
