#import "@preview/polylux:0.3.1": *
#import themes.metropolis: *

#set page(paper: "presentation-16-9")
#set text(size: 22pt)

#show: metropolis-theme.with(footer: [Niksi – Using Nix in education])

#title-slide(
  title: "Niksi",
  subtitle: "Using Nix for declarative programming environments in education",
  author: [Matias Zwinger, Luukas Pörtfors],
  extra: image("niksi.png"),
)

#slide(title: "What's the problem?")[
  // Early stages of programming education often suffer from time
  // being wasted installing the course specific development environment on
  // the students machine. *That time could be used on learning programming*.

  // Each student has their own machine with problems specific to that machine
  // so no single documentation can help everyone.
  // This is a tremendous waste of time and resources and often leaves the
  // student feeling discouraged about programming.

  - Early stages of programming education often involve wasted time installing course-specific development environments.
  - *Time could be better utilized for learning programming.*
  - Each student's machine has unique issues.
    - Difficult to provide universal documentation.
  - A tremendous waste of time and resources.
  - Students may feel discouraged about programming.
]

#slide(title: "How does Niksi solve it?")[
  // Niksi utilizes the promises given by the Nix package manager.
  // It allows the teacher of a course to define the development environment
  // needed for that specific course.

  // For the end-user (the students), Niksi acts as a simple and intuitive interface
  // that allows the student to start coding immediately without having to
  // pay any attention to the boring stuff
  // #footnote[Although it might be useful to learn the boring stuff at some point #v(1em)].

  - Niksi utilizes the promises given by the Nix package manager:
    - *Declarative* and *deterministic* environments.
  - Allows the teacher to define a development environment.
  - The students:
    - Get a simple and intuitive interface.
    - Can start coding immediately.
    - No need to learn any of the boring stuff. #footnote[Although it might be useful to learn the boring stuff at some point #v(1em)]]

#slide(title: "Workflow")[
  - Niksi's user interface consists of a menu in VS Code which lists all the users courses.
  - Clicking on a course opens it in a new VS Code window, where the user has all the necessary tools available to start working on the course.
]

#new-section-slide([Technical details])


#slide(title: "Behind the scenes")[
  - Niksi has two components:
    - The VS Code -plugin
    - The NixOS WSL distro
  - The plugin spawns a new VS Code process and instructs it to open the relevant directory in the NixOS WSL distro.
  - Each course contains:
    - An `extensions.json` file which specifies the VS Code plugins to install.
    - A `flake.nix` file with a Devenv #footnote[#link("https://devenv.sh") #v(1em)] config specified by course staff.
]

#slide(title: "Devenv")[
  // This config is a declarative description of the working environment for the course.
  // The new VS Code window loads the config specified by the teacher of the course using the Direnv
  // #footnote[#link("https://marketplace.visualstudio.com/items?itemName=mkhl.direnv") #v(1em)]
  // plugin.

  // The first time a course is opened it might take some time to download all the binaries from the cache,
  // but after that enabling the environment will be almost instant.

  - This config is a declarative description of the working environment for the course.
  - The new VS Code window loads the config specified by the teacher of the course using the Direnv #footnote[#link("https://marketplace.visualstudio.com/items?itemName=mkhl.direnv") #v(1em)] plugin.
  - The first time a course is opened it might take some time to download all the binaries from the cache.
    - After that enabling the environment will be almost instant.
]

#slide(title: "Cross-platform??")[
  - Niksi is cross platform and supports Windows, MacOS and Linux.
    - Windows support is achieved through running NixOS in the WSL.
    - MacOS and Linux can run the Nix package manager natively.

  - The installer has to be developed somewhat separately for each platform.
    - It will be based on nix-installer by Determinate Systems #footnote[#link("https://github.com/DeterminateSystems/nix-installer") #v(1em)].
]

#focus-slide[
  = Actual demo
]


#slide(title: "What's next?")[
  Niksi is currently implemented as a VSCode plugin, however
  due to some limitations of the VSCode plugin API (and VSCode in general)
  and our preference to *not write TypeScript*, Niksi will be rewritten as
  VSCode-launcher (in Rust #emoji.rocket).
]

#slide(title: "What's next, continued")[
  - We'll start working part-time on Niksi in September for Aalto University
    - The project will be licensed under a free (as in freedom) license.

  - Pilot testing at the Programming 2 course (\~750 students) in spring 2025.
    - An optional way to install the environment.

  - Our main focus points for Niksi:
    + Stability of core features
    + Good documentation
      - We won't be able to maintain it forever.
]

#slide(title: "Other potential uses for Niksi")[
  - Uses for Niksi are definitely not limited to education.
  - We think Niksi (or a similar solution) could be of high usefulness in any environment where rapid context switching is required.
    - e.g. Software Consulting

  - Niksi and Nix is also not limited to only serving software development.
]

#focus-slide[
  = Thank you for your attention!
  = Questions?
]
