view: adsets_youtube {
  sql_table_name: public.adsets_103_youtube ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
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

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: conv {
    type: number
    sql: ${TABLE}.conv ;;
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

  dimension: imps {
    type: number
    sql: ${TABLE}.imps ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }

  dimension: spend {
    type: number
    sql: ${TABLE}.spend ;;
  }

  dimension: views {
    type: number
    sql: ${TABLE}.views ;;
  }

  measure: cost {
    type: sum
    sql: ${spend} ;;
    drill_fields: [campaign_name, adset_name]
    value_format_name: usd
  }

  measure: conversions {
    type: sum
    sql: ${conv} ;;
    drill_fields: [campaign_name, adset_name]
  }

  measure: cpa {
    type: number
    sql: ${cost}::float/NULLIF(${conversions},0) ;;
    value_format_name: usd
  }

  measure: impressions {
    type: sum
    sql: ${imps} ;;
    drill_fields: [campaign_name, adset_name]
  }

  measure: click {
    type: sum
    sql: ${clicks} ;;
    drill_fields: [campaign_name, adset_name]
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

  dimension: image_file {
    sql: ('http://c86og3avv551mqtcy2adcf845a.wpengine.netdna-cdn.com/wp-content/uploads/2016/07/disruptive-grey.svg');;
  }

  dimension: product_image {
    sql: ${image_file} ;;
    html: <img src="http://c86og3avv551mqtcy2adcf845a.wpengine.netdna-cdn.com/wp-content/uploads/2016/07/disruptive-grey.svg" width="200" height="200"/>;;
  }

  dimension: title {
    sql: ('Youtube Campaign Perfomance') ;;
  }

  measure: count {
    type: count
    drill_fields: [adset_name, campaign_name]
  }
}
