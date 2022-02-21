connection: "looker-demo-bigquery"

include: "/views/*.view.lkml"

explore: baseball {}

explore: geo_data {}

map_layer: japan_pref {

  file: "/japan.topojson"

  format: topojson

  property_key: "nam_ja"

}
