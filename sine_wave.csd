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
    ; Generate a sine wave at middle C (261.63 Hz)
    a1 oscils 0.5, 261.63, 0  ; Amplitude = 0.5, Frequency = 261.63 Hz, Phase = 0
    out a1                    ; Output the sine wave
endin
</CsInstruments>
<CsScore>
; Schedule the notes
; p1 (instrument), p2 (start time), p3 (duration)
i1 0 5                      ; Play instrument 1 for 5 seconds
e                           ; End of score
</CsScore>
</CsoundSynthesizer>
