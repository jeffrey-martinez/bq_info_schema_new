- dashboard: slowdown_investigation
  title: Slowdown Investigation
  layout: newspaper
  preferred_viewer: dashboards
  elements:
  - title: GB Spilled
    name: GB Spilled
    model: bigquery_performance_monitoring
    explore: jobs_by_organization_raw
    type: single_value
    fields: [jobs_by_organization_raw__job_stages.total_shuffle_output_gibibytes_spilled]
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
    single_value_title: Shuffle GB Spilled to Disk
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
      Reporting Period: jobs_by_organization_raw.creation_date
      Project ID: jobs_by_organization_raw.project_id
    row: 2
    col: 16
    width: 8
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
      Reporting Period: jobs_by_organization_raw.creation_date
      Project ID: jobs_by_organization_raw.project_id
    row: 2
    col: 0
    width: 8
    height: 4
  - title: New Tile
    name: New Tile
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
      Reporting Period: jobs_by_organization_raw.creation_date
      Project ID: jobs_by_organization_raw.project_id
    row: 2
    col: 8
    width: 8
    height: 4
  - title: Capacity Commitments
    name: Capacity Commitments
    model: bigquery_performance_monitoring
    explore: commit_facts
    type: looker_column
    fields: [commit_facts.annual_commit, commit_facts.flex_commit, commit_facts.monthly_commit,
      commit_facts.timestamp_minute5]
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
      Reporting Period: commit_facts.timestamp_date
    row: 12
    col: 0
    width: 24
    height: 6
  - name: BigQuery Monitoring
    type: text
    title_text: BigQuery Monitoring
    subtitle_text: How much is being consumed?
    body_text: Links to Documentation
    row: 0
    col: 0
    width: 24
    height: 2
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
      Reporting Period: jobs_timeline_by_organization.job_creation_time_date
      Project ID: jobs_timeline_by_organization.project_id
    row: 6
    col: 0
    width: 24
    height: 6
  - title: Query Concurrency
    name: Query Concurrency
    model: bigquery_performance_monitoring
    explore: concurrency_per_second
    type: looker_line
    fields: [concurrency_per_second.timestamp_minute5, concurrency_per_second.avg_running,
      concurrency_per_second.max_running, concurrency_per_second.max_pending]
    filters:
      concurrency_per_second.timestamp_minute5: 6 hours
    sorts: [concurrency_per_second.timestamp_minute5 desc]
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
    listen:
      Project ID: concurrency_per_second.project_id
    row: 18
    col: 0
    width: 24
    height: 7
  filters:
  - name: Reporting Period
    title: Reporting Period
    type: date_filter
    default_value: 6 hours
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
  - name: Project ID
    title: Project ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: bigquery_performance_monitoring
    explore: jobs_timeline_by_organization
    listens_to_filters: []
    field: jobs_timeline_by_organization.project_id
