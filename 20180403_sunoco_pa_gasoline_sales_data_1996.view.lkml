view: 20180403_sunoco_pa_gasoline_sales_data_1996 {
  sql_table_name: dbo."2018-04-03 Sunoco PA Gasoline Sales Data 1996" ;;

  dimension: biladrci {
    type: string
    sql: ${TABLE}.BILADRCI ;;
  }

  dimension: biladrst {
    type: string
    sql: ${TABLE}.BILADRST ;;
  }

  dimension: biladrzi {
    type: string
    sql: ${TABLE}.BILADRZI ;;
  }

  dimension: biladstr {
    type: string
    sql: ${TABLE}.BILADSTR ;;
  }

  dimension: bilcust {
    type: string
    sql: ${TABLE}.BILCUST ;;
  }

  dimension: bilnam1 {
    type: string
    sql: ${TABLE}.BILNAM1 ;;
  }

  dimension: bilnam2 {
    type: string
    sql: ${TABLE}.BILNAM2 ;;
  }

  dimension: cuaddrci {
    type: string
    sql: ${TABLE}.CUADDRCI ;;
  }

  dimension: cuaddrst {
    type: string
    sql: ${TABLE}.CUADDRST ;;
  }

  dimension: cuaddrzp {
    type: string
    sql: ${TABLE}.CUADDRZP ;;
  }

  dimension: cuaddstr {
    type: string
    sql: ${TABLE}.CUADDSTR ;;
  }

  dimension: cuname1 {
    type: string
    sql: ${TABLE}.CUNAME1 ;;
  }

  dimension: cuname2 {
    type: string
    sql: ${TABLE}.CUNAME2 ;;
  }

  dimension: custno {
    type: string
    sql: ${TABLE}.CUSTNO ;;
  }

  dimension: hauldscr {
    type: string
    sql: ${TABLE}.HAULDSCR ;;
  }

  dimension: prod {
    type: string
    sql: ${TABLE}.PROD ;;
  }

  dimension: prodesc {
    type: string
    sql: ${TABLE}.PRODESC ;;
  }

  dimension: qtygross {
    type: number
    sql: ${TABLE}.QTYGROSS ;;
  }

  dimension: qtynet {
    type: number
    sql: ${TABLE}.QTYNET ;;
  }

  dimension: sfname {
    type: string
    sql: ${TABLE}.SFNAME ;;
  }

  dimension: sfstabbr {
    type: string
    sql: ${TABLE}.SFSTABBR ;;
  }

  dimension_group: shipdte {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SHIPDTE ;;
  }

  dimension: uom {
    type: string
    sql: ${TABLE}.UOM ;;
  }

  measure: count {
    type: count
    drill_fields: [sfname]
  }
}
