setting
initialize
	super initialize.
	statList := Bag new.
	memoryChangedPort := SpExplicitInputPort new presenter: self ; yourself.