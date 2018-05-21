view: 20180403_mtbe_barge_1996 {
  sql_table_name: dbo."2018-04-03 MTBE_BARGE_1996" ;;

  dimension: bill_of_lading {
    type: string
    sql: ${TABLE}."BILL OF LADING" ;;
  }

  dimension: gross_qty {
    type: number
    sql: ${TABLE}."GROSS QTY" ;;
  }

  dimension: ids_source {
    type: string
    sql: ${TABLE}.IDS_Source ;;
  }

  dimension: location_name {
    type: string
    sql: ${TABLE}."LOCATION NAME" ;;
  }

  dimension: location_number {
    type: string
    sql: ${TABLE}."LOCATION NUMBER" ;;
  }

  dimension: location_state {
    type: string
    sql: ${TABLE}."LOCATION STATE" ;;
  }

  dimension: md_abbreviation {
    type: string
    sql: ${TABLE}."MD ABBREVIATION" ;;
  }

  dimension: md_code {
    type: string
    sql: ${TABLE}."MD CODE" ;;
  }

  dimension: net_quantitygallons {
    type: number
    sql: ${TABLE}."NET QUANTITY-GALLONS" ;;
  }

  dimension: prodcode {
    type: string
    sql: ${TABLE}.PRODCODE ;;
  }

  dimension: product_description {
    type: string
    sql: ${TABLE}."PRODUCT DESCRIPTION" ;;
  }

  dimension: purchase_or_exchange_partner_address {
    type: string
    sql: ${TABLE}."PURCHASE OR EXCHANGE PARTNER ADDRESS" ;;
  }

  dimension: purchase_or_exchange_partner_attn_to {
    type: string
    sql: ${TABLE}."PURCHASE OR EXCHANGE PARTNER_ATTN TO" ;;
  }

  dimension: purchase_or_exchange_partner_city {
    type: string
    sql: ${TABLE}."PURCHASE OR EXCHANGE PARTNER CITY" ;;
  }

  dimension: purchase_or_exchange_partner_name {
    type: string
    sql: ${TABLE}."PURCHASE OR EXCHANGE PARTNER NAME" ;;
  }

  dimension: purchase_or_exchange_partner_state {
    type: string
    sql: ${TABLE}."PURCHASE OR EXCHANGE PARTNER STATE" ;;
  }

  dimension: purchase_or_exchange_partner_zip {
    type: string
    sql: ${TABLE}."PURCHASE OR EXCHANGE PARTNER ZIP" ;;
  }

  dimension_group: ship {
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
    sql: ${TABLE}."SHIP DATE" ;;
  }

  dimension: transaction_type {
    type: string
    sql: ${TABLE}."TRANSACTION TYPE" ;;
  }

  dimension: transfer_location {
    type: string
    sql: ${TABLE}."TRANSFER LOCATION" ;;
  }

  dimension: transfer_location_gac {
    type: string
    sql: ${TABLE}."TRANSFER LOCATION GAC" ;;
  }

  dimension: transfer_location_state {
    type: string
    sql: ${TABLE}."TRANSFER LOCATION STATE" ;;
  }

  dimension: vendor_state {
    type: string
    sql: ${TABLE}."VENDOR STATE" ;;
  }

  dimension: vendor_state_gac {
    type: string
    sql: ${TABLE}."VENDOR STATE GAC" ;;
  }

  measure: count {
    type: count
    drill_fields: [location_name, purchase_or_exchange_partner_name]
  }
}
