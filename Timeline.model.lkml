connection: "thelook"


explore: dcl_mentorship_timeline {
  hidden: yes
}

view: dcl_mentorship_timeline {
  derived_table: {
    sql: SELECT 'Ramp Exercises' as step, 1 as start_date, 6 as end_date
              UNION ALL SELECT 'Be Shadowed' as step, 2 as start_date, 4 as end_date
              UNION ALL SELECT 'Tone' as step, 2 as start_date, 19 as end_date
              UNION ALL SELECT 'Offlines' as step, 2 as start_date, 19 as end_date
              UNION ALL SELECT 'Troubleshooting' as step, 3 as start_date, 19 as end_date
              UNION ALL SELECT 'Shadow Mentee' as step, 4 as start_date, 6 as end_date
              UNION ALL SELECT 'Teaching' as step, 4 as start_date, 19 as end_date
              UNION ALL SELECT 'Thesis Project' as step, 5 as start_date, 9 as end_date
              UNION ALL SELECT 'Technically Correct' as step, 5 as start_date, 19 as end_date
              UNION ALL SELECT 'Chat Side-by-Side' as step, 6 as start_date, 7 as end_date
              UNION ALL SELECT 'Review All Chats' as step, 7 as start_date, 9 as end_date
              UNION ALL SELECT 'Independent Chat' as step, 7 as start_date, 11 as end_date
              UNION ALL SELECT 'Review 10 Chats' as step, 9 as start_date, 17 as end_date
              UNION ALL SELECT 'Review 5 Chats' as step, 17 as start_date, 19 as end_date
              UNION ALL SELECT 'Multi-tasking on Chat' as step, 11 as start_date, 14 as end_date
              UNION ALL SELECT 'Chat Limit to 2' as step, 14 as start_date, 19 as end_date
               ;;
    sql_trigger_value: SELECT 1 ;;
  }

  dimension: step {
    description: "Step that mentee is currently on"
    type: string
    sql: ${TABLE}.step ;;
  }

  dimension: start_week {
    description: "Week that mentorship step begins"
    type: number
    sql: ${TABLE}.start_date ;;
  }

  dimension: end_week {
    description: "Week that mentorship step ends"
    type: number
    sql: ${TABLE}.end_date ;;
  }
}
