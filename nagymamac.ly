\version "2.18.2"

<<
  \chords {
    \set chordChanges = ##t

    a1:m | a2:m d:m/a |
    d1:m/a | d2:m/a c/g |

    \repeat volta 2 {
      c1/g | d2:m/a a:m | c1/g |
    }
    \alternative {
      { g2 c/g }
      { g2 a:m/e }
    }
  }

  \relative {
    \key a \minor
    \tempo 4. = 60

    e'4 d8 c e4 e | e f8 e d4 d |
    d c8 b d4 d | d e8 f e4 e | \break

    \repeat volta 2 {
      e a g8 a e4 | d g8 f e4 e |
      e f e8 d c c |
    }
    \alternative {
      { d d e f e4 e | }
      { d8 d c b a4 a \bar "|." }
    }
  }
>>
