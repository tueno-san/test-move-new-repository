connection: "looker-demo-bigquery"

include: "/views/*.view.lkml"
datagroup: baseball_datagroup {
  sql_trigger: select current_date() ;;
  max_cache_age: "24 hours"
}
explore: baseball {}

explore: geo_data {}

map_layer: japan_pref {

  file: "/japan.topojson"

  format: topojson

  property_key: "nam_ja"

}
