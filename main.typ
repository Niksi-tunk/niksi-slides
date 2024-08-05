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

#utils.register-section([Preface])
#slide[
  = What's the problem?

  Early stages of programming education often suffer from time
  being wasted installing the course specific development environment on
  the students machine. *That time could be used on learning programming*.

  Each student has their own machine with problems specific to that machine
  so no single documentation can help everyone.
  This is a tremendous waste of time and resources and often leaves the
  student feeling discouraged about programming.
]

#slide[
  = How does Niksi solve it

  Niksi utilizes the promises given by the Nix package manager.
  It allows the teacher of a course to define the development environment
  needed for that specific course.

  For the end-user (the students), Niksi ?? as a simple and intuitive interface
  that allows the student to start coding immediately without having to
  pay any attention to the boring stuff
  #footnote[Altough it might be useful to learn the boring stuff at some point].
]

#slide[
  = Cross-platform??
]

#slide[
  = Actual demo
]

#slide[
  = The PoC is cool and all but is some1 really interested
]
>>>>>>> c32006b (feat: first two slides)
