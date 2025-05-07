view: swett_orders_agg_table_wiht_hll {
  sql_table_name: "LOOKER_TEST"."SWETT_ORDERS_AGG_TABLE_WIHT_HLL" ;;

  dimension: orders_created_day_of_week {
    type: string
    sql: ${TABLE}."orders.created_day_of_week" ;;
  }
  dimension: orders_created_day_of_week_index {
    type: number
    sql: ${TABLE}."orders.created_day_of_week_index" ;;
  }
  dimension: orders_hll_count {
    type: number
    sql: ${TABLE}."orders.hll_count" ;;
  }
  dimension: orders_hll_count0 {
    type: number
    sql: ${TABLE}."orders.hll_count0" ;;
  }
  dimension: orders_hll_count__hll {
    type: string
    sql: ${TABLE}."orders.hll_count__hll" ;;
  }
  measure: count {
    type: count
  }
}
