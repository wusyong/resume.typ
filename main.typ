#import "resume.typ": *

#show: cv.with(
  author: "Wu Yu Wei",
  contacts: (
    [#icon("mail.svg") #link("mailto:yuweiwu@pm.me")],
    [#icon("home.svg") #link("https://wusyong.github.io/")[wusyong.github.io]],
    [#icon("github.svg") #link("https://github.com/wusyong")[Github]],
  )
)

= Brief
A software developer interested in various programming domains. Core member of Servo Technical Steering Committee. Proficient in Rust and C, but comfortable with most general programming languages.

= Education
#exp(
  "National Chiao Tung University",
  "Bachelor in Computer Science",
  "Taiwan",
  "08/2012 – 07/2016",
  []
)

= Experience
#exp(
  "Link Compliance Japan K.K.",
  "(Web Browser) Software Engineering Manager",
  "Japan",
  "07/2023 – Present",
  [
    - Maintained large open-sourced web browser engine with people across the globe and companies.
    - Reviewed people's contributions to the project and ensured the integrity of whole artifact pipelines.
    - Setup monitor tool to detect regression and performance issues.
  ]
)
#exp(
  "CrabNebula Ltd.",
  "(Web Research) Staff Software Engineer",
  "Malta",
  "11/2022 – 07/2023",
  [
    - Directed large open-sourced projects with people across the globe.
    - Developed and maintained many well-known web browser libraries. Researched the boundary of web engines and pushed them forward.
  ]
)
#exp(
  "IONARY DEV LLC",
  "(Open Source) Freelancer",
  "USA",
  "10/2022 – 11/2022",
  [
    - Maintained Tauri core code base and setup official board for governance.
  ]
)
#exp(
  "Semnet Ltd.",
  "(System Programming) Senior Software Engineer",
  "Ireland",
  "01/2021 – 08/2022",
  [
    - Focused on building foundation of all services across multiple platforms. Resolved all platform-specific issues while bringing each system’s capability for the team to build features on top of them.
    - Researched possible goals and designed the best solutions for the company to promote the products.
  ]
)
#exp(
  "Chuehfu Technology Ltd.",
  "(Distributed Storage Systems) Senior Software Engineer",
  "Taiwan",
  "08/2019 – 11/2020",
  [
    - Developed the protocol of main system service. Built several essential components around the distributed system, like async actor-based runtime, MPMC channel, and a fully hand-made protocol implementation to communicate with Cassandra / ScyllaDB.
  ]
)
#exp(
  "BiiLabs Inc.",
  "(Cloud Services) Software Engineer",
  "Taiwan",
  "01/2018 – 08/2019",
  [
    - Improved computation bottleneck significantly with various approaches like SSE/AVX SIMD acceleration and building embedded FPGA cluster with rabbitMQ.
  ]
)

= Personal Projects
#exp(
  "Servo",
  "Member of Technical Steering Committee",
  "https://github.com/servo/servo",
  "",
  [
    A web browser rendering engine written in Rust.
    - A standalone web engine instead of a chromium fork.
    - Focus on modularity and security.
    - Support many modern WebAPIs including WebGPU.
  ]
)

#exp(
  "Tauri",
  "Core Member",
  "https://github.com/tauri-apps/tauri",
  "",
  [
    A framework that builds smaller, faster, and more secure desktop and mobile applications with a web frontend.
    - Compatible with any front-end framework.
    - Supports cross-platform compilation to bundle binaries for major desktop platforms.
  ]
)

= Skills
- *Programming Language*: *multilingual* (not limited to any specific language), especially experienced in Rust and C, comfortable with C++ Haskell C\# Objective-C Python Swift Racket (in random order).
- *Web Browser*: familiar with HTML and DOM standards, understand how web script engine works and able to implement various web features into the browser, including but no limited to streams, abort controller, and service workers.
- *Rust*: familiar with Cargo and Bazel, understand procedural macros, Rust asynchronous runtimes, and unsafe usage, contributed to Rust compiler and its tools from time to time.
- *System Programming*: familiar with Linux programming interface and also other Unix-like OSes. Understand general architecture of the operating system and know how to write one from #link("https://youtu.be/vbZU7ABrAiE")[scratch].

= Miscellaneous
- Languages: English - fluent, Chinese - native, Taiwanese - native.
- Member of `Servo`, `Tauri`, `rust-tw`, and more, contributed to `rust`, `async-std`, `veloren`, `tauri`, `riscv-opcodes`, `grcov`, `windows-rs`, `gtk-rs`, `winit`, and other projects.

