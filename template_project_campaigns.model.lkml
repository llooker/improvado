connection: "postgres_improvado_campaigns"

include: "*.view.lkml"         # include all views in this project
include: "template_campaign_level.dashboard.lookml"  # include all dashboards in this project

explore: campaign_bindings {}
