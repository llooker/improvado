connection: "postgress_improvado"

include: "*.view.lkml"                                   # include all views in this project
include: "template_adwords_account_perfomance.dashboard.lookml"  # include all dashboards in this project
include: "template_youtube_campaign_perfomance.dashboard.lookml"
include: "template_adwords_keywords_perfomance.dashboard.lookml"
include: "template_bing_adgroup_perfomance.dashboard.lookml"
include: "template_facebook_perfomance.dashboard.lookml"

explore: adsets_adwords {}

explore: adsets_youtube {}

explore: adsets_bing {}

explore: keywords_adwords {}

explore: ads_facebook_view {}
