#import "@preview/conchord:0.3.0": smart-chord

#box(smart-chord("Am"))
// at what fret to play the chord
#box(smart-chord("Am", at: 5)) // chord at fifth fret
// what variant number to select
#box(smart-chord("Am", n: 4)) // forth "best" chord
// what tuning to use; note first, then octave (1-9)
