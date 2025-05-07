view: vis {
  derived_table: {
    sql: select order_id,status from orders
       OFFSET({{ number_per_page._parameter_value | times: page._parameter_value | minus: number_per_page._parameter_value }} )
      limit 5000
          ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }
  parameter: page {
    type: number

  }
  parameter: number_per_page {
    # default_value: "5000"
    type: number

  }
  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  set: detail {
    fields: [
      order_id,
      status
    ]
  }
}
