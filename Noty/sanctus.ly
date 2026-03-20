\version "2.24.0"



global = {
  \key bes \major
}


melody = \relative c' {
  \global
  \cadenzaOn
  f8[f8] g8[d8] f8 f4. \bar "'" g8[g8] bes8[g8] g8 f4. \bar "|" 
  g8 g4 g8 a8[a8 bes8 bes8] c4 \bar "'" d8 [c8 bes8 (d8)] c4. \bar "|"
  d8[bes8 a8 bes8] c4 f,8 f4. \bar "|" bes='8[bes8 a8] g4 \bar "'" fis8[g8] bes8 a4 g8 fis8[g8] a4 d='8 d4. \bar "|"
  d8[d8] f4 \bar "'" g8[g8] c4 \bar "'" d8[ bes8 a8 bes8] c4 bes8 bes4. \bar "|."
  
  \cadenzaOff
}

verse = \lyricmode {
  Svä -- tý, svä -- tý, svä -- tý Pán Boh všet -- kých sve -- tov. Pl -- né sú ne -- be -- sia i zem tvo -- jej slá -- vy.
  Ho -- san -- na na vý -- sos -- tiach! Po -- žeh -- na -- ný, kto -- rý pri -- chá -- dza "v me" -- ne Pá -- no -- vom.
  Ho -- san -- na, ho -- san -- na, ho -- san -- na na vý -- sos -- tiach!
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
      \accidentalStyle forget
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
