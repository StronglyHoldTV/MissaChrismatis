\version "2.24.0"



global = {
  \key g \major
}

melody = \relative c' {
  \global
  \partial 4 d4 
  g4. fis8 e4 d4
  e4 d4 d4 \bar "'" d4
  g4 g4 a8[g8] fis8[gis8]
  b2 a4 \bar "'" d4
  g='4 fis4 e4 g4
  a4 e4 fis4 \bar "'" fis4
  a4 g4 fis8[g8] fis8[e8]
  e2 d4 \bar "'" d4
  b'4. a8 g4 fis4
  fis4. e8 e4 \bar "'" e4
  a4 g4 fis4 d4
  g4 a4 b4 \fermata \bar "'" d='4
  \repeat volta 2 {
    fis8 [g8 a8 a8] b4 c4
    d2 \bar "'" b4 c8[d8]
    e4 d8[(c8)] b4 a4
    \alternative {
        \volta 1 {b2 r4 d='4}
        \volta 2 { \partial 3 g2. \bar "|."}
    }
  }
  
}

verse = \lyricmode {
  Ó, Srd -- ce kňaz -- ské Kris -- to -- vo, Krv tvo -- ja na -- šej du -- še spá -- sa, ó tia -- hni srd -- cia
  lás -- ka -- vo, nech kaž -- dé srd -- ce Te -- be vzdá sa.
  "R: Ó" srd -- ce Kris -- ta Veľ -- kňa -- za, keď kňa -- zom hro -- zí ná -- ka -- za, stráž by ti ver -- ne
  kaž -- dý stál, aj po -- vel Ty daj kňaz -- ský Kráľ. stráž... Kráľ.
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


%{
convert-ly.py (GNU LilyPond) 2.24.4  convert-ly.py: Processing `'...
Applying conversion: 2.23.1, 2.23.2, 2.23.3, 2.23.4, 2.23.5, 2.23.6,
2.23.7, 2.23.8, 2.23.9, 2.23.10, 2.23.11, 2.23.12, 2.23.13, 2.23.14,
2.24.0
%}
