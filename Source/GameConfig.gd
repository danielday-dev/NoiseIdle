extends Node 

enum InstrumentIDs{
	Piano,
	Horn,
	Gramophone,
	Amplifier,
	Marimba,
	}

const instrumentPrices : Array[int] = [3, 3]
const instrumentPriceExponents : Array[float] = [1.07, 1.07]
const instrumentNpS : Array[float] = [1, 1]

#
## Piano
#const PianoPrice = 3;
#const PianoPriceExponent = 1.07;
#const PianoNpS = 1;

# Display
const decimalTrail = 1;
