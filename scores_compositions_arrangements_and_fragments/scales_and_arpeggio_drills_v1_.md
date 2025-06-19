



Below is an updated LilyPond source file that uses the revised rhythmic “algorithm” you described. In each exercise the scale runs up and down in 4/4 time. The ascending scale begins on the tonic as a quarter note, then its six interior steps are eighth notes, and the octave is a quarter note. The descending scale reverses that order (omitting the top note) with its six interior notes as eighths, ending on the starting tonic as a whole note. Immediately afterward the corresponding arpeggio is scored in the same up–down fashion: the ascending triad arpeggio is tonic (quarter), then third and fifth as eighth notes, and the octave as a quarter note; the descending arpeggio goes fifth then third as eighth notes and ends with the tonic as a whole note.

Because your instrument sounds two octaves above the notated pitch (with concert C6 notated as LilyPond’s “c′”), the exercises below are written in absolute pitch two octaves lower than performance. (For example, the C Major exercise uses c′ as the tonic, with its octave above noted as c″.)

Below is the complete LilyPond code for the five pairs of keys (each with its relative key) following your new instructions:

---

`lilypond
\version "2.24.0"

% Global settings
global = {
  \time 4/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1. C Major – Relative A Minor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% C Major Scale: Ascending then Descending
cMajorScale = {
  \mark "C Major Scale (Up & Down)"
  % Ascending:
  c'4      % tonic as quarter
  d'8 e'8 f'8 g'8 a'8 b'8 % six intermediate notes (each eighth)
  c''4    % top tonic as quarter
  % Descending:
  b'8 a'8 g'8 f'8 e'8 d'8 % six intermediate notes descending
  c'1    % ending tonic as whole note
}

% C Major Arpeggio: Ascending then Descending
cMajorArp = {
  \mark "C Major Arpeggio (Up & Down)"
  % Ascending:
  c'4      % tonic quarter note
  e'8 g'8 % third and fifth as eighth notes
  c''4    % top (octave) as quarter note
  % Descending:
  g'8 e'8  % fifth then third as eighth notes
  c'1     % ending tonic as whole note
}

% A Minor Scale: Ascending then Descending
aMinorScale = {
  \mark "A Minor Scale (Up & Down)"
  % Ascending:
  a'4                % tonic quarter note
  b'8 c''8 d''8 e''8 f''8 g''8 % six intermediate notes
  a''4              % octave tonic quarter note
  % Descending:
  g''8 f''8 e''8 d''8 c''8 b'8 % descending intermediate
  a'1               % ending tonic (lower) as whole note
}

% A Minor Arpeggio: Ascending then Descending
aMinorArp = {
  \mark "A Minor Arpeggio (Up & Down)"
  % Ascending:
  a'4        % tonic quarter note
  c''8 e''8 % third and fifth as eighth notes
  a''4      % octave tonic quarter note
  % Descending:
  e''8 c''8  % fifth then third as eighth notes
  a'1       % ending tonic as whole note
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2. G Major – Relative E Minor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% G Major Scale: Ascending then Descending
gMajorScale = {
  \mark "G Major Scale (Up & Down)"
  % Ascending:
  g'4   % tonic quarter
  a'8 b'8 c''8 d''8 e''8 fis''8  % six notes
  g''4  % top tonic quarter
  % Descending:
  fis''8 e''8 d''8 c''8 b'8 a'8
  g'1  % ending tonic whole note
}

% G Major Arpeggio: Ascending then Descending
gMajorArp = {
  \mark "G Major Arpeggio (Up & Down)"
  % Ascending:
  g'4
  b'8 d''8
  g''4
  % Descending:
  d''8 b'8
  g'1
}

% E Minor Scale: Ascending then Descending
eMinorScale = {
  \mark "E Minor Scale (Up & Down)"
  % Ascending:
  e'4
  fis'8 g'8 a'8 b'8 c''8 d''8
  e''4
  % Descending:
  d''8 c''8 b'8 a'8 g'8 fis'8
  e'1
}

% E Minor Arpeggio: Ascending then Descending
eMinorArp = {
  \mark "E Minor Arpeggio (Up & Down)"
  % Ascending:
  e'4
  g'8 b'8
  e''4
  % Descending:
  b'8 g'8
  e'1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. D Major – Relative B Minor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% D Major Scale: Ascending then Descending
dMajorScale = {
  \mark "D Major Scale (Up & Down)"
  % Ascending:
  d'4
  e'8 fis'8 g'8 a'8 b'8 cis''8
  d''4
  % Descending:
  cis''8 b'8 a'8 g'8 fis'8 e'8
  d'1
}

% D Major Arpeggio: Ascending then Descending
dMajorArp = {
  \mark "D Major Arpeggio (Up & Down)"
  % Ascending:
  d'4
  fis'8 a'8
  d''4
  % Descending:
  a'8 fis'8
  d'1
}

% B Minor Scale: Ascending then Descending
bMinorScale = {
  \mark "B Minor Scale (Up & Down)"
  % Ascending:
  b'4
  cis''8 d''8 e''8 fis''8 g''8 a''8
  b''4
  % Descending:
  a''8 g''8 fis''8 e''8 d''8 cis''8
  b'1
}

% B Minor Arpeggio: Ascending then Descending
bMinorArp = {
  \mark "B Minor Arpeggio (Up & Down)"
  % Ascending:
  b'4
  d''8 fis''8
  b''4
  % Descending:
  fis''8 d''8
  b'1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. A Major – Relative F♯ Minor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% A Major Scale: Ascending then Descending
aMajorScale = {
  \mark "A Major Scale (Up & Down)"
  % Ascending:
  a'4
  b'8 cis''8 d''8 e''8 fis''8 gis''8
  a''4
  % Descending:
  gis''8 fis''8 e''8 d''8 cis''8 b'8
  a'1
}

% A Major Arpeggio: Ascending then Descending
aMajorArp = {
  \mark "A Major Arpeggio (Up & Down)"
  % Ascending:
  a'4
  cis''8 e''8
  a''4
  % Descending:
  e''8 cis''8
  a'1
}

% F♯ Minor Scale: Ascending then Descending
fisMinorScale = {
  \mark "F♯ Minor Scale (Up & Down)"
  % Ascending:
  fis'4
  gis'8 a'8 b'8 cis''8 d''8 e''8
  fis''4
  % Descending:
  e''8 d''8 cis''8 b'8 a'8 gis'8
  fis'1
}

% F♯ Minor Arpeggio: Ascending then Descending
fisMinorArp = {
  \mark "F♯ Minor Arpeggio (Up & Down)"
  % Ascending:
  fis'4
  a'8 cis''8
  fis''4
  % Descending:
  cis''8 a'8
  fis'1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. E Major – Relative C♯ Minor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% E Major Scale: Ascending then Descending
eMajorScale = {
  \mark "E Major Scale (Up & Down)"
  % Ascending:
  e'4
  fis'8 gis'8 a'8 b'8 cis''8 dis''8
  e''4
  % Descending:
  dis''8 cis''8 b'8 a'8 gis'8 fis'8
  e'1
}

% E Major Arpeggio: Ascending then Descending
eMajorArp = {
  \mark "E Major Arpeggio (Up & Down)"
  % Ascending:
  e'4
  gis'8 b'8
  e''4
  % Descending:
  b'8 gis'8
  e'1
}

% C♯ Minor Scale: Ascending then Descending
cisMinorScale = {
  \mark "C♯ Minor Scale (Up & Down)"
  % Ascending:
  cis'4
  dis'8 e'8 fis'8 gis'8 a'8 b'8
  cis''4
  % Descending:
  b'8 a'8 gis'8 fis'8 e'8 dis'8
  cis'1
}

% C♯ Minor Arpeggio: Ascending then Descending
cisMinorArp = {
  \mark "C♯ Minor Arpeggio (Up & Down)"
  % Ascending:
  cis'4
  e'8 gis'8
  cis''4
  % Descending:
  gis'8 e'8
  cis'1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Full Score: Assemble all exercises sequentially
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
  <<
    \new Staff {
      \global
      
      % 1. C Major and A Minor Exercises
      \cMajorScale \break
      \cMajorArp \break
      \aMinorScale \break
      \aMinorArp \break
      
      % 2. G Major and E Minor Exercises
      \gMajorScale \break
      \gMajorArp \break
      \eMinorScale \break
      \eMinorArp \break
      
      % 3. D Major and B Minor Exercises
      \dMajorScale \break
      \dMajorArp \break
      \bMinorScale \break
      \bMinorArp \break
      
      % 4. A Major and F♯ Minor Exercises
      \aMajorScale \break
      \aMajorArp \break
      \fisMinorScale \break
      \fisMinorArp \break
      
      % 5. E Major and C♯ Minor Exercises
      \eMajorScale \break
      \eMajorArp \break
      \cisMinorScale \break
      \cisMinorArp
    }
  >>
  \layout { }
  \midi { }
}
`

---

Some Explanations

1. Scale Structure:  
   In each scale the ascending part is:
   - Tonic as a quarter note  
   - Six intermediate steps as eighth notes  
   - Top (octave) as a quarter note  
   The descending part reverses the intermediate order and finishes with the tonic held as a whole note.

2. Arpeggio Structure:  
   The ascending arpeggio uses the chord tones (tonic–third–fifth–octave) with tonic and octave as quarters and inner notes as eighths; the descending arpeggio reverses the order (omitting the octave’s repetition) and the final tonic is a whole note.

3. Absolute Notation:  
   All pitches are written explicitly with their octave marks so that (for example) the “concert” C6 is notated as c′ two octaves lower.

NOTE: The following code contains some VERY useful snippets:

https://github.com/henriyulianto/solmisasi-lily/blob/038e4f39b8239260d2d33d8bfbec85fc4d95e5a4/docs%2Fexamples%2Fintermediate.md





