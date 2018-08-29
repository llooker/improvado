view: creatives_raw_table_dcm {
  sql_table_name: public.creatives_raw_table_dcm ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension: advertiser_id {
    type: string
    sql: ${TABLE}.advertiser_id ;;
  }

  dimension: advertiser_name {
    type: string
    sql: ${TABLE}.advertiser_name ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: click_rate {
    type: number
    sql: ${TABLE}.click_rate ;;
  }

  dimension: click_through_conversions {
    type: number
    sql: ${TABLE}.click_through_conversions ;;
  }

  dimension: click_through_revenue {
    type: number
    sql: ${TABLE}.click_through_revenue ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: creative {
    type: string
    sql: ${TABLE}.creative ;;
  }

  dimension: creative_id {
    type: string
    sql: ${TABLE}.creative_id ;;
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

  dimension: eligible_impressions {
    type: number
    sql: ${TABLE}.eligible_impressions ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: measurable_impressions {
    type: number
    sql: ${TABLE}.measurable_impressions ;;
  }

  dimension: mediacost {
    type: number
    sql: ${TABLE}.mediacost ;;
  }

  dimension: pixel_click_through_revenue {
    type: number
    sql: ${TABLE}.pixel_click_through_revenue ;;
  }

  dimension: pixel_view_through_revenue {
    type: number
    sql: ${TABLE}.pixel_view_through_revenue ;;
  }

  dimension: placement {
    type: string
    sql: ${TABLE}.placement ;;
  }

  dimension: placement_id {
    type: string
    sql: ${TABLE}.placement_id ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}.site ;;
  }

  dimension: site_id {
    type: string
    sql: ${TABLE}.site_id ;;
  }

  dimension: total_conversions {
    type: number
    sql: ${TABLE}.total_conversions ;;
  }

  dimension: total_conversions_revenue {
    type: number
    sql: ${TABLE}.total_conversions_revenue ;;
  }

  dimension: view_through_conversions {
    type: number
    sql: ${TABLE}.view_through_conversions ;;
  }

  dimension: view_through_revenue {
    type: number
    sql: ${TABLE}.view_through_revenue ;;
  }

  dimension: viewable_impressions {
    type: number
    sql: ${TABLE}.viewable_impressions ;;
  }


  measure: cost {
    type: sum
    sql: ${mediacost} ;;
    drill_fields: [campaign_name, advertiser_name, creative, site, placement]
    value_format_name: usd
  }

  measure: conversions {
    type: sum
    sql: ${total_conversions} ;;
    drill_fields: [campaign_name, advertiser_name, creative, site, placement]
  }

  measure: revenue {
    type: sum
    sql: ${total_conversions_revenue} ;;
    drill_fields: [campaign_name, advertiser_name, creative, site, placement]
    value_format_name: usd
  }

  measure: eligible_imps {
    type: sum
    sql: ${eligible_impressions} ;;
    drill_fields: [campaign_name, advertiser_name, creative, site, placement]
  }

  measure: measurable_imps {
    type: sum
    sql: ${measurable_impressions} ;;
    drill_fields: [campaign_name, advertiser_name, creative, site, placement]
  }

  measure: viewable_imps {
    type: sum
    sql: ${viewable_impressions} ;;
    drill_fields: [campaign_name, advertiser_name, creative, site, placement]
  }

  measure: cpa {
    type: number
    sql: ${cost}/NULLIF(${conversions},0) ;;
    value_format_name: usd
  }

  measure: cpm {
    type: number
    sql: ${cost}::float/NULLIF(${imps},0)*1000 ;;
    value_format_name: usd
  }

  measure: imps {
    type: sum
    sql: ${impressions} ;;
    drill_fields: [campaign_name, advertiser_name, creative, site, placement]
  }

  measure: click {
    type: sum
    sql: ${clicks} ;;
    drill_fields: [campaign_name, advertiser_name, creative, site, placement]
  }

  measure: ctr {
    type: number
    sql: ${click}/NULLIF(${imps},0) ;;
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

  parameter: metric_selector {
    type: string
    allowed_value: {
      label: "Impressions"
      value: "imps"
    }
    allowed_value: {
      label: "Clicks"
      value: "click"
    }
    allowed_value: {
      label: "Click Through Rate"
      value: "ctr"
    }
    allowed_value: {
      label: "Cost/Conv"
      value: "cpa"
    }
  }

  measure: metric {
    type: number
    sql:
      CASE
        WHEN {% parameter metric_selector %} = 'imps' THEN
          ${imps}
        WHEN {% parameter metric_selector %} = 'click' THEN
          ${click}
        WHEN {% parameter metric_selector %} = 'ctr' THEN
          round(100 * ${ctr},2)
        WHEN {% parameter metric_selector %} = 'cpa' THEN
          round(${cpa},2)
        ELSE
          NULL
      END ;;
    html:  {% if metric_name._value contains 'cpa' or metric_name._value contains 'ctr' %}
             {{ linked_value }}{{ format_symbol._value }}
           {% else %}
             {{ format_symbol._value }}{{ linked_value }}
           {% endif %} ;;
    label_from_parameter: metric_selector
    drill_fields: [imps, click, ctr, cpa]
  }

  dimension: metric_name {
    hidden: yes
    type: string
    sql: CASE
          WHEN {% parameter metric_selector %} = 'ctr' THEN 'ctr'
          WHEN {% parameter metric_selector %} = 'cpa' THEN 'cpa'
          ELSE NULL
        END ;;
  }

  dimension: format_symbol {
    hidden: yes
    sql:
        CASE
          WHEN ${metric_name} = 'ctr' THEN '%'
          WHEN ${metric_name} = 'cpa' THEN '$'
        END ;;
  }

####################################################################################
#  dimension: is_top_10 {
#  type: yesno
#  sql: |
#     exists(
#      select * from (
#          select campaign_name
#          from creatives_raw_table_dcm
#          group by campaign_name
#          order by sum(metric) desc
#          limit 10
#        ) top_10
#      where ${campaign_name} = top_10.campaign_name
#      )
#  END;;
#  }
####################################################################################

  measure: count {
    type: count
    drill_fields: [advertiser_name, campaign_name]
  }
}
