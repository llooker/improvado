connection: "postgress_improvado"
connection: "improvado_ad_preview"

include: "*.view.lkml"                                   # include all views in this project
include: "template_adwords_account_perfomance.dashboard.lookml"  # include all dashboards in this project
include: "template_youtube_campaign_perfomance.dashboard.lookml"
include: "template_adwords_keywords_perfomance.dashboard.lookml"
include: "template_bing_adgroup_perfomance.dashboard.lookml"
include: "template_facebook_perfomance.dashboard.lookml"
include: "template_overview_platforms_level.dashboard.lookml"
include: "template_channel_perfomance.dashboard.lookml"
include: "template_dcm_perfomance.dashboard.lookml"
include: "template_twitter_perfomance.dashboard.lookml"
include: "template_ad_preview.dashboard.lookml"

explore: ads_creative_with_preview_raw_table_facebook {}

explore: adsets_adwords {}

explore: adsets_youtube {}

explore: adsets_bing {}

explore: keywords_adwords {}

explore: ads_facebook {}

explore: campaign_bindings {}

explore: creatives_raw_table_dcm {}

explore: organic_tweets_raw_table_twitter {}

explore: promoted_tweets_raw_table_twitter {}
