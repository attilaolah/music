\version "2.18.2"

%{
  In this experiment, I'm going to try and remember the melody of a lullaby
  from my childhood. Although I have found references to the text, I could not
  find the full lyrics, nor any sheet music or recording related to this song.

  In this initial version, I went ahead and simply wrote down the melody,
  without thinking too much about scale and notation. I can't remember what key
  the song was in, but I could remember the melody relative to any pitch — so I
  started at the middle C.
%}

\relative {
  c'2 ais4 gis | c2 c | c cis4 c | ais2 ais |
  ais gis4 g | ais2 ais | ais c4 cis | c2 c |
  c f | dis4 f c2 | ais dis4 cis | c2 c |
  c cis | c4 ais gis gis | ais ais c cis | c2 c |
  c f | dis4 f c2 | ais dis4 cis | c2 c |
  c cis | c4 ais gis gis | ais ais gis g | f2 f \bar "|."
}

%{
  Note that in the score above, I only used sharp signs to denote any
  accidentals. However, this is clearly not right, e.g. we have both C and C#,
  which suggests that that our C# is probably a Bb instead.

  To get the notation right, we should really go ahead and figure out what key
  we are in. Let's have a look at all the notes that we have above:
%}

\relative {
  f4 g gis ais | c cis dis f |
}

%{
  Let's move it up one register, to make it easier to read:
%}

\relative {
  f'4 g gis ais | c cis dis f |
}

%{
  This is clearly bad: our notes don't go op one by one with the sharps,
  instead they stay (e.g. G, G#) and then jump (e.g. A#, C). Let's write down
  the same notes, this time using only flats:
%}

\relative {
  f'4 g aes bes | c des ees f |
}

%{
  Much better! Now the notes go up nicely, one step at a time. This also means
  that we can get rid of the accidentals, by adding a key signature.

  The key signature that contains flats on A, B, D and E denotes either A-flat
  major, or any of its modes, like F minor. Given the "feel" of this song, I'm
  guessing this is indeed F minor, but we'll get to that later.
%}

\relative {
  \key f \minor

  f'4 g aes bes | c des ees f |
}

%{
  Now let's try the entire song again, but with the key signature:
%}

\relative {
  \key f \minor

  c'2 bes4 aes | c2 c | c des4 c | bes2 bes |
  bes aes4 g | bes2 bes | bes c4 des | c2 c |
  c f | ees4 f c2 | bes ees4 des | c2 c |
  c des | c4 bes aes aes | bes bes c des | c2 c |
  c f | ees4 f c2 | bes ees4 des | c2 c |
  c des | c4 bes aes aes | bes bes aes g | f2 f \bar "|."
}


%{
  That looks much better.

  Note that the last eight bars seem to repeat twice, excep the very last two.
  Let's add a repeat bar to make that more concise.
%}

\relative {
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

%{
  Neat! Now we have something concrete to play with.

  Remember in the beginning, how I said I did not remember the key this song
  was in? Now we've written it down in F minor, but knowing that it is in
  Aeolian mode (that is to say, it is in a minor scale), we can transpose it to
  any other minor scale, by simply moving each note up or down by the same
  number of semitones.

  For simplicity, let's transform it to a minor scale that is more
  beginner-friendly on the piano. By that I mean, one that has no accidentals,
  or in other words, doesn't use the black keys.

  We know that the C major doesn't use any black keys. The relative minor of
  the C major is A minor. To move from F minor to A minor, we move up by four
  semitones, which is the difference between a natural F and a natural A.

%}

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
