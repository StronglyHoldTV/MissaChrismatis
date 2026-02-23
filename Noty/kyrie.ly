\version "2.24.0"



global = {
  \key f \major
}

\header {
  composer = "LS I 665" % Toto sa zobrazí vpravo hore
}

melody = \relative c'' {
  \global
  \cadenzaOn
  ^\markup \italic \with-color "red" "Spevák"a8[a8 g8 f8] g8[a8] a4 r4 \bar "||" ^\markup \italic \with-color "red" "Všetci"a8[a8 g8 f8] g8[a8] a4 r4 \bar "||" \break
  ^\markup \italic \with-color "red" "Spevák"a4 a8[a8] c8[bes8] a4 r4 \bar "||" ^\markup \italic \with-color "red" "Všetci"a4 a8[a8] c8[bes8] a4 r4 \bar "||" \break
  ^\markup \italic \with-color "red" "Spevák"a8[a8 g8 f8] g8[a8] a4 r4 \bar "||" ^\markup \italic \with-color "red" "Všetci"a8[a8 g8 f8] g8[a8] a4 r4 \bar "|."
  \cadenzaOff
}

verse = \lyricmode {
  Ký -- ri -- e e -- lé -- i -- son. Ký -- ri -- e e -- lé -- i -- son.
  Chris -- te e -- lé -- i -- son. Chris -- te e -- lé -- i -- son.
  Ký -- ri -- e e -- lé -- i -- son. Ký -- ri -- e e -- lé -- i -- son.
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


%{
convert-ly.py (GNU LilyPond) 2.24.4  convert-ly.py: Processing `'...
Applying conversion: 2.23.1, 2.23.2, 2.23.3, 2.23.4, 2.23.5, 2.23.6,
2.23.7, 2.23.8, 2.23.9, 2.23.10, 2.23.11, 2.23.12, 2.23.13, 2.23.14,
2.24.0
%}
