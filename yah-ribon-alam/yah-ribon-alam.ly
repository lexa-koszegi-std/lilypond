\version "2.26.0"

\include "hel-arabic.ly"
\language "english"

\paper {
  indent = 0\mm
  ragged-right = ##f
  ragged-last = ##f
}

\header {
  title = "Yah Ribon `Alam"
  subtitle = "Transcription of Yair Dalal's performance"
}

\score {
  \new Staff \with {
    midiInstrument = "oboe"
  } {
    \relative c' {
      \key c \rast
      \time 4/4
      \tempo 4 = 120

      % Portamento line appearance
      \override Glissando.style = #'dashed-line
      \override Glissando.bound-details.left.padding = #0.5
      \override Glissando.bound-details.right.padding = #0.5

      % Bar 1
      c4.( d8 c4 d4) |

      % Bar 2
      eqf8( f8 d8 eqf8 c2) |

      % Bar 3
      f2( f4^\markup { \italic "port." }
      \glissando d4) |

      % Bar 4
      eqf2( \acciaccatura { f16 } eqf8
      \glissando c8) r4 |
      \break

      % Bar 5
      eqf2( \acciaccatura { f16 } eqf8
      \glissando c8) r4 |

      % Bar 6
      eqf2( \acciaccatura { f16 } eqf8
      \glissando c8) r4 |

      % Bar 7
      eqf2( \acciaccatura { f16 } eqf8
      \glissando c8) r4 |

      % Bar 8
      eqf2( \acciaccatura { f16 } eqf8
      \glissando c8) r4 \bar "|."
    }
  }

  \layout {}
  \midi {}
}