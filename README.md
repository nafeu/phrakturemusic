# PhraktureMusic

A collection of projects associated with code/scripting-based music production

---

## Prerequisites

This project requires the following tools:

1. [Csound](https://csound.com)
2. [SoX (Sound eXchange)](http://sox.sourceforge.net)
3. [Rubber Band](https://breakfastquay.com/rubberband/)

Make sure these tools are installed before proceeding.

---

## Installation Instructions (macOS)

```
git clone https://github.com/nafeu/phrakturemusic.git
cd phrakturemusic
```

### Install Csound

```bash
brew install csound
```

### Install Sound eXchange and Rubberband (optional)

```bash
brew install sox
brew install rubberband
```

---

## Usage

Run the `sandbox.csd` file with `Csound`

```
csound sandbox.csd
```

Open the `output.wav` file.

### Additional Processing

Time Stretching

```
rubberband -t 20 output.wav output_stretched.wav
```

Reverse

```
sox output_stretched.wav output_stretched_reversed.wav reverse
```
