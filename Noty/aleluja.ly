\version "2.24.0"



global = {
  \key g \major
}

\header {
  composer = "gregoriánsky I. tónus" % Toto sa zobrazí vpravo hore
}

melody = \relative c' {
  \global
  \cadenzaOn
    e8[(fis8)g8a8] g8[fis8] r8 \bar "'" b8[a8] g8[fis8 e8] r4 \bar "|."
  \cadenzaOff
}

verse = \lyricmode {
  Chvá -- la ti a česť, Pa -- ne, Je -- ži -- šu.
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
