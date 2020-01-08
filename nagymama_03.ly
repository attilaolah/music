\version "2.18.2"

\relative {
  \key a \minor

  e'2 d4 c | e2 e | e f4 e | d2 d |
  d c4 b | d2 d | d e4 f | e2 e | \break

  \repeat volta 2 {
    e a | g4 a e2 | d g4 f | e2 e |
    e f | e4 d c c |
  }
  \alternative {
    { d d e f | e2 e | }
    { d4 d c b | a2 a \bar "|." }
  }
}
