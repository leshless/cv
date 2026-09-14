#let lang = sys.inputs.at("lang", default: "en")
#let lang_ru = lang == "ru"

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
    #text(size: 20pt, weight: "bold", font: "Liberation Sans", fill: accent)[#{if lang_ru [Лещук Глеб] else [Gleb Leshuk]}] 

    #text(size: 13pt, weight: "medium", font: "Liberation Sans", fill: muted)[Software & DevOps Engineer]

    #v(1em)

    #section(if lang_ru [Опыт работы] else [Experience])

    #experience(
      organization: if lang_ru [Яндекс, Москва] else [Yandex, Moscow],
      role: "Intern Software Engineer",
      dates: if lang_ru [Сентябрь 2024 – Январь 2025] else [September 2024 – January 2025],
      description: if lang_ru [Стажировался в команде Yandex Cloud Billing. Разрабатывал и реализовывал функциональные требования к системе управления продуктовым каталогом.] else [Interned in the Yandex Cloud Billing team. Developed and implemented functional requirements for the product catalog management system.]
    )

    #experience(
      organization: if lang_ru [Яндекс, Москва] else [Yandex, Moscow],
      role: "Middle Software Engineer",
      dates: if lang_ru [Январь 2025 – Сентябрь 2025] else [January 2025 – September 2025],
      description: if lang_ru [Работал в команде Yandex Smart Home Backend. Занимался проектированием и реализацией продуктовых фичей, работал над протоколом интеграции нового устройства в систему умного дома, участвовал в архитектурных встречах со смежными командами, в рамках дежурств следил за reliability сервисов, помогал разбирать инциденты и тикеты из техподдержки.] else [Worked in the Yandex IOT Backend team. Worked on designing and implementing product features, developed the integration protocol for new devices in the IOT system, participated in architectural meetings with adjacent teams, and followed up on service reliability during on-call duties.]
    )

    #experience(
      organization: if lang_ru [ООО "Понедельники", Москва] else [ООО "Понедельники", Moscow],
      role: "Network Engineer",
      dates: if lang_ru [Апрель 2026 – Июль 2026] else [April 2026 – July 2026],
      description: if lang_ru [Проходил технологическую практику в условиях, совмещающих эксплуатационные и разработческие задачи. Анализировал работу распределённой системы мониторинга слаботочного оборудования (камер, микроконтроллеров, точек доступа, датчиков температуры) в крупной сети ритейл магазинов и диагностировал причины недоступности.] else [Completed a technical internship in an environment that involved operational and development tasks. Analyzed the performance of a distributed monitoring system for low-voltage equipment (cameras, microcontrollers, access points, temperature sensors) in a large retail chain and diagnosed reasons for unavailability.]
    )

    #section(if lang_ru [Образование] else [Education])

    #education(
      name: if lang_ru [Школа №2086, Москва] else [School #2086, Moscow],
      status: if lang_ru [Выпускник] else [Graduate],
      dates: if lang_ru [Сентябрь 2022 – Май 2024] else [September 2022 – May 2024],
      description: if lang_ru [Учился в профильном IT-классе. Окончил 11 класс с золотой медалью.] else [Studied in a IT class. Graduated with honors.]
    )

    #education(
      name: if lang_ru [ФКН НИУ "ВШЭ", Москва] else [FCS HSE, Moscow],
      status: if lang_ru [Бакалавр] else [Bachelor],
      dates: if lang_ru [Сентябрь 2024 – Настоящее время] else [September 2024 – Present],
      description: if lang_ru [Обучаюсь на образовательной программе "Программная Инженерия" на бюджетной основе.] else [Studying in the "Software Engineering" program on a budget basis.]
    )

    #education(
      name: if lang_ru [Яндекс Практикум] else [Yandex Practicum],
      status: if lang_ru [Студент] else [Student],
      dates: if lang_ru [Сентябрь 2025 – Апрель 2026] else [September 2025 – April 2026],
      description: if lang_ru [Проходил платный курс от Яндекс Практикума "DevOps для эксплуатации и разработки".] else [Completed a paid course by Yandex Practicum "DevOps for Operations and Development".]
    )

    #section(if lang_ru [Проекты] else [Projects])

    #project(
      name: "Cstati Events",
      extra: if lang_ru [Платформа управления мероприятиями] else [Event Management Platform],
      description: if lang_ru [Курсовой проект, разработанный совместно с участниками студенческой организации ФКН "Cstati". Платформа предоставляет функционал афиши мероприятий и покупки билетов на них.] else [A course project developed side by side with members of the student organization "Cstati". The platform provides functionality for event posters and ticket purchases.],
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

      #{if lang_ru [20 лет; Москва] else [20 y.o.; Moscow]}\
      #link("tel:+791265655029")[+7(916)565-50-29]\
      #link("mailto:leshless21\@gmail.com")[leshless21\@gmail.com]\
      #link("https://github.com/leshless")[github.com/leshless]\
      #link("https://t.me/leshless")[t.me/leshless ]


      #section(if lang_ru [Технологии] else [Skills])

      Go, Python, Javascript, C, SQL, PostgreSQL, MySQL, MongoDB, Kafka, Redis, REST, gRPC, Linux, Git, Gitlab CI, Docker, Prometheus, Grafana, Yandex Cloud, Agile, Scrum

      #section(if lang_ru [Языки] else [Languages])

      #list(
        tight: true,
        marker: [•],
        body-indent: 4pt,
        if lang_ru [Русский — Native] else [Russian — Native],
        if lang_ru [Английский — C2] else [English — C2],
        if lang_ru [Немецкий — A1] else [German — A1],
      )
    ]
  ],
)
