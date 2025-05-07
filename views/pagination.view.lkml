
view: sql_runner_query {
  derived_table: {
    sql: select id,status from ORDERS
    LIMIT {{ number_per_page._parameter_value }}

    OFFSET {{ number_per_page._parameter_value | times: page._parameter_value | minus: number_per_page._parameter_value }} ;;
  }


  parameter: page {
    type: number
  }

  parameter: number_per_page {
    # default_value: "5000"
    type: number
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}."ID" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}."USER_ID" ;;
  }

  dimension: order_amount {
    type: number
    sql: ${TABLE}."ORDER_AMOUNT" ;;
  }

  dimension_group: created_at {
    type: time
    sql: ${TABLE}."CREATED_AT" ;;
  }

  set: detail {
    fields: [
      id,
      status,
      user_id,
      order_amount,
      created_at_time
    ]
  }
}
