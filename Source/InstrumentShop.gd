@tool
extends VBoxContainer

@export var icon : Texture2D:
	set(value):
		$InfoContainer/Icon.texture = value;
		icon = value;
@export var instrumentID : int:
	set(value):
		# get enum's name from new instrument ID
		instrumentName = GameConfig.InstrumentIDs.keys()[int(value)]
		$InfoContainer/InstrumentNameLabel.text = instrumentName;
		instrumentID = value;

@onready var instrumentName : String = GameConfig.InstrumentIDs.keys()[instrumentID]

#TODO  fix the fucking layout

func _on_buy_button_pressed():
	if MainHandler.tryRemoveNotes(GameConfig.instrumentPrices[instrumentID] * pow(GameConfig.instrumentPriceExponents[instrumentID], MainHandler.numInstruments[instrumentID])):
		MainHandler.numInstruments[instrumentID] += 1
		$OwnedContainer/NumberOwnedLabel.text = str(MainHandler.numInstruments[instrumentID]) + " Owned";
		
		MainHandler.calculateNpS();
		
		$BuyContainer/PriceLabel.text = str(GameConfig.instrumentPrices[instrumentID] * pow(GameConfig.instrumentPriceExponents[instrumentID], MainHandler.numInstruments[instrumentID])).pad_decimals(GameConfig.decimalTrail);
		
		print(instrumentName + " was purchased")
