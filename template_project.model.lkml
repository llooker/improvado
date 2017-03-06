connection: "postgress_improvado"

include: "*.view.lkml"                                   # include all views in this project
include: "template_account_perfomance.dashboard.lookml"  # include all dashboards in this project
include: "template_youtube_perfomance.dashboard.lookml"
include: "template_keywords_perfomance.dashboard.lookml"
include: "template_adgroup_perfomance.dashboard.lookml"
include: "template_facebook_perfomance.dashboard.lookml"

explore: adsets_adwords {}

explore: adsets_youtube {}

explore: adsets_bing {}

explore: ads_facebook {}

explore: keywords_adwords {}
