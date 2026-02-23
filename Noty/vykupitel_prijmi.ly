\version "2.24.0"



global = {
  \key g \minor
}

\header {
  %composer = "gregoriánsky I. tónus" % Toto sa zobrazí vpravo hore
}

melody = \relative c'' {
  \global
  \cadenzaOn
    g8[bes8 g8(f8)] f4 \bar "'" g8[bes8] bes8[(c8)] bes4 \bar "'" bes8[(a8) f8 g8] bes8 g8[f8(g8)] g4\bar "|."
  \cadenzaOff
}

verse = \lyricmode {
  Vy -- ku -- pi -- teľ prij -- mi pie -- seň kto -- rou ťa dnes slá -- vi -- me.
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
