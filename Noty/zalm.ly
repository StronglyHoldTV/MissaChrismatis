\version "2.24.0"



global = {
  \key g \major
}

melody = \relative c'' {
  \global
  \cadenzaOn
    g8[a8] \stemUp \tuplet 5/2 {b8[b8 a8 b8 d8]} \stemNeutral g='8 g4. \bar "," a8[a8 a8 a8] g8[a8] b8[b8] b4. \bar "|."
  \cadenzaOff
}

verse = \lyricmode {
  Tvo -- je mi -- lo -- sr -- den -- stvo, Pa -- ne, os -- pe -- vo -- vať bu -- dem na -- ve -- ky.
}

\score {
  <<
    \new Staff { 
      \melody
    }
    
    \addlyrics { \verse }
  >>
  \layout {
    ragged-last = ##f
    \context {
      \Staff
      \omit TimeSignature
    }
  }
  \midi {
    \tempo 4=100
  }
}
