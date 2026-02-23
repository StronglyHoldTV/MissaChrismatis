\version "2.24.2"



global = {
  \key c \major
}

\header {
  composer = "LS I 658" % Toto sa zobrazí vpravo hore
}



melody = \relative c' {
  \global
  \cadenzaOn
    e8[e8 g8 g8] c8[ c8 b8 a8] g8[f8] e4 d2 \bar "|"
    g8([a8 g8]) f8 f8 e4 \bar "," d8 e8 f8 e8 d4. \bar ","
    d8 e4 f8 f8[g8] a8[a8 g8 f8 f8] e4. \bar "," e8.[e16 fis8 gis8] a8 [a8] r8 \bar "'"
    a16 [b16] c8 c4 c8 b4 a4 gis8[(a8)] b2 \bar ","
    c8 [ c8 b8 a8] g4 f8 [f8] e4 \bar ","
    a4 a8[g8] f8[e8 d8(f8)] e2 \bar "|"
    e8 [e8] \tuplet 3/2 { e8 [e8 e8]} e8 e4 \bar "'"
    \tuplet 3/2 { e8 [e8 e8]} \tuplet 3/2 { e8 [e8 e8]} a4 \bar "'"
    g8.[f16] e4. \bar "," b'16[b8 b16] b16[b8.] d4 c8[(b8)] a2 \bar "|"
    e8 e4 e8 e8[e8] e8[e8] \bar "'" r8 e8[e8 e8] g4 a8[(f8)] e4. \bar "|"
    b'8 b4 b8 b8[b8] \tuplet 3/2 {b8 [b8] r8} \bar "'" b8[b8 b8 b8] b8. [b16] b16 [d8.] c8([b8]) a2 \bar "|"
    e8 e8 e4 e8[e8 e8 e8] e8[e8] \bar "'" r8 e8[e8 e8 ] g4 f8([e8]) d2 \bar "|"
    g8[a8 g8 f8] f8[(e8)] e4 \bar "," d8([e8]) f8[e8] d4. \bar "," 
    d8[d8 e8] f8[f8 g8] a8[a8 g8(f8)] f8 e4. \bar "," 
    e8[ fis8(gis8)] a8 a4 \bar "," c4 c8 b8[a8] gis8[(a8)] b2 \bar "|"
    c4 b8[(a8)] g8[(f8)] e4 \bar "'" a4(f8[g8]) g2 \bar "||"
    
  \cadenzaOff
}

verse = \lyricmode {
    a na ze -- mi po -- koj ľu -- ďom dob -- rej vô -- le.
    Chvá -- li -- me ťa, ve -- le -- bí -- me ťa,
    kla -- nia -- me sa ti, os -- la -- vu -- je -- me ťa,
    vzdá -- va -- me ti vďa -- ky, le -- bo veľ -- ká je slá -- va tvo -- ja.
    Pa -- ne Bo -- že, Kráľ ne -- bes -- ký,
    Boh O -- tec vše -- mo -- hú -- ci.
    Pa -- ne, Je -- ži -- šu Kri -- ste, ty jed -- no -- ro -- de -- ný syn,
    Pán a Boh, Ba -- rá -- nok Bo -- ží, Syn Ot -- ca.
    Ty sní -- maš hrie -- chy sve -- ta, zmi -- luj sa nad na -- mi,
    ty sní -- maš hrie -- chy sve -- ta, prij -- mi na -- šu ú -- pen -- li -- vú pros -- bu.
    Ty se -- díš po pra -- vi -- ci Ot -- ca, zmi -- luj sa nad na -- mi.
    Veď len ty si Svä -- tý, len ty si Pán,
    len ty si Naj -- vyš -- ší, Je -- ži -- šu Kris -- te,
    "s Du" -- chom Svä -- tým "v slá" -- ve Bo -- ha Ot -- ca.
    A -- men, a -- men, a -- men.
  
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
