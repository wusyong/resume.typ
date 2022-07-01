module Resume (resume) where

import Data.List
import TeX

basicInfo :: Resume
basicInfo = paragraph
  [ pure "\\basicInfo{"
  , pure $ "\\email{wusyong9104@gmail.com}" ++ period
  , pure $ "\\github[wusyong]{https://github.com/wusyong}" ++ period
  , pure $ "\\homepage[wusyong.github.io]{https://wusyong.github.io}" ++ period
  , pure "\\linkedin[wusyong]{https://www.linkedin.com/in/yu-wei-wu-23630a155/}"
  , pure "}"
  ] where period = "\\textperiodcentered\\"

brief :: Resume
brief = section "TODO" "Brief"
  [ paragraph
    [ en $ "A software developer interested in system programming. Core memeber of Tauri cross-platform framework. "
        -- ++ "Specifically, the design and implementation of concurrency patterns, for data, threads, and more. "
        ++ "Proficient in Rust and C, but comfortable with most general programming languages."
    , cn "TODO"
    ]
  ]

education :: Resume
education = section "學歷" "Education"
  [ datedSection (date "2012" "08" ~~ date "2016" "07") $ paragraph
    [ en "\\textbf{National Chiao Tung University}, Taiwan"
    , cn "\\textbf{國立交通大學}, 臺灣"
    ]
  , en "Bachelor: Computer Science"
  , cn "學士：資訊工程學系"
  ]

biilabs :: Resume
biilabs = paragraph
  [ datedSection (date "2018" "11" ~~ date "2019" "08") $ paragraph
    [ cn "\\textbf{快樂小夥伴有限公司}, 臺灣"
    , en "\\textbf{BiiLabs Inc.}, Taiwan"
    ]
  , paragraph
    [ cn "\\role{雲端服務}{軟體工程師}}"
    , en "\\role{Cloud Services}{Software Engineer}"
    ]
  , itemize
    [ cn "\\item TODO"
    , en "\\item Improved computation bottleneck significantly with various approach like SSE/AVX SIMD acceleration and building embedded FPGA cluster with rabbitMQ."

    , cn "\\item TODO"
    , elab "\\item Developed microservices to accelerate accessing distributed system. Deployed and Monitored them with tools like Ansible and Grafana."

    , cn "\\item TODO"
    , elab "\\item Built the CI/CD environments with Buildkite. Maintained both cloud instances and local servers with Nginx and HAProxy. Learned a lot about Linux programming and its codebase."
    ]
  ]

iota :: Resume
iota = paragraph
  [ datedSection (date "2019" "08" ~~ date "2020" "12") $ paragraph
    [ cn "\\textbf{爵福科技有限公司}, 台灣"
    , en "\\textbf{Chuehfu Technology Ltd.}, Taiwan"
    ]
  , paragraph
    [ cn "\\role{分散式儲存系統}{資深軟體工程師 - Protocol 團隊}"
    , en "\\role{Distributed Storage Systems}{Senior Software Engineer - Protocol Team}"
    ]
  , itemize
    [ cn "\\item TODO"
    , en $ "\\item Developed the protocol of main system service. "
          ++ "Built several essential components around the distributed system like async actor-based runtime, MPMC channel, "
          ++ "and a fully hand-made protocol implementation to communicate with Cassandra / ScyllaDB."

    , cn "\\item TODO"
    , elab "\\item Mentored and guided other developers in the team become more familiar with various new tools and languages."

    , cn "\\item TODO"
    , elab "\\item Learned a lot about distributed system, working remotely, and databases."
    ]
  ]

semnet :: Resume
semnet = paragraph
  [ datedSection (date "2021" "01" ~~ present) $ paragraph
    [ cn "\\textbf{Semnet Ltd.}, 愛爾蘭"
    , en "\\textbf{Semnet Ltd.}, Ireland"
    ]
  , paragraph
    [ cn "\\role{TODO}{TODO}"
    , en "\\role{System Programming}{Individual Contributor}"
    ]
  , itemize
    [ cn "\\item TODO"
    , en $ "\\item Focus on building foundation of all services across multiple platforms. "
          ++ "Resolved all platform-specific issues while bringing each systems' capability for the team to build features on top of them. "
          ++ "Researched toward possible goals and designed best solutions for the company to promote the products."

    , cn "\\item TODO"
    , elab "\\item Built the core compoment that work for all platforms and hence reduce complexity when developing them."

    , cn "\\item TODO"
    , elab "\\item Built native application solutions that reduce multiple overhead significantly."
    ]
  ]

tauri :: Resume
tauri = paragraph
  [ github "tauri-apps/tauri" `datedSection` bold "Tauri"
  , cn "TODO"
  , en "A framework that builds smaller, faster, and more secure desktop applications with a web frontend."

  , itemize
    [ cn "\\item TODO"
    , en "\\item Compatibile with any front-end framework which means developers don't have to change their stack."

    , cn "\\item TODO"
    , en "\\item Supports cross-platform compilation to bundle binaries for major desktop platforms."
    ]
  ]

wry :: Resume
wry = paragraph
  [ github "tauri-apps/wry" `datedSection` bold "Wry"
  , cn "TODO"
  , en "Cross-platfrom WebView library that supports all desktop platforms like Windows, macOS, and Linux."
  ]

tao :: Resume
tao = paragraph
  [ github "tauri-apps/tao" `datedSection` bold "Tao"
  , cn "TODO"
  , en "Cross-platfrom Windows management library that supports all desktop and mobile platforms like Windows, macOS, Linux, Android, and iOS."
  ]

