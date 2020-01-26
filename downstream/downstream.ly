% Downstream by Shira Kammen.
% Adapted for the recorder by Attila Oláh.

\version "2.19.83"

\header {
  title = "Downstream"
  instrument = "Soprano Recorder"
  composer = "Shira Kammen"
  tagline = ""
}

\transpose a g \relative {
  \key a \major
  \time 3/4

  \repeat volta 2 {
    a'2  e'4 | cis4. b8\prall a4 | gis4. a8 b4 | fis4 e2 |
    a2  e'4 | cis4. b8\prall a4 | d4. e8 fis4 | \acciaccatura e8 gis4. a16 gis fis8 gis | \break
  }
  \alternative {
    {
      gis8 a a e e4 | \acciaccatura fis8 g4. fis8\prall e4 | d4. cis8 a4 | b4. cis8 d4 |
      d8 e e a, a4 | d2 cis8 d16 cis | b4. a8 gis4 | a2. | \break
    }
    {
      gis'8 a a e e4 | g4. fis8\prall e4 | d4. cis8 a4 | b4. cis8 d4 |
      e4 e a, | d2 cis4 | b4.\prall a8 gis4 | a2. | \break
    }
  }

  e4 e fis | g2 e4 | g4. a8 b4 | \acciaccatura b8 cis8 b a4 g16 a b cis |
  d4 cis d | d8 e e d d4 | cis4. b8\prall a4 | \acciaccatura a8 b2 cis4 | \break
  \acciaccatura cis8 d2 cis8 d16 cis | b4 a2 | cis8 b a4 gis | e2 fis4 |
  g4. a8 b cis | cis8 d d4 cis | b8 cis b\prall a gis4 | a4 e fis8 gis | \break

  a2  e'4 | cis4. b8\prall a4 | gis4. a8 b4 | fis4 e2 |
  a2  e'4 | cis4. b8\prall a4 | d4. e8 fis4 | \acciaccatura e8 gis4. a16 gis fis8 gis | \break
  gis8 a a e e4 | g4. fis8\prall e4 | d4. cis8 a4 | b4 b8 cis d4 |
  d8 e e a, a4 | d2 cis8 d16 cis | b4. a8 gis4 | a2. | \break
}
