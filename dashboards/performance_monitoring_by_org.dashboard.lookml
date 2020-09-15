- dashboard: bigquery_performance_monitoring_by_organization
  title: BigQuery Performance Monitoring by Organization
  layout: newspaper
  preferred_viewer: dashboards
  elements:
  - title: Average Slot Utilization by Hour of Day and Day of Week
    name: Average Slot Utilization by Hour of Day and Day of Week
    model: bigquery_performance_monitoring
    explore: jobs_timeline_by_organization
    type: looker_line
    fields: [jobs_timeline_by_organization.period_start_hour_of_day, jobs_timeline_by_organization.period_start_day_of_week,
      jobs_timeline_by_organization.total_slots_per_hour]
    pivots: [jobs_timeline_by_organization.period_start_day_of_week]
    fill_fields: [jobs_timeline_by_organization.period_start_day_of_week, jobs_timeline_by_organization.period_start_hour_of_day]
    filters:
      jobs_timeline_by_organization.job_creation_time_date: 30 days
    sorts: [jobs_timeline_by_organization.period_start_day_of_week 0]
    limit: 1440
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    series_types: {}
    series_labels:
      jobs_timeline_by_organization.period_start_hour_of_day: Hour of Day
      jobs_timeline_by_organization.total_slot_hours: Slots Used
      jobs_timeline_by_organization.period_start_day_of_week: Day of Week
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: transparent
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      jobs_timeline_by_organization.total_slot_hours:
        is_active: false
      jobs_timeline_by_organization.period_start_hour_of_day:
        is_active: false
    series_text_format:
      jobs_timeline_by_organization.period_start_hour_of_day:
        bold: true
      jobs_timeline_by_organization.period_start_day_of_week:
        bold: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#173589",
        font_color: !!null '', color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5,
          palette_id: 46a4b248-19f7-4e71-9cf0-59fcc2c3039e, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: []}]
    defaults_version: 1
    hidden_fields: []
    listen: {}
    row: 36
    col: 0
    width: 24
    height: 6
  - title: New Tile
    name: New Tile
    model: bigquery_performance_monitoring
    explore: jobs_by_organization_raw
    type: single_value
    fields: [jobs_by_organization_raw__job_stages.total_shuffle_output_bytes_spilled]
    sorts: [jobs_by_organization_raw__job_stages.total_shuffle_output_bytes_spilled
        desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Bytes Spilled This Period
    comparison_label: vs Previous Period
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      Slot Usage and Pending Units Time Window: jobs_by_organization_raw.creation_date
    row: 3
    col: 12
    width: 6
    height: 4
  - title: GB Processed
    name: GB Processed
    model: bigquery_performance_monitoring
    explore: jobs_by_organization_raw
    type: single_value
    fields: [jobs_by_organization_raw.total_gb_processed]
    sorts: [jobs_by_organization_raw.total_gb_processed desc]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: GB Processed This Period
    comparison_label: vs Previous
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      Slot Usage and Pending Units Time Window: jobs_by_organization_raw.creation_date
    row: 3
    col: 0
    width: 6
    height: 4
  - title: New Tile
    name: New Tile (2)
    model: bigquery_performance_monitoring
    explore: jobs_by_organization_raw
    type: single_value
    fields: [jobs_by_organization_snapshot__snapshot.total_pending_units]
    sorts: [jobs_by_organization_snapshot__snapshot.total_pending_units desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Pending Units This Period
    comparison_label: vs Previous Period
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      Slot Usage and Pending Units Time Window: jobs_by_organization_raw.creation_date
    row: 3
    col: 18
    width: 6
    height: 4
  - title: Pending Units by Minute
    name: Pending Units by Minute
    model: bigquery_performance_monitoring
    explore: jobs_by_organization_raw
    type: looker_line
    fields: [jobs_by_organization_snapshot__snapshot.total_pending_units, jobs_by_organization_raw.creation_minute5,
      jobs_by_organization_raw.project_id]
    pivots: [jobs_by_organization_raw.project_id]
    fill_fields: [jobs_by_organization_raw.creation_minute5]
    sorts: [jobs_by_organization_raw.creation_minute5 desc]
    limit: 2000
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
    y_axes: [{label: Pending Units, orientation: left, series: [{axisId: jobs_by_organization_snapshot__snapshot.total_pending_units,
            id: jobs_by_organization_snapshot__snapshot.total_pending_units, name: Total
              Pending Units}], showLabels: true, showValues: true, maxValue: !!null '',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Minute
    series_colors:
      jobs_by_organization_raw.average_slots_used: "#2693D1"
      jobs_by_organization_snapshot__snapshot.total_pending_units: "#72C5D4"
      jobs_by_organization_snapshot__snapshot.slot: "#173589"
    reference_lines: []
    defaults_version: 1
    listen:
      Slot Usage and Pending Units Time Window: jobs_by_organization_raw.creation_date
    row: 13
    col: 0
    width: 24
    height: 5
  - title: Power Users
    name: Power Users
    model: bigquery_performance_monitoring
    explore: jobs_by_organization_raw
    type: looker_grid
    fields: [jobs_by_organization_raw.count_of_jobs, jobs_by_organization_raw.total_gb_processed,
      jobs_by_organization_raw.user_email, jobs_by_organization_raw.average_duration_seconds]
    sorts: [jobs_by_organization_raw.total_gb_processed desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      jobs_by_organization_raw.count_of_jobs: Total Jobs
      jobs_by_organization_raw.total_gb_processed: GB Processed
      jobs_by_organization_raw.average_gb_processed: Avg GB processed
      jobs_by_organization_raw.average_slot_utilization: Avg Slots Used
      jobs_by_organization_raw.average_duration_seconds: Avg Duration (sec)
    series_column_widths: {}
    series_cell_visualizations:
      jobs_by_organization_raw.total_gb_processed:
        is_active: true
        palette:
          palette_id: 46a4b248-19f7-4e71-9cf0-59fcc2c3039e
          collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      jobs_by_organization_raw.average_slot_utilization:
        is_active: true
        palette:
          palette_id: 471a8295-662d-46fc-bd2d-2d0acd370c1e
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      jobs_by_organization_raw.count_of_jobs:
        is_active: true
        palette:
          palette_id: 46a4b248-19f7-4e71-9cf0-59fcc2c3039e
          collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
    conditional_formatting: []
    series_value_format:
      jobs_by_organization_raw.total_gb_processed:
        name: decimal_4
        format_string: "#,##0.0000"
        label: Decimals (4)
      jobs_by_organization_raw.average_slot_utilization:
        name: percent_2
        format_string: "#,##0.00%"
        label: Percent (2)
    truncate_column_names: false
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 30
    col: 13
    width: 11
    height: 6
  - title: GB Processed by Referenced Data Set
    name: GB Processed by Referenced Data Set
    model: bigquery_performance_monitoring
    explore: jobs_by_organization_raw
    type: looker_bar
    fields: [jobs_by_organization_raw__referenced_tables.referenced_project_id, jobs_by_organization_raw__referenced_tables.referenced_dataset_id,
      jobs_by_organization_raw.total_gb_processed]
    pivots: [jobs_by_organization_raw__referenced_tables.referenced_dataset_id]
    filters:
      jobs_by_organization_raw__referenced_tables.referenced_project_id: "-EMPTY,-NULL"
    sorts: [jobs_by_organization_raw__referenced_tables.referenced_dataset_id, jobs_by_organization_raw.total_gb_processed
        desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
    y_axes: [{label: Slots Used, orientation: bottom, series: [{axisId: brand_sentiment
              - jobs_by_organization_raw.average_slots_used, id: brand_sentiment -
              jobs_by_organization_raw.average_slots_used, name: brand_sentiment},
          {axisId: call_center - jobs_by_organization_raw.average_slots_used, id: call_center
              - jobs_by_organization_raw.average_slots_used, name: call_center}, {
            axisId: census_bureau_acs - jobs_by_organization_raw.average_slots_used,
            id: census_bureau_acs - jobs_by_organization_raw.average_slots_used, name: census_bureau_acs},
          {axisId: census_utility - jobs_by_organization_raw.average_slots_used, id: census_utility
              - jobs_by_organization_raw.average_slots_used, name: census_utility},
          {axisId: covid19_block - jobs_by_organization_raw.average_slots_used, id: covid19_block
              - jobs_by_organization_raw.average_slots_used, name: covid19_block},
          {axisId: covid19_google_mobility - jobs_by_organization_raw.average_slots_used,
            id: covid19_google_mobility - jobs_by_organization_raw.average_slots_used,
            name: covid19_google_mobility}, {axisId: covid19_italy - jobs_by_organization_raw.average_slots_used,
            id: covid19_italy - jobs_by_organization_raw.average_slots_used, name: covid19_italy},
          {axisId: covid19_jhu_csse - jobs_by_organization_raw.average_slots_used,
            id: covid19_jhu_csse - jobs_by_organization_raw.average_slots_used, name: covid19_jhu_csse},
          {axisId: covid19_nyt - jobs_by_organization_raw.average_slots_used, id: covid19_nyt
              - jobs_by_organization_raw.average_slots_used, name: covid19_nyt}, {
            axisId: customer_usage - jobs_by_organization_raw.average_slots_used,
            id: customer_usage - jobs_by_organization_raw.average_slots_used, name: customer_usage},
          {axisId: demo_management - jobs_by_organization_raw.average_slots_used,
            id: demo_management - jobs_by_organization_raw.average_slots_used, name: demo_management},
          {axisId: demo_scratch - jobs_by_organization_raw.average_slots_used, id: demo_scratch
              - jobs_by_organization_raw.average_slots_used, name: demo_scratch},
          {axisId: demoexpo_scratch - jobs_by_organization_raw.average_slots_used,
            id: demoexpo_scratch - jobs_by_organization_raw.average_slots_used, name: demoexpo_scratch},
          {axisId: ecomm - jobs_by_organization_raw.average_slots_used, id: ecomm
              - jobs_by_organization_raw.average_slots_used, name: ecomm}, {axisId: fdic_banks
              - jobs_by_organization_raw.average_slots_used, id: fdic_banks - jobs_by_organization_raw.average_slots_used,
            name: fdic_banks}, {axisId: finserv_staging - jobs_by_organization_raw.average_slots_used,
            id: finserv_staging - jobs_by_organization_raw.average_slots_used, name: finserv_staging},
          {axisId: geo_us_boundaries - jobs_by_organization_raw.average_slots_used,
            id: geo_us_boundaries - jobs_by_organization_raw.average_slots_used, name: geo_us_boundaries},
          {axisId: ghcn_d - jobs_by_organization_raw.average_slots_used, id: ghcn_d
              - jobs_by_organization_raw.average_slots_used, name: ghcn_d}, {axisId: INFORMATION_SCHEMA
              - jobs_by_organization_raw.average_slots_used, id: INFORMATION_SCHEMA
              - jobs_by_organization_raw.average_slots_used, name: INFORMATION_SCHEMA},
          {axisId: jira - jobs_by_organization_raw.average_slots_used, id: jira -
              jobs_by_organization_raw.average_slots_used, name: jira}, {axisId: jira_staging
              - jobs_by_organization_raw.average_slots_used, id: jira_staging - jobs_by_organization_raw.average_slots_used,
            name: jira_staging}, {axisId: let - jobs_by_organization_raw.average_slots_used,
            id: let - jobs_by_organization_raw.average_slots_used, name: let}, {axisId: looker_scratch
              - jobs_by_organization_raw.average_slots_used, id: looker_scratch -
              jobs_by_organization_raw.average_slots_used, name: looker_scratch},
          {axisId: netsuite_accounting - jobs_by_organization_raw.average_slots_used,
            id: netsuite_accounting - jobs_by_organization_raw.average_slots_used,
            name: netsuite_accounting}, {axisId: NEXT2020 - jobs_by_organization_raw.average_slots_used,
            id: NEXT2020 - jobs_by_organization_raw.average_slots_used, name: NEXT2020},
          {axisId: region-us - jobs_by_organization_raw.average_slots_used, id: region-us
              - jobs_by_organization_raw.average_slots_used, name: region-us}, {axisId: retail
              - jobs_by_organization_raw.average_slots_used, id: retail - jobs_by_organization_raw.average_slots_used,
            name: retail}, {axisId: retail_banking - jobs_by_organization_raw.average_slots_used,
            id: retail_banking - jobs_by_organization_raw.average_slots_used, name: retail_banking},
          {axisId: salesforce - jobs_by_organization_raw.average_slots_used, id: salesforce
              - jobs_by_organization_raw.average_slots_used, name: salesforce}, {
            axisId: thelook - jobs_by_organization_raw.average_slots_used, id: thelook
              - jobs_by_organization_raw.average_slots_used, name: thelook}, {axisId: utility_us
              - jobs_by_organization_raw.average_slots_used, id: utility_us - jobs_by_organization_raw.average_slots_used,
            name: utility_us}, {axisId: zendesk - jobs_by_organization_raw.average_slots_used,
            id: zendesk - jobs_by_organization_raw.average_slots_used, name: zendesk}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Project
    hide_legend: true
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 30
    col: 0
    width: 13
    height: 6
  - title: GB Processed by Hour of Day and Day of Week
    name: GB Processed by Hour of Day and Day of Week
    model: bigquery_performance_monitoring
    explore: jobs_by_organization_raw
    type: looker_line
    fields: [jobs_by_organization_raw.total_gb_processed, jobs_by_organization_raw.creation_hour_of_day,
      jobs_by_organization_raw.creation_day_of_week]
    pivots: [jobs_by_organization_raw.creation_day_of_week]
    fill_fields: [jobs_by_organization_raw.creation_day_of_week, jobs_by_organization_raw.creation_hour_of_day]
    sorts: [jobs_by_organization_raw.creation_day_of_week]
    limit: 1440
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    series_types: {}
    series_labels:
      jobs_by_organization_raw.creation_time_hour_of_day: Hour of Day
      jobs_by_organization_raw.average_slot_utilization: Slots Used
      jobs_by_organization_raw.creation_time_day_of_week: Day of Week
      jobs_by_organization_raw.average_slots_used: Slots Used
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: transparent
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      jobs_by_organization_raw.average_slot_utilization:
        is_active: false
      jobs_by_organization_raw.creation_time_hour_of_day:
        is_active: false
    series_text_format:
      jobs_by_organization_raw.creation_time_hour_of_day:
        bold: true
      jobs_by_organization_raw.creation_time_day_of_week:
        bold: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#173589",
        font_color: !!null '', color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5,
          palette_id: 46a4b248-19f7-4e71-9cf0-59fcc2c3039e, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: []}]
    defaults_version: 1
    listen: {}
    row: 42
    col: 0
    width: 24
    height: 6
  - title: Slots Used, Duration, Bytes Spilled, GB Processed by Jobs
    name: Slots Used, Duration, Bytes Spilled, GB Processed by Jobs
    model: bigquery_performance_monitoring
    explore: jobs_by_organization_raw
    type: looker_grid
    fields: [jobs_by_organization_raw.job_id, jobs_by_organization_raw.user_email,
      jobs_by_organization_raw.query_total_slot, jobs_by_organization_raw.duration_seconds,
      jobs_by_organization_raw.total_gb_processed, jobs_by_organization_raw.sum_shuffle_output_megabytes_spilled]
    filters:
      jobs_by_organization_raw.creation_date: 30 days
    sorts: [jobs_by_organization_raw.total_gb_processed desc]
    limit: 20
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      jobs_by_organization_raw.query_total_slot: Slots Used
      jobs_by_organization_raw.total_gb_processed: Total GB
      jobs_by_organization_raw.duration_seconds: Duration (Sec)
      jobs_by_organization_raw.sum_shuffle_output_bytes_spilled: Bytes Spilled
    series_column_widths: {}
    series_cell_visualizations:
      jobs_by_organization_raw.total_gb_processed:
        is_active: true
        palette:
          palette_id: 46a4b248-19f7-4e71-9cf0-59fcc2c3039e
          collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      jobs_by_organization_raw.average_slot_utilization:
        is_active: false
        palette:
          palette_id: b477b8ad-b459-06b8-fe09-47fc095a7e86
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#27fa1a"
          - "#6ede13"
          - "#cdd61f"
          - "#bf881e"
          - "#c21816"
      jobs_by_organization_raw.query_total_slot:
        is_active: true
        palette:
          palette_id: 46a4b248-19f7-4e71-9cf0-59fcc2c3039e
          collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      jobs_by_organization_raw.duration_ms:
        is_active: true
        palette:
          palette_id: 46a4b248-19f7-4e71-9cf0-59fcc2c3039e
          collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      jobs_by_organization_raw.duration_seconds:
        is_active: true
        palette:
          palette_id: 46a4b248-19f7-4e71-9cf0-59fcc2c3039e
          collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#173589",
        font_color: !!null '', color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5,
          palette_id: 46a4b248-19f7-4e71-9cf0-59fcc2c3039e, options: {steps: 5}},
        bold: false, italic: false, strikethrough: false, fields: []}]
    series_value_format:
      jobs_by_organization_raw.total_gb_processed:
        name: decimal_4
        format_string: "#,##0.0000"
        label: Decimals (4)
      jobs_by_organization_raw.average_slot_utilization:
        name: decimal_4
        format_string: "#,##0.0000"
        label: Decimals (4)
      jobs_by_organization_raw.query_total_slot:
        name: decimal_2
        format_string: "#,##0.00"
        label: Decimals (2)
    truncate_column_names: false
    defaults_version: 1
    series_types: {}
    hidden_fields:
    listen: {}
    row: 24
    col: 0
    width: 24
    height: 6
  - title: New Tile
    name: New Tile (3)
    model: bigquery_performance_monitoring
    explore: jobs_by_organization_raw
    type: single_value
    fields: [jobs_by_organization_raw.count_cached_queries]
    sorts: [jobs_by_organization_raw.count_cached_queries desc]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Queries Cached
    comparison_label: vs Previous Period
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      Slot Usage and Pending Units Time Window: jobs_by_organization_raw.creation_date
    row: 3
    col: 6
    width: 6
    height: 4
  - title: Capacity Commitments
    name: Capacity Commitments
    model: bigquery_performance_monitoring
    explore: commit_facts
    type: looker_column
    fields: [commit_facts.annual_commit, commit_facts.flex_commit, commit_facts.monthly_commit,
      commit_facts.timestamp_minute5]
    fill_fields: [commit_facts.timestamp_minute5]
    sorts: [commit_facts.timestamp_minute5 desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Slot Commitments, orientation: left, series: [{axisId: commit_facts.annual_commit,
            id: commit_facts.annual_commit, name: Annual Commit}, {axisId: commit_facts.flex_commit,
            id: commit_facts.flex_commit, name: Flex Commit}, {axisId: commit_facts.monthly_commit,
            id: commit_facts.monthly_commit, name: Monthly Commit}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    listen:
      Slot Usage and Pending Units Time Window: commit_facts.timestamp_date
    row: 18
    col: 0
    width: 24
    height: 6
  - name: BigQuery Monitoring
    type: text
    title_text: BigQuery Monitoring
    subtitle_text: Specify Project Using Source Project Filter
    body_text: Use the reporting period selector to change the period for the top
      4 high-level KPIs.
    row: 0
    col: 0
    width: 24
    height: 3
  - title: Slots Used by Minute
    name: Slots Used by Minute
    model: bigquery_performance_monitoring
    explore: jobs_timeline_by_organization
    type: looker_area
    fields: [jobs_timeline_by_organization.period_start_minute5, jobs_timeline_by_organization.total_slot_5minutes,
      jobs_timeline_by_organization.project_id]
    pivots: [jobs_timeline_by_organization.project_id]
    fill_fields: [jobs_timeline_by_organization.period_start_minute5]
    filters: {}
    sorts: [jobs_timeline_by_organization.period_start_minute5 desc, jobs_timeline_by_organization.project_id]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    defaults_version: 1
    listen:
      Slot Usage and Pending Units Time Window: jobs_timeline_by_organization.job_creation_time_date
    row: 7
    col: 0
    width: 24
    height: 6
  filters:
  - name: Slot Usage and Pending Units Time Window
    title: Slot Usage and Pending Units Time Window
    type: date_filter
    default_value: 6 hours
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