book :: Resume
book = paragraph
  [ github "rust-tw/book-tw" `datedSection` bold "TRPL (Traditional Chinese Version)"
  , cn "TODO"
  , en "Traditional Chinese version of The Rust Programming Language, the official book on Rust."
  ]

devTools :: Resume
devTools = paragraph
  [ itemTeX "開發工具" "Development Tool"
  , cn "TODO"
  , en "can adapt to any editors / operating systems, usually use JetBrains IDEs and Vim under"
  , simple "Arch Linux."
  , elab "Arch Linux, have experience with team collaboration tools like "
  , elab $ intercalate ", " tools ++ "."
  ] where
     tools = ["GitLab", "Jira", "GitHub", "ClickUp", "Hackmd", "Slack", "Zenhub"]

programmingLanguages :: Resume
programmingLanguages = paragraph
  [ itemTeX "程式設計語言" "Program Language"
  , en "\\textbf{multilingual} (not limited to any specific language),"
  , en $ "especially experienced in " ++ very ++ ","
  , en $ "comfortable with " ++ somehow ++ " (in random order)."
  ] where
      somehow = "C++ Haskell C\\# Objective-C Python Swift Racket"
      very    = "Rust C"

database :: Resume
database = paragraph
  [ itemTeX "TODO" "Database"
  , cn "TODO"
  , en $ "familiar with various databases such as " ++ dbs ++ ", etc."
  , elab "Understand concepts between different SQL/NoSQL databases."
  , elab "Can build protocol implementations without any help of ORM."
  ] where dbs = "Rocksdb, Cassandra, mariaDB, SQLite, PostgreSQL"

system :: Resume
system = paragraph
  [ itemTeX "系統開發" "System Programming"
  , cn "\\textbf{4 年}經驗，"
  , en "\\textbf{4 years} of experience,"

  , cn "TODO"
  , en $ "familiar with Linux programming interface and also other Unix-like OSes. "
      ++ "Understand general architecture of the operating system and know how to write one from " ++ scratch ++ "."

  , cn "TODO"
  , elab $ "Also familiar with interfaces of all mainstream OSes from desktop to mobile, and able to develop on top of them"
      ++ "without the help of any framework."
  ] where scratch = "\\href{https://youtu.be/vbZU7ABrAiE} {scratch}"

profiling :: Resume
profiling = paragraph
  [ itemTeX "TODO" "Profiling"
  , cn "TODO"
  , en $ "familiar with various tools such as " ++ dbs ++ ", and many kinds of sanitizers."
  , elab "Understand benchmarking, tuning, and producing useful graphic representations with gnuplot."
  ] where dbs = "perf, Flame Graph, Valgrind"

rust :: Resume
rust = paragraph
  [ pure "\\item \\textbf{Rust}:"
  , cn "\\textbf{5 年}經驗，"
  , en "\\textbf{5 years} of experience,"
  , elab $ "have projects collected in " ++ arust ++ " with over 40k stars in total,"
  , en "familiar with Cargo and Bazel, understand procedural macros, Rust asynchronous runtimes, and unsafe usage,"
  , en "contributed to Rust compiler and its tools from time to time."
  ] where arust = "\\href{https://github.com/rust-unofficial/awesome-rust} {Awesome Rust}"

skills :: Resume
skills = section "技能" "Skills" . pure $ itemize
  [ programmingLanguages
  , rust
  , system
  , profiling
  , database
  , devTools
  ]

resume :: Resume
resume = paragraph
  [ pure "% !TEX program = xelatex"
  , pure "% This file is generated, don't manually edit!"

  -- head
  , paragraph
    [ pure "\\documentclass{resume}"
    , cn   "\\usepackage{lastpage}"
    , cn   "\\usepackage{fancyhdr}"
    -- disable extra space before next section
    , pure "\\usepackage{linespacing_fix}"
    , cn   "\\usepackage[fallback]{xeCJK}"
    ]

  -- begin document
  , pure "\\begin{document}"
  , cn "\\renewcommand\\headrulewidth{0pt}"

  -- name
  , tex "name" "吳昱緯" "Yu Wei Wu"

  , basicInfo
  , brief
  , education

  , section "工作經歷" "Work Experience"
    [ biilabs
    , iota
    , semnet
    ]

  , section "個人專案" "Personal Projects"
    [ tauri
    , wry
    , tao
    , noSimple book
    ]

  , skills

  , section "其他" "Miscellaneous"
    [ let crates   = "https://crates.io/users/wusyong"
          projects = "\\textsf{rust, async-std, veloren, tauri, riscv-opcodes, grcov, windows-rs, gtk-rs, winit, "
                  ++ "smol, amethyst}"
    in itemize
    [ cn "\\item TODO"
    -- , en $ "\\item Crates.io profile: " ++ url crates ++ ", for publishing interesting Rust libraries"

    , en "\\item Languages: English - fluent, Chinese - native, Taiwanese - native"
    , cn "\\item TODO"

    , cn "\\item 開源貢獻："
    , en "\\item Member of \\textsf{Tauri, Webview, rust-tw} and more,"
    , en $ "contributed to " ++ projects ++ " and other projects"

    , cn "\\item TODO:"
    , en $ "\\item Get one-page version of the resume here: " ++ url "https://tinyurl.com/5bu836cy"
    , en $ "\\item Get complete version of the resume here: " ++ url "https://tinyurl.com/ffw74czc"
    
    ] ]

  -- end document
  , pure "\\end{document}"
  ]
