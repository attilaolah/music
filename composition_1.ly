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
  }

  \relative {
    \key c \major

    \repeat volta 2 {
      a'4. g16 f a2~ | a8 a g f a4 c |
    }
    \alternative {
      { g2.~ g8 e16 d | c1 | }
      { g'1~ | g2.~ g8 c,8 | }
    }
    \break

    \key f \major

    d8. f bes4 d,8 f bes | d,8. f bes4 f8 bes e |
    c1~ | c | \break
    d,8. f bes4 d,8 f bes | d,8. f bes4 f8 bes4 |
    a1~ | a

    \bar "|."
  }
>>
