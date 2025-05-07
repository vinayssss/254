view: edges {
  sql_table_name: "LOOKER_TEST"."EDGES" ;;

  dimension: from_node {
    type: string
    sql: ${TABLE}."FROM_NODE" ;;
  }
  dimension: to_node {
    type: string
    sql: ${TABLE}."TO_NODE" ;;
  }
  dimension: weight {
    type: number
    sql: ${TABLE}."WEIGHT" ;;
  }
  measure: count {
    type: count
  }
}
