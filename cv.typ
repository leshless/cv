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
  links: [],
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

    #v(0.5em)

    #list(
      tight: true,
      marker: [#sym.arrow.tr],
      indent: 0pt,
      body-indent: 4pt,
      spacing: 8pt,
      ..links.map(item => [#item]),
    )
  ]
}

#let education(
  name: "",
  status: "",
  dates: "",
  description: "",
  links: [],
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

    #v(0.5em)

    #list(
      tight: true,
      marker: [#sym.arrow.tr],
      indent: 0pt,
      body-indent: 4pt,
      spacing: 8pt,
      ..links.map(item => [#item]),
    )
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
      indent: 0pt,
      body-indent: 4pt,
      spacing: 8pt,
      ..links.map(item => [#item]),
    )
  ]
}

#grid(
  columns: (2fr, 1fr),
  column-gutter: 1em,
  align: top,

  [
    #text(size: 20pt, weight: "bold", font: "Liberation Sans", fill: accent)[#{if lang_ru [Лещук Глеб] else [Gleb Leshuk]}] 

    #text(size: 13pt, weight: "medium", font: "Liberation Sans", fill: muted)[Backend Engineer | Go]

    #v(1em)

    #if lang_ru [
      Go Бекэнд Раработчик с годом опыта в Яндексе, разрабатывал бекэнд сервисы для крупной IoT платформы.
    ] else [
      Go Backend Engineer with 1 year of production experience at Yandex, developing backend services for large-scale IoT platform.
    ]

    #v(0.3em)

    #section(if lang_ru [Опыт работы] else [Experience])

    #experience(
      organization: if lang_ru [Понедельники, Москва] else [Ponedelniki, Moscow],
      role: "Software | Network Engineer",
      dates: if lang_ru [Апрель 2026 – Июль 2026] else [April 2026 – July 2026],
      description: if lang_ru [
        - Анализировал распределённую систему мониторинга слаботочного оборудования в сети из 2+ тыс. ритейл магазинов сети ВкусВилл, включавшую камеры, микроконтроллеры, точки доступа и датчики температуры.
        - Диагностировал причины недоступности оборудования и исследовал взаимодействие компонентов системы для локализации проблем на уровне сети и прикладных сервисов.
      ] else [
        - Analyzed a distributed monitoring system deployed across 2k+ retail stores (VkusVill LLC), covering cameras, microcontrollers, access points, and temperature sensors.
        - Investigated equipment availability issues and traced failures across network and application-level components to identify root causes.
      ],
      links: (
        link("https://vkusvill.ru/projects/")[VkusVill],
      )
    )

    #experience(
      organization: if lang_ru [Яндекс, Москва] else [Yandex, Moscow],
      role: "Software Engineer",
      dates: if lang_ru [Январь 2025 – Сентябрь 2025] else [January 2025 – September 2025],
      description: if lang_ru [
        - Разрабатывал backend для Yandex Smart Home — платформы интеграции и управления умными устройствами, используемой 20+ млн. пользователей (10+ тыс. rps).
        - Спроектировал и реализовал протокол интеграции нового устройства в систему умного дома (датчик присутствия), обеспечив релиз.
        - Оптимизировал бизнес-процесс экспорта данных из DWH, сократив время выполнения с 8 часов до 10 минут.
        - Проектировал и разрабатывал продуктовую фичу для удержания пользователей — геймификацию онбординга в приложении.
        - Участвовал в архитектурных обсуждениях со смежными командами и дежурствах: анализировал production-инциденты, следил за reliability сервисов и разбирал обращения технической поддержки.
      ] else [
        - Developed backend services for Yandex Smart Home, an IoT platform serving 20M+ users and handling 10K+ RPS.
        - Designed and implemented an integration protocol for a new IoT device (presence sensor), enabling its production release.
        - Optimized a business process for exporting data from the DWH, reducing execution time from 8 hours to 10 minutes.
        - Designed and implemented a user retention feature introducing gamification to the in-app onboarding experience.
        - Participated in architectural discussions with adjacent teams and on-call rotations, investigating production incidents, monitoring service reliability, and resolving support cases.
      ],
      links: (
        link("https://alice.yandex.ru/smart-home")[Yandex IoT],
        link("https://alice.yandex.ru/smart-home/presence-sensor")[Yandex Presence Sensor],
      )
    )

    #experience(
      organization: if lang_ru [Яндекс, Москва] else [Yandex, Moscow],
      role: "Intern Software Engineer",
      dates: if lang_ru [Сентябрь 2024 – Январь 2025] else [September 2024 – January 2025],
      description: if lang_ru [
        - Работал в команде Yandex Cloud Billing, развивающей инфраструктуру биллинга для облачной платформы Yandex Cloud, и предоставляющей 100+ облачных продуктов.
        - Разрабатывал и реализовывал функциональные требования к системе управления продуктовым каталогом.
        - Проектировал и реализовал CRUD для управления бизнес сущностями.
      ] else [
        - Worked in the Yandex Cloud Billing team, developing billing infrastructure for the Yandex Cloud platform serving 100+ cloud products.
        - Designed and implemented functional requirements for the product catalog management system.
        - Implemented CRUD for business entity management.
      ],
      links: (
        link("https://yandex.cloud/en")[Yandex Cloud],
        link("https://yandex.cloud/en/services/billing")[Yandex Cloud Billing],
      )
    )

    #colbreak()

    #section(if lang_ru [Образование] else [Education])

    #education(
      name: if lang_ru [Яндекс Практикум] else [Yandex Practicum],
      status: if lang_ru [Студент] else [Student],
      dates: if lang_ru [Сентябрь 2025 – Апрель 2026] else [September 2025 – April 2026],
      description: if lang_ru [
        Проходил платный курс от Яндекс Практикума "DevOps для эксплуатации и разработки".
      ] else [
        Completed a paid course by Yandex Practicum "DevOps for Operations and Development".
      ],
      links: (
        link("https://practicum.yandex.ru/devops/")[Yandex Practicum], 
      )
    )

    #education(
      name: if lang_ru [ФКН НИУ "ВШЭ", Москва] else [FCS HSE, Moscow],
      status: if lang_ru [Бакалавр] else [Bachelor],
      dates: if lang_ru [Сентябрь 2024 – Настоящее время] else [September 2024 – Present],
      description: if lang_ru [
        Обучался на образовательной программе "Программная Инженерия" на бюджетной основе.
      ] else [
        Studied in the "Software Engineering" program on a budget basis.
      ],
      links: (
        link("https://cs.hse.ru")[FCS HSE], 
      )
    )
    
    #section(if lang_ru [Проекты] else [Projects])

    #project(
      name: "Cstati Events",
      extra: if lang_ru [Платформа управления мероприятиями] else [Event Management Platform],
      description: if lang_ru [
        Курсовой проект, разработанный совместно с участниками студенческой организации ФКН "Cstati". Платформа предоставляет функционал афиши мероприятий и покупки билетов на них.
      ] else [
        A course project developed in collaboration with members of the student organization "Cstati". The platform provides event discovery and ticket purchasing functionality.
      ],
      links: (
        link("https://cstati.com")[Cstati], 
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
        height: 60mm,
        fill: white,
        stroke: 0.8pt + border,
        radius: 2pt,
        inset: 4pt,
      )[
        #align(center + horizon)[
          #image("photo.jpg", width: 100%, height: 100%, fit: "cover")
        ]
      ]

      #{if lang_ru [Тбилиси, Грузия; Удаленно] else [Tbilisi, Georgia; Remote]}\
      #link("tel:+791265655029")[+7(916)565-50-29]\
      #link("mailto:coyotetime\@proton.me")[coyotetime\@proton.me]\
      #link("https://github.com/leshless")[github.com/leshless]\
      #link("https://www.linkedin.com/in/coyotetime")[linkedin.com/in/coyotetime]\
      #link("https://t.me/leshless")[t.me/coyotetime]\


      #section(if lang_ru [Технологии] else [Skills])

      Go, Python, Javascript, C, SQL, PostgreSQL, MySQL, MongoDB, Kafka, Redis, REST, gRPC, Linux, Git, Gitlab CI, Docker, Prometheus, Grafana, Yandex Cloud, MCP, LLM, Agile, Scrum

      #section(if lang_ru [Языки] else [Languages])

      #list(
        tight: true,
        marker: [•],
        body-indent: 4pt,
        if lang_ru [Английский — C1] else [English — C1],
        if lang_ru [Немецкий — A1] else [German — A1],
        if lang_ru [Русский — Native] else [Russian — Native],
      )
    ]
  ],
)
