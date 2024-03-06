#import "template.typ": *


#show: project.with(
  title: "全国大学生数学建模竞赛 Typst 模板",
  problem_chosen: "A",
  team_number: "1234",
  college_name: " ",
  member: (
    first: " ",
    second: " ",
    third: " ",
  ),
  advisor: " ",
  date: datetime(year: 2023, month: 9, day: 8),

  cover_display: true,

  abstract: [
    #lorem(100)

    #lorem(100)
  ],

  keywords: ("Heat transfer", "Thermodynamic system", "CFD", "Energy conservation"),
)

#pagebreak()

#pagebreak()