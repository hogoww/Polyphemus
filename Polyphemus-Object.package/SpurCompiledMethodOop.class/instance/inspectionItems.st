inspection
inspectionItems 

	| alreadyHandleCollection counter |
	alreadyHandleCollection := super inspectionItems.
	alreadyHandleCollection add: #numLiterals -> self numberOfLiterals;
	add: #selector -> self selector;
	add: #methodClass -> self methodClass;
	add: #methodHeader -> (self slotAt: 1). 
	counter := 0.
	self allLiterals collect: [ :literal | 
		counter := counter + 1.
		('literal ', counter printString) -> literal.
		] into: alreadyHandleCollection.
	
	^alreadyHandleCollection