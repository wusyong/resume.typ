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
    , en "\\item Improved computation bottleneck significantly with various technics like SIMD  and embedded FPGA."

    , cn "\\item TODO"
    , en "\\item Developed microservices to accelerate accessing distributed system. "

    , cn "\\item TODO"
    , elab "\\item Maintained both cloud instances and local servers. Learned a lot about Linux programming and its codebase."
    ]
  ]

iota :: Resume
iota = paragraph
  [ datedSection (date "2019" "08" ~~ date "2020" "12") $ paragraph
    [ cn "\\textbf{IOTA 基金會}, 德國柏林"
    , en "\\textbf{IOTA Foundation}, German Berlin"
    ]
  , paragraph
    [ cn "\\role{分散式儲存系統}{資深軟體工程師 - Protocol 團隊}"
    , en "\\role{Distributed Storage Systems}{Senior Software Engineer - Protocol Team}"
    ]
  , itemize
    [ cn "\\item TODO"
    , en $ "\\item Developed the protocol of main system service. "
          ++ "Built several essential components around the distributed system like async actor runtime, message queue, and database ORM."

    , cn "\\item TODO"
    , en "\\item Designed the framework that can be the one source of truth and provides better interoperability through WASM and FFI."

    , cn "\\item TODO"
    , elab "\\item Mentored and guided other developers in the team become more familiar with Rust programing."

    , cn "\\item TODO"
    , elab "\\item Learned a lot about distributed system, working remotely, and databases."
    ]
  ]

smolpotat :: Resume
smolpotat = paragraph
  [ github "wusyong/smol-potat" `datedSection` bold "Smol-potat"
  , cn "TODO"
  , en "Proc macro for smol async runtime. It provides an ergonomic way to fine tune the runtime system."
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

    , cn "\\item TODO"
    , en "\\item Tauri application can have extreme small binary size and memory usage."
    ]
  ]

wry :: Resume
wry = paragraph
  [ github "tauri-apps/wry" `datedSection` bold "Wry"
  , cn "TODO"
  , en "Cross-platfrom WebView rendering library in Rust that supports all major desktop platforms like Windows, macOS, and Linux."
  ]

book :: Resume
book = paragraph
  [ github "rust-tw/book-tw" `datedSection` bold "TRPL (Traditional Chinese Version)"
  , cn "TODO"
  , en "Traditional Chinese version of The Rust Programming Language, the official book on Rust."
  ]

rcc4r :: Resume
rcc4r = paragraph
  [ github "wusyong/RCC4r" `datedSection` bold "RCC4r"
  , cn "TODO"
  , en "A Rust impl. of toy C Compiler with only 4 Raw functions."
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
  [ itemTeX "編譯器" "Database"
  , cn "TODO"
  , en $ "familiar with various databases such as " ++ dbs ++ ", etc."
  , elab "Understand concepts between different SQL/NoSQL databases."
  , elab "Can build protocol implementations without any help of ORM."
  ] where dbs = "Rocksdb, Cassandra, mariaDB, SQLite, PostgreSQL"

system :: Resume
system = paragraph
  [ itemTeX "系統開發" "System Programming"
  , cn "\\textbf{3 年}經驗，"
  , en "\\textbf{3 years} of experience,"

  , cn "TODO"
  , en $ "familiar with Linux programming interface and also other Unix-like OSes. "
      ++ "Understand how to write an operating system from " ++ scratch ++ "."
  ] where scratch = "\\href{https://youtu.be/vbZU7ABrAiE} {scratch}"

rust :: Resume
rust = paragraph
  [ pure "\\item \\textbf{Rust}:"
  , cn "\\textbf{4 年}經驗，"
  , en "\\textbf{4 years} of experience,"
  , elab $ "have projects collected in " ++ arust ++ ","
  , en "familiar with Cargo and Bazel, understand procedural macros, Rust asynchronous runtimes, and unsafe usage,"
  , en "contributed to Rust compiler and its tools from time to time."
  ] where arust = "\\href{https://github.com/rust-unofficial/awesome-rust} {Awesome Rust}"

mobileDev :: Resume
mobileDev = paragraph
  [ itemTeX "行動應用開發" "Mobile Development"
  , cn "\\textbf{1 年}經驗，"
  , en "\\textbf{1 year} of experience,"
  , pure "iOS (Swift), Fuchsia (Flutter)"
  , cn "。"
  ]

skills :: Resume
skills = section "技能" "Skills" . pure $ itemize
  [ programmingLanguages
  , database
  , rust
  , system
  , noSimple mobileDev
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
  , education

  , section "工作經歷" "Work Experience"
    [ biilabs
    , iota
    ]

  , section "個人專案" "Personal Projects"
    [ tauri
    , wry
    , noSimple smolpotat
    , noSimple book
    , noSimple rcc4r
    ]

  , skills

  , section "其他" "Miscellaneous"
    [ let crates   = "https://crates.io/users/wusyong"
          projects = "\\textsf{rust, async-std, veloren, tauri, riscv-opcodes, grcov, windows-rs, gtk-rs, winit, "
                  ++ "smol, amethyst}"
    in itemize
    [ cn "\\item TODO"
    , en $ "\\item Crates.io profile: " ++ url crates ++ ", for publishing interesting Rust libraries"

    , en "\\item Languages: English - fluent, Chinese - native, Taiwanese - native"
    , cn "\\item TODO"

    , cn "\\item 開源貢獻："
    , en "\\item Member of \\textsf{Tauri, Webview, rust-tw} and more,"
    , en $ "contributed to " ++ projects ++ " and other projects"
    ] ]

  -- end document
  , pure "\\end{document}"
  ]
