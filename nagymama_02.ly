\version "2.18.2"

\transpose f a \relative {
  \key f \minor

  c'2 bes4 aes | c2 c | c des4 c | bes2 bes |
  bes aes4 g | bes2 bes | bes c4 des | c2 c | \break

  \repeat volta 2 {
    c f | ees4 f c2 | bes ees4 des | c2 c |
    c des | c4 bes aes aes |
  }
  \alternative {
    { bes bes c des | c2 c | }
    { bes4 bes aes g | f2 f \bar "|." }
  }
}
