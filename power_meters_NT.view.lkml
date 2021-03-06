view: power_meters_nt {
sql_table_name: public.ctsfieldmousedata ;;

  dimension: a1 {
    group_label: "Analogs"
    type: number
    sql: ${TABLE}.a1 ;;
  }

  dimension: a2 {
    group_label: "Analogs"
    type: number
    sql: ${TABLE}.a2 ;;
  }

  dimension: a3 {
    group_label: "Analogs"
    type: number
    sql: ${TABLE}.a3 ;;
  }

  dimension: a4 {
    group_label: "Analogs"
    type: number
    sql: ${TABLE}.a4 ;;
  }

  dimension: cid {
    label: "Customer ID"
    type: number
    value_format_name: id
    sql: ${TABLE}.cid ;;
  }

  dimension: d1 {
    group_label: "Digital"
    type: number
    sql: ${TABLE}.d1 ;;
  }

  dimension: d2 {
    group_label: "Digital"
    type: number
    sql: ${TABLE}.d2 ;;
  }

  dimension: r1 {
    group_label: "Relays"
    type: number
    sql: ${TABLE}.r1 ;;
  }


  dimension: emu_H1{
    type: string
    hidden: no
    sql: REPLACE(${sid},'27','Emu House 1') ;;
    drill_fields: [timestamp_hour,timestamp_date,timestamp_day_of_week]
  }

  dimension: emu_H3{
    type: string
    hidden: no
    sql: REPLACE(${sid},'15','Emu House 3') ;;
    drill_fields: [timestamp_hour,timestamp_date,timestamp_day_of_week]
  }

  dimension: emu_H4{
    type: string
    hidden: no
    sql: REPLACE(${sid},'22','Emu House 4') ;;
    drill_fields: [timestamp_hour,timestamp_date,timestamp_day_of_week]
  }

  dimension: emu_H5{
    type: string
    hidden: no
    sql: REPLACE(${sid},'8','Emu House 5') ;;
    drill_fields: [timestamp_hour,timestamp_date,timestamp_day_of_week]
  }

  dimension: emu_H6{
    type: string
    hidden: no
    sql: REPLACE(${sid},'11','Emu House 6') ;;
    drill_fields: [timestamp_hour,timestamp_date,timestamp_day_of_week]
  }

  dimension: emu_H8{
    type: string
    hidden: no
    sql: REPLACE(${sid},'19','Emu House 8') ;;
    drill_fields: [timestamp_hour,timestamp_date,timestamp_day_of_week]
  }

  dimension: emu_H9{
    type: string
    hidden: no
    sql: REPLACE(${sid},'28','Emu House 9') ;;
    drill_fields: [timestamp_hour,timestamp_date,timestamp_day_of_week]
  }

  dimension: emu_H10{
    type: string
    hidden: no
    sql: REPLACE(${sid},'21','Emu House 10') ;;
    drill_fields: [timestamp_hour,timestamp_date,timestamp_day_of_week]
  }

  dimension: emu_H12{
    type: string
    hidden: no
    sql: REPLACE(${sid},'25','Emu House 12') ;;
    drill_fields: [timestamp_hour,timestamp_date,timestamp_day_of_week]
  }

  dimension: emu_D2{
    type: string
    hidden: no
    sql: REPLACE(${sid},'26','Emu Donga 2') ;;
    drill_fields: [timestamp_hour,timestamp_date,timestamp_day_of_week]
  }

  dimension: emu_Shop{
    type: string
    hidden: no
    sql: REPLACE(${sid},'29','Shop') ;;
    drill_fields: [timestamp_hour,timestamp_date,timestamp_day_of_week]
  }

  dimension: woody_H6{
    type: string
    hidden: no
    sql: REPLACE(${sid},'9','Woody House 6') ;;
    drill_fields: [timestamp_hour,timestamp_date,timestamp_day_of_week]
  }

  dimension: woody_H3{
    type: string
    hidden: no
    sql: REPLACE(${sid},'17','Woody House 3') ;;
    drill_fields: [timestamp_hour,timestamp_date,timestamp_day_of_week]
  }


  dimension: Woody_H11{
    type: string
    hidden: no
    sql: REPLACE(${sid},'7','Woody House 11') ;;
    drill_fields: [timestamp_hour,timestamp_date,timestamp_day_of_week]
  }

  dimension: Woody_H13{
    type: string
    hidden: no
    sql: REPLACE(${sid},'5','Woody House 13') ;;
    drill_fields: [timestamp_hour,timestamp_date,timestamp_day_of_week]
  }

  dimension: Woody_H15{
    type: string
    hidden: no
    sql: REPLACE(${sid},'6','Woody House 15') ;;
    drill_fields: [timestamp_hour,timestamp_date,timestamp_day_of_week]
  }

  dimension: Woody_WC{
    type: string
    hidden: no
    sql: REPLACE(${sid},'4','Woody Womens Center') ;;
    drill_fields: [timestamp_hour,timestamp_date,timestamp_day_of_week]
  }


  dimension: r2 {
    group_label: "Relays"
    type: number
    sql: ${TABLE}.r2 ;;
  }

  dimension: r3 {
    group_label: "Relays"
    type: number
    sql: ${TABLE}.r3 ;;
  }

  dimension: r4 {
    group_label: "Relays"
    type: number
    sql: ${TABLE}.r4 ;;
  }

  dimension: sid {
    label: "Site ID"
    type: number
    value_format_name: id
    sql: ${TABLE}.sid ;;
  }

  dimension_group: timestampb {
    label: "Time real"
    type: time
    convert_tz: yes
    timeframes: [raw, time, time_of_day, hour, date, week, month]
    sql: ${TABLE}.timestamp::timestamp;;
    drill_fields: [timestamp_day_of_month, timestamp_hour,timestamp_date,timestamp_day_of_week]
  }



  dimension_group: timestamp
  {
    type: time
    timeframes: [raw, time, day_of_week, time_of_day, hour12, date, week, month,day_of_month, hour, minute10, minute15]
    sql: TIMESTAMPTZ(${TABLE}.timestamp);;
    drill_fields: [timestamp_day_of_month, timestamp_hour,timestamp_date,timestamp_day_of_week]
  }



  ##dimension_group: timestamp {
  ## type: time
  ##convert_tz: yes
  ##timeframes: [raw, time, time_of_day, date, hour, week, month, minute30  ]
  ##sql: convert_timezone('AEDT','AEDT', ${TABLE}.timestamp::timestamp);;
  # }


#   2017.11.14 AD at 13:31:28 AEDT

  measure: count {
    type: count
    drill_fields: []
  }

  measure: value_r1 {
    type: date_hour
    sql: ${a1} ;;
    drill_fields: [timestamp_day_of_month, timestamp_hour,r1,value_r1,timestamp_date,timestamp_raw]
  }

  measure: kWh_r1 {
    type: number
        sql: 1.0*${r1}/1000;;
    value_format: "0.0000"
  }

  measure: pay_r2 {
    type: number
    sql: ${r2};;
    value_format: "0000.00"
  }

  measure: max_a1 {
    type: number
    sql: ${a1};;
    value_format: "0.0000"
  }

}
