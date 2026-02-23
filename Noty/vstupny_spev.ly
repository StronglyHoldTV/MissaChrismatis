\version "2.24.0"

global = {
  \key g \major
}

melody = \relative c'' {
  \global
  \cadenzaOn
  a8 [a8] b8 b4 \bar "'" c8 [c8 b8] a4 b4 b8 b4 \bar "|"  a8 g8 c8 c4 b8 a8 [g8] fis8 e8 [e8] \bar "'" a8 [b8] c4 b8 a8 b4 b4 \bar "'" a8 c8 b8 a8 g8 fis8([e8]) e4
  \cadenzaOff
}

verse = \lyricmode {
  Je -- žiš Kris -- tus u -- ro -- bil nás krá -- ľov -- stvom, kňa -- zmi Bo -- hu a svoj -- mu Ot -- co -- vi, je -- mu slá -- va a vlá -- da na ve -- ky ve -- kov. A -- men.
  
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
