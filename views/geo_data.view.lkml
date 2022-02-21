view: geo_data {
  sql_table_name: `thelook.geo_data` ;;

  dimension: ID {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: amount {
    type: string
    sql: ${TABLE}.amount ;;
  }

  measure: sum_amount {
    type: sum
    sql: ${amount} ;;
  }

  dimension: prefecture {
    map_layer_name: japan_pref
    type: string
    sql: ${TABLE}.name ;;
  }
}
