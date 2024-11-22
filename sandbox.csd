<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
; Define the orchestra
sr = 44100           ; Sample rate
ksmps = 32           ; Control rate (number of samples per control period)
nchnls = 1           ; Number of channels (mono)
0dbfs = 1            ; Full scale for audio signals

instr 1
    ; Generate the C Minor 7th chord
    a1 oscils 0.3, 261.63, 0   ; C (Middle C, 261.63 Hz)
    a2 oscils 0.3, 311.13, 0   ; E♭ (311.13 Hz)
    a3 oscils 0.3, 392.00, 0   ; G (392.00 Hz)
    a4 oscils 0.3, 466.16, 0   ; B♭ (466.16 Hz)
    out a1 + a2 + a3 + a4      ; Mix all the notes together
endin
</CsInstruments>
<CsScore>
; Schedule the chord
; p1 (instrument), p2 (start time), p3 (duration)
i1 0 5                      ; Play instrument 1 for 5 seconds
e                           ; End of score
</CsScore>
</CsoundSynthesizer>
