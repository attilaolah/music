\version "2.18.2"

<<
\transpose c' e \relative {
  \key f \minor

  c''2 bes4 aes | c2 c | c des4 c | bes2 bes | \break
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
