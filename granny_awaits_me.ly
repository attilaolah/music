\version "2.18.2"

\header {
  title = "Nagymama vár rám"
  subtitle = "\n"
}

<<
  \chords {
    \set chordChanges = ##t

    a1:m | a:m | a:m | d:m/a |
    d:m/a | d:m/a | d:m/a | c/g |

    \repeat volta 2 {
      c/g | c/g | d:m/a | a:m | \break
      c/g | c/g |
    }
    \alternative {
      { g | c/g }
      { g | a:m/e }
    }
  }

  \relative {
    \key a \minor

    e'2 d4 c | e2 e | e f4 e | d2 d | \break
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

  \addlyrics {
    \set stanza = #"1."

    Nagy -- ma -- ma vár rám szép ősz ha -- já -- val.
    El -- rin -- gat es -- te, lágy mo -- so -- lyá -- val.

    \repeat volta 2 {
      A -- ludj, Pi -- ros -- kám, sut -- tog -- ja hal -- kan,
      s_me -- sét me -- sél el egy ré -- gi, ré -- gi dal -- ban.
    }
    \alternative {
      { ré -- gi, ré -- gi dal -- ban. }
    }
  }

  \addlyrics {
    \set stanza = #"2."

    Hall -- gat -- ja fész -- kén a kis -- ma -- dár -- ka.
    Me -- sék e -- züst -- je hul -- lik a fák -- ra.
  }
>>
