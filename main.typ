#import "@preview/polylux:0.3.1": *

#set page(paper: "presentation-16-9")
#set text(size: 25pt)

#polylux-slide[
  #align(horizon + center)[
    = Niksi
    Matias Zwinger and Luukas Pörtfors
  ]
]

#polylux-slide[
  == The problems

  === Installation
  Installing and setting up the programming environments for programming courses takes time that could be spent programming and learning.

  === Namespace conflict
  Different courses may require different versions of the same program.

  === Esoteric errors
  Since every students computer has a different setup the problems faced during installation may vary a lot from student to student.
  TAs may not be able to help in all situations.
]

#polylux-slide[
  == The solution

  - Move the programming environment to a custom Linux distro in WSL
  - A fully deterministic package manager called _Nix_ #footnote[https://nixos.org] installs the necessary packages in WSL
  - Students interact with the Niksi WSL using a VS Code plugin
]

#polylux-slide[
  == The workflow

  + Use the Niksi VS Code plugin to choose the course
    - Niksi downloads the course materials if they don't exist yet
  + VS Code opens the course directory in a remote window using WSL
    - The Niksi Linux distro downloads any necessary packages if they are not already installed
  + VS Code recommends the appropriate plugins to the user
  + The student can now start with the course

  First start takes just a few minutes, after that it is faster.
]

#polylux-slide[
  == How it works

  - Each course has a `flake.nix` file which specifies a certain environment
    - Nix is fully deterministic
  - The environment specifies the packages and their versions, environment variables, etc.
  - Only active in the specific course
  - Separate courses can have two different versions of the same program
    - Courses are fully compartmentalized
  - WSL supports GUI programs
]

#polylux-slide[
  == Some issues

  - Metals can't handle multi-root projects #footnote[https://github.com/scalameta/metals/issues/2287] (such as P2) 
    - One solution: allow a course to consist of multiple projects
  - Still only proof of concept
]

#polylux-slide[
  == The future of Niksi

  - Installer
  - A+ integration
  - Tools for teachers to create courses
  - Other platforms (MacOS, Linux)
]
