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
    ; Generate a sine wave for the note
    a1 oscils 0.3, p4, 0       ; Amplitude = 0.3, Frequency = p4 (passed from score)
    out a1                    ; Output the sine wave
endin
</CsInstruments>
<CsScore>
; Schedule each note with slight offsets for humanization
; p1 (instrument), p2 (start time), p3 (duration), p4 (frequency)
i1 0.0 2 261.63               ; C (Middle C, starts immediately)
i1 0.05 2 311.13              ; E♭ (starts 50 ms later)
i1 0.10 2 392.00              ; G (starts 100 ms later)
i1 0.15 2 466.16              ; B♭ (starts 150 ms later)
e                             ; End of score
</CsScore>
</CsoundSynthesizer>
