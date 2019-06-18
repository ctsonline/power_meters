connection: "centratechredshift"

# include all the views
include: "*.view"

datagroup: power_meters_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: power_meters_default_datagroup

explore: power_meters_nt {
  label: "Power Meters NT"
}
