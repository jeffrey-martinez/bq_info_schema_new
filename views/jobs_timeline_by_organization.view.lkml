view: jobs_timeline_by_organization {
  derived_table: {
    sql: SELECT * FROM
      `region-us.INFORMATION_SCHEMA.JOBS_TIMELINE_BY_ORGANIZATION`
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension_group: period_start {
    type: time
    timeframes: [
      raw,
      time,
      second,
      minute,
      minute5,
      minute15,
      minute30,
      hour,
      date,
      week,
      month,
      time_of_day,
      day_of_week,
      hour_of_day
    ]
    sql: ${TABLE}.period_start ;;
    }

  dimension: period_slot_ms {
    type: number
    sql: ${TABLE}.period_slot_ms ;;
  }

  measure: total_slot_ms {
    type: sum
    sql: ${period_slot_ms} ;;
    value_format_name: decimal_2
    drill_fields: [detail*]
  }

  measure: total_slot_seconds {
    type: number
    sql: ${total_slot_ms} / 1000 ;;
    value_format_name: decimal_2
    drill_fields: [detail*]
  }

  measure: total_slot_minutes {
    type: number
    sql: ${total_slot_ms} / 60000 ;;
    value_format_name: decimal_2
    drill_fields: [detail*]
    label: "Slots Used by Minute"
  }

  measure: total_slot_5minutes {
    type: number
    sql: ${total_slot_ms} / (60000 * 5);;
    value_format_name: decimal_2
    drill_fields: [detail*]
    label: "Slots Used by 5 Minutes"
  }

  measure: total_slot_hours {
    type: number
    sql: ${total_slot_ms} / (60000 * 60);;
    value_format_name: decimal_2
    drill_fields: [detail*]
    label: "Slots Used by Hour"
  }

#   parameter: slot_usage_reporting_period{
#
#     type: unquoted
#     allowed_value: {
#       label: "15 Minute Reporting Period"
#       value: "15"
#     }
#     allowed_value: {
#       label: "5 Minute Reporting Period"
#       value: "5"
#     }
#     allowed_value: {
#       label: "1 Minute Reporting Period"
#       value: "1"
#     }
#     allowed_value: {
#       label: "1 Second Reporting Period"
#       value: "one"
#     }
#   }
#
#   dimension: reporting_period {
#     sql:
#     {% if reporting_period_parameter._parameter_value == '15' %}
#       ${period_start_minute15}
#     {% elsif reporting_period_parameter._parameter_value == '5' %}
#       ${period_start_minute5}
#     {% elsif reporting_period_parameter._parameter_value == '30' %}
#       ${30_min_reporting_periods}
#     {% else %}
#       ${one_hour_reporting_periods}
#     {% endif %};;
#   }

  dimension: project_id {
    type: string
    sql: ${TABLE}.project_id ;;
  }

  dimension: project_number {
    type: number
    sql: ${TABLE}.project_number ;;
  }

  dimension: user_email {
    type: string
    sql: ${TABLE}.user_email ;;
  }

  dimension: job_id {
    type: string
    sql: ${TABLE}.job_id ;;
  }

  dimension: job_type {
    type: string
    sql: ${TABLE}.job_type ;;
  }

  dimension: statement_type {
    type: string
    sql: ${TABLE}.statement_type ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}.priority ;;
  }

  dimension_group: job_creation_time {
    type: time
    timeframes: [raw, date]
    sql: ${TABLE}.job_creation_time ;;
  }

  dimension_group: job_start_time {
    type: time
    sql: ${TABLE}.job_start_time ;;
  }

  dimension_group: job_end_time {
    type: time
    sql: ${TABLE}.job_end_time ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: reservation_id {
    type: string
    sql: ${TABLE}.reservation_id ;;
  }

  dimension: total_bytes_processed {
    type: number
    sql: ${TABLE}.total_bytes_processed ;;
  }

  dimension: error_result {
    type: string
    sql: ${TABLE}.error_result ;;
  }

  dimension: cache_hit {
    type: string
    sql: ${TABLE}.cache_hit ;;
  }

  dimension: total_bytes_billed {
    type: number
    sql: ${TABLE}.total_bytes_billed ;;
  }

  set: detail {
    fields: [
      period_start_time,
      period_slot_ms,
      project_id,
      project_number,
      user_email,
      job_id,
      job_type,
      statement_type,
      priority,
      job_start_time_time,
      job_end_time_time,
      state,
      reservation_id,
      total_bytes_processed,
      cache_hit,
      total_bytes_billed
    ]
  }
}
