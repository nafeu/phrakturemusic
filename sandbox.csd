<CsoundSynthesizer>
<CsOptions>
-o output.wav -W
</CsOptions>
<CsInstruments>
sr = 44100           ; Sample rate
ksmps = 32           ; Control rate (number of samples per control period)
nchnls = 2           ; Number of channels (stereo)
0dbfs = 1            ; Full scale for audio signals

instr 1
    ; Base frequency and note frequency
    iBaseFreq = 261.63           ; Middle C frequency (C4)
    iNoteFreq = p4               ; Frequency of the desired note (passed via p4)

    ; Ratio for pitch-shifting
    kRatio = iNoteFreq / iBaseFreq

    ; Play the sample with pitch-shifting
    aLeft, aRight diskin2 "piano.wav", kRatio, 0, 1

    ; Mix the dry signal
    aDryLeft = aLeft
    aDryRight = aRight

    ; Apply reverb (reverbsc)
    aWetLeft, aWetRight reverbsc aLeft, aRight, 0.85, 12000

    ; Mix wet and dry signals
    outs aDryLeft * 0.7 + aWetLeft * 0.3, aDryRight * 0.7 + aWetRight * 0.3
endin
</CsInstruments>
<CsScore>
; Play the C Minor 7th chord with each note as a separate event
; p1 (instrument), p2 (start time), p3 (duration), p4 (frequency)
i1 0.0 2 261.63      ; C (Middle C)
i1 0.05 2 311.13     ; E♭
i1 0.10 2 392.00     ; G
i1 0.15 2 466.16     ; B♭
e                    ; End of score
</CsScore>
</CsoundSynthesizer>
