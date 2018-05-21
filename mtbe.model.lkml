connection: "mtbe"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: mtbe_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: mtbe_default_datagroup

explore: 20180403_mtbe_barge_1996 {}

explore: 20180403_mtbe_njnypa_1996 {}

explore: 20180403_mtbe_philly_refiners_transfers_exchdeliveries_1996 {}

explore: 20180403_mtbe_pipelines_1996 {}

explore: 20180403_sunoco_pa_gasoline_sales_data_1996 {}

explore: vw_mtbe_union {}

explore: zz_dba_table_stats {}
