extends Node
# Game Variables
var numNotes : float = 0;
var notesPerSecond : float = 0;


# Instrument shop variables
var numInstruments : Array[int] = [];


# piano variables
var numPianos : int = 0;


func _ready():
	print("ChuChu Lovely MuniMuni MuraMura PrinPrin Boron Nururu ReroRero");
	
	# resize instrument numbers to be the right size based on the enum in GC
	numInstruments.resize(len(GameConfig.InstrumentIDs.keys()))
	for i in numInstruments.size():
		numInstruments[i] = 0;
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	numNotes += notesPerSecond * delta


# Note manipulation
func addNotes(amount : float):
	numNotes += amount;
	
func tryRemoveNotes(amount : float) -> bool:
	if numNotes < amount:
		return false;
	numNotes -= amount;
	return true;

# NpS Manipulation
func calculateNpS():
	notesPerSecond = 1; #TODO


	
