\version "2.18.2"

\markup \column {
  \wordwrap {
    In this experiment, I'm going to try and remember the melody of a lullaby
    from my childhood. Although I have found references to the text, I could
    not find the full lyrics, nor any sheet music or recording related to this
    song.
  }
  \vspace #1
  \wordwrap {
    In this initial version, I went ahead and simply wrote down the melody,
    without thinking too much about scale and notation. I can't remember what
    key the song was in, but I could remember the melody relative to any pitch
    — so I started at the middle C.
  }
  \vspace #1
}

\relative {
  c'4 ais8 gis c4 c | c cis8 c ais4 ais |
  ais gis8 g ais4 ais | ais c8 cis c4 c |
  c f dis8 f c4 | ais dis8 cis c4 c |
  c cis c8 ais gis gis | ais ais c cis c4 c |
  c f dis8 f c4 | ais dis8 cis c4 c |
  c cis c8 ais gis gis | ais ais gis g f4 f \bar "|."
}

\markup \column {
  \wordwrap {
    Note that in the score above, I only used sharp signs to denote any
    accidentals. However, this is clearly not right, e.g. we have both C and
    C-sharp, which suggests that that our C-sharp is probably a B-flat instead.
  }
  \vspace #1
  \wordwrap {
    To get the notation right, we should really go ahead and figure out what
    key we are in. Let's have a look at all the notes that we have above:
  }
  \vspace #1
}

\relative {
  f4 g gis ais | c cis dis f |
}

\markup \column {
  \wordwrap {
    Let's move it up one register, to make it easier to read:
  }
  \vspace #1
}

\relative {
  f'4 g gis ais | c cis dis f |
}

\markup \column {
  \wordwrap {
    This is clearly bad: our notes don't go op one by one with the sharps,
    instead they stay (e.g. G, G-sharp) and then jump (e.g. A-sharp, C). Let's
    write down the same notes, this time using only flats:
  }
  \vspace #1
}

\relative {
  f'4 g aes bes | c des ees f |
}

\markup \column {
  \wordwrap {
    Much better! Now the notes go up nicely, one step at a time. This also
    means that we can get rid of the accidentals, by adding a key signature.
  }
  \vspace #1
  \wordwrap {
    The key signature that contains flats on A, B, D and E denotes either
    A-flat major, or any of its modes, like F minor. Given the "feel" of this
    song, I'm guessing this is indeed F minor, but we'll get to that later.
  }
  \vspace #1
}

\relative {
  \key f \minor

  f'4 g aes bes | c des ees f |
}

\markup \column {
  \wordwrap {
    Now let's try the entire song again, but with the key signature:
  }
  \vspace #1
}

\relative {
  \key f \minor

  c'4 bes8 aes c4 c | c des8 c bes4 bes |
  bes aes8 g bes4 bes | bes c8 des c4 c |
  c f ees8 f c4 | bes ees8 des c4 c |
  c des c8 bes aes aes | bes bes c des c4 c |
  c f ees8 f c4 | bes ees8 des c4 c |
  c des c8 bes aes aes | bes bes aes g f4 f \bar "|."
}


\markup \column {
  \wordwrap {
    That looks much better.
  }
  \vspace #1
  \wordwrap {
    Note that the last eight bars seem to repeat twice, excep the very last
    two.  Let's add a repeat bar to make that more concise.
  }
  \vspace #1
}

\relative {
  \key f \minor

  c'4 bes8 aes c4 c | c des8 c bes4 bes |
  bes aes8 g bes4 bes | bes c8 des c4 c | \break

  \repeat volta 2 {
    c f ees8 f c4 | bes ees8 des c4 c |
    c des c8 bes aes aes |
  }
  \alternative {
    { bes bes c des c4 c | }
    { bes8 bes aes g f4 f \bar "|." }
  }
}

\markup \column {
  \wordwrap {
    Neat! Now we have something concrete to play with.
  }
  \vspace #1
  \wordwrap {
    Remember in the beginning, how I said I did not remember the key this song
    was in? Now we've written it down in F minor, but knowing that it is in
    Aeolian mode (that is to say, it is in a minor scale), we can transpose it
    to any other minor scale, by simply moving each note up or down by the same
    number of semitones.
  }
  \vspace #1
  \wordwrap {
    For simplicity, let's transform it to a minor scale that is more
    beginner-friendly on the piano. By that I mean, one that has no
    accidentals, or in other words, doesn't use the black keys.
  }
  \vspace #1
  \wordwrap {
    We know that the C major doesn't use any black keys. The relative minor of
    the C major is A minor. To move from F minor to A minor, we move up by four
    semitones, which is the difference between a natural F and a natural A.
  }
  \vspace #1
}

\relative {
  \key a \minor

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

\markup \column {
  \wordwrap {
    WIP: Add tempo & some chords.
  }
  \vspace #1
}


<<
  \chords {
    \set chordChanges = ##t

    a1:m | a2:m d:m/a |
    d1:m/a | d2:m/a c |

    \repeat volta 2 {
      a1:m | a1:m |
    }
    \alternative {
      { a1:m b1:m }
      { a1:m b1:m }
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
