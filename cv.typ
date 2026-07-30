#let accent = rgb("#315a80")
#let muted = rgb("#667085")
#let border = rgb("#d9dee5")
#let background = rgb("#f3f5f7")

#set page(
  paper: "a4",
  margin: (x: 16mm, y: 16mm),
)

#set text(
  size: 9.5pt,
  fill: rgb("#202124"),
  font: "Liberation Mono"
)

#set par(
  justify: false,
  leading: 0.62em,
  spacing: 0.5em,
) 

#let section(title) = {
  block(above: 20pt, below: 6pt)[
    #text(size: 13pt, weight: "bold", font: "Liberation Sans", fill: accent)[#title]
    #v(0.5pt)
    #line(length: 100%, stroke: 1pt + border)
  ]
}

#let experience(
  organization: "",
  role: "",
  dates: "",
  description: "",
) = {
  block(below: 12pt, breakable: false)[
    #grid(
      columns: (1fr, auto),
      column-gutter: 8pt,
      align: (left, top),
      [#text(weight: "bold", size: 12pt)[#organization]],
      [#text(size: 8.5pt, fill: muted)[#dates]],
    )

    #v(0.2em)
    
    #text(weight: "medium", fill: accent, size: 10pt)[#role]

    #v(0.5em)

    #description 
  ]
}

#let education(
  name: "",
  status: "",
  dates: "",
  description: "",
) = {
  block(below: 12pt, breakable: false)[
    #grid(
      columns: (1fr, auto),
      column-gutter: 8pt,
      align: (left, top),
      [#text(weight: "bold", size: 12pt)[#name]],
      [#text(size: 8.5pt, fill: muted)[#dates]],
    )

    #v(0.2em)
    
    #text(weight: "medium", fill: accent, size: 10pt)[#status]

    #v(0.5em)

    #description
  ]
}

#let project(
  name: "",
  extra: "",
  description: "",
  links: [],
) = {
  block(below: 12pt, breakable: false)[
    #text(weight: "bold", size: 12pt)[#name]

    #v(0.2em)
    
    #text(weight: "medium", fill: accent, size: 10pt)[#extra]

    #v(0.5em)

    #description

    #v(0.5em)

    #list(
      tight: true,
      marker: [#sym.arrow.tr],
      indent: 8pt,
      body-indent: 4pt,
      ..links.map(item => [#item]),
    )
  ]
}

#grid(
  columns: (5fr, 2fr),
  column-gutter: 1em,
  align: top,

  [
    #text(size: 20pt, weight: "bold", font: "Liberation Sans", fill: accent)[Лещук Глеб] 

    #text(size: 13pt, weight: "medium", font: "Liberation Sans", fill: muted)[Software & DevOps Engineer]

    #v(1em)

    #section("Опыт работы")

    #experience(
      organization: "Яндекс, Москва",
      role: "Intern Software Engineer",
      dates: "Сентябрь 2024 – Январь 2025",
      description: "Стажировался в команде Yandex Cloud Billing. Разрабатывал и реализовывал функциональные требования к системе управления продуктовым каталогом."
    )

    #experience(
      organization: "Яндекс, Москва",
      role: "Middle Software Engineer",
      dates: "Январь 2025 – Сентябрь 2025",
      description: "Работал в команде Yandex Smart Home Backend. Занимался проектированием и реализацией продуктовых фичей, работал над протоколом интеграции нового устройства в систему умного дома, участвовал в архитектурных встречах со смежными командами, в рамках дежурств следил за reliability сервисов, помогал разбирать инциденты и тикеты из техподдержки."
    )

    #experience(
      organization: "ООО \"Понедельники\", Москва",
      role: "Network Engineer",
      dates: "Апрель 2026 – Июль 2026",
      description: "Проходил технологическую практику в условиях, совмещающих эксплуатационные и разработческие задачи. Анализировал работу распределённой системы мониторинга слаботочного оборудования (камер, микроконтроллеров, точек доступа, датчиков температуры) в крупной сети ритейл магазинов и диагностировал причины недоступности."
    )

    #section("Образование")

    #education(
      name: "Школа №2086, Москва",
      status: "Выпускник",
      dates: "Сентябрь 2022 – Май 2024",
      description: "Учился в профильном IT-классе. Окончил 11 класс с золотой медалью."
    )

    #education(
      name: "ФКН НИУ \"ВШЭ\", Москва",
      status: "Бакалавр",
      dates: "Сентябрь 2024 – Настоящее время",
      description: "Обучаюсь на образовательной программе \"Программная Инженерия\" на бюджетной основе. "
    )

    #education(
      name: "Яндекс Практикум",
      status: "Студент",
      dates: "Сентябрь 2025 – Апрель 2026",
      description: "Проходил платный курс от Яндекс Практикума \"DevOps для эксплуатации и разработки\"."
    )

    #section("Проекты")

    #project(
      name: "Cstati Events",
      extra: "Платформа управления мероприятиями",
      description: "Курсовой проект, разработанный совместно с участниками студенческой организации ФКН \"Cstati\". Платформа предоставляет функционал афиши мероприятий и покупки билетов на них.",
      links: (
        link("https://cstati.com")[cstati.com], 
      )
    )
  ],

  [
    #block(
      width: 100%,
      fill: background,
      radius: 3pt,
      inset: 8pt,
    )[
      #block(
        width: 100%,
        height: 48mm,
        fill: white,
        stroke: 0.8pt + border,
        radius: 2pt,
        inset: 4pt,
      )[
        #align(center + horizon)[
          #image("photo.jpg", width: 100%, height: 100%, fit: "cover")
        ]
      ]

      20 лет, Москва\
      #link("tel:+791265655029")[+7(916)565-50-29]\
      #link("mailto:leshless21\@gmail.com")[leshless21\@gmail.com]\
      #link("https://github.com/leshless")[github.com/leshless]\
      #link("https://t.me/leshless")[t.me/leshless ]


      #section("Технологии")

      Go, Python, Javascript, C, SQL, PostgreSQL, MySQL, MongoDB, Kafka, Redis, REST, gRPC, Linux, Git, Gitlab CI, Docker, Prometheus, Grafana, Yandex Cloud, Agile, Scrum

      #section("Языки")

      #list(
        tight: true,
        marker: [•],
        body-indent: 4pt,
        [Русский — Native],
        [Английский — C2],
        [Немецкий — A1],
      )
    ]
  ],
)
