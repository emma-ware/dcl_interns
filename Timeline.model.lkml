connection: "thelook"


explore: dcl_internship_timeline {
  hidden: yes
}

view: dcl_internship_timeline {
  derived_table: {
    sql: SELECT 'Ramp Exercises' as step, 1 as start_date, 3 as end_date
              UNION ALL SELECT 'Choose Project' as step, 2 as start_date, 3 as end_date
              UNION ALL SELECT 'Project Work' as step, 2 as start_date, 8 as end_date
              UNION ALL SELECT 'Prep Presentations' as step, 7 as start_date, 9 as end_date
              UNION ALL SELECT 'Presentations' as step, 9 as start_date, 9.5 as end_date
              UNION ALL SELECT 'Become Familiar With Project Data' as step, 2 as start_date, 4 as end_date
              UNION ALL SELECT 'Modeling' as step, 3 as start_date, 6 as end_date
              UNION ALL SELECT 'Project Check-in' as step, 5 as start_date, 6 as end_date
              UNION ALL SELECT 'Pod Projects' as step, 4 as start_date, 7 as end_date
              UNION ALL SELECT 'Attend Pod Meetings' as step, 2 as start_date, 7 as end_date
              UNION ALL SELECT 'Bi-Weekly Mentor Check-In' as step, 1 as start_date, 9 as end_date


               ;;
  }

  dimension: step {
    description: "Step that intern is currently on"
    type: string
    sql: ${TABLE}.step ;;
  }

  dimension: start_week {
    description: "Week that internship step begins"
    type: number
    sql: ${TABLE}.start_date ;;
  }

  dimension: end_week {
    description: "Week that internship step ends"
    type: number
    sql: ${TABLE}.end_date ;;
  }
}
