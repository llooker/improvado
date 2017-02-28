connection: "postgress_improvado"

include: "*.view.lkml"                                   # include all views in this project
include: "template_account_perfomance.dashboard.lookml"  # include all dashboards in this project

explore: adsets_adwords {}
