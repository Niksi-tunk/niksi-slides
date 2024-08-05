#import "@preview/polylux:0.3.1": *
#import themes.metropolis: *

#set page(paper: "presentation-16-9")
#set text(size: 25pt)

#show: metropolis-theme.with(footer: [Niksi – Using Nix in education])

#title-slide(
  title: "Niksi",
  subtitle: "Using Nix for declarative programming environments in education",
  author: [Matias Zwinger, Luukas Pörtfors],
)

#slide(title: "What's the problem?")[
  Early stages of programming education often suffer from time
  being wasted installing the course specific development environment on
  the students machine. *That time could be used on learning programming*.

  Each student has their own machine with problems specific to that machine
  so no single documentation can help everyone.
  This is a tremendous waste of time and resources and often leaves the
  student feeling discouraged about programming.
]

#slide(title: "How does Niksi solve it?")[
  Niksi utilizes the promises given by the Nix package manager.
  It allows the teacher of a course to define the development environment
  needed for that specific course.

  For the end-user (the students), Niksi acts as a simple and intuitive interface
  that allows the student to start coding immediately without having to
  pay any attention to the boring stuff
  #footnote[Although it might be useful to learn the boring stuff at some point].
]

#slide(title: "Technical details")[
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
  // TODO: confirm this
  We'll start working part-time on Niksi in September
  for Aalto University and the first pilot will be conducted
  on the Programming 2 course in the spring 2025.

  Our main focus points for that project is stability of core
  features and good documentation as we won't be able to maintain it
  forever. The project will be licensed under a free license.
]

#slide(title: "Other potential uses for Niksi")[
  Uses for Niksi are definitely not limited to education.
  We think Niksi (or a similar solution) could be of high usefulness
  in any environment where rapid context switching is required
  (e.g. Software Consulting).

  Niksi and Nix is also not limited to only serving software development.
]

#focus-slide[
  = Questions?
  = Thank you for your attention!
]
