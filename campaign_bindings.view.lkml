view: campaign_bindings {
  sql_table_name: public.campaigns_mapped_table_f23bb44f84a2a1fe ;;

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

  dimension: data_source_key {
    type: string
    sql: ${TABLE}.data_source_key ;;
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

  dimension: product_segment {
    type: string
    sql: ${TABLE}.product_segment ;;
  }

  dimension: remote_account_id {
    type: string
    sql: ${TABLE}.remote_account_id ;;
  }

  dimension: remote_campaign_id {
    type: string
    sql: ${TABLE}.remote_campaign_id ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }

  dimension: spent {
    type: number
    sql: ${TABLE}.spent ;;
  }

####################################################################################
#  dimension: timeframe {
#    view_label: "Data Tool"
#    sql: CASE
#          WHEN {% parameter timeframe_filter %} = 'Daily' THEN ${date_date}::varchar
#          WHEN {% parameter timeframe_filter %} = 'Weekly' THEN ${date_week}
#          WHEN {% parameter timeframe_filter %} = 'Monthly' THEN ${date_month}
#        END ;;
#    label_from_parameter: timeframe_filter
#    drill_fields: [product_name, binding_name]
#  }
####################################################################################

  dimension: segment {
    description: "Use in conjuction with the Segment Selector"
    primary_key: yes
    type: string
    sql:
      CASE
        WHEN {% parameter segment_selector %} = 'binding_name' THEN
        ${binding_name}
        WHEN {% parameter segment_selector %} = 'product_name' THEN
        ${product_name}
      ELSE
        NULL
    END ;;
    label_from_parameter: segment_selector
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
    sql: ${cost}/NULLIF(${conversions},0) ;;
    value_format_name: usd_0
  }

  measure: ctr {
    type: number
    sql: ${clicks}/NULLIF(${impressions},0) ;;
    value_format_name: percent_2
  }

  measure: conv_rate {
    type: number
    sql: ${conversions}::float/NULLIF(${clicks},0) ;;
    value_format_name: percent_2
  }

  measure: cpc {
    type: number
    sql: ${cost}/NULLIF(${clicks},0) ;;
    value_format_name: usd
  }

####################################################################################
#  parameter: timeframe_filter {
#    view_label: "Data Tool"
#    allowed_value: { value: "Daily" }
#    allowed_value: { value: "Weekly" }
#    allowed_value: { value: "Monthly" }
#  }
####################################################################################

  parameter: segment_selector {
    type: string
    allowed_value: {
      label: "Client name"
      value: "binding_name"
    }
    allowed_value: {
      label: "Platform name"
      value: "product_name"
    }
  }

  parameter: metric_selector {
    type: string
    allowed_value: {
      label: "Impressions"
      value: "impressions"
    }
    allowed_value: {
      label: "Clicks"
      value: "clicks"
    }
    allowed_value: {
      label: "Spend"
      value: "cost"
    }
    allowed_value: {
      label: "Click Through Rate"
      value: "ctr"
    }
    allowed_value: {
      label: "Cost Per Click"
      value: "cpc"
    }
  }

  measure: metric {
    type: number
    sql:
      CASE
        WHEN {% parameter metric_selector %} = 'impressions' THEN
          ${impressions}
        WHEN {% parameter metric_selector %} = 'clicks' THEN
          ${clicks}
        WHEN {% parameter metric_selector %} = 'cost' THEN
          ${cost}
        WHEN {% parameter metric_selector %} = 'ctr' THEN
          round(100 * ${ctr},2)
        WHEN {% parameter metric_selector %} = 'cpc' THEN
          round(${cpc},2)
        ELSE
          NULL
      END ;;
    html:  {% if metric_name._value contains 'cost' or metric_name._value contains 'cpc' or metric_name._value contains 'ctr' %}
             {{ linked_value }}{{ format_symbol._value }}
           {% else %}
             {{ format_symbol._value }}{{ linked_value }}
           {% endif %} ;;
    label_from_parameter: metric_selector
    drill_fields: [impressions, clicks, cost, ctr, cpc]
  }

  dimension: metric_name {
    hidden: yes
    type: string
    sql: CASE
          WHEN {% parameter metric_selector %} = 'cost' THEN 'cost'
          WHEN {% parameter metric_selector %} = 'ctr' THEN 'ctr'
          WHEN {% parameter metric_selector %} = 'cpc' THEN 'cpc'
          ELSE NULL
        END ;;
  }

  dimension: format_symbol {
    hidden: yes
    sql:
        CASE
          WHEN ${metric_name} = 'cost' THEN '$'
          WHEN ${metric_name} = 'ctr' THEN '%'
          WHEN ${metric_name} = 'cpc' THEN '$'
        END ;;
  }

  measure: count {
    type: count
    drill_fields: [binding_name, product_name]
  }
}
