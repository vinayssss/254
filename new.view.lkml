view: order_items1 {
  derived_table: {
    sql:
    SELECT * FROM PUBLIC.ORDER_ITEMS
    LIMIT {{ number_per_page._parameter_value }}
    OFFSET {{ number_per_page._parameter_value | times: page._parameter_value | minus: number_per_page._parameter_value }} ;;
  }

  parameter: page {
    type: number
  }

  parameter: number_per_page {
    type: number
  }
  }
