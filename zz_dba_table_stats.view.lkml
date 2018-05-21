view: zz_dba_table_stats {
  sql_table_name: dbo.zzDBA_TableStats ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: blank_or_null_values {
    type: number
    sql: ${TABLE}.BlankOrNullValues ;;
  }

  dimension: column_name {
    type: string
    sql: ${TABLE}.ColumnName ;;
  }

  dimension: count_rows {
    type: number
    sql: ${TABLE}.CountRows ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}.DataType ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}.DatabaseName ;;
  }

  dimension_group: datelogged {
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
    sql: ${TABLE}.datelogged ;;
  }

  dimension: max_len {
    type: number
    sql: ${TABLE}.MaxLen ;;
  }

  dimension: max_value {
    type: string
    sql: ${TABLE}.MaxValue ;;
  }

  dimension_group: maxdate {
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
    sql: ${TABLE}.MAXDATE ;;
  }

  dimension_group: min {
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
    sql: ${TABLE}.MinDate ;;
  }

  dimension: min_len {
    type: number
    sql: ${TABLE}.MinLen ;;
  }

  dimension: min_value {
    type: string
    sql: ${TABLE}.MinValue ;;
  }

  dimension: probable_data_type {
    type: string
    sql: ${TABLE}.ProbableDataType ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.TableName ;;
  }

  dimension: unique_values {
    type: number
    sql: ${TABLE}.UniqueValues ;;
  }

  measure: count {
    type: count
    drill_fields: [id, database_name, table_name, column_name]
  }
}
