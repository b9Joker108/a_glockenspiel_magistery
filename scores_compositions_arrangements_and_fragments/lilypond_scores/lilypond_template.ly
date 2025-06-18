\version "2.24.4"  % Ensure correct LilyPond version
\header {
  title = "Glockenspiel Study"
  composer = "Beauford A. Stenberg (Nagahari)"
}

\score {
  \new Staff \with {
    instrumentName = "Glockenspiel"
    midiInstrument = "glockenspiel"
  }
  \relative c'' {
    \key c \major
    \time 4/4
    \tempo 4 = 120
    \clef treble

    % Placeholder melody
    c4 d e f | g a b c | \bar "|."
  }
  
  \layout {}
  \midi {}
}
