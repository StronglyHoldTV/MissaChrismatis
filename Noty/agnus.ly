\version "2.24.0"



global = {
  \key d \major
}

\header {
  composer = "LS I 756" % Toto sa zobrazí vpravo hore
}

melody = \relative c' {
  \global
  \cadenzaOn
  \repeat volta 3{
    fis8 fis4 g8 b8[(a8)] a4. a8 \bar "|" a8[g8] fis8[g8] fis8 e4. \bar "|"
    \alternative {
      \volta 1,2 { d8[ d8 e8] g8[g8] fis4. }
      \volta 3 { d8[d8] e4 fis8 fis4. } \bar "|."
    }
  }
}

verse = \lyricmode {
  Ba -- rá -- nok Bo -- ží, Ty sní -- maš hrie -- chy sve -- ta, zmi -- luj sa nad na -- mi. "...da" -- ruj nám po -- koj.
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
