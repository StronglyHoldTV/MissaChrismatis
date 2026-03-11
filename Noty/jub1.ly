\version "2.24.0"

global = {
  \key d \major
}

melody = \relative c' {
  \global
  \partial 4 d8[d8]
  a'4 a4 g8[fis8 g8 a8]
  a2. d='8[d8]
  a'4 a4 b8[a8 g8 fis8]
  e2. d8[cis8]
  d4 d4 e8[d8 e8 a8]
  fis2. e8[fis8]
  g4 g4 g8[fis8 e8 d8]
  e2. e8[e8]
  \bar "||" \key f \major
  f4 f4 g8[d8 e8 a8]
  f2. g8[a8]
  bes4 c4 bes8[a8 g8 f8]
  f1 \bar "|."

}

verse = \lyricmode {
  A -- ko vá -- nok Tvoj Duch ne -- sie nás,
  ces -- tou ži -- tia ne -- o -- púš -- ťaš nás,
  "v loď" -- ke Cir -- kvi kaž -- dý mies -- to má.
  Krá -- čať chce -- me, kam nás po -- vo -- láš,
  hor -- li -- vos -- ti pl -- ní za Te -- ba,
  "k ne" -- bu stú -- pa chvá -- la, ve -- le -- ba.
}

\score {
  <<
    \new Staff { 
      \melody
    }
    
    \addlyrics { \verse }
  >>
  \layout {
    \context {
      \Staff
    }
  }
  \midi {
    \tempo 4=100
  }
}
