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
  piece = "from a recorded performance by Yair Dalal"
  poet = "poem by R. Israel Najara (1555-1625)"
}

\score {
  <<
    \new Staff \with {
      midiInstrument = "oboe"
    } {
      \new Voice = "melody" {
        \relative c' {
          \key c \rast
          \time 4/4
          \tempo 4 = 120

          % Portamento line appearance
          \override Glissando.style = #'dashed-line
          \override Glissando.bound-details.left.padding = #0.5
          \override Glissando.bound-details.right.padding = #0.5

          % Bar 1
          c4.( d8) c4 d4 |

          % Bar 2
          eqf8( f8 d8 eqf8) c2 |

          % Bar 3
          f2~
          \tuplet 3/2 {
            f2^\markup { \italic "port." } \glissando d4
          } |

          % Bar 4
          eqf2 \acciaccatura { f16 }( eqf8
          \glissando c8) r4 |
          \break

          % Bar 5
          f2~
          \tuplet 3/2 {
            f2 \glissando d4
          } |

          % Bar 6
          eqf2 \acciaccatura { f16 }( eqf8
          \glissando c8) r4 |

          % Bar 7
          c4 d eqf d |

          % Bar 8
          c4 r2. |
          \break
          % Bar 9
          c4.( d8) c4 d4 |

          % Bar 10
          eqf8( f8 d8 eqf8) c2 |

          % Bar 11
          f2~
          \tuplet 3/2 {
            f2 \glissando d4
          } |

          % Bar 12
          eqf2 \acciaccatura { f16 }( eqf8
          \glissando c8) r4 |
          \break

          % Bar 13
          f2~
          \tuplet 3/2 {
            f2 \glissando d4
          } |

          % Bar 14
          eqf2 \acciaccatura { f16 }( eqf8
          \glissando c8) r4 |

          % Bar 15
          c4 d eqf d |

          % Bar 16
          c4 r2. |
        }
      }
    }

    \new Lyrics \lyricsto "melody" {
      % Add the syllables here, separated by spaces.

      % System 1
      Yah ri- bon a- lam we al- ma- ya
      
      % System 2
      Ant hu mal- ka me- lekh mal- kha- ya

      % System 3
      Yah ri- bon a- lam we al- ma- ya
      
      % System 4
      Ant hu mal- ka me- lekh mal- kha- ya

    }
  >>

  \layout {}
  \midi {}
}