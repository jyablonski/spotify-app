body_recent <- dashboardBody(
  tags$head(
    tags$style(type = "text/css", ".legend { list-style: none; margin-left: -30px;}"),
    tags$style(type = "text/css", ".legend li { float: left; margin-right: 10px; position: relative; }"),
    tags$style(type = "text/css", ".legend span { border: 1px solid #ccc; float: left; width: 30px; height: 15px;
                   margin-right: 5px; margin-top: 1px; position: relative;"),
    tags$style(type = "text/css", ".legend .pos1 { background-color: #9362DA; }"),
    tags$style(type = "text/css", ".legend .pos2 { background-color: #3fb7d9; }"),
    tags$style(type = "text/css", ".legend .pos3 { background-color: #B9564A; }"),
    tags$style(type = "text/css", ".legend .pos4 { background-color: #4BD33A; }"),
    tags$style(type = "text/css", ".legend .pos5 { background-color: #FFFFFF; }"),
    #tags$style(type = "text/css", ".legend .pos6 { background-color: #FF0000; }"),
    tags$style(type = "text/css", ".legend .neg1 { background-color: #3fb7d9; }"),
    tags$style(type = "text/css", ".legend .neg2 { background-color: #FF0000; }"),
    tags$style(type = "text/css", ".legend .neg3 { background-color: #B9564A; }"),
    tags$style(type = "text/css", "@media (min-width: 768px) { .full-table { margin-top: -30px; } }")
  ),
  #fluidRow(
    #valueBoxOutput("recent_date", width = 6),
    #valueBoxOutput("recent_games_played", width = 6),
  #),
  fluidRow(
    box(column(width = 12, gt_output("top_15"))),
    box(column(width = 12, gt_output("recent_team_wins")))
  ),
  fluidRow(
    column(width = 6,
    div(
      tags$h5("Table Cell Coloring for Player Averages", style = "margin-left: 10px;"),
      tags$ul(class = "legend",
              tags$li(tags$span(class = "pos1"), " Season High"),
              tags$li(tags$span(class = "pos2"), "10+ pts Above"),
              tags$li(tags$span(class = "pos3"), "10+ pts Below"),
              tags$li(tags$span(class = "pos4"), "High Efficiency"),
              tags$li(tags$span(class = "pos5"), "Lower Efficiency"),
              #tags$li(tags$span(class = "pos6"), "TS Less than 40%"),
              tags$br()
      )
      )),
    column(width = 6,
    div(
      tags$h5("Table Cell Coloring for Team Averages", style = "margin-left: 10px;"),
      tags$ul(class = "legend",
              tags$li(tags$span(class = "pos1"), " Season High"),
              tags$li(tags$span(class = "neg1"), " 10+ pts Above"),
              tags$li(tags$span(class = "neg3"), "10+ pts Below")
    )
    ))#width = 12
  )
)
