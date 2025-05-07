view: pagination {
  derived_table: {
    sql: SELECT
            "users"."email" AS "users.email",
            "users"."id" AS "users.id",
            "orders"."id" AS "orders.id"
            FROM
            "public"."order_items" AS "order_items"
            LEFT JOIN "public"."orders" AS "orders" ON "order_items"."order_id" = "orders"."id"
            LEFT JOIN "public"."users" AS "users" ON "orders"."user_id" = "users"."id"
            GROUP BY
            1,
            2,
            3
            ORDER BY
            3
    LIMIT 1000000000
          OFFSET {{ number_per_page._parameter_value| times: page._parameter_value| minus: number_per_page._parameter_value }} ;;
  }

  parameter: page {
    type: number

  }
  parameter: number_per_page {
    default_value: "5000"
    type: number

  }
  }
