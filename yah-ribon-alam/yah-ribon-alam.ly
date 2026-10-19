\version "2.26.0"

\include "hel-arabic.ly"
\language "english"

\paper {
  indent = 0\mm
  ragged-right = ##f
  ragged-last = ##f
  system-system-spacing.basic-distance = 15
}

\header {
  title = "Yah Ribon ՙAlam"
  poet = \markup { \fontsize #-2 "Piyyut by R. Israel Najara (1555-1625)" }
  piece = \markup { \fontsize #-2 "Performance by Yair Dalal transcribed by Lexa Koszegi" }
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
          % \override Glissando.style = #'dashed-line
          \override Glissando.style = #'trill
          \override Glissando.bound-details.left.padding = #0.5
          \override Glissando.bound-details.right.padding = #0.1

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
          % eqf2 \acciaccatura { f16 }( eqf8
          % \glissando c8) r4 |
          % \break
          eqf2 
          \tuplet 3/2 {
            eqf8( d8 c8) 
          }
          r4
          \break

          % Bar 5
          f2~
          \tuplet 3/2 {
            f2 \glissando d4
          } |

          % Bar 6
                    eqf2 
          \tuplet 3/2 {
            eqf8( d8 c8) 
          }
          r4
          % eqf2 \acciaccatura { f16 }( eqf8
          % \glissando c8) r4 |

          % Bar 7
          c4 d eqf d |

          % Bar 8
          c4 r2. |
          \break

          % Bar 9
          f8 f8 f2 g4 |

          % Bar 10
          f4 eqf2\mordent r4

          % Bar 11
          f2 g4 f4 |

          % Bar 12
          eqf2\mordent r2 |
          
          \break

          % Bar 13
          eqf4 f2 g4 |

          % Bar 14
          f4 eqf2 d4  |

          % Bar 15
          c4( d2) d4 |

          % Bar 16
          g4 g8( f8 eqf8 d8 c4) |
          \break

          % Bar 17
          c4.( d8) c4 d4 |

          % Bar 18
          eqf8( f8 d8 eqf8) c2 |

          % Bar 19
          f2~
          \tuplet 3/2 {
            f2^\markup { \italic "port." } \glissando d4
          } |

          % Bar 20
          eqf2 
          \tuplet 3/2 {
            eqf8( d8 c8) 
          }
          r4
          \break

          % Bar 21
          f2~
          \tuplet 3/2 {
            f2 \glissando d4
          } |

          % Bar 22
                    eqf2 
          \tuplet 3/2 {
            eqf8( d8 c8) 
          }
          r4
          % eqf2 \acciaccatura { f16 }( eqf8
          % \glissando c8) r4 |

          % Bar 23
          c4 d eqf d |

          % Bar 24
          c4 r2. |
          \break

        }
      }
    }

    \new Lyrics \lyricsto "melody" {
      % Add the syllables here, separated by spaces.

      % System 1
      Yah ri- bon ʿa- lam we ʿal- ma- ya
      
      % System 2
      Ant hu mal- ka me- lekh mal- kha- ya

      % System 3
      ՙO- va- dei ge- vur- takh we- tim- ha- ya
      
      % System 4
      She- far- ko- da- mai le- ha- ha- va- ya

      %System 5
      Yah ri- bon ʿa- lam we ʿal- ma- ya
      
      % System 2
      Ant hu mal- ka me- lekh mal- kha- ya

    }
  >>

  \layout {}
  \midi {}
}

\markup {
  \fontsize #-1
  \column {
    \vspace #1
    \justify {
      STUDENT NOTES: This is draft of an excerpt of the recording starting at 0:41.79 and ending at 1:29.12.
      I started at this point in order to capture the melody of the basic chorus and the first verse.
    }
    \vspace #1
    \justify {
      Next steps will be to add staves for the oud accompaniment so I can transcribe the introduction, which is
      played in a slower, 3-beat rhythm and then switches to a faster 4 beat rhythm oud intro before the the first
      chorus is sung. 
    }
    \vspace #1
    \justify {
      Lyrics transcription is my own interpretation of how I heard it sung in Dalal's Judeo-Iraqi pronunciation
      rather than the more modern pronunciations you'd find in printed sources of the Piyyut.
    }
    \vspace #1
  }
}