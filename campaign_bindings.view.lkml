view: campaign_bindings {
  sql_table_name: public.metrics_a5b355314604983269440e5259062d62_campaign_bindings ;;

  dimension: binding_id {
    type: number
    sql: ${TABLE}.binding_id ;;
  }

  dimension: binding_name {
    type: string
    sql: ${TABLE}.binding_name ;;
  }

  dimension: click {
    type: number
    sql: ${TABLE}.click ;;
  }

  dimension: comment {
    type: number
    sql: ${TABLE}.comment ;;
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

  dimension: impres {
    type: number
    sql: ${TABLE}.impres ;;
  }

  dimension: like {
    type: number
    sql: ${TABLE}."like" ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }

  dimension: spent {
    type: number
    sql: ${TABLE}.spent ;;
  }

  measure: cost {
    type: sum
    sql: ${spent} ;;
    drill_fields: [product_name, binding_name]
    value_format_name: usd_0
  }

  measure: impressions {
    type: sum
    sql: ${impres} ;;
    drill_fields: [product_name, binding_name]
  }

  measure: clicks {
    type: sum
    sql: ${click} ;;
    drill_fields: [product_name, binding_name]
  }

  measure: conversions {
    type: sum
    sql: ${conv} ;;
    drill_fields: [product_name, binding_name]
  }

  measure: likes {
    type: sum
    sql: ${like} ;;
    drill_fields: [product_name, binding_name]
  }

  measure: comments {
    type: sum
    sql: ${comment} ;;
    drill_fields: [product_name, binding_name]
  }

  measure: cpa {
    type: number
    sql: ${cost}::float/NULLIF(${conversions},0) ;;
    value_format_name: usd_0
  }

  measure: ctr {
    type: number
    sql: ${clicks}::float/NULLIF(${impressions},0) ;;
    value_format_name: percent_2
  }

  measure: conv_rate {
    type: number
    sql: ${conversions}::float/NULLIF(${clicks},0) ;;
    value_format_name: percent_2
  }

  measure: cpc {
    type: number
    sql: ${cost}::float/NULLIF(${clicks},0) ;;
    value_format_name: usd
  }

  measure: count {
    type: count
    drill_fields: [product_name, binding_name]
  }
}
