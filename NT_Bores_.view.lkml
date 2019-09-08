view: nt_bores_ {
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

    ##dimension: alenco_bore{
      ##type: string
      ##hidden: no
      ##sql: REPLACE(${sid},'','Emu House 3') ;;
      ##drill_fields: [timestamp_hour,timestamp_date,timestamp_day_of_week]
    ##}

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



   ## dimension_group: reading_8am {
      ##description: "A date starts from 8am of that day and ends before 8am of the following day."
      ##type: time
      ##timeframes: [date, hour, week, month, year]
      ##sql: DATEADD(hour,-12,${t1_raw}_raw}}) ;;
    ##}

    dimension_group: timestamp
    {
      type: time
      timeframes: [raw, time, day_of_week, time_of_day, date, week, month,day_of_month, hour, minute10, minute15]
      sql: TIMESTAMPTZ(${TABLE}.timestamp);;
      drill_fields: [timestamp_hour,timestamp_date,timestamp_day_of_week]
    }


    dimension_group: t1 {
      type: time
      timeframes: [raw, date, time, hour,month,week,year]
      sql: cast(TIMESTAMPTZ(${TABLE}.timestamp) as timestamp) ;;
      drill_fields: [t1_hour, t1_time,t1_month, t1_week,t1_year]
    }



    ##dimension_group: timestamp {
    ## type: time
    ##convert_tz: yes
    ##timeframes: [raw, time, time_of_day, date, hour, week, month, minute30  ]
    ##sql: convert_timezone('AEDT','AEDT', ${TABLE}.timestamp::timestamp);;
    # }


#   2017.11.14 AD at 13:31:28 AEDT


    measure: value_r1 {
      type: date_hour
      sql: ${a1} ;;
      drill_fields: [timestamp_hour,r1,value_r1,timestamp_date,timestamp_raw]
    }

  measure: max_a1 {
    type: max
    sql: ${a1};;
    value_format: "0.0000"
  }

  measure:avg_a1 {
    type: average
    sql: ${a1};;
    value_format: "0.0000"
  }

  measure: max_a2 {
    type: max
    sql: ${a2};;
    value_format: "0.0000"
  }

  measure: max_a3 {
    type: max
    sql: ${a3};;
    value_format: "0.0000"
  }

  measure: max_a4 {
    type: max
    sql: ${a4};;
    value_format: "0.0000"
  }

  measure: avg_a4 {
    type: average
    sql: ${a4};;
    value_format: "0.0000"
  }

  measure: count_d1 {
    type: number
    sql: ${d1};;
    value_format: "0.0000"
  }

  measure: max_d1 {
    type: max
    sql: ${a1};;
    value_format: "0.0000"
  }

  measure: min_d1 {
    type: max
    sql: ${d1};;
    value_format: "0.0000"
  }



  }
