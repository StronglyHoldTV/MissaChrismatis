\version "2.24.0"

global = {
  \key es \major
}

melody = \relative c'' {
  \global
  \cadenzaOn
  g8[f8(g8)] as8[g8] as8[bes8] g8 es4 es8 \bar "'"
  g8[f8(g8)] as8[g8] as8[bes8] g8 es4 es8 \bar "'"
  ces'8[bes8 as8] ges8 es4 \bar "'"
  f8[es8] f8[g8] as8 f8 \bar "'"
  ces'!8 bes4 as8 ges4 f4 es2 \bar "|."
  \cadenzaOff
}

verse = \lyricmode {
 Pl -- ní __ hor -- li -- vos -- ti za Pá -- na, pl -- ní __ hor -- li vos -- ti za Pá -- na.
 Spie -- vaj -- me hym -- nus sy -- no -- via a dcé -- ry več -- né -- ho Si -- o -- na.
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
      \omit TimeSignature
    }
  }
  \midi {
    \tempo 4=100
  }
}
