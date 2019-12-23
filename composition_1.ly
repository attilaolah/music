\version "2.18.2"

<<
  \chords {
    \set chordChanges = ##t

    \repeat volta 2 {
      f1/c | f2./c f4 |
    }
    \alternative {
      { c1 | c/g }
      { c/e | c/e }
    }

    bes/f | bes/f | f | f |
    bes/f | bes/f | f | f |

    c/e | c/e |
  }

  \relative {
    \key f \major

    \repeat volta 2 {
      a'4. g16 f a2~ | a8 a g f a4 c |
    }
    \alternative {
      { g2.~ g8 e16 d | c1 | }
      { g'1 | r2. r8 c, | }
    }
    \break

    d8. d f8 f8. bes d8 | r d, d f bes f bes d |
    c1 | r2. r8 c,  | \break
    d8. f bes4 d,8 f bes | d,8. f bes4 f8 bes4 |
    a1 | r2. r8 a | \break

    g8. g a8 bes8. a g8 | r g g a bes8. c r8 |


    \bar "|."
  }
>>
